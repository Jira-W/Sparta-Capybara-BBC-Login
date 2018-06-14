require 'capybara/dsl'
require_relative '../generator_library/generator'

class BbcSignInPage
  include Capybara::DSL
  HOMEPAGE_URL = "https://account.bbc.com/signin"
  SIGN_IN_LINK_ID = "#idcta-link"
  SIGN_IN_BUTTON = "#submit-button"
  ERROR_MESSAGE = "#form-message-username"

  def initialize
    @input = Generator.new.form_generator_value
  end

  def click_sign_in_link
    find(SIGN_IN_LINK_ID).click
  end
  def input_email
    fill_in('Email', :with => @input.email_gen)
  end
  def input_password
    fill_in('password', :with => @input.password_gen)
  end
  def click_sign_in
    find(SIGN_IN_BUTTON).click
  end
  def error_message
    page.has_content?('Sorry, we can’t find an account with that email. You can ')
  end

end
