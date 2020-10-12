defmodule Moon.Assets.Icons.IconMoon do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)

  def render(assigns) do
    class_name = get_class_name("Icons-IconMoon-#{assigns.color}-#{assigns.background_color}")

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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M21.0167 15.1369C19.6948 18.0444 16.7653 20.0504 13.3733 20.0388C8.74396 20.023 5.01278 16.2662 5.0286 11.6369C5.04019 8.24489 7.06617 5.32913 9.98264 4.02709C9.49903 5.08145 9.22839 6.2432 9.2242 7.46986C9.20842 12.0885 12.9396 15.8559 17.5689 15.8718C18.7955 15.8759 19.9591 15.6133 21.0167 15.1369Z" fill="#8697A2"/>  <path d="M3.54783 6.00512C3.82397 6.00606 4.04859 5.78297 4.04954 5.50683C4.05048 5.23069 3.82739 5.00607 3.55125 5.00512C3.27511 5.00418 3.05049 5.22727 3.04954 5.50341C3.0486 5.77955 3.27169 6.00417 3.54783 6.00512Z" fill="#8697A2"/>  <path d="M14.0444 7.04099C14.5967 7.04288 15.0459 6.5967 15.0478 6.04442C15.0497 5.49214 14.6035 5.04289 14.0512 5.04101C13.4989 5.03912 13.0497 5.4853 13.0478 6.03758C13.0459 6.58986 13.4921 7.03911 14.0444 7.04099Z" fill="#8697A2"/>  <path d="M18.5307 11.0564C18.8068 11.0573 19.0315 10.8342 19.0324 10.5581C19.0333 10.282 18.8102 10.0573 18.5341 10.0564C18.258 10.0555 18.0333 10.2786 18.0324 10.5547C18.0315 10.8308 18.2545 11.0555 18.5307 11.0564Z" fill="#8697A2"/>  <path d="M3.00341 19.0033C3.55569 19.0052 4.00494 18.559 4.00682 18.0067C4.00871 17.4544 3.56253 17.0052 3.01025 17.0033C2.45797 17.0014 2.00872 17.4476 2.00684 17.9999C2.00495 18.5522 2.45113 19.0014 3.00341 19.0033Z" fill="#8697A2"/> </svg>
    </Context>
    """
  end
end
