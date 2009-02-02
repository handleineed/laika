class ProviderType < ActiveRecord::Base
  has_select_options

 

  def to_c32(xml)
    xml.code("code" => code,
             "displayName" => name,
             "codeSystem" => "2.16.840.1.113883.6.101",
             "codeSystemName" => 'ProviderCodes')
  end
  
end
