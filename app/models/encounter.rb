class Encounter < ActiveRecord::Base
  strip_attributes!

  belongs_to :patient_data
  belongs_to :encounter_location_code
  
  include PersonLike
  include MatchHelper
  
  @@default_namespaces = {"cda"=>"urn:hl7-org:v3"} 
  
  #Reimplementing from MatchHelper
  def section_name
    "Encounters Module"
  end
  
  def validate_c32(document)
    errors=[]  
    errors.compact
  end
  
  def to_c32(xml)    
  	xml.entry('typeCode'=>'DRIV') do
      xml.encounter('classCode'=>'ENC', 'moodCode'=>'EVN') do
        xml.templateId('root' => '2.16.840.1.113883.10.20.1.21', 
                       'assigningAuthorityName' => 'CCD')
        xml.templateId('root' => '2.16.840.1.113883.3.88.11.32.17',
                       'assigningAuthorityName' => 'HITSP/C32') 
        xml.id ('root' => encounter_id)
        if encounter_date != nil 
          xml.effectiveTime do
            xml.low('value'=> encounter_date.strftime('%Y%m%d'))
          end
        end
        xml.participant('typeCode'=>'PRF') do
          xml.participantRole('classCode' => 'PROV') do
            address.andand.to_c32(xml)
            telecom.andand.to_c32(xml)  
            xml.playingEntity do
              person_name.andand.to_c32(xml)
            end
          end
        end
        if location_name
          xml.participant("typeCode" => "LOC") do
            xml.templateId("root" => "2.16.840.1.113883.10.20.1.45")
            xml.participantRole("classCode" => "SDLOC") do
              xml.id("root" => "2.16.840.1.113883.19.5")
              if encounter_location_code
                xml.code("code" => encounter_location_code.code, 
                         "displayName" => encounter_location_code.name, 
                         "codeSystem" => "2.16.840.1.113883.1.11.17660")
              end
              xml.playingEntity("classCode" => "PLC") do
                xml.name location_name
              end
            end
          end
        end
      end
    end
  end
  
  def randomize(birth_date)
    @possible_procedures = ['Heart Valve', 'IUD', 'Artificial Hip', 'Bypass', 'Hypothermia']
    @descriptions = ['Heart Valve Replacement', 'Insertion of intrauterine device (IUD)', 'Hip replacement surgery', 'Bypass surgery', 'Treatement for hypothermia']
    @possible_procedures_index = rand(@possible_procedures.size)
    
    @possible_encounter_locations = ['South Shore Hospital', 'General Hospital', 'Lahey Clinic', 'Darwin Clinic', 'Sagacious Hospital']
    @possible_encounter_locations_index = rand(@possible_encounter_locations.size)

    self.encounter_date = DateTime.new(birth_date.year + rand(DateTime.now.year - birth_date.year), rand(12) + 1, rand(28) +1)
    self.person_name = PersonName.new
    self.person_name.name_prefix = 'Dr.'
    self.person_name.first_name = Faker::Name.first_name
    self.person_name.last_name = Faker::Name.last_name
    self.address = Address.new
    self.address.randomize()
    self.telecom = Telecom.new
    self.telecom.randomize()
    self.code = (10000 + rand(89999)).to_s
    
    self.free_text = @possible_procedures[@possible_procedures_index]
    self.name = @descriptions[@possible_procedures_index]    
    
    self.location_name = @possible_encounter_locations[@possible_encounter_locations_index]
    self.encounter_location_code = EncounterLocationCode.find(:all).sort_by{rand}.first
  end
  
end