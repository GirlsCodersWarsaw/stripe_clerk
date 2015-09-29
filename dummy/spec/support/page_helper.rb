module PageHelper
  
  def ensure_path path
    expect(page.current_path).to eq path
  end
  def visit_path path
    visit path
    expect(status_code).to be 200
    expect(page).not_to have_css(".translation_missing")
    ensure_path path
  end

  def ensure_clerk
    clerk = Clerk.first
    clerk = create :clerk unless clerk
    expect(clerk).not_to be nil
    clerk
  end
  
  def sign_in
    clerk = ensure_clerk
    visit OfficeClerk::Engine.routes.url_helpers.sign_in_path
    fill_in "email" , :with => clerk.email
    fill_in "password" , :with => "password"
    click_button I18n.t(:sign_in)
    expect(page).to have_content I18n.t(:basket)
    clerk
  end

  def expect_basket_total price
    expect(find(".total").text).to include( price.round(2).to_s.sub(".",",")) # TODO remove the format hack 
  end
end
RSpec.configure do |config|
  config.include PageHelper  
end