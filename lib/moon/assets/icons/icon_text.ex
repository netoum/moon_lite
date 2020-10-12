defmodule Moon.Assets.Icons.IconText do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)

  def render(assigns) do
    class_name = get_class_name("Icons-IconText-#{assigns.color}-#{assigns.background_color}")

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

    <svg class={{ class_name }} width="auto" height="1em"  viewBox="0 0 22 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M6 16C6 15.4477 6.44772 15 7 15H15C15.5523 15 16 15.4477 16 16C16 16.5523 15.5523 17 15 17H7C6.44772 17 6 16.5523 6 16Z" fill="currentColor"/>  <path d="M6 21C6 20.4477 6.44772 20 7 20H11C11.5523 20 12 20.4477 12 21C12 21.5523 11.5523 22 11 22H7C6.44772 22 6 21.5523 6 21Z" fill="currentColor"/>  <path fill-rule="evenodd" clip-rule="evenodd" d="M8.00003 0C7.73481 0 7.48046 0.105357 7.29292 0.292893L0.292926 7.29289C0.10539 7.48043 3.36171e-05 7.73478 3.29614e-05 8L0 23C-7.0333e-06 25.7614 2.23857 28 5 28H17C19.7615 28 22 25.7614 22 23L22 5C22 2.23858 19.7615 0 17 0H8.00003ZM7.99999 8V2.41425L2.41425 8H7.99999ZM8.99999 10H2.00003L2 23C2 24.6569 3.34314 26 5 26H17C18.6569 26 20 24.6569 20 23L20 5C20 3.34315 18.6569 2 17 2H9.99999V9C9.99999 9.55229 9.55227 10 8.99999 10Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
