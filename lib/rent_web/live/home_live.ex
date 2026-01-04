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
            <span class="whitespace-nowrap">
              <span class="text-primary font-semibold">Local prices</span> with
              <span class="text-secondary font-semibold">world-class service</span>.
            </span>
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

      <!-- Madinaty Feature Section -->
      <section class="py-16">
        <div class="max-w-7xl mx-auto px-6">
          <div class="grid lg:grid-cols-2 gap-12 items-center">
            <div>
              <span class="inline-block px-4 py-2 bg-primary/10 text-primary rounded-full text-sm font-medium mb-4">
                Affordable & Modern
              </span>
              <h2 class="text-3xl md:text-4xl font-bold mb-4">
                Madinaty
              </h2>
              <p class="text-base-content/70 mb-6 leading-relaxed">
                Modern living at affordable prices. A clean, green planned community with expansive parks and contemporary design.
              </p>
              <ul class="space-y-3 mb-8">
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Best Value for Money</span>
                </li>
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Expansive Green Spaces</span>
                </li>
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Modern Infrastructure</span>
                </li>
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Family-Friendly Environment</span>
                </li>
              </ul>
              <.link navigate="/properties?location=madinaty" class="inline-flex items-center gap-2 px-6 py-3 bg-primary text-primary-content rounded-xl font-semibold hover:bg-primary/90 transition-all hover:scale-105 shadow-lg">
                View Properties in Madinaty
              </.link>
            </div>
            <div class="relative">
              <div class="aspect-[4/3] rounded-2xl bg-gradient-to-br from-primary/20 to-secondary/20 shadow-xl"></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Rehab Feature Section -->
      <section class="py-16">
        <div class="max-w-7xl mx-auto px-6">
          <div class="grid lg:grid-cols-2 gap-12 items-center">
            <div class="order-2 lg:order-1 relative">
              <div class="aspect-[4/3] rounded-2xl bg-gradient-to-br from-primary/20 to-secondary/20 shadow-xl"></div>
            </div>
            <div class="order-1 lg:order-2">
              <span class="inline-block px-4 py-2 bg-primary/10 text-primary rounded-full text-sm font-medium mb-4">
                Established & Balanced
              </span>
              <h2 class="text-3xl md:text-4xl font-bold mb-4">
                Al Rehab
              </h2>
              <p class="text-base-content/70 mb-6 leading-relaxed">
                The original established community. A vibrant neighborhood with proven schools, thriving markets, and medium-range pricing.
              </p>
              <ul class="space-y-3 mb-8">
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Established Reputation</span>
                </li>
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Proven International Schools</span>
                </li>
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Vibrant Markets & Dining</span>
                </li>
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Strong Community Spirit</span>
                </li>
              </ul>
              <.link navigate="/properties?location=rehab" class="inline-flex items-center gap-2 px-6 py-3 bg-primary text-primary-content rounded-xl font-semibold hover:bg-primary/90 transition-all hover:scale-105 shadow-lg">
                View Properties in Al Rehab
              </.link>
            </div>
          </div>
        </div>
      </section>

      <!-- Mivida Feature Section -->
      <section class="py-16">
        <div class="max-w-7xl mx-auto px-6">
          <div class="grid lg:grid-cols-2 gap-12 items-center">
            <div>
              <span class="inline-block px-4 py-2 bg-primary/10 text-primary rounded-full text-sm font-medium mb-4">
                Premium & Exclusive
              </span>
              <h2 class="text-3xl md:text-4xl font-bold mb-4">
                Mivida
              </h2>
              <p class="text-base-content/70 mb-6 leading-relaxed">
                Dubai-inspired luxury living by Emaar. Experience world-class amenities, championship golf courses, and exclusive high-end residences.
              </p>
              <ul class="space-y-3 mb-8">
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Emaar Developer Quality</span>
                </li>
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Championship Golf Course</span>
                </li>
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">Luxury Clubhouses & Spas</span>
                </li>
                <li class="flex items-center gap-3">
                  <.icon name="hero-check-circle" class="w-5 h-5 text-primary flex-shrink-0" />
                  <span class="text-base-content/80">High-End Shopping & Dining</span>
                </li>
              </ul>
              <.link navigate="/properties?location=mivida" class="inline-flex items-center gap-2 px-6 py-3 bg-primary text-primary-content rounded-xl font-semibold hover:bg-primary/90 transition-all hover:scale-105 shadow-lg">
                View Properties in Mivida
              </.link>
            </div>
            <div class="relative">
              <div class="aspect-[4/3] rounded-2xl bg-gradient-to-br from-primary/20 to-secondary/20 shadow-xl"></div>
            </div>
          </div>
        </div>
      </section>

      <!-- Final CTA Section -->
      <section class="py-20">
        <div class="max-w-4xl mx-auto px-6 text-center">
          <h2 class="text-3xl md:text-4xl font-bold mb-6">
            Find Your Perfect Community
          </h2>
          <p class="text-lg text-base-content/70 mb-10 max-w-2xl mx-auto">
            Whether you're looking for affordable modern living, established neighborhoods, or premium luxury, we have the perfect property for you in Egypt's most sought-after communities.
          </p>
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <.link navigate="/properties" class="inline-flex items-center justify-center gap-2 px-8 py-4 bg-primary text-primary-content rounded-xl font-semibold text-lg hover:bg-primary/90 transition-all hover:scale-105 shadow-lg">
              Browse All Properties
            </.link>
          </div>
        </div>
      </section>
    </Layouts.app>
    """
  end
end
