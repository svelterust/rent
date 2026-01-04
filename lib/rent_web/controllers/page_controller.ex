defmodule RentWeb.PageController do
  use RentWeb, :controller

  def home(conn, _params) do
    rentals = [
      %{title: "Downtown Apartment", description: "Modern 2-bedroom apartment", price: 1200},
      %{title: "Suburban House", description: "Spacious 3-bedroom house", price: 1800}
    ]

    featured_properties = [
      %{title: "Cozy Studio", description: "Perfect for singles", price: 800, location: "Downtown"},
      %{title: "Family Home", description: "Great for families", price: 2200, location: "Suburbs"},
      %{title: "Luxury Penthouse", description: "Stunning city views", price: 3500, location: "Downtown"}
    ]

    render(conn, :home, rentals: rentals, featured_properties: featured_properties)
  end
end
