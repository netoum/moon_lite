defmodule Moon.Assets.Icons.IconHome do
  use Moon.StatelessComponent
  use Moon.Components.Context

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name = get_class_name("Icons-IconHome-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="auto" viewBox="0 0 20 18" version="1.1" xmlns="http://www.w3.org/2000/svg" >   <!-- Generator: Sketch 53 (72520) - https://sketchapp.com -->   <title>icon-home</title>   <desc>Created with Sketch.</desc>   <g id="Icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">     <g id="Home" transform="translate(0.000000, -1.000000)" fill="currentColor" fill-rule="nonzero">       <path d="M15.1467986,11.7804928 L15.323349,11.6008341 L17.0398112,11.6008341 L17.2163616,11.7804928 L17.2163616,18.8203413 L17.0398112,19 L3.15401896,19 L2.97746856,18.8203413 L2.97746856,11.7804928 L3.15401896,11.6008341 L4.87048123,11.6008341 L5.04703163,11.7804928 L5.04703163,16.8940009 L15.1467986,16.8940009 L15.1467986,11.7804928 Z M1.42507698,11.9737995 L1.17551918,11.9659036 L4.08562073e-14,10.692932 L0.00776090894,10.4389759 L4.32348394,6.38999339 L4.32348394,2.32933264 L4.50003434,2.14967395 L6.2164966,2.14967395 L6.39304701,2.32933264 L6.39304701,4.33335528 L9.87909624,1 L10.1208916,1.00000012 L19.9922268,10.4389759 L20,10.6929186 L18.8247211,11.9658903 L18.5751528,11.9738012 L9.9999955,3.77426869 L1.42507698,11.9737995 Z" id="icon-home"></path>     </g>   </g> </svg>
    </Context>
    """
  end
end
