defmodule RentWeb.HomeLive do
  use RentWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <Layouts.app flash={@flash} current_scope={@current_scope}>
      <!-- Hero Section -->
      <section class="flex items-center justify-center bg-base-100 py-12">
        <div class="max-w-6xl mx-auto px-6 text-center">
          <div class="mb-10">
            <span class="inline-block px-4 py-2 bg-primary/10 text-primary rounded-full text-sm font-medium">
              Premium Short-Term Rentals in Egypt
            </span>
          </div>
          <h1 class="text-5xl md:text-6xl lg:text-7xl font-bold tracking-tight mb-10 text-base-content leading-tight">
            Live Like a Local<br/>Experience Egypt
          </h1>
          <p class="text-lg md:text-xl text-base-content/70 max-w-3xl mx-auto mb-12 leading-relaxed">
            Discover premium apartments in Egypt's most exclusive neighborhoods.
            <span class="text-primary font-semibold">Local prices</span> with
            <span class="text-secondary font-semibold">world-class service</span>.
          </p>
          <div class="flex flex-col sm:flex-row gap-4 justify-center items-center">
            <.link navigate="/properties" class="px-8 py-4 bg-primary text-primary-content rounded-xl font-semibold text-lg hover:bg-primary/90 transition-all hover:scale-105 shadow-lg hover:shadow-xl">
              Explore Properties
            </.link>
            <.link navigate="/users/register" class="px-8 py-4 bg-base-200 text-base-content rounded-xl font-semibold text-lg hover:bg-base-300 transition-all hover:scale-105 border border-base-content/10">
              List Your Property
            </.link>
          </div>
        </div>
      </section>
    </Layouts.app>
    """
  end
end
