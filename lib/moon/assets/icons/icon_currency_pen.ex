defmodule Moon.Assets.Icons.IconCurrencyPEN do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconCurrencyPEN-#{assigns.color}-#{assigns.background_color}")

    ~H"""
    <Context get={{ theme: theme }}>
    <style>
      .{{ class_name }} {
        vertical-align: middle;


        color: {{ get_color(@color, @theme) }};
        background-color: {{ get_color(@background_color, @theme) }};
        display: inline-block;
        overflow: hidden;



      }
    </style>

    <svg class={{ class_name }} width="1em" height="auto"  viewBox="0 0 66 59" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M17.2011 51.576C24.7531 51.576 33.9051 47.736 33.9051 37.048C33.9051 28.28 27.7611 26.232 19.7611 23.16C14.8331 21.24 13.1691 20.088 13.2331 17.912C13.2331 15.736 14.8331 14.392 17.4571 14.392C20.0171 14.392 22.8331 15.608 26.7371 18.68L32.7531 10.872C28.4011 7.15998 22.9611 4.85599 17.0091 4.98399C8.56107 5.11199 2.09707 10.808 2.09707 18.36C2.09707 27.32 9.00907 30.584 15.9211 32.952C21.0411 34.68 22.6411 35.768 22.6411 38.264C22.6411 40.312 21.1051 42.104 17.5211 42.104C14.3851 42.104 10.2251 40.504 6.76907 36.728L0.49707 44.344C5.36107 49.336 11.3771 51.576 17.2011 51.576Z" fill="currentColor"/> <path d="M40.7806 58.104L65.0366 3.44799L58.0606 0.247986L33.7406 54.904L40.7806 58.104Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
