defmodule RentWeb.HomeLive do
  use RentWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <Layouts.app flash={@flash} current_scope={@current_scope}>
      <div class="text-center mb-12">
        <h1 class="text-4xl font-bold mb-4">Welcome to Rent</h1>
        <p class="text-lg text-base-content/70">Simple rental management</p>
      </div>

      <div class="mt-16">
        <h2 class="text-2xl font-semibold mb-6 text-center">Featured Properties</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <%= for property <- @featured_properties do %>
            <div class="card bg-base-200 shadow-xl">
              <div class="card-body">
                <h3 class="card-title">{property.title}</h3>
                <p class="text-base-content/70">{property.description}</p>
                <div class="card-actions justify-between items-center mt-4">
                  <span class="badge badge-primary">${property.price}/mo</span>
                  <span class="badge badge-ghost">{property.location}</span>
                </div>
              </div>
            </div>
          <% end %>
        </div>
      </div>
    </Layouts.app>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    rentals = [
      %{title: "Downtown Apartment", description: "Modern 2-bedroom apartment", price: 1200},
      %{title: "Suburban House", description: "Spacious 3-bedroom house", price: 1800}
    ]

    featured_properties = [
      %{
        title: "Cozy Studio",
        description: "Perfect for singles",
        price: 800,
        location: "Downtown"
      },
      %{
        title: "Family Home",
        description: "Great for families",
        price: 2200,
        location: "Suburbs"
      },
      %{
        title: "Luxury Penthouse",
        description: "Stunning city views",
        price: 3500,
        location: "Downtown"
      }
    ]

    {:ok, assign(socket, rentals: rentals, featured_properties: featured_properties)}
  end
end
