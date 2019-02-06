require 'capybara/dsl'

class Registration
  include Capybara::DSL
  
  # page objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  AGE_FIELD_XPATH = '/html/body/div/form/div[3]/div/input'
  DATE_FIELD_ID = 'dob'
  GENDER_BUTTON_XPATH = '/html/body/div/form/div[6]'
  DEGREE_FIELD_XPATH = '/html/body/div/form/div[7]/div/input'
  UNIVERSITY_FIELD_ID = 'inputUni'
  ADDRESS_FIELD_ID = 'inputAddress'
  ADDRESS_TWO_FIELD_ID = 'inputAddress2'
  CITY_FIELD_ID = 'inputCity'
  COUNTY_FIELD_ID = 'inputCounty'
  POSTCODE_FIELD_ID = 'inputPostcode'
  EMAILADD_FIELD_ID = 'inputemailaddress'
  SKILLS_FIELD_ID = 'exampleFormControlTextarea1'
  PHONENUM_FIELD_ID = 'exampleFormControlInput1'
  LINKEDLN_FIELD_XPATH = '/html/body/div/form/div[17]/div/input'
  CHOOSEFILE_FIELD_XPATH = '/html/body/div/form/div[18]/div/input'

  # page methods
  def visit_registration_page
    visit(REGISTRATION_PAGE_URL)
  end

  def fill_in_firstname(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_lastname(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_age(age)
    find(:xpath, AGE_FIELD_XPATH).set(age)
  end

  def fill_in_dob(date)
    fill_in(DATE_FIELD_ID, :with => date)
  end

  def fill_in_gender
    find(:xpath, GENDER_BUTTON_XPATH).click
  end
  
  def fill_in_degree(degree)
    find(:xpath, DEGREE_FIELD_XPATH).set(degree)
  end

  def fill_in_university(uni)
    select(uni, :from => UNIVERSITY_FIELD_ID)
  end

  def fill_in_address(address)
    fill_in(ADDRESS_FIELD_ID, :with => address)
  end

  def fill_in_address_two(address)
    fill_in(ADDRESS_TWO_FIELD_ID, :with => address)
  end

  def fill_in_city(city)
    fill_in(CITY_FIELD_ID, :with => city)
  end

  def fill_in_county(county)
    select(county, :from => COUNTY_FIELD_ID)
  end

  def fill_in_postcode(pcode)
    fill_in(POSTCODE_FIELD_ID, :with => pcode)
  end

  def fill_in_emailadd(email)
    fill_in(EMAILADD_FIELD_ID, :with => email)
  end

  def fill_in_skills(text)
    fill_in(SKILLS_FIELD_ID, :with => text)
  end

  def fill_in_phonenumber(phone)
    fill_in(PHONENUM_FIELD_ID, :with => phone)
  end

  def fill_in_linkedln(linkedln)
    find(:xpath, LINKEDLN_FIELD_XPATH).set(linkedln)
  end

  def fill_in_choosefile
    find(:xpath, CHOOSEFILE_FIELD_ID).click
  end
end