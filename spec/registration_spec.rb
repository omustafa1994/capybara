require 'spec_helper'

describe 'testing a correct path for sparta registration' do
  context 'it should respond with confirmation on successful completion' do
    
    it 'should show correct information on completion' do
      @sparta_demo_site = SpartaDemoSite.new.registration_page
      @sparta_demo_site.visit_registration_page 
      sleep 2
      @sparta_demo_site.fill_in_lastname('Smith')
      sleep 2
      @sparta_demo_site.fill_in_age('5')
      sleep 2
      @sparta_demo_site.fill_in_dob('01012020')
      sleep 2
      @sparta_demo_site.fill_in_gender
      sleep 2
      @sparta_demo_site.fill_in_degree('Computer Science')
      sleep 2
      @sparta_demo_site.fill_in_university('University of Oxford')
      sleep 2
      @sparta_demo_site.fill_in_address('5678 Main St')
      sleep 2
      @sparta_demo_site.fill_in_address_two('Hotel Room')
      sleep 2
      @sparta_demo_site.fill_in_city('London')
      sleep 2
      @sparta_demo_site.fill_in_county('South Yorkshire')
      sleep 2
      @sparta_demo_site.fill_in_postcode('LN6 5GZ')
      sleep 2
      @sparta_demo_site.fill_in_emailadd('JSmith@example.com')
      sleep 2
      @sparta_demo_site.fill_in_skills('Lorem Ipsum.')
      sleep 2
      @sparta_demo_site.fill_in_phonenumber('+44 7879 123123')
      sleep 2
      @sparta_demo_site.fill_in_linkedln('www.linkedln.com')
      sleep 2
      @sparta_demo_site.fill_in_choosefile
      sleep 2
      @sparta_demo_site.fill_in_stream
      sleep 5
    end
  
  end
end