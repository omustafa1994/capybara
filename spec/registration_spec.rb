require 'spec_helper'

describe 'testing a correct path for sparta registration' do
  context 'it should respond with confirmation on successful completion' do
    
    it 'should show correct information on completion' do
      @sparta_demo_site = SpartaDemoSite.new.registration_page
      @sparta_demo_site.visit_registration_page 
      @sparta_demo_site.fill_in_firstname('John')
      @sparta_demo_site.fill_in_lastname('Smith')
      @sparta_demo_site.fill_in_age('5')
      @sparta_demo_site.fill_in_dob('01012020')
      @sparta_demo_site.fill_in_gender
      @sparta_demo_site.fill_in_degree('Computer Science')
      @sparta_demo_site.fill_in_university('University of Oxford')
      @sparta_demo_site.fill_in_address('5678 Main St')
      @sparta_demo_site.fill_in_address_two('Hotel Room')
      @sparta_demo_site.fill_in_city('London')
      @sparta_demo_site.fill_in_county('South Yorkshire')
      @sparta_demo_site.fill_in_postcode('LN6 5GZ')
      @sparta_demo_site.fill_in_emailadd('JSmith@example.com')
      @sparta_demo_site.fill_in_skills('Lorem Ipsum.')
      @sparta_demo_site.fill_in_phonenumber('+44 7879 123123')
      @sparta_demo_site.fill_in_linkedln('www.linkedln.com')
      @sparta_demo_site.fill_in_choosefile
      @sparta_demo_site.fill_in_stream
      @sparta_demo_site.fill_in_terms
      @sparta_demo_site.fill_in_slider
      sleep 5
    end
  
  end
end