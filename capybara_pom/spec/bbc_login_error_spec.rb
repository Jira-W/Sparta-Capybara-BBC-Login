require 'spec_helper'


describe 'Incorrect user details produces valid error' do

  context 'It should response with the correct error when incorrect details are put'do

    it 'should produce an error when inputtting an incorrect password to a invalid account'do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_login_page.click_sign_in_link
      @bbc_site.bbc_login_page.input_email
      @bbc_site.bbc_login_page.input_password
      @bbc_site.bbc_login_page.click_sign_in
      expect(@bbc_site.bbc_login_page.error_message).to be true
    end


  end
end
