defmodule Moon.Assets.Patterns.PatternSpeed do
  use Moon.StatelessComponent
  use Moon.Components.Context

  false

  property color, :string
  property height, :string
  property width, :string
  property font_size, :string
  property vertical_align, :string

  def render(assigns) do
    false

    class_name =
      get_class_name(
        "Patterns-PatternSpeed-#{assigns[:color]}-#{assigns[:height]}-#{assigns[:width]}-#{
          assigns[:font_size]
        }-#{assigns[:vertical_align]}"
      )

    ~H"""
    <Context get={{ :theme }}>
    <style>
      .{{ class_name }} {
        vertical-align: middle;

        

        
        color: {{ get_color(@color, @theme) }};
        height: {{ @height }};
        width: {{ @width }};
        font-size: {{ @font_size }};
        vertical-align: {{ @vertical_align }};
        overflow: hidden;
        
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">  <rect width="0.650036" height="13.031" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 14.491 6.62866)" fill="currentColor"/>  <rect opacity="0.25" width="0.650036" height="13.6139" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 15.2281 9.32983)" fill="currentColor"/>  <rect opacity="0.75" width="0.650036" height="12.3069" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 15.7269 10.6319)" fill="currentColor"/>  <rect opacity="0.5" width="0.650036" height="14.4873" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 14.6338 12.3535)" fill="currentColor"/>  <rect opacity="0.75" width="0.650036" height="7.91358" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 16 13.5236)" fill="currentColor"/>  <rect opacity="0.5" width="0.650036" height="10.844" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 10.7341 6.15756)" fill="currentColor"/>  <rect opacity="0.75" width="0.650036" height="14.5662" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 14.8522 3.62259)" fill="currentColor"/>  <rect opacity="0.5" width="0.650036" height="9.96036" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 15.3185 2.03079)" fill="currentColor"/>  <rect opacity="0.5" width="0.650036" height="12.5827" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 12.3506 8.61633)" fill="currentColor"/>  <rect opacity="0.25" width="0.650036" height="13.2746" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 13.0864 1.2554)" fill="currentColor"/>  <rect opacity="0.5" width="0.650036" height="9.18365" rx="0.325018" transform="matrix(-0.266106 -0.963944 -0.967804 0.251703 9.96375 0.626587)" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
