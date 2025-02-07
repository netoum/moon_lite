defmodule Moon.Components.Drawer.Dialog do
  @moduledoc false
  use Moon.StatelessComponent

  alias Moon.Autolayouts.PullAside
  alias Moon.Components.Divider
  alias Moon.Design.Button.IconButton

  prop(close, :event)
  prop(has_no_divider, :boolean, default: false)
  slot(title)
  slot(content)
  slot(footer)

  def render(assigns) do
    dialog_content_height = if slot_assigned?(:footer), do: "h-5/6", else: "h-screen"

    ~F"""
    <div class="relative w-full h-full bg-goku">
      <PullAside class="py-4 px-6">
        <:left>
          {#if slot_assigned?(:title)}
            <div class="text-moon-18 font-semibold">
              <#slot {@title} />
            </div>
          {/if}
        </:left>
        <:right>
          <IconButton icon_only="controls_close" size="sm" variant="ghost" on_click={@close} />
        </:right>
      </PullAside>
      <Divider :if={!@has_no_divider} />
      {#if slot_assigned?(:content)}
        <div class={"p-6 overflow-y-auto", dialog_content_height}>
          <#slot {@content} />
        </div>
      {/if}
      {#if slot_assigned?(:footer)}
        <div class="absolute bottom-0 left-0 right-0 bg-goku">
          <Divider />
          <div class="p-4">
            <#slot {@footer} />
          </div>
        </div>
      {/if}
    </div>
    """
  end
end

defmodule Moon.Components.Drawer do
  @moduledoc false
  use Moon.StatelessComponent
  prop(id, :string)
  prop(testid, :string)
  prop(class, :css_class)
  prop(close, :event)
  slot(default)

  def render(assigns) do
    ~F"""
    <div id={@id} class={"fixed top-0 right-0 bottom-0 bg-goku z-40", @class} data-testid={@testid}>
      <#slot />
    </div>
    """
  end
end
