require 'spec_helper'

describe 'testing a correct path for sparta registration' do
  context 'it should respond with confirmation on successful completion' do
    
    it 'should show correct information on completion' do
      @sparta_demo_site = SpartaDemoSite.new
      @sparta_demo_site.registration_page.visit_registration_page
      @sparta_demo_site.registration_page.fill_in_name('Orz')
      sleep 5
    end
  
  end
end