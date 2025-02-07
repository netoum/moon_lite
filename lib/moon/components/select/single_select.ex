defmodule Moon.Components.Select.SingleSelect do
  @moduledoc false

  use Moon.StatefulComponent

  alias Moon.Autolayouts.PullAside
  alias Moon.Autolayouts.TopToDown
  alias Moon.Components.FieldBorder
  alias Moon.Components.FieldLabel
  alias Moon.Components.Popover
  alias Moon.Components.Select.Dropdown
  alias Moon.Components.Select.Helpers, as: SelectHelpers
  alias Moon.Components.Select.SingleSelect.Value.SelectedValue
  alias Moon.Components.Select.SingleSelect.HintText
  alias Moon.Components.ErrorTag

  prop(label, :string)
  prop(options, :any, default: [])
  prop(value, :any)
  prop(disabled, :boolean, default: false)
  prop(size, :string, values: ~w(sm md lg xl), default: "md")
  prop(popover_placement, :string, default: "bottom-start")
  prop(popover_class, :string)
  prop(placeholder, :string)
  prop(background_color, :string, values: Moon.colors(), default: "goku")
  prop(has_error, :boolean)
  prop(use_error_tag, :boolean)
  prop(selected_value_class, :css_class, default: "")

  prop(searched_options, :any, default: nil)
  prop(on_search_change, :event)
  prop(search_string, :string, default: nil)
  prop(with, :string, default: nil)
  prop(search_min_width, :css_class, default: "min-w-[144px]")

  data(open, :boolean, default: false)
  data(form, :form, from_context: {Surface.Components.Form, :form})
  data(field, :atom, from_context: {Surface.Components.Form.Field, :field})

  slot(hint_text_slot)

  def render(assigns) do
    ~F"""
    {#if @size != "xl"}
      <FieldLabel class="block text-trunks text-moon-16 font-normal mb-2">
        {@label}
      </FieldLabel>
    {/if}
    <Popover placement={@popover_placement} show={@open} on_close="close" class={@popover_class}>
      {Phoenix.HTML.Form.select(
        @form,
        @field,
        SelectHelpers.get_formatted_options(
          @options,
          SelectHelpers.get_normalized_value(@form, @field, false, value: @value)
        ),
        class: "hidden",
        id: @id,
        prompt: @label
      )}
      <FieldBorder
        testid={"#{@id}-toggle_open"}
        click="toggle_open"
        class={
          "w-full",
          "bg-#{@background_color}": @background_color
        }
        has_error={has_error(@has_error, @form, @field)}
      >
        <PullAside class={
          "leading-6",
          SelectHelpers.get_padding(@size),
          get_disabled_class(@disabled)
        }>
          <:left>
            <SelectedValue
              class={@selected_value_class}
              {=@size}
              {=@label}
              {=@placeholder}
              select_id={@id}
              option={get_option_selected(@form, @field, @options, @value)}
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
              id={"#{@id}-dropdown"}
              select_id={@id}
              available_options={@options}
              options={@searched_options || @options}
              {=@disabled}
              {=@on_search_change}
              {=@search_string}
              {=@with}
            />
          </div>
        </TopToDown>
      </:content>
    </Popover>
    <HintText :if={slot_assigned?(:hint_text_slot)} {=@has_error}>
      <#slot {@hint_text_slot} />
    </HintText>
    <div
      class="inline-block mt-2 text-moon-12"
      :if={@use_error_tag && has_error(@has_error, @form, @field)}
    >
      <ErrorTag {=@field} />
    </div>
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

  #
  # Private methods
  #

  defp get_disabled_class(disabled) do
    if disabled do
      "opacity-60 cursor-not-allowed"
    end
  end

  defp get_option_selected(form, field, options, value) do
    normalized_value = SelectHelpers.get_normalized_value(form, field, false, value: value)

    if normalized_value != "" do
      SelectHelpers.get_option(options, normalized_value)
    else
      ""
    end
  end

  defp has_error(has_error, form, field) do
    has_error || (field && form && Keyword.has_key?(form.errors, field))
  end
end
