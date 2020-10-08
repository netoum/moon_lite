defmodule Moon.Assets.Icons.IconPromotions do
  use Moon.StatelessComponent
  use Moon.Components.Context

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconPromotions-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" clip-rule="evenodd" d="M8.81599 16.9095V13.638H9.41605C9.68516 13.638 9.9509 13.6978 10.1941 13.813L15.7544 16.4468C15.866 16.4996 15.9857 16.5331 16.1085 16.5459C16.7075 16.6082 17.2436 16.173 17.3059 15.574C17.4622 14.0699 17.54 11.9717 17.54 9.27599C17.54 6.58031 17.4622 4.48207 17.3059 2.97804C17.2931 2.85524 17.2596 2.7355 17.2067 2.62393C16.9489 2.07964 16.2987 1.84741 15.7544 2.10523L10.1941 4.73905C9.9509 4.85425 9.68516 4.91401 9.41605 4.91401H7.00391C4.84028 4.91401 3.06914 6.63504 3.00705 8.79778C3.00389 8.9079 3.00155 9.06611 3 9.27325C3.00155 9.48587 3.00389 9.64411 3.00706 9.75425C3.04651 11.1287 3.77623 12.3248 4.85828 13.0141L5.82995 17.0739C5.91086 17.6054 6.36826 18 6.90799 18H7.72549C8.32775 18 8.81599 17.5118 8.81599 16.9095ZM10.5055 13.156C10.2033 13.0128 9.87625 12.9308 9.54308 12.9142L9.54309 12.911V5.64276L9.54307 5.63788C9.87624 5.62126 10.2033 5.53925 10.5055 5.3961L16.0658 2.76228C16.2473 2.67634 16.464 2.75375 16.5499 2.93518C16.5676 2.97237 16.5787 3.01228 16.583 3.05322C16.7362 4.52794 16.8132 6.60329 16.8132 9.27602C16.8132 11.9488 16.7362 14.0241 16.583 15.4989C16.5622 15.6985 16.3835 15.8436 16.1839 15.8228C16.1429 15.8186 16.103 15.8074 16.0658 15.7898L10.5055 13.156ZM8.81609 12.911V12.911H7.00413C5.23389 12.911 3.78478 11.5029 3.73398 9.73342C3.73099 9.62941 3.72872 9.47575 3.7272 9.27328C3.72872 9.0763 3.73099 8.92266 3.73398 8.81867C3.78477 7.04915 5.23389 5.64104 7.00413 5.64104H8.8161L8.81609 5.64276V12.911ZM8.08906 16.9094V13.6379H7.00398C6.54903 13.6379 6.11143 13.5618 5.70343 13.4215L6.54095 16.9208L6.54775 16.9574C6.57183 17.138 6.72587 17.2729 6.90806 17.2729H7.72556C7.92632 17.2729 8.08906 17.1101 8.08906 16.9094Z" fill="currentColor"/> <path d="M8.81599 13.638V13.538H8.71599V13.638H8.81599ZM10.1941 13.813L10.2369 13.7226L10.2369 13.7226L10.1941 13.813ZM15.7544 16.4468L15.7972 16.3564L15.7972 16.3564L15.7544 16.4468ZM16.1085 16.5459L16.0982 16.6454L16.0982 16.6454L16.1085 16.5459ZM17.3059 15.574L17.2064 15.5636L17.2064 15.5636L17.3059 15.574ZM17.3059 2.97804L17.4053 2.9677L17.4053 2.9677L17.3059 2.97804ZM17.2067 2.62393L17.2971 2.58112L17.2971 2.58112L17.2067 2.62393ZM15.7544 2.10523L15.7972 2.1956L15.7972 2.1956L15.7544 2.10523ZM10.1941 4.73905L10.1513 4.64868L10.1513 4.64868L10.1941 4.73905ZM3.00705 8.79778L2.9071 8.79491L2.9071 8.79491L3.00705 8.79778ZM3 9.27325L2.89999 9.2725L2.9 9.27398L3 9.27325ZM3.00706 9.75425L2.9071 9.75712L2.9071 9.75712L3.00706 9.75425ZM4.85828 13.0141L4.95553 12.9908L4.94612 12.9514L4.912 12.9297L4.85828 13.0141ZM5.82995 17.0739L5.92916 17.0588L5.9272 17.0506L5.82995 17.0739ZM9.54308 12.9142L9.44308 12.9139L9.44276 13.0093L9.5381 13.0141L9.54308 12.9142ZM10.5055 13.156L10.4627 13.2463L10.4627 13.2463L10.5055 13.156ZM9.54309 12.911L9.64309 12.9113V12.911H9.54309ZM9.54309 5.64276L9.6431 5.64276L9.64309 5.64225L9.54309 5.64276ZM9.54307 5.63788L9.53809 5.538L9.44259 5.54277L9.44307 5.63839L9.54307 5.63788ZM10.5055 5.3961L10.4627 5.30573L10.4627 5.30573L10.5055 5.3961ZM16.0658 2.76228L16.023 2.6719L16.023 2.6719L16.0658 2.76228ZM16.5499 2.93518L16.4596 2.97799L16.4596 2.97799L16.5499 2.93518ZM16.583 3.05322L16.4835 3.06355L16.4835 3.06355L16.583 3.05322ZM16.583 15.4989L16.4835 15.4885L16.4835 15.4885L16.583 15.4989ZM16.1839 15.8228L16.1942 15.7234L16.1942 15.7234L16.1839 15.8228ZM16.0658 15.7898L16.023 15.8802L16.023 15.8802L16.0658 15.7898ZM8.81609 12.911V13.011H8.91609V12.911H8.81609ZM7.00413 12.911L7.00413 12.811L7.00413 12.811L7.00413 12.911ZM3.73398 9.73342L3.63402 9.73629L3.63402 9.73629L3.73398 9.73342ZM3.7272 9.27328L3.62719 9.27251L3.6272 9.27403L3.7272 9.27328ZM3.73398 8.81867L3.83394 8.82154L3.83394 8.82154L3.73398 8.81867ZM8.8161 5.64104L8.9161 5.6412L8.91626 5.54104H8.8161V5.64104ZM8.81609 5.64276L8.71609 5.64259V5.64276H8.81609ZM8.08906 13.6379H8.18906V13.5379H8.08906V13.6379ZM5.70343 13.4215L5.73594 13.3269L5.5638 13.2677L5.60617 13.4448L5.70343 13.4215ZM6.54095 16.9208L6.6394 16.9026L6.63821 16.8976L6.54095 16.9208ZM6.54775 16.9574L6.647 16.9442L6.64607 16.9391L6.54775 16.9574ZM8.71599 13.638V16.9095H8.91599V13.638H8.71599ZM9.41605 13.538H8.81599V13.738H9.41605V13.538ZM10.2369 13.7226C9.98033 13.601 9.69996 13.538 9.41605 13.538V13.738C9.67035 13.738 9.92147 13.7945 10.1513 13.9033L10.2369 13.7226ZM15.7972 16.3564L10.2369 13.7226L10.1513 13.9033L15.7116 16.5372L15.7972 16.3564ZM16.1188 16.4464C16.0073 16.4349 15.8985 16.4044 15.7972 16.3564L15.7116 16.5372C15.8334 16.5949 15.9641 16.6314 16.0982 16.6454L16.1188 16.4464ZM17.2064 15.5636C17.1499 16.1077 16.6629 16.503 16.1188 16.4464L16.0982 16.6454C16.7521 16.7133 17.3374 16.2383 17.4053 15.5843L17.2064 15.5636ZM17.44 9.27599C17.44 11.9704 17.3622 14.0647 17.2064 15.5636L17.4053 15.5843C17.5622 14.0752 17.64 11.9729 17.64 9.27599H17.44ZM17.2064 2.98837C17.3622 4.4873 17.44 6.58153 17.44 9.27599H17.64C17.64 6.57909 17.5622 4.47683 17.4053 2.9677L17.2064 2.98837ZM17.1164 2.66674C17.1644 2.76808 17.1948 2.87684 17.2064 2.98837L17.4053 2.9677C17.3914 2.83364 17.3548 2.70292 17.2971 2.58112L17.1164 2.66674ZM15.7972 2.1956C16.2916 1.96142 16.8822 2.17236 17.1164 2.66674L17.2971 2.58112C17.0157 1.98692 16.3058 1.73339 15.7116 2.01486L15.7972 2.1956ZM10.2369 4.82942L15.7972 2.1956L15.7116 2.01486L10.1513 4.64868L10.2369 4.82942ZM9.41605 5.01401C9.69996 5.01401 9.98033 4.95096 10.2369 4.82942L10.1513 4.64868C9.92147 4.75754 9.67035 4.81401 9.41605 4.81401V5.01401ZM7.00391 5.01401H9.41605V4.81401H7.00391V5.01401ZM3.10701 8.80064C3.16754 6.69199 4.89439 5.01401 7.00391 5.01401V4.81401C4.78616 4.81401 2.97073 6.57808 2.9071 8.79491L3.10701 8.80064ZM3.1 9.274C3.10155 9.06706 3.10388 8.90969 3.10701 8.80064L2.9071 8.79491C2.9039 8.9061 2.90156 9.06516 2.9 9.2725L3.1 9.274ZM3.10701 9.75138C3.10388 9.64232 3.10155 9.48494 3.1 9.27252L2.9 9.27398C2.90156 9.48681 2.9039 9.64589 2.9071 9.75712L3.10701 9.75138ZM4.912 12.9297C3.85679 12.2575 3.14548 11.0914 3.10701 9.75138L2.9071 9.75712C2.94754 11.166 3.69568 12.392 4.80455 13.0984L4.912 12.9297ZM5.9272 17.0506L4.95553 12.9908L4.76102 13.0373L5.73269 17.0972L5.9272 17.0506ZM6.90799 17.9C6.41776 17.9 6.0023 17.5416 5.92881 17.0588L5.73109 17.0889C5.81942 17.6693 6.31876 18.1 6.90799 18.1V17.9ZM7.72549 17.9H6.90799V18.1H7.72549V17.9ZM8.71599 16.9095C8.71599 17.4565 8.27253 17.9 7.72549 17.9V18.1C8.38298 18.1 8.91599 17.567 8.91599 16.9095H8.71599ZM9.5381 13.0141C9.85817 13.03 10.1724 13.1088 10.4627 13.2463L10.5484 13.0656C10.2343 12.9168 9.89432 12.8316 9.54807 12.8143L9.5381 13.0141ZM9.4431 12.9106L9.44308 12.9139L9.64308 12.9145L9.64309 12.9113L9.4431 12.9106ZM9.44309 5.64276V12.911H9.64309V5.64276H9.44309ZM9.44307 5.63839L9.4431 5.64326L9.64309 5.64225L9.64307 5.63737L9.44307 5.63839ZM10.4627 5.30573C10.1724 5.44325 9.85816 5.52203 9.53809 5.538L9.54805 5.73775C9.89432 5.72048 10.2343 5.63525 10.5484 5.48647L10.4627 5.30573ZM16.023 2.6719L10.4627 5.30573L10.5484 5.48647L16.1086 2.85265L16.023 2.6719ZM16.6403 2.89237C16.5307 2.66103 16.2544 2.56232 16.023 2.6719L16.1086 2.85265C16.2402 2.79035 16.3973 2.84647 16.4596 2.97799L16.6403 2.89237ZM16.6825 3.04288C16.677 2.99068 16.6628 2.93979 16.6403 2.89237L16.4596 2.97799C16.4723 3.00495 16.4804 3.03388 16.4835 3.06355L16.6825 3.04288ZM16.9132 9.27602C16.9132 6.60209 16.8362 4.52272 16.6825 3.04288L16.4835 3.06355C16.6362 4.53316 16.7132 6.60448 16.7132 9.27602H16.9132ZM16.6825 15.5092C16.8362 14.0293 16.9132 11.95 16.9132 9.27602H16.7132C16.7132 11.9476 16.6362 14.0189 16.4835 15.4885L16.6825 15.5092ZM16.1735 15.9223C16.4281 15.9488 16.656 15.7638 16.6825 15.5092L16.4835 15.4885C16.4685 15.6333 16.339 15.7384 16.1942 15.7234L16.1735 15.9223ZM16.023 15.8802C16.0704 15.9026 16.1213 15.9169 16.1735 15.9223L16.1942 15.7234C16.1645 15.7203 16.1356 15.7122 16.1086 15.6994L16.023 15.8802ZM10.4627 13.2463L16.023 15.8802L16.1086 15.6994L10.5484 13.0656L10.4627 13.2463ZM8.91609 12.911V12.911H8.71609V12.911H8.91609ZM7.00413 13.011H8.81609V12.811H7.00413V13.011ZM3.63402 9.73629C3.68637 11.5599 5.17978 13.011 7.00413 13.011L7.00413 12.811C5.288 12.811 3.88318 11.446 3.83394 9.73055L3.63402 9.73629ZM3.6272 9.27403C3.62873 9.47669 3.631 9.63119 3.63402 9.73629L3.83394 9.73055C3.83098 9.62762 3.82872 9.47481 3.8272 9.27253L3.6272 9.27403ZM3.63402 8.8158C3.631 8.92086 3.62873 9.07534 3.62721 9.27251L3.8272 9.27405C3.82872 9.07725 3.83098 8.92446 3.83394 8.82154L3.63402 8.8158ZM7.00413 5.54104C5.17977 5.54104 3.68636 6.99219 3.63402 8.8158L3.83394 8.82154C3.88318 7.10611 5.288 5.74104 7.00413 5.74104V5.54104ZM8.8161 5.54104H7.00413V5.74104H8.8161V5.54104ZM8.91609 5.64292L8.9161 5.6412L8.7161 5.64087L8.7161 5.64259L8.91609 5.64292ZM8.91609 12.911V5.64276H8.71609V12.911H8.91609ZM7.98906 13.6379V16.9094H8.18906V13.6379H7.98906ZM7.00398 13.7379H8.08906V13.5379H7.00398V13.7379ZM5.67091 13.516C6.08923 13.6599 6.53781 13.7379 7.00398 13.7379V13.5379C6.56024 13.5379 6.13363 13.4637 5.73594 13.3269L5.67091 13.516ZM6.63821 16.8976L5.80068 13.3982L5.60617 13.4448L6.4437 16.9441L6.63821 16.8976ZM6.64607 16.9391L6.63927 16.9026L6.44264 16.9391L6.44943 16.9757L6.64607 16.9391ZM6.90806 17.1729C6.77599 17.1729 6.66433 17.0751 6.64687 16.9442L6.44863 16.9706C6.47933 17.2009 6.67575 17.3729 6.90806 17.3729V17.1729ZM7.72556 17.1729H6.90806V17.3729H7.72556V17.1729ZM7.98906 16.9094C7.98906 17.0549 7.87109 17.1729 7.72556 17.1729V17.3729C7.98154 17.3729 8.18906 17.1654 8.18906 16.9094H7.98906Z" fill="currentColor"/> </svg>
    </Context>
    """
  end
end
