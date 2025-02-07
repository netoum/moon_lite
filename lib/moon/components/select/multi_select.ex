defmodule Moon.Components.Select.MultiSelect.Labels.SelectedLabel do
  @moduledoc false

  use Moon.StatelessComponent

  alias Moon.Components.Label
  alias Moon.Components.Select.Helpers, as: SelectHelpers
  alias Moon.Icons.ControlsClose
  alias Phoenix.LiveView.JS

  prop(select_id, :string)
  prop(option, :any)
  prop(size, :string)
  prop(disabled, :boolean)
  prop(selected_label_background_color_class, :css_class)
  prop(selected_label_text_color_class, :css_class)

  def render(assigns) do
    ~F"""
    {#if @option}
      <Label
        class={SelectHelpers.innerlabel_font_class(@size)}
        background_color={@selected_label_background_color_class}
        color={@selected_label_text_color_class}
      >
        {@option.label}
        <:right_icon>
          <div
            class="cursor-pointer"
            :on-click={!@disabled &&
              JS.dispatch("moon:update-select",
                detail: %{value: @option.value, selected: false},
                to: "##{@select_id}"
              )}
          ><ControlsClose /></div>
        </:right_icon>
      </Label>
    {/if}
    """
  end
end

defmodule Moon.Components.Select.MultiSelect.Labels do
  @moduledoc false

  use Moon.StatelessComponent

  alias Moon.Components.Select.Helpers, as: SelectHelpers
  alias __MODULE__.SelectedLabel

  prop(select_id, :string)
  prop(options, :list, default: [])
  prop(value, :list, default: [])
  prop(size, :string)
  prop(prompt, :string)
  prop(disabled, :boolean)
  prop(selected_label_background_color_class, :css_class)
  prop(selected_label_text_color_class, :css_class)

  def render(assigns) do
    ~F"""
    {#if @value && @value != []}
      <div
        class={"gap-1", "grid grid-cols-1": @prompt}
        style={get_style("grid-auto-flow": if(@prompt, do: "row"))}
      >
        {#if @prompt}
          <div class="text-trunks text-moon-14" style="grid-col: span 2 / span 2;">
            {@prompt}
          </div>
        {/if}
        <div
          class="flex justify-start gap-1"
          style={get_style("grid-col": if(@prompt, do: "span 2 / span 2"))}
        >
          {#for v <- @value}
            <SelectedLabel
              {=@select_id}
              {=@size}
              {=@disabled}
              {=@selected_label_background_color_class}
              {=@selected_label_text_color_class}
              option={SelectHelpers.get_option(@options, v)}
            />
          {/for}
        </div>
      </div>
    {#else}
      <div class={
        "text-trunks",
        SelectHelpers.prompt_font_class(@size)
      }>
        {@prompt}
      </div>
    {/if}
    """
  end
end

# https://www.figma.com/file/S3q1SkVngbwHuwpxHKCsgtJj/Moon---Components?node-id=22819%3A17501
defmodule Moon.Components.Select.MultiSelect do
  @moduledoc false

  use Moon.StatefulComponent

  alias Moon.Autolayouts.PullAside
  alias Moon.Autolayouts.TopToDown
  alias Moon.Components.FieldBorder
  alias Moon.Components.Popover
  alias Moon.Components.Select.Dropdown
  alias Moon.Components.Select.Helpers, as: SelectHelpers
  alias __MODULE__.Labels

  prop(field, :atom, from_context: {Surface.Components.Form.Field, :field})
  prop(form, :form, from_context: {Surface.Components.Form, :form})
  prop(label, :string)
  prop(options, :any, default: [])
  prop(value, :any)
  prop(prompt, :string)
  prop(error, :string)
  prop(disabled, :boolean, default: false)
  prop(required, :boolean)
  prop(class, :string)
  prop(size, :string, values: ~w(small medium large xlarge), default: "medium")
  prop(popover_placement, :string, default: "bottom-start")
  prop(popover_class, :string)
  prop(field_border_class, :string, default: FieldBorder.get_default_states_class())
  prop(field_border_color_class, :string, values: Moon.colors(), default: "goku")
  prop(selected_label_background_color_class, :css_class, default: "bulma")
  prop(selected_label_text_color_class, :css_class, default: "goku")

  prop(searched_options, :any, default: nil)
  prop(on_search_change, :event)
  prop(search_string, :string, default: nil)
  prop(with, :string, default: nil)
  prop(search_min_width, :css_class, default: "min-w-[144px]")

  data(open, :boolean, default: false)

  slot(default)

  def render(assigns) do
    ~F"""
    <Popover placement={@popover_placement} show={@open} on_close="close" class={@popover_class}>
      {Phoenix.HTML.Form.multiple_select(@form, @field, SelectHelpers.get_formatted_options(@options),
        class: "hidden",
        id: @id
      )}
      <FieldBorder
        testid={"#{@id}-toggle_open"}
        click="toggle_open"
        states_class={@field_border_class}
        class={
          "w-full",
          "bg-#{@field_border_color_class}": @field_border_color_class
        }
      >
        <PullAside class={
          "leading-6",
          SelectHelpers.get_padding(@size),
          get_disabled_class(@disabled)
        }>
          <:left>
            <Labels
              select_id={@id}
              value={SelectHelpers.get_normalized_value(@form, @field, true, value: @value)}
              {=@options}
              {=@prompt}
              {=@size}
              {=@disabled}
              {=@selected_label_background_color_class}
              {=@selected_label_text_color_class}
            />
          </:left>
          <:right>
            <Moon.Icons.ControlsChevronDown />
          </:right>
        </PullAside>
      </FieldBorder>
      <:content>
        <TopToDown>
          <div class={
            "overflow-auto rounded-moon-i-md box-border border border-solid",
            "border-beerus min-h-[20px] max-h-[200px] drop-shadow-2xl",
            "#{@search_min_width}": not is_nil(@on_search_change)
          }>
            <Dropdown
              class="w-auto"
              id={"#{@id}-dropdown"}
              select_id={@id}
              available_options={@options}
              options={@searched_options || @options}
              {=@disabled}
              {=@on_search_change}
              {=@search_string}
              {=@with}
              is_multi
            />
          </div>
        </TopToDown>
      </:content>
    </Popover>
    """
  end

  def handle_event("close", _params, socket) do
    socket = assign(socket, open: false)
    {:noreply, socket}
  end

  def handle_event("toggle_open", _params, socket) do
    if socket.assigns.disabled == false do
      {:noreply, assign(socket, open: !socket.assigns.open)}
    else
      {:noreply, socket}
    end
  end

  defp get_disabled_class(disabled) do
    if disabled do
      "opacity-60 cursor-not-allowed"
    end
  end
end
