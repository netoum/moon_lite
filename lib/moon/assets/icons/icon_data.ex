defmodule Moon.Assets.Icons.IconData do
  use Moon.StatelessComponent
  use Moon.Components.Context

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name = get_class_name("Icons-IconData-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="auto" height="1em" viewBox="0 0 24 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M0.0321695 6C0.273741 4.13835 1.84706 2.68026 3.77461 1.71649C5.93134 0.638122 8.84085 0 12 0C15.1591 0 18.0687 0.638122 20.2254 1.71649C22.1529 2.68026 23.7263 4.13835 23.9678 6H24V21.5C24 23.6016 22.3223 25.2351 20.2254 26.2835C18.0687 27.3619 15.1591 28 12 28C8.84085 28 5.93134 27.3619 3.77461 26.2835C1.6777 25.2351 0 23.6016 0 21.5V6H0.0321695ZM2 6.5C2 7.43596 2.78473 8.55251 4.66904 9.49466C6.49353 10.4069 9.08402 11 12 11C14.916 11 17.5065 10.4069 19.331 9.49466C21.2153 8.55251 22 7.43596 22 6.5C22 5.56404 21.2153 4.44749 19.331 3.50534C17.5065 2.59309 14.916 2 12 2C9.08402 2 6.49353 2.59309 4.66904 3.50534C2.78473 4.44749 2 5.56404 2 6.5ZM22 10.1572C21.4721 10.5854 20.8685 10.962 20.2254 11.2835C18.0687 12.3619 15.1591 13 12 13C8.84085 13 5.93134 12.3619 3.77461 11.2835C3.13155 10.962 2.52791 10.5854 2 10.1572V14.5C2 15.436 2.78473 16.5525 4.66904 17.4947C6.49353 18.4069 9.08402 19 12 19C14.916 19 17.5065 18.4069 19.331 17.4947C21.2153 16.5525 22 15.436 22 14.5V10.1572ZM2 21.5V18.1572C2.52791 18.5854 3.13155 18.962 3.77461 19.2835C5.93134 20.3619 8.84085 21 12 21C15.1591 21 18.0687 20.3619 20.2254 19.2835C20.8685 18.962 21.4721 18.5854 22 18.1572V21.5C22 22.436 21.2153 23.5525 19.331 24.4947C17.5065 25.4069 14.916 26 12 26C9.08402 26 6.49353 25.4069 4.66904 24.4947C2.78473 23.5525 2 22.436 2 21.5Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
