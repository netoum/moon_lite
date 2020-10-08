defmodule Moon.Assets.Duotones.NoCasinoGames do
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
        "Duotones-NoCasinoGames-#{assigns[:color]}-#{assigns[:height]}-#{assigns[:width]}-#{
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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 174 174" fill="none" xmlns="http://www.w3.org/2000/svg"> <g filter="url(#filter0_d)"> <path opacity="0.1" d="M106.633 104.835H37.3521C33.7851 104.835 30.9141 101.935 30.9141 98.397V43.587C30.9141 40.02 33.8141 37.149 37.3521 37.149H106.633C110.2 37.149 113.071 40.049 113.071 43.587V98.397C113.071 101.964 110.2 104.835 106.633 104.835Z" fill="currentColor"/> <path d="M64.6409 104.132H45.6819V61.509C45.6819 56.3041 49.895 52.091 55.0999 52.091H119.712C124.917 52.091 129.13 56.3041 129.13 61.509V91.785C129.13 92.1179 128.861 92.387 128.528 92.387C128.195 92.387 127.926 92.1178 127.926 91.785V61.509C127.926 56.9699 124.251 53.295 119.712 53.295H55.0999C50.5607 53.295 46.8859 56.9699 46.8859 61.509V102.428V102.928H47.3859H64.6409C64.9737 102.928 65.2429 103.197 65.2429 103.53C65.2429 103.842 64.9653 104.132 64.6409 104.132Z" fill="white" stroke="white"/> <path d="M40.5491 116.406V102.928H64.0321H64.3155L64.4611 102.685L66.5195 99.245H107.967C108.3 99.245 108.569 99.5141 108.569 99.847C108.569 100.18 108.3 100.449 107.967 100.449H67.4831H67.1996L67.054 100.692L64.9956 104.132H42.2531H41.7531V104.632V116.406C41.7531 118.596 43.5429 120.386 45.7331 120.386H101.355C101.688 120.386 101.957 120.655 101.957 120.988C101.957 121.321 101.688 121.59 101.355 121.59H45.7331C42.8772 121.59 40.5491 119.262 40.5491 116.406Z" fill="white" stroke="white"/> <path d="M133.777 94.069C133.636 94.069 133.492 94.0173 133.337 93.8852C133.108 93.645 133.112 93.2736 133.348 93.0375C134.601 91.7845 135.292 90.1206 135.292 88.363V53.157C135.292 52.8241 135.561 52.555 135.894 52.555C136.227 52.555 136.496 52.8241 136.496 53.157V88.363C136.496 90.4333 135.679 92.3944 134.206 93.8674L134.56 94.221L134.206 93.8674C134.06 94.0137 133.894 94.069 133.777 94.069Z" fill="white" stroke="white"/> <path d="M135.894 79.076H128.702C128.369 79.076 128.1 78.8068 128.1 78.474C128.1 78.1411 128.369 77.872 128.702 77.872H135.894C136.227 77.872 136.496 78.1411 136.496 78.474C136.496 78.8068 136.227 79.076 135.894 79.076Z" fill="white" stroke="white"/> <path d="M64.641 104.132H54.585V63.887C54.585 62.1621 55.9851 60.762 57.71 60.762H117.073C118.798 60.762 120.198 62.1621 120.198 63.887V92.568C120.198 92.9009 119.929 93.17 119.596 93.17C119.263 93.17 118.994 92.9009 118.994 92.568V63.887C118.994 62.8278 118.132 61.966 117.073 61.966H57.71C56.6508 61.966 55.789 62.8278 55.789 63.887V102.428V102.928H56.289H64.641C64.9738 102.928 65.243 103.197 65.243 103.53C65.243 103.842 64.9654 104.132 64.641 104.132Z" fill="white" stroke="white"/> <path d="M76.502 100.449C76.1692 100.449 75.9 100.18 75.9 99.847V61.364C75.9 61.0311 76.1692 60.762 76.502 60.762C76.8349 60.762 77.104 61.0311 77.104 61.364V99.847C77.104 100.18 76.8349 100.449 76.502 100.449Z" fill="white" stroke="white"/> <path d="M98.339 100.449C98.0062 100.449 97.7371 100.18 97.7371 99.847V61.364C97.7371 61.0311 98.0062 60.762 98.339 60.762C98.6719 60.762 98.941 61.0311 98.941 61.364V99.847C98.941 100.18 98.6719 100.449 98.339 100.449Z" fill="white" stroke="white"/> <path d="M100.601 114.746H74.414C72.5753 114.746 70.941 112.893 70.941 110.403C70.941 107.913 72.5753 106.06 74.414 106.06H102.08C102.413 106.06 102.682 106.329 102.682 106.662C102.682 106.995 102.413 107.264 102.08 107.264H74.414C73.7103 107.264 73.1325 107.709 72.7551 108.273C72.3727 108.844 72.145 109.602 72.145 110.403C72.145 111.194 72.3827 111.952 72.7665 112.523C73.1419 113.082 73.718 113.542 74.414 113.542H100.601C100.934 113.542 101.203 113.811 101.203 114.144C101.203 114.477 100.934 114.746 100.601 114.746Z" fill="white" stroke="white"/> <path d="M105.524 129.253V129.265L105.525 129.277C105.539 129.587 105.289 129.855 104.951 129.855H68.411C68.0781 129.855 67.809 129.586 67.809 129.253C67.809 128.92 68.0781 128.651 68.411 128.651H104.922C105.255 128.651 105.524 128.92 105.524 129.253Z" fill="white" stroke="white"/> <path d="M63.8 129.855H58.116C57.7832 129.855 57.514 129.586 57.514 129.253C57.514 128.92 57.7832 128.651 58.116 128.651H63.8C64.1329 128.651 64.402 128.92 64.402 129.253C64.402 129.586 64.1329 129.855 63.8 129.855Z" fill="white" stroke="white"/> <path d="M76.502 75.77H55.216C54.8832 75.77 54.614 75.5009 54.614 75.168C54.614 74.8351 54.8832 74.566 55.216 74.566H76.502C76.8349 74.566 77.104 74.8351 77.104 75.168C77.104 75.5009 76.8349 75.77 76.502 75.77Z" fill="white" stroke="white"/> <path d="M119.625 75.77H98.3391C98.0062 75.77 97.7371 75.5009 97.7371 75.168C97.7371 74.8351 98.0062 74.566 98.3391 74.566H119.625C119.958 74.566 120.227 74.8351 120.227 75.168C120.227 75.5009 119.958 75.77 119.625 75.77Z" fill="white" stroke="white"/> <path d="M98.339 91.169H76.502C76.1692 91.169 75.9 90.8999 75.9 90.567C75.9 90.2341 76.1692 89.965 76.502 89.965H98.339C98.6719 89.965 98.941 90.2341 98.941 90.567C98.941 90.8999 98.6719 91.169 98.339 91.169Z" fill="white" stroke="white"/> <path d="M65.1339 96.686C64.9889 96.686 64.8729 96.657 64.7279 96.599C64.1479 96.367 63.8869 95.729 64.0899 95.178L68.1209 84.883H62.2919C61.6829 84.883 61.1899 84.39 61.1899 83.781C61.1899 83.172 61.6829 82.679 62.2919 82.679H68.5559C69.1939 82.679 69.7739 82.998 70.1219 83.52C70.4699 84.042 70.5569 84.709 70.3249 85.289L66.1779 95.99C66.0039 96.425 65.5979 96.686 65.1339 96.686Z" fill="currentColor"/> <path d="M108.286 96.686C108.141 96.686 108.025 96.657 107.88 96.599C107.3 96.367 107.039 95.729 107.242 95.178L111.273 84.883H105.444C104.835 84.883 104.342 84.39 104.342 83.781C104.342 83.172 104.835 82.679 105.444 82.679H111.708C112.346 82.679 112.926 82.998 113.274 83.52C113.622 84.042 113.709 84.709 113.477 85.289L109.301 95.99C109.127 96.425 108.721 96.686 108.286 96.686Z" fill="currentColor"/> <path d="M86.652 83.549C86.507 83.549 86.391 83.52 86.246 83.462C85.666 83.23 85.405 82.592 85.608 82.041L89.639 71.746H83.81C83.201 71.746 82.708 71.253 82.708 70.644C82.708 70.035 83.201 69.542 83.81 69.542H90.074C90.712 69.542 91.292 69.861 91.64 70.383C91.988 70.905 92.075 71.572 91.843 72.152L87.667 82.853C87.493 83.259 87.087 83.549 86.652 83.549Z" fill="currentColor"/> <path d="M125.251 134.792C120.234 134.792 115.217 132.878 111.389 129.05C103.762 121.423 103.762 108.982 111.389 101.326C119.016 93.699 131.457 93.699 139.113 101.326C142.825 105.038 144.855 109.939 144.855 115.188C144.855 120.437 142.825 125.338 139.113 129.05C135.285 132.878 130.268 134.792 125.251 134.792ZM125.251 97.817C120.785 97.817 116.348 99.499 112.955 102.892C106.169 109.678 106.169 120.698 112.955 127.484C119.741 134.27 130.761 134.27 137.547 127.484C144.333 120.698 144.333 109.678 137.547 102.892C134.154 99.528 129.688 97.817 125.251 97.817Z" fill="currentColor"/> <path d="M112.172 129.398C111.882 129.398 111.621 129.282 111.389 129.079C110.954 128.644 110.954 127.948 111.389 127.513L137.547 101.355C137.982 100.92 138.678 100.92 139.113 101.355C139.548 101.79 139.548 102.486 139.113 102.921L112.955 129.05C112.723 129.282 112.462 129.398 112.172 129.398Z" fill="currentColor"/> <path d="M135.894 53.07C131.979 53.07 128.789 49.88 128.789 45.965C128.789 42.05 131.979 38.86 135.894 38.86C139.809 38.86 142.999 42.05 142.999 45.965C142.999 49.88 139.809 53.07 135.894 53.07ZM135.894 41.064C133.197 41.064 130.993 43.268 130.993 45.965C130.993 48.662 133.197 50.866 135.894 50.866C138.591 50.866 140.795 48.662 140.795 45.965C140.795 43.239 138.591 41.064 135.894 41.064Z" fill="currentColor"/> </g> <defs> <filter id="filter0_d" x="-4" y="0" width="182" height="182" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB"> <feFlood flood-opacity="0" result="BackgroundImageFix"/> <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/> <feOffset dy="4"/> <feGaussianBlur stdDeviation="2"/> <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/> <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/> <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/> </filter> </defs> </svg>
    </Context>
    """
  end
end
