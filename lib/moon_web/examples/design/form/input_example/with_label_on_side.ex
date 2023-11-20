defmodule MoonWeb.Examples.Design.Form.InputExample.WithHorizontalLabel do
  @moduledoc false

  use Moon.StatelessComponent

  use MoonWeb, :example

  alias Moon.Design.Form
  alias Moon.Design.Form.Input
  alias Moon.Design.Form.Field
  alias MoonWeb.Schema.User

  prop(user_changeset, :any, default: User.changeset(%User{}))

  def handle_event("changed", %{"user" => params}, socket) do
    {:noreply, assign(socket, user_changeset: User.changeset(%User{}, params))}
  end

  def render(assigns) do
    ~F"""
    <div class="flex flex-col gap-2">
      {#for size <- ~w(sm md lg)}
        <Form for={@user_changeset} is_horizontal>
          <Field label={"Label for #{size}"} field={:email} {=size}>
            <Input {=size} placeholder={"Placeholder for #{size}"} />
          </Field>
        </Form>
      {/for}
    </div>
    """
  end

  def code() do
    """
    alias Moon.Design.Form
    alias Moon.Design.Form.Input
    alias Moon.Design.Form.Field
    alias MoonWeb.Schema.User

    prop(user_changeset, :any, default: User.changeset(%User{}))

    def handle_event("changed", %{"user" => params}, socket) do
      {:noreply, assign(socket, user_changeset: User.changeset(%User{}, params))}
    end

    def render(assigns) do
      ~F\"""
      <div class="flex flex-col gap-2">
        {#for size <- ~w(sm md lg)}
          <Form for={@user_changeset} is_horizontal>
            <Field label={"Label for #\{size}"} field={:email} {=size}>
              <Input {=size} placeholder={"Placeholder for #\{size}"} />
            </Field>
          </Form>
        {/for}
      </div>
      \"""
    end
    """
  end
end
