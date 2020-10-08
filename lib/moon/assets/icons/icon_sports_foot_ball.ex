defmodule Moon.Assets.Icons.IconSportsFootBall do
  use Moon.StatelessComponent
  use Moon.Components.Context

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsFootBall-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M16.8873 10L17.9694 8.12693C18.1113 8.72872 18.194 9.35415 18.194 10C18.194 10.6459 18.1113 11.2713 17.9694 11.8741L16.8873 10ZM13.456 15.9867H15.5752C14.6757 16.826 13.5936 17.4687 12.3889 17.8362L13.456 15.9867ZM6.544 15.9867L7.6111 17.8362C6.40645 17.4687 5.32322 16.826 4.42376 15.9867H6.544ZM6.544 4.01325H4.42376C5.32322 3.17397 6.40645 2.53134 7.6111 2.16275L6.544 4.01325ZM13.456 4.01325L12.3878 2.16275C13.5936 2.53134 14.6757 3.17397 15.5752 4.01325H13.456ZM16.1898 9.59702H13.456L12.0773 7.20812L13.456 4.81922H16.1898L17.5686 7.20812L16.1898 9.59702ZM8.62018 13.1959H11.354L12.7457 15.6063L11.3798 17.9737H8.62018L7.24143 15.5838L8.62018 13.1959ZM3.75642 10.403H6.51499L7.89373 12.793L6.51499 15.1808H3.75642L2.37767 12.793L3.75642 10.403ZM6.51499 4.81922L7.89373 7.20812L6.51499 9.59702H3.75642L2.37767 7.20812L3.75642 4.81922H6.51499ZM11.354 6.80513H8.62018L7.24143 4.41624L8.62018 2.02734H11.3798L12.7457 4.39367L11.354 6.80513ZM8.62018 12.39L7.24143 10L8.62018 7.6111H11.354L12.7328 10L11.354 12.39H8.62018ZM13.456 15.1808L12.0773 12.793L13.456 10.403H16.1898L17.5686 12.793L16.1898 15.1808H13.456ZM1.80597 10C1.80597 9.37779 1.88227 8.77385 2.01337 8.19033L3.05791 10L2.01445 11.8097C1.88227 11.2272 1.80597 10.6222 1.80597 10ZM10 1C5.03737 1 1 5.03737 1 10C1 14.9626 5.03737 19 10 19C14.9626 19 19 14.9626 19 10C19 5.03737 14.9626 1 10 1Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
