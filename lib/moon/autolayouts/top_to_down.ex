defmodule Moon.Autolayouts.TopToDown do
  @moduledoc false

  use Moon.StatelessComponent

  slot default
  prop class, :string, default: nil
  prop gap, :any, default: 2

  def render(assigns) do
    ~F"""
    <div class={"flex gap-#{@gap} flex-col #{@class}"}>
      <#slot />
    </div>
    """
  end
end
