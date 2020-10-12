defmodule Moon.Assets.Duotones.NoWithdrawals do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(height, :string)
  prop(width, :string)
  prop(font_size, :string)
  prop(vertical_align, :string)

  def render(assigns) do
    class_name =
      get_class_name(
        "Duotones-NoWithdrawals-#{assigns.color}-#{assigns.height}-#{assigns.width}-#{
          assigns.font_size
        }-#{assigns.vertical_align}"
      )

    ~H"""
    <Context get={{ theme: theme }}>
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 174 174" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.1" d="M111.534 126.875H33.321C31.088 126.875 29.261 125.048 29.261 122.815V69.948C29.261 67.715 31.088 65.888 33.321 65.888H111.505C113.738 65.888 115.565 67.715 115.565 69.948V122.844C115.565 125.077 113.767 126.875 111.534 126.875Z" fill="currentColor"/> <path d="M133.023 129.63C127.803 129.63 122.873 127.6 119.19 123.888C115.478 120.176 113.448 115.275 113.448 110.055C113.448 104.835 115.478 99.905 119.19 96.222C122.902 92.51 127.803 90.48 133.023 90.48C138.243 90.48 143.173 92.51 146.856 96.222C150.568 99.934 152.598 104.835 152.598 110.055C152.598 115.275 150.568 120.205 146.856 123.888C143.173 127.571 138.243 129.63 133.023 129.63ZM133.023 92.655C128.383 92.655 124.004 94.453 120.727 97.759C117.45 101.036 115.623 105.415 115.623 110.055C115.623 114.695 117.421 119.074 120.727 122.351C124.004 125.628 128.383 127.455 133.023 127.455C137.663 127.455 142.042 125.657 145.319 122.351C148.596 119.074 150.423 114.695 150.423 110.055C150.423 105.415 148.625 101.036 145.319 97.759C142.013 94.453 137.663 92.655 133.023 92.655Z" fill="currentColor"/> <path d="M119.944 124.207C119.654 124.207 119.393 124.091 119.161 123.888C118.726 123.453 118.726 122.757 119.161 122.322L145.29 96.193C145.725 95.758 146.421 95.758 146.856 96.193C147.291 96.628 147.291 97.324 146.856 97.759L120.727 123.888C120.524 124.091 120.234 124.207 119.944 124.207Z" fill="currentColor"/> <path d="M52.8089 100.427C49.8799 100.427 47.1829 98.455 46.3709 95.497L37.4389 62.176C36.9749 60.465 37.2069 58.667 38.1059 57.13C39.0049 55.593 40.4259 54.491 42.1369 54.027L102.109 37.961C103.82 37.497 105.618 37.729 107.155 38.628C108.692 39.527 109.794 40.948 110.258 42.659L115.507 62.205C115.652 62.785 115.304 63.394 114.724 63.568C114.144 63.742 113.535 63.365 113.361 62.785L108.141 43.21C107.822 42.079 107.097 41.122 106.053 40.513C105.009 39.904 103.82 39.759 102.689 40.049L42.7169 56.115C41.5859 56.434 40.6289 57.159 40.0199 58.203C39.4109 59.247 39.2659 60.436 39.5559 61.567L48.4879 94.888C49.1259 97.266 51.5619 98.658 53.9399 98.02L59.4209 96.541C60.0009 96.396 60.6099 96.744 60.7549 97.324C60.8999 97.904 60.5519 98.513 59.9719 98.687L54.4909 100.166C53.9689 100.34 53.3889 100.427 52.8089 100.427Z" fill="currentColor"/> <path d="M41.4408 73.863C40.9478 73.863 40.5128 73.544 40.3678 73.051C40.2228 72.471 40.5708 71.862 41.1508 71.717C45.2108 70.644 48.5748 68.034 50.6918 64.409C52.7798 60.784 53.3308 56.55 52.2578 52.49C52.1128 51.91 52.4608 51.301 53.0408 51.127C53.6208 50.982 54.2298 51.33 54.4038 51.91C55.6508 56.521 55.0128 61.364 52.6058 65.511C50.1988 69.658 46.3418 72.616 41.7308 73.863C41.6148 73.863 41.5278 73.863 41.4408 73.863Z" fill="currentColor"/> <path d="M107.793 55.477C99.8759 55.477 92.6259 50.199 90.5089 42.195C90.3639 41.615 90.7119 41.006 91.2919 40.832C91.8719 40.687 92.4809 41.035 92.6549 41.615C94.8879 49.967 103.53 54.955 111.882 52.722C112.462 52.577 113.071 52.925 113.245 53.505C113.39 54.085 113.042 54.694 112.462 54.839C110.867 55.274 109.301 55.477 107.793 55.477Z" fill="currentColor"/> <path d="M59.74 88.711C59.479 88.711 59.247 88.624 59.015 88.45C55.071 85.115 49.764 83.897 44.776 85.26C44.196 85.405 43.587 85.057 43.442 84.477C43.297 83.897 43.645 83.288 44.225 83.114C49.909 81.606 55.97 82.969 60.465 86.768C60.9291 87.174 60.987 87.87 60.581 88.334C60.349 88.595 60.059 88.711 59.74 88.711Z" fill="currentColor"/> <path d="M110.258 113.419H70.035C66.381 113.419 63.394 110.432 63.394 106.778V72.268C63.394 68.614 66.381 65.627 70.035 65.627H132.124C135.778 65.627 138.765 68.614 138.765 72.268V87.609C138.765 88.218 138.272 88.711 137.663 88.711C137.054 88.711 136.561 88.218 136.561 87.609V72.268C136.561 69.803 134.56 67.831 132.124 67.831H70.035C67.57 67.831 65.598 69.832 65.598 72.268V106.778C65.598 109.243 67.599 111.215 70.035 111.215H110.258C110.867 111.215 111.36 111.708 111.36 112.317C111.36 112.926 110.867 113.419 110.258 113.419Z" fill="white"/> <path d="M64.496 84.622C63.887 84.622 63.394 84.129 63.394 83.52C63.394 82.911 63.887 82.418 64.496 82.418C73.167 82.418 80.185 75.371 80.185 66.729C80.185 66.12 80.678 65.627 81.287 65.627C81.896 65.627 82.389 66.12 82.389 66.729C82.389 76.618 74.356 84.622 64.496 84.622Z" fill="white"/> <path d="M137.692 84.622C127.832 84.622 119.799 76.589 119.799 66.729C119.799 66.12 120.292 65.627 120.901 65.627C121.51 65.627 122.003 66.12 122.003 66.729C122.003 75.4 129.05 82.418 137.692 82.418C138.301 82.418 138.794 82.911 138.794 83.52C138.794 84.129 138.301 84.622 137.692 84.622Z" fill="white"/> <path d="M81.287 112.984C80.678 112.984 80.185 112.491 80.185 111.882C80.185 103.211 73.138 96.193 64.496 96.193C63.887 96.193 63.394 95.7 63.394 95.091C63.394 94.482 63.887 93.989 64.496 93.989C74.356 93.989 82.389 102.022 82.389 111.882C82.389 112.491 81.896 112.984 81.287 112.984Z" fill="white"/> <path d="M102.428 90.596H97.1501C96.5411 90.596 96.0481 90.103 96.0481 89.494C96.0481 88.885 96.5411 88.392 97.1501 88.392H102.428C104.4 88.392 106.024 86.768 106.024 84.796C106.024 82.824 104.4 81.2 102.428 81.2H94.8591C94.2501 81.2 93.7571 80.707 93.7571 80.098C93.7571 79.489 94.2501 78.996 94.8591 78.996H102.428C105.618 78.996 108.228 81.606 108.228 84.796C108.228 88.015 105.647 90.596 102.428 90.596Z" fill="white"/> <path d="M104.284 99.992H94.8881C94.2791 99.992 93.7861 99.499 93.7861 98.89C93.7861 98.281 94.2791 97.788 94.8881 97.788H104.284C106.256 97.788 107.88 96.164 107.88 94.192C107.88 92.22 106.256 90.596 104.284 90.596H97.1501C96.5411 90.596 96.0481 90.103 96.0481 89.494C96.0481 88.885 96.5411 88.392 97.1501 88.392H104.284C107.474 88.392 110.084 91.002 110.084 94.192C110.084 97.382 107.503 99.992 104.284 99.992Z" fill="white"/> <path d="M97.1501 103.066C96.5411 103.066 96.0481 102.573 96.0481 101.964V77.053C96.0481 76.444 96.5411 75.951 97.1501 75.951C97.7591 75.951 98.2521 76.444 98.2521 77.053V101.964C98.2521 102.573 97.7591 103.066 97.1501 103.066Z" fill="white"/> <path d="M101.471 80.852C100.862 80.852 100.369 80.359 100.369 79.75V77.082C100.369 76.473 100.862 75.98 101.471 75.98C102.08 75.98 102.573 76.473 102.573 77.082V79.75C102.573 80.359 102.08 80.852 101.471 80.852Z" fill="white"/> <path d="M101.471 103.066C100.862 103.066 100.369 102.573 100.369 101.964V99.296C100.369 98.687 100.862 98.194 101.471 98.194C102.08 98.194 102.573 98.687 102.573 99.296V101.964C102.573 102.573 102.08 103.066 101.471 103.066Z" fill="white"/> </svg>
    </Context>
    """
  end
end
