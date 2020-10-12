defmodule Moon.Assets.Duotones.NoMarkets do
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
        "Duotones-NoMarkets-#{assigns.color}-#{assigns.height}-#{assigns.width}-#{
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

    <svg class={{ class_name }} width="1em" height="1em"  viewBox="0 0 174 174" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.1" d="M129.514 88.421H45.4429C41.6439 88.421 39.0919 84.593 40.5129 81.084L52.0549 52.954C53.7079 48.952 57.5939 46.342 61.9149 46.342H113.013C117.334 46.342 121.249 48.952 122.873 52.954L134.415 81.084C135.865 84.593 133.284 88.421 129.514 88.421Z" fill="currentColor"/> <path d="M122.293 134.792C117.276 134.792 112.259 132.878 108.431 129.05C100.804 121.423 100.804 108.982 108.431 101.326C116.058 93.699 128.499 93.699 136.155 101.326C139.867 105.038 141.897 109.939 141.897 115.188C141.897 120.437 139.867 125.338 136.155 129.05C132.327 132.878 127.31 134.792 122.293 134.792ZM122.293 97.817C117.827 97.817 113.39 99.499 109.997 102.892C103.211 109.678 103.211 120.698 109.997 127.484C116.783 134.27 127.803 134.27 134.589 127.484C141.375 120.698 141.375 109.678 134.589 102.892C131.225 99.528 126.759 97.817 122.293 97.817Z" fill="currentColor"/> <path d="M109.214 129.398C108.924 129.398 108.663 129.282 108.431 129.079C107.996 128.644 107.996 127.948 108.431 127.513L134.589 101.355C135.024 100.92 135.72 100.92 136.155 101.355C136.59 101.79 136.59 102.486 136.155 102.921L109.997 129.05C109.794 129.282 109.504 129.398 109.214 129.398Z" fill="currentColor"/> <path d="M98.6871 120.517H45.9941C45.6612 120.517 45.3921 120.248 45.3921 119.915C45.3921 119.582 45.6612 119.313 45.9941 119.313H98.6871C99.02 119.313 99.2891 119.582 99.2891 119.915C99.2891 120.248 99.02 120.517 98.6871 120.517Z" fill="white" stroke="white"/> <path d="M92.8 127.854H60.668C60.3352 127.854 60.066 127.585 60.066 127.252C60.066 126.919 60.3352 126.65 60.668 126.65H92.8C93.1329 126.65 93.402 126.919 93.402 127.252C93.402 127.585 93.1329 127.854 92.8 127.854Z" fill="white" stroke="white"/> <path d="M100.891 127.854H97.411C97.0781 127.854 96.809 127.585 96.809 127.252C96.809 126.919 97.0781 126.65 97.411 126.65H100.891C101.224 126.65 101.493 126.919 101.493 127.252C101.493 127.585 101.224 127.854 100.891 127.854Z" fill="white" stroke="white"/> <path d="M40.803 120.517H36.946C36.6131 120.517 36.344 120.248 36.344 119.915C36.344 119.582 36.6131 119.313 36.946 119.313H40.803C41.1358 119.313 41.405 119.582 41.405 119.915C41.405 120.248 41.1358 120.517 40.803 120.517Z" fill="white" stroke="white"/> <path d="M52.229 120.517C51.8961 120.517 51.627 120.248 51.627 119.915V84.071C51.627 83.7381 51.8961 83.469 52.229 83.469C52.5618 83.469 52.831 83.7381 52.831 84.071V119.915C52.831 120.248 52.5618 120.517 52.229 120.517Z" fill="white" stroke="white"/> <path d="M122.873 91.8649C122.54 91.8649 122.271 91.5958 122.271 91.2629V84.0419C122.271 83.7091 122.54 83.4399 122.873 83.4399C123.206 83.4399 123.475 83.7091 123.475 84.0419V91.2629C123.475 91.5958 123.206 91.8649 122.873 91.8649Z" fill="white" stroke="white"/> <path d="M77.6041 120.517C77.2712 120.517 77.0021 120.248 77.0021 119.915V87.696C77.0021 87.3631 77.2712 87.094 77.6041 87.094C77.9369 87.094 78.2061 87.3631 78.2061 87.696V119.944C78.2061 120.239 77.9456 120.517 77.6041 120.517Z" fill="white" stroke="white"/> <path d="M68.121 105.118C67.7882 105.118 67.519 104.849 67.519 104.516V96.715C67.519 96.3821 67.7882 96.113 68.121 96.113C68.4539 96.113 68.723 96.3821 68.723 96.715V104.516C68.723 104.849 68.4539 105.118 68.121 105.118Z" fill="white" stroke="white"/> <path d="M128.905 70.934C128.47 70.934 128.064 70.673 127.89 70.267L119.538 50.431C118.929 48.952 117.508 48.024 115.913 48.024H59.189C57.623 48.024 56.202 48.952 55.564 50.402L47.009 70.267C46.777 70.818 46.11 71.079 45.559 70.847C45.008 70.615 44.747 69.948 44.979 69.397L53.534 49.532C54.52 47.27 56.724 45.82 59.189 45.82H115.913C118.407 45.82 120.611 47.299 121.568 49.59L129.92 69.426C130.152 69.977 129.891 70.644 129.34 70.876C129.195 70.905 129.05 70.934 128.905 70.934Z" fill="currentColor"/> <path d="M54.8681 79.808C49.3581 79.808 44.8921 75.342 44.8921 69.832C44.8921 69.223 45.3851 68.73 45.9941 68.73C46.6031 68.73 47.0961 69.223 47.0961 69.832C47.0961 74.124 50.5761 77.604 54.8681 77.604C57.5071 77.604 59.9431 76.27 61.3931 74.066C61.7121 73.544 62.4081 73.428 62.9301 73.747C63.4521 74.066 63.5971 74.762 63.2491 75.284C61.3931 78.126 58.2611 79.808 54.8681 79.808Z" fill="currentColor"/> <path d="M69.687 79.8079C66.352 79.8079 63.278 78.1549 61.422 75.3999C61.074 74.9069 61.219 74.2109 61.712 73.8629C62.205 73.5149 62.901 73.6599 63.249 74.1529C64.699 76.2989 67.106 77.5749 69.687 77.5749C73.979 77.5749 77.459 74.0949 77.459 69.8029C77.459 69.1939 77.952 68.7009 78.561 68.7009C79.17 68.7009 79.663 69.1939 79.663 69.8029C79.663 75.3419 75.197 79.8079 69.687 79.8079Z" fill="currentColor"/> <path d="M87.435 79.808C81.925 79.808 77.459 75.342 77.459 69.832C77.459 69.223 77.952 68.73 78.561 68.73C79.17 68.73 79.663 69.223 79.663 69.832C79.663 74.124 83.143 77.604 87.435 77.604C91.727 77.604 95.207 74.124 95.207 69.832C95.207 69.223 95.7 68.73 96.309 68.73C96.918 68.73 97.411 69.223 97.411 69.832C97.411 75.342 92.945 79.808 87.435 79.808Z" fill="currentColor"/> <path d="M105.212 79.808C99.7021 79.808 95.2361 75.342 95.2361 69.832C95.2361 69.223 95.7291 68.73 96.3381 68.73C96.9471 68.73 97.4401 69.223 97.4401 69.832C97.4401 74.124 100.92 77.604 105.212 77.604C107.822 77.604 110.258 76.299 111.708 74.124C112.056 73.631 112.723 73.486 113.245 73.805C113.738 74.153 113.883 74.82 113.564 75.342C111.679 78.126 108.547 79.808 105.212 79.808Z" fill="currentColor"/> <path d="M62.3211 75.777C62.2341 75.777 62.1761 75.777 62.0891 75.748C61.4801 75.632 61.1031 75.023 61.2481 74.443L67.1351 46.661C67.2511 46.052 67.8601 45.675 68.4401 45.82C69.0491 45.936 69.4261 46.545 69.2811 47.125L63.3941 74.907C63.2781 75.429 62.8141 75.777 62.3211 75.777Z" fill="currentColor"/> <path d="M119.973 79.808C116.58 79.808 113.448 78.126 111.592 75.284C111.273 74.762 111.389 74.095 111.911 73.747C112.433 73.428 113.1 73.544 113.448 74.066C114.898 76.27 117.334 77.604 119.973 77.604C124.265 77.604 127.745 74.124 127.745 69.832C127.745 69.223 128.238 68.73 128.847 68.73C129.456 68.73 129.949 69.223 129.949 69.832C129.978 75.342 125.483 79.808 119.973 79.808Z" fill="currentColor"/> <path d="M112.549 75.7769C112.027 75.7769 111.592 75.4289 111.476 74.9069L105.589 47.1249C105.473 46.5159 105.85 45.9359 106.43 45.8199C107.01 45.7039 107.619 46.0809 107.735 46.6609L113.622 74.4429C113.738 75.0519 113.361 75.6319 112.781 75.7479C112.694 75.7769 112.607 75.7769 112.549 75.7769Z" fill="currentColor"/> <path d="M78.561 70.934H78.532C77.923 70.905 77.459 70.412 77.459 69.803L78.184 46.864C78.213 46.255 78.735 45.762 79.315 45.791C79.924 45.82 80.388 46.313 80.388 46.922L79.663 69.861C79.634 70.441 79.141 70.934 78.561 70.934Z" fill="currentColor"/> <path d="M96.3091 70.934C95.7291 70.934 95.2361 70.47 95.2071 69.861L94.4821 46.922C94.4531 46.313 94.9461 45.791 95.5551 45.791C96.1641 45.762 96.6861 46.255 96.6861 46.864L97.4111 69.803C97.4401 70.412 96.9471 70.934 96.3381 70.934C96.3381 70.934 96.3381 70.934 96.3091 70.934Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
