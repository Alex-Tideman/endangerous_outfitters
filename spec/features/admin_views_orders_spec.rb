require "rails_helper"

feature "Admin orders features" do
  describe "admin orders" do

    before :each do
      @user = User.create(username: "Alex", password: "password", role: 1)
      visit root_url
      click_link "Login"
      fill_in("Username", with: "Alex")
      fill_in("Password", with: "password")
      click_button("Login")
    end

    it "can view all orders" do
      2.times do create_orders
      end

      2.times do Order.create(user_id: @user.id, status: "Paid")
      end

      visit admin_dashboard_path
      click_link("View All Orders")
      click_link("Filter Status - Ordered")

      within(:css, "tbody"){
        assert page.has_content?("Ordered")
        refute page.has_content?("Paid")
      }
    end

    it "can update the status of an order" do
      create_orders

      visit admin_dashboard_path
      click_link("View All Orders")
      click_link("View Order")
      select("Cancelled", from: "order_status")
      click_link_or_button("Update Status")

      within(:css, "tbody"){
        assert page.has_content?("Cancelled")
        refute page.has_content?("Ordered")
      }

    end
  end
  def create_orders
    Order.create(user_id: @user.id, status: "Ordered")
  end

end
