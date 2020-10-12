defmodule Moon.Assets.Icons.IconSportsPool do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsPool-#{assigns.color}-#{assigns.background_color}")

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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M9.50782 8.69648C9.61098 8.61051 9.77648 8.56752 10 8.56752C10.2224 8.56752 10.3879 8.61051 10.4911 8.69648C10.5846 8.776 10.6287 8.86949 10.6287 8.98985C10.6287 9.09731 10.5857 9.18866 10.4922 9.27785H10.4911C10.3976 9.36812 10.2321 9.41325 10 9.41325C9.76681 9.41325 9.60024 9.36812 9.50675 9.27785C9.41325 9.18866 9.37027 9.09731 9.37027 8.98985C9.37027 8.86949 9.41433 8.776 9.50782 8.69648ZM9.17469 10.9102C9.17469 10.7286 9.24024 10.5986 9.38424 10.4986C9.54973 10.3826 9.75069 10.3278 10 10.3278C10.2472 10.3278 10.4492 10.3826 10.6147 10.4986C10.7576 10.5986 10.8242 10.7286 10.8242 10.9102C10.8242 10.9725 10.7995 11.0445 10.7512 11.1251C10.7039 11.2036 10.619 11.2745 10.4997 11.3368C10.2536 11.4658 9.74424 11.4647 9.49922 11.3368C9.37994 11.2745 9.29504 11.2036 9.24669 11.1241C9.19833 11.0445 9.17469 10.9715 9.17469 10.9102ZM11.1746 9.83773C11.2401 9.78615 11.2992 9.72812 11.354 9.66257C11.5152 9.47236 11.5969 9.23379 11.5969 8.95439C11.5969 8.75021 11.541 8.54496 11.4303 8.34615C11.3164 8.14412 11.1359 7.97755 10.8941 7.85182C10.6555 7.72716 10.3557 7.66376 10 7.66376C9.6443 7.66376 9.3434 7.72716 9.10484 7.85182C8.86197 7.97755 8.68143 8.14412 8.5686 8.34722C8.45791 8.54388 8.40203 8.74913 8.40203 8.95439C8.40203 9.23487 8.4837 9.47343 8.6449 9.66257C8.69863 9.72705 8.75881 9.78615 8.82436 9.83773C8.32466 10.1494 8.20752 10.6061 8.20752 10.9682C8.20752 11.2014 8.272 11.425 8.39881 11.6302C8.52669 11.8387 8.72764 12.0106 8.99845 12.1428C9.26066 12.2707 9.59702 12.3362 10 12.3362C10.4073 12.3362 10.735 12.2728 11.0005 12.1428C11.2702 12.0117 11.4722 11.8387 11.6001 11.6302C11.7269 11.4228 11.7914 11.2004 11.7914 10.9682C11.7914 10.6061 11.6743 10.1494 11.1746 9.83773ZM10 6.10448C7.85075 6.10448 6.10448 7.85182 6.10448 10C6.10448 12.1482 7.85075 13.8955 10 13.8955C12.1482 13.8955 13.8955 12.1482 13.8955 10C13.8955 7.85182 12.1482 6.10448 10 6.10448ZM10 14.7015C7.40693 14.7015 5.29851 12.592 5.29851 10C5.29851 7.408 7.40693 5.29851 10 5.29851C12.592 5.29851 14.7015 7.408 14.7015 10C14.7015 12.592 12.592 14.7015 10 14.7015ZM10 1.80597C5.48119 1.80597 1.80597 5.48227 1.80597 10C1.80597 14.5177 5.48119 18.194 10 18.194C14.5177 18.194 18.194 14.5177 18.194 10C18.194 5.48227 14.5177 1.80597 10 1.80597ZM10 19C5.0363 19 1 14.9626 1 10C1 5.03737 5.0363 1 10 1C14.9626 1 19 5.03737 19 10C19 14.9626 14.9626 19 10 19Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
