describe 'user can create order' do
  context 'not logged in' do

    it "requires user to be logged in" do

      visit '/cart'
      click_link_or_button("Checkout")

      expect(current_path).to eq('/login')
      expect(page).to have_content("You must be logged in to checkout!")
      expect(page).to have_content("Login")

    end

    context 'when logged in' do
      it "user can create order" do

        user = User.create(username: "adam", password: "adam")
        d = Destination.create(continent: "North America", description: "North American continent description.",
                            lat: 41.8369, long: -87.6847, image_url: "south-america.jpg" )
        a = Activity.create(name: "Hiking", description: "We loven to do ze hikes.", image_url: "hiker.jpg")
        Trip.create(destination_id: d.id, activity_id: a.id, trip_cost: 10000.00, name: "Canadian Rockies")
        dd = Destination.create(continent: "South America", description: "South American continent description.",
                            lat: -42.8369, long: -17.6847, image_url: "south-america.jpg" )
        Trip.create(destination_id: dd.id, activity_id: a.id, total_cost: 400000.00, trip_cost: 15000.00, name: "Patagonia" )


        visit '/login'
        fill_in "Username", with: "adam"
        fill_in "Password", with: "adam"

        click_button "Login"

        visit '/destinations'
        first(:link, "Browse Activities").click
        # click_link_or_button "Browse Activities"
        # click_link_or_button "Trip Information"
         first(:link, "Trip Information").click
        click_link_or_button "Book Trip"

        visit '/trips/2'
        # click_link_or_button "Browse Activities"
        # click_link_or_button "Trip Information"
        click_link_or_button "Book Trip"

        visit '/cart'
        click_link_or_button("Checkout")

        expect(current_path).to eq "/orders"
        expect(page).to have_content("Orders")
        expect(page).to have_content("Canadian Rockies")

        expect(user.orders.count).to eq(1)
      end
    end
  end
end
