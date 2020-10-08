defmodule Moon.Assets.Icons.IconChartSegment do
  use Moon.StatelessComponent
  use Moon.Components.Context

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconChartSegment-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M13 0.0357604C10.5831 0.20882 8.24623 1.0069 6.22202 2.35943C3.91973 3.89777 2.12532 6.08427 1.06569 8.64244C0.00606596 11.2006 -0.271181 14.0155 0.269012 16.7313C0.809205 19.447 2.14258 21.9416 4.10051 23.8995C6.05845 25.8574 8.55301 27.1908 11.2687 27.731C13.9845 28.2712 16.7994 27.9939 19.3576 26.9343C21.9157 25.8747 24.1022 24.0803 25.6406 21.778C26.9931 19.7538 27.7912 17.4169 27.9643 15H28L28 14.0128C28 14.0085 28 14.0043 28 14L28 13H27.9642C27.9228 12.4207 27.8451 11.8425 27.731 11.2687C27.1908 8.55301 25.8574 6.05845 23.8995 4.10051C21.9416 2.14258 19.447 0.809206 16.7313 0.269012C16.1575 0.154883 15.5793 0.0772404 15 0.0357567V6.91414e-06L14.014 6.91414e-06C14.0093 2.2695e-06 14.0047 0 14 0L13 6.31805e-06V0.0357604ZM13 2.04174L13 15L25.9583 15C25.7893 17.0208 25.1103 18.9717 23.9776 20.6669C22.6591 22.6402 20.7849 24.1783 18.5922 25.0866C16.3995 25.9948 13.9867 26.2325 11.6589 25.7694C9.33115 25.3064 7.19296 24.1635 5.51472 22.4853C3.83649 20.8071 2.69361 18.6689 2.23058 16.3411C1.76756 14.0133 2.0052 11.6005 2.91345 9.40781C3.8217 7.21509 5.35977 5.34095 7.33316 4.02237C9.02828 2.88973 10.9792 2.21072 13 2.04174ZM15 13V2.04174C15.4487 2.07926 15.8964 2.14214 16.3411 2.23058C18.6689 2.69361 20.807 3.83649 22.4853 5.51472C24.1635 7.19295 25.3064 9.33115 25.7694 11.6589C25.8579 12.1036 25.9207 12.5513 25.9583 13L15 13Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
