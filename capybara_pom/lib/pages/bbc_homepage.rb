require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  HOMEPAGE_URL = "https://www.bbc.co.uk"
  SIGN_IN_LINK_ID = "#idcta-link"

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

end
