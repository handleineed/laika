require File.dirname(__FILE__) + '/../../spec_helper'

describe "allergies/_edit.html.erb" do
  fixtures :users

  before do
    AdverseEventType.stub!(:all).and_return([])
    AllergyStatusCode.stub!(:all).and_return([])
  end

  describe "with an existing allergy (allergies/edit)" do
    before do
      @patient_data = PatientData.create!(:name => 'foo', :user => User.find(:first))
      @allergy = Allergy.create!(:patient_data => @patient_data)
    end

    it "should render the edit form with method PUT" do
      render :partial  => 'allergies/edit', :locals => {:allergy => @allergy,
                                                         :patient_data => @patient_data}
      response.should have_tag("form[action=#{patient_data_instance_allergy_path(@patient_data,@allergy)}]") do
        with_tag "input[name=_method][value=put]"
      end
    end
  end

  describe "without an existing allergy (allergies/new)" do
    before do
      @patient_data = PatientData.create!(:name => 'foo', :user => User.find(:first))
      @allergy = Allergy.new
    end

    it "should render the edit form with method POST" do
      render :partial  => 'allergies/edit', :locals => {:allergy => @allergy,
                                                         :patient_data => @patient_data}
      response.should have_tag("form[action=#{patient_data_instance_allergies_path(@patient_data)}][method=post]") do
        without_tag "input[name=_method][value=put]"
      end
    end
  end

end

