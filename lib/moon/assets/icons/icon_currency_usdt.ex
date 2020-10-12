defmodule Moon.Assets.Icons.IconCurrencyUSDT do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconCurrencyUSDT-#{assigns.color}-#{assigns.background_color}")

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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" clip-rule="evenodd" d="M24 12C24 5.37288 18.6271 0 12 0C5.37216 0 0 5.37144 0 12C0 18.6286 5.37312 24 12 24C18.6269 24 24 18.6271 24 12ZM13.481 8.616V10.4011L13.482 10.4016C16.794 10.5545 19.2838 11.2111 19.2838 11.9976C19.2838 12.7841 16.794 13.4407 13.482 13.5936V19.3121H10.53V13.5941C7.2132 13.4407 4.7172 12.7836 4.7172 11.9964C4.7172 11.2092 7.212 10.5521 10.53 10.3997V8.616H6.44736V5.89608H17.5632V8.616H13.481ZM13.482 13.1078V13.1093L13.4825 13.1081C16.4071 12.9778 18.5911 12.4666 18.5911 11.8579C18.5911 11.2493 16.4081 10.7383 13.4825 10.608V12.6012C13.3985 12.6089 12.9408 12.6468 12.0305 12.6468C11.2726 12.6468 10.7234 12.6144 10.5314 12.6012V10.608C7.60032 10.7381 5.412 11.2478 5.412 11.8586C5.412 12.4694 7.60008 12.9799 10.5314 13.1098V13.1074C10.7203 13.1172 11.2562 13.1388 12.018 13.1388C12.9708 13.1388 13.3987 13.1131 13.482 13.1078Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
