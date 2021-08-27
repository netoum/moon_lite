defmodule MoonWeb.Pages.Components.SidebarPage do
  use MoonWeb, :live_view
  alias MoonWeb.Components.ExampleAndCode
  alias Moon.Components.CodePreview
  alias Moon.Components.Heading
  alias Moon.Components.Link
  alias Moon.Components.Sidebar
  alias Moon.Autolayouts.TopToDown

  alias Moon.Assets.Icons.IconSlots
  alias Moon.Assets.Icons.IconSportsBaseBall
  alias Moon.Assets.Logos.LogoBitcasinoFull
  alias Moon.Assets.Logos.LogoBitcasinoShort

  def mount(params, _session, socket) do
    socket =
      assign(socket,
        theme_name: params["theme_name"] || "sportsbet-dark",
        active_page: __MODULE__
      )

    {:ok, socket}
  end

  def render(assigns) do
    ~F"""
    <TopToDown>
      <Heading size={32}>Sidebar</Heading>

      <p>
        <Link to="https://github.com/coingaming/moon/blob/master/lib/moon_web/pages/components/sidebar_page.ex">Sourcecode of this page</Link>
        <Link to="https://moon.io/toolkit/sidebar">React implementation</Link>
      </p>

      <Heading size={24} class="mt-4" is_regular>Usage</Heading>

      <p>
        Wrap <code class="bg-goku-40">Sidebar</code> component inside layout with <code class="bg-goku-40">flex items-start h-screen overflow-hidden</code> classes on a parent div.
      </p>

      <p>
        Use <code class="bg-goku-40">open_width</code> prop to define sidebar width in an open mode. Default value is <code class="bg-goku-40">"14.5rem"</code>
      </p>

      <p>
        Use <code class="bg-goku-40">background_color</code> prop to define background color of the sidebar.
      </p>

      <p>
        Use slots <code class="bg-goku-40">short_logo, full_logo, menu</code> for sidebar parts.
      </p>

      <ExampleAndCode id="sidebar_1">
        <:example>
          <Sidebar background_color="bg-gohan-100" open_width="14rem">
            <:short_logo>
              <div class="flex items-center h-10">
                <LogoBitcasinoShort font_size="2.1rem" />
              </div>
            </:short_logo>

            <:full_logo>
              <div class="pl-1">
                <LogoBitcasinoFull font_size="10rem" class="h-10" />
              </div>
            </:full_logo>

            <:menu>
              <nav class="mt-5">
                <TopToDown>
                  <a href="#" class="flex items-center group">
                    <IconSlots
                      font_size="1.75rem"
                      class="flex-shrink-0 mr-3 transition transform scale-100 group-hover:scale-110"
                    />
                    <span class="group-hover:text-piccolo-100">Slots</span>
                  </a>
                  <a href="#" class="flex items-center group">
                    <IconSportsBaseBall
                      font_size="1.75rem"
                      class="flex-shrink-0 mr-3 transition transform scale-100 group-hover:scale-110"
                    />
                    <span class="group-hover:text-piccolo-100">Baseball</span>
                  </a>
                </TopToDown>
              </nav>
            </:menu>
          </Sidebar>
        </:example>

        <:code>
          <#CodePreview>
        alias Moon.Components.Sidebar
        alias Moon.Components.TopToDown
        alias Moon.Assets.Icons.IconSlots
        alias Moon.Assets.Icons.IconSportsBaseBall
        alias Moon.Assets.Logos.LogoBitcasinoFull
        alias Moon.Assets.Logos.LogoBitcasinoShort

        <Sidebar background_color="bg-gohan-100" open_width="14rem">
          <template slot="short_logo">
            <div class="flex items-center h-10">
              <LogoBitcasinoShort font_size="2.1rem" />
            </div>
          </template>

          <template slot="full_logo">
            <div class="pl-1">
              <LogoBitcasinoFull font_size="10rem" class="h-10" />
            </div>
          </template>

          <template slot="menu">
            <nav class="mt-5">
              <TopToDown>
                <a href="#" class="flex items-center group">
                  <IconSlots font_size="1.75rem" class="flex-shrink-0 mr-3 transition transform scale-100 group-hover:scale-110" />
                  <span class="group-hover:text-piccolo-100">Slots</span>
                </a>
                <a href="#" class="flex items-center group">
                  <IconSportsBaseBall font_size="1.75rem" class="flex-shrink-0 mr-3 transition transform scale-100 group-hover:scale-110" />
                  <span class="group-hover:text-piccolo-100">Baseball</span>
                </a>
              </TopToDown>
            </nav>
          </template>
        </Sidebar>
      </#CodePreview>
        </:code>
      </ExampleAndCode>
    </TopToDown>
    """
  end
end
