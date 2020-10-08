defmodule Moon.Assets.Duotones.NoParticipations do
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
        "Duotones-NoParticipations-#{assigns[:color]}-#{assigns[:height]}-#{assigns[:width]}-#{
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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 174 174" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.1" d="M98.31 129.659H49.155V69.455C49.155 55.883 60.175 44.863 73.747 44.863C87.319 44.863 98.339 55.883 98.339 69.455V129.659H98.31Z" fill="currentColor"/> <path d="M80.6779 63.691H118.777V69.281C118.777 70.7911 117.639 72.0595 116.119 72.235C116.118 72.2351 116.118 72.2352 116.117 72.2353L98.4606 74.0908L98.0129 74.1378V74.588V128.298C97.9671 128.675 97.665 128.927 97.3819 128.927C97.049 128.927 96.7799 128.658 96.7799 128.325V73.0373L115.958 71.026C115.959 71.0258 115.961 71.0257 115.962 71.0256C116.86 70.942 117.544 70.1714 117.544 69.281V65.366V64.866H117.044H80.6489C74.2819 64.866 69.1289 70.0497 69.1289 76.386V98.368C69.1289 99.0502 69.7007 99.622 70.3829 99.622H72.0939C72.4267 99.622 72.6959 99.8912 72.6959 100.224C72.6959 100.557 72.4267 100.826 72.0939 100.826H70.3829C69.0382 100.826 67.9539 99.7191 67.9539 98.397V76.415C67.9539 69.4114 73.6467 63.691 80.6779 63.691Z" fill="white" stroke="white"/> <path d="M46.8058 110.722H45.0368C43.7028 110.722 42.6008 109.62 42.6008 108.286V88.073C42.6008 79.982 49.1838 73.428 57.2458 73.428H62.5818C63.1908 73.428 63.6838 73.921 63.6838 74.53C63.6838 75.139 63.1908 75.632 62.5818 75.632H57.2458C50.3728 75.632 44.8048 81.229 44.8048 88.073V108.286C44.8048 108.402 44.9208 108.518 45.0368 108.518H46.8058C47.4148 108.518 47.9078 109.011 47.9078 109.62C47.9078 110.229 47.4148 110.722 46.8058 110.722Z" fill="currentColor"/> <path d="M86.5939 59.443C81.505 59.443 77.3499 55.2879 77.3499 50.199C77.3499 45.1101 81.505 40.955 86.5939 40.955C91.6827 40.955 95.8379 45.1101 95.8379 50.199C95.8379 55.2879 91.6827 59.443 86.5939 59.443ZM86.5939 42.13C82.1417 42.13 78.5249 45.7469 78.5249 50.199C78.5249 54.6511 82.1417 58.268 86.5939 58.268C91.046 58.268 94.6629 54.6511 94.6629 50.199C94.6629 45.7456 91.0158 42.13 86.5939 42.13Z" fill="white" stroke="white"/> <path d="M59.5077 70.876C54.8387 70.876 51.0107 67.077 51.0107 62.379C51.0107 57.71 54.8097 53.882 59.5077 53.882C64.2057 53.882 68.0047 57.681 68.0047 62.379C68.0047 67.048 64.2057 70.876 59.5077 70.876ZM59.5077 56.086C56.0277 56.086 53.2147 58.899 53.2147 62.379C53.2147 65.859 56.0277 68.672 59.5077 68.672C62.9877 68.672 65.8007 65.859 65.8007 62.379C65.8007 58.899 62.9877 56.086 59.5077 56.086Z" fill="currentColor"/> <path d="M75.5158 128.927C75.183 128.927 74.9138 128.658 74.9138 128.325V78.706C74.9138 78.3732 75.183 78.104 75.5158 78.104C75.8487 78.104 76.1178 78.3732 76.1178 78.706V128.325C76.1178 128.658 75.8487 128.927 75.5158 128.927Z" fill="white" stroke="white"/> <path d="M50.2277 129.427C49.6187 129.427 49.1257 128.934 49.1257 128.325V90.799C49.1257 90.19 49.6187 89.697 50.2277 89.697C50.8367 89.697 51.3297 90.19 51.3297 90.799V128.325C51.3297 128.934 50.8367 129.427 50.2277 129.427Z" fill="currentColor"/> <path d="M60.1459 129.427C59.5369 129.427 59.0439 128.934 59.0439 128.325V108.721C59.0439 108.112 59.5369 107.619 60.1459 107.619C60.7549 107.619 61.2479 108.112 61.2479 108.721V128.325C61.2479 128.934 60.7549 129.427 60.1459 129.427Z" fill="currentColor"/> <path d="M68.527 129.427C67.918 129.427 67.425 128.934 67.425 128.325V108.721C67.425 108.112 67.918 107.619 68.527 107.619C69.136 107.619 69.629 108.112 69.629 108.721V128.325C69.629 128.934 69.136 129.427 68.527 129.427Z" fill="currentColor"/> <path d="M116.435 89.371C116.102 89.371 115.833 89.1019 115.833 88.769V76.676C115.833 76.3432 116.102 76.074 116.435 76.074C116.768 76.074 117.037 76.3432 117.037 76.676V88.769C117.037 89.1019 116.768 89.371 116.435 89.371Z" fill="white" stroke="white"/> <path d="M116.435 64.547C116.102 64.547 115.833 64.2779 115.833 63.945V41.586C115.833 41.2531 116.102 40.984 116.435 40.984C116.768 40.984 117.037 41.2531 117.037 41.586V63.945C117.037 64.2779 116.768 64.547 116.435 64.547Z" fill="white" stroke="white"/> <path d="M86.5939 128.927C86.2611 128.927 85.9919 128.658 85.9919 128.325V100.195C85.9919 99.8622 86.2611 99.593 86.5939 99.593C86.9268 99.593 87.1959 99.8622 87.1959 100.195V128.312C87.1736 128.671 86.8827 128.927 86.5939 128.927Z" fill="white" stroke="white"/> <path d="M86.5939 90.502C86.2611 90.502 85.9919 90.2329 85.9919 89.9V89.088C85.9919 88.7552 86.2611 88.486 86.5939 88.486C86.9268 88.486 87.1959 88.7551 87.1959 89.088V89.8865C87.1736 90.2457 86.8827 90.502 86.5939 90.502Z" fill="white" stroke="white"/> <path d="M86.5939 82.817C86.2611 82.817 85.9919 82.5479 85.9919 82.215V81.403C85.9919 81.0702 86.2611 80.801 86.5939 80.801C86.9268 80.801 87.1959 81.0702 87.1959 81.403V82.2015C87.1736 82.5607 86.8827 82.817 86.5939 82.817Z" fill="white" stroke="white"/> <path d="M86.5939 75.132C86.2611 75.132 85.9919 74.8629 85.9919 74.53V73.718C85.9919 73.3852 86.2611 73.116 86.5939 73.116C86.9268 73.116 87.1959 73.3852 87.1959 73.718V74.5165C87.1736 74.8757 86.8827 75.132 86.5939 75.132Z" fill="white" stroke="white"/> <path d="M130.732 57.768H115.362V43.326H130.732V57.768ZM117.537 55.593H128.528V45.53H117.537V55.593Z" fill="currentColor"/> <path d="M143.057 62.205H125.106V56.695C125.106 56.086 125.599 55.593 126.208 55.593C126.817 55.593 127.31 56.086 127.31 56.695V60.001H139.142L136.097 54.984L139.142 49.967H129.63C129.021 49.967 128.528 49.474 128.528 48.865C128.528 48.256 129.021 47.763 129.63 47.763H143.057L138.678 54.984L143.057 62.205Z" fill="currentColor"/> <path d="M121.858 132.066C111.099 132.066 102.312 123.308 102.312 112.52C102.312 101.732 111.07 92.974 121.858 92.974C132.646 92.974 141.404 101.732 141.404 112.52C141.404 123.308 132.617 132.066 121.858 132.066ZM121.858 95.207C112.288 95.207 104.516 102.979 104.516 112.549C104.516 122.119 112.288 129.891 121.858 129.891C131.428 129.891 139.2 122.09 139.2 112.549C139.2 103.008 131.428 95.207 121.858 95.207Z" fill="currentColor"/> <path d="M113.767 121.742C113.477 121.742 113.216 121.626 112.984 121.423C112.549 120.988 112.549 120.292 112.984 119.857L129.166 103.675C129.601 103.24 130.297 103.24 130.732 103.675C131.167 104.11 131.167 104.806 130.732 105.241L114.55 121.394C114.318 121.626 114.057 121.742 113.767 121.742Z" fill="currentColor"/> <path d="M129.949 121.742C129.659 121.742 129.398 121.626 129.166 121.423L112.984 105.241C112.549 104.806 112.549 104.11 112.984 103.675C113.419 103.24 114.115 103.24 114.55 103.675L130.732 119.857C131.167 120.292 131.167 120.988 130.732 121.423C130.5 121.626 130.21 121.742 129.949 121.742Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
