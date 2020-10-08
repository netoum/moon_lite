defmodule Moon.Assets.Icons.IconYoutube do
  use Moon.StatelessComponent
  use Moon.Components.Context

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconYoutube-#{assigns[:color]}-#{assigns[:background_color]}")

    false

    ~H"""
    <Context get={{ :theme }}>
    <style>
      .{{ class_name }} {
        vertical-align: middle;

        
        color: {{ get_color(@color, @theme) }};
        background-color: {{ get_color(@background_color, @theme) }};
        display: inline-block;
        overflow: hidden;
        

        
      }
    </style>

    <svg class={{ class_name }} width="1em" height="auto" viewBox="0 0 20 16" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M19.572 3.13726C19.3416 2.27059 18.6667 1.58726 17.8107 1.35393C16.2469 0.920593 9.99177 0.920593 9.99177 0.920593C9.99177 0.920593 3.73663 0.920593 2.17284 1.33726C1.33333 1.57059 0.641975 2.27059 0.411523 3.13726C0 4.72059 0 8.00393 0 8.00393C0 8.00393 0 11.3039 0.411523 12.8706C0.641975 13.7373 1.31687 14.4206 2.17284 14.6539C3.75309 15.0873 9.99177 15.0873 9.99177 15.0873C9.99177 15.0873 16.2469 15.0873 17.8107 14.6706C18.6667 14.4373 19.3416 13.7539 19.572 12.8873C19.9835 11.3039 19.9835 8.02059 19.9835 8.02059C19.9835 8.02059 20 4.72059 19.572 3.13726Z" fill="#FF0000"/> <path d="M8 11.0372L13.2016 8.00391L8 4.97058V11.0372Z" fill="white"/> </svg>
    </Context>
    """
  end
end
