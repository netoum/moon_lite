defmodule Moon.Assets.Icons.IconSportsRugby do
  use Moon.StatelessComponent
  use Moon.Components.Context

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsRugby-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M18.0315 8.23312C17.5961 10.4097 16.3349 12.6315 14.4791 14.4875C11.7621 17.2075 8.37854 18.518 5.76692 18.1349C8.01082 17.7282 10.8536 16.0745 13.4588 13.4675C16.0564 10.8681 17.7122 8.03192 18.124 5.78968C18.2304 6.53745 18.2068 7.35731 18.0315 8.23312ZM5.5078 5.51208C7.91513 3.10091 10.8515 1.7915 13.305 1.7915C13.6147 1.7915 13.9125 1.82055 14.205 1.86251C11.9632 2.2746 9.12579 3.93046 6.52815 6.53099C3.93051 9.13045 2.27472 11.9698 1.86185 14.2121C1.48769 11.6008 2.79834 8.22344 5.5078 5.51208ZM12.8889 12.8962C9.16342 16.6243 4.69281 18.4491 3.12197 16.875C1.5522 15.3052 3.37356 10.8294 7.09799 7.10232C9.91175 4.28659 13.1513 2.55864 15.2447 2.55864C15.9231 2.55864 16.4811 2.74048 16.865 3.12459C18.4336 4.69437 16.6134 9.16919 12.8889 12.8962ZM17.4348 2.55326C14.6469 -0.236634 9.03977 0.834996 4.93795 4.93969C0.835054 9.04653 -0.235827 14.6565 2.55212 17.4464C3.6015 18.4965 5.05085 19 6.66792 19C9.34728 19 12.4911 17.6196 15.049 15.0599C17.0166 13.091 18.3562 10.7218 18.8218 8.39021C19.3002 6.00056 18.8078 3.92723 17.4348 2.55326Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
