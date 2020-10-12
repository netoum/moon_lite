defmodule Moon.Assets.Icons.IconHistory do
  use Moon.StatelessComponent
  use Moon.Components.Context

  prop(color, :string)
  prop(background_color, :string)

  def render(assigns) do
    class_name = get_class_name("Icons-IconHistory-#{assigns.color}-#{assigns.background_color}")

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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M18.2678 2.1698C16.1786 2.0566 14.0894 2 12.0001 2C9.91088 2 7.82165 2.0566 5.73242 2.1698C4.99727 2.20963 4.40272 2.81598 4.3397 3.59014C4.1133 6.37112 4.00012 9.21149 4.00012 12.1112C4.00012 15.2006 4.12859 18.29 4.38553 21.3793C4.39733 21.5211 4.45185 21.6553 4.54111 21.7621C4.77189 22.0381 5.171 22.0645 5.43256 21.8209L7.0889 20.2782C7.16849 20.2041 7.2879 20.2041 7.36748 20.2782L8.91771 21.722C9.31563 22.0927 9.91268 22.0927 10.3106 21.722L11.8608 20.2782C11.9404 20.2041 12.0598 20.2041 12.1394 20.2782L13.6896 21.722C14.0876 22.0927 14.6846 22.0927 15.0825 21.722L16.6328 20.2782C16.7123 20.2041 16.8318 20.2041 16.9113 20.2782L18.5677 21.8209C18.6688 21.9151 18.7959 21.9726 18.9303 21.9851C19.2778 22.0173 19.5842 21.7461 19.6147 21.3793C19.8717 18.29 20.0001 15.2006 20.0001 12.1112C20.0001 9.21149 19.8869 6.37113 19.6605 3.59014C19.5975 2.81598 19.003 2.20963 18.2678 2.1698ZM18.8216 3.66654C19.0459 6.42196 19.1581 9.23694 19.1581 12.1115C19.1581 15.0286 19.0426 17.9456 18.8115 20.8628L17.4686 19.6119C17.0706 19.2413 16.4736 19.2413 16.0757 19.6119L14.5254 21.0558C14.4458 21.1299 14.3264 21.1299 14.2469 21.0558L12.6966 19.6119C12.2987 19.2413 11.7017 19.2413 11.3037 19.6119L9.7535 21.0558C9.67392 21.1299 9.55451 21.1299 9.47493 21.0558L7.92469 19.6119C7.52677 19.2413 6.92972 19.2413 6.53181 19.6119L5.18883 20.8628C4.9578 17.9456 4.84229 15.0286 4.84229 12.1115C4.84229 9.23694 4.95446 6.42196 5.17877 3.66653C5.20578 3.33475 5.46059 3.07489 5.77565 3.05782C7.8505 2.9454 9.92534 2.88918 12.0002 2.88918C14.075 2.88918 16.1499 2.9454 18.2247 3.05782C18.5398 3.07489 18.7946 3.33475 18.8216 3.66654Z" fill="currentColor"/>  <path d="M18.2678 2.1698L18.2624 2.26965L18.2678 2.1698ZM5.73242 2.1698L5.73783 2.26965L5.73242 2.1698ZM4.3397 3.59014L4.24003 3.58203L4.24003 3.58203L4.3397 3.59014ZM4.38553 21.3793L4.28588 21.3876L4.38553 21.3793ZM4.54111 21.7621L4.61784 21.6979H4.61784L4.54111 21.7621ZM5.43256 21.8209L5.3644 21.7477H5.3644L5.43256 21.8209ZM7.0889 20.2782L7.15706 20.3514H7.15706L7.0889 20.2782ZM7.36748 20.2782L7.29933 20.3514H7.29933L7.36748 20.2782ZM8.91771 21.722L8.84956 21.7952L8.91771 21.722ZM10.3106 21.722L10.3788 21.7952L10.3106 21.722ZM11.8608 20.2782L11.929 20.3514H11.929L11.8608 20.2782ZM12.1394 20.2782L12.0713 20.3514L12.1394 20.2782ZM13.6896 21.722L13.6215 21.7952L13.6896 21.722ZM15.0825 21.722L15.1507 21.7952L15.0825 21.722ZM16.6328 20.2782L16.7009 20.3514L16.7009 20.3514L16.6328 20.2782ZM16.9113 20.2782L16.8432 20.3514L16.8432 20.3514L16.9113 20.2782ZM18.5677 21.8209L18.6358 21.7477L18.5677 21.8209ZM18.9303 21.9851L18.9211 22.0847H18.9211L18.9303 21.9851ZM19.6147 21.3793L19.7144 21.3876L19.7144 21.3876L19.6147 21.3793ZM19.6605 3.59014L19.5609 3.59826L19.6605 3.59014ZM18.8216 3.66654L18.7219 3.67465V3.67465L18.8216 3.66654ZM18.8115 20.8628L18.7434 20.9359L18.8949 21.077L18.9112 20.8707L18.8115 20.8628ZM17.4686 19.6119L17.5367 19.5388L17.4686 19.6119ZM16.0757 19.6119L16.0075 19.5388L16.0757 19.6119ZM14.5254 21.0558L14.4573 20.9826L14.5254 21.0558ZM14.2469 21.0558L14.315 20.9826L14.315 20.9826L14.2469 21.0558ZM12.6966 19.6119L12.7648 19.5388L12.6966 19.6119ZM11.3037 19.6119L11.2356 19.5388L11.3037 19.6119ZM9.7535 21.0558L9.68535 20.9826H9.68535L9.7535 21.0558ZM9.47493 21.0558L9.54308 20.9826H9.54308L9.47493 21.0558ZM7.92469 19.6119L7.99285 19.5388H7.99285L7.92469 19.6119ZM6.53181 19.6119L6.59996 19.6851L6.53181 19.6119ZM5.18883 20.8628L5.08914 20.8707L5.10548 21.077L5.25698 20.9359L5.18883 20.8628ZM5.17877 3.66653L5.0791 3.65842V3.65842L5.17877 3.66653ZM5.77565 3.05782L5.78106 3.15767L5.77565 3.05782ZM18.2247 3.05782L18.2193 3.15767L18.2247 3.05782ZM12.0001 2.1C14.0876 2.1 16.175 2.15655 18.2624 2.26965L18.2732 2.06995C16.1822 1.95665 14.0912 1.9 12.0001 1.9V2.1ZM5.73783 2.26965C7.82526 2.15655 9.91269 2.1 12.0001 2.1V1.9C9.90908 1.9 7.81804 1.95665 5.72701 2.06995L5.73783 2.26965ZM4.43937 3.59826C4.49867 2.86976 5.0567 2.30656 5.73783 2.26965L5.72701 2.06995C4.93785 2.11271 4.30677 2.76219 4.24003 3.58203L4.43937 3.59826ZM4.10012 12.1112C4.10012 9.21409 4.2132 6.37644 4.43937 3.59826L4.24003 3.58203C4.01341 6.36581 3.90012 9.20889 3.90012 12.1112H4.10012ZM4.48519 21.371C4.22848 18.2844 4.10012 15.1978 4.10012 12.1112H3.90012C3.90012 15.2034 4.02871 18.2955 4.28588 21.3876L4.48519 21.371ZM4.61784 21.6979C4.54211 21.6073 4.49532 21.4928 4.48519 21.371L4.28588 21.3876C4.29934 21.5495 4.36159 21.7032 4.46439 21.8262L4.61784 21.6979ZM5.3644 21.7477C5.14531 21.9518 4.81229 21.9305 4.61784 21.6979L4.46439 21.8262C4.7315 22.1457 5.1967 22.1772 5.50071 21.894L5.3644 21.7477ZM7.02075 20.205L5.3644 21.7477L5.50071 21.894L7.15706 20.3514L7.02075 20.205ZM7.43564 20.205C7.31765 20.0951 7.13873 20.0951 7.02075 20.205L7.15706 20.3514C7.19824 20.313 7.25814 20.313 7.29933 20.3514L7.43564 20.205ZM8.98587 21.6489L7.43564 20.205L7.29933 20.3514L8.84956 21.7952L8.98587 21.6489ZM10.2424 21.6489C9.88293 21.9837 9.34539 21.9837 8.98587 21.6489L8.84956 21.7952C9.28588 22.2016 9.94244 22.2016 10.3788 21.7952L10.2424 21.6489ZM11.7927 20.205L10.2424 21.6489L10.3788 21.7952L11.929 20.3514L11.7927 20.205ZM12.2076 20.205C12.0896 20.0951 11.9107 20.0951 11.7927 20.205L11.929 20.3514C11.9702 20.313 12.0301 20.313 12.0713 20.3514L12.2076 20.205ZM13.7578 21.6489L12.2076 20.205L12.0713 20.3514L13.6215 21.7952L13.7578 21.6489ZM15.0144 21.6489C14.6549 21.9837 14.1173 21.9837 13.7578 21.6489L13.6215 21.7952C14.0578 22.2016 14.7144 22.2016 15.1507 21.7952L15.0144 21.6489ZM16.5646 20.205L15.0144 21.6489L15.1507 21.7952L16.7009 20.3514L16.5646 20.205ZM16.9795 20.205C16.8615 20.0951 16.6826 20.0951 16.5646 20.205L16.7009 20.3514C16.7421 20.313 16.802 20.313 16.8432 20.3514L16.9795 20.205ZM18.6358 21.7477L16.9795 20.205L16.8432 20.3514L18.4995 21.8941L18.6358 21.7477ZM18.9395 21.8855C18.8277 21.8752 18.7212 21.8272 18.6358 21.7477L18.4995 21.8941C18.6165 22.0029 18.7641 22.0701 18.9211 22.0847L18.9395 21.8855ZM19.5151 21.371C19.4887 21.6875 19.2267 21.9121 18.9395 21.8855L18.9211 22.0847C19.3289 22.1225 19.6797 21.8046 19.7144 21.3876L19.5151 21.371ZM19.9001 12.1112C19.9001 15.1978 19.7718 18.2844 19.5151 21.371L19.7144 21.3876C19.9715 18.2955 20.1001 15.2034 20.1001 12.1112H19.9001ZM19.5609 3.59826C19.787 6.37644 19.9001 9.21409 19.9001 12.1112H20.1001C20.1001 9.20889 19.9868 6.36581 19.7602 3.58203L19.5609 3.59826ZM18.2624 2.26965C18.9435 2.30656 19.5016 2.86976 19.5609 3.59826L19.7602 3.58203C19.6935 2.76219 19.0624 2.11271 18.2732 2.06995L18.2624 2.26965ZM19.2581 12.1115C19.2581 9.23434 19.1458 6.41665 18.9213 3.65842L18.7219 3.67465C18.946 6.42727 19.0581 9.23954 19.0581 12.1115H19.2581ZM18.9112 20.8707C19.1425 17.9509 19.2581 15.0312 19.2581 12.1115H19.0581C19.0581 15.0259 18.9427 17.9404 18.7118 20.8549L18.9112 20.8707ZM17.4004 19.6851L18.7434 20.9359L18.8797 20.7896L17.5367 19.5388L17.4004 19.6851ZM16.1438 19.6851C16.5033 19.3503 17.0409 19.3503 17.4004 19.6851L17.5367 19.5388C17.1004 19.1324 16.4438 19.1324 16.0075 19.5388L16.1438 19.6851ZM14.5936 21.129L16.1438 19.6851L16.0075 19.5388L14.4573 20.9826L14.5936 21.129ZM14.1787 21.129C14.2967 21.2389 14.4756 21.2389 14.5936 21.129L14.4573 20.9826C14.4161 21.021 14.3562 21.021 14.315 20.9826L14.1787 21.129ZM12.6285 19.6851L14.1787 21.129L14.315 20.9826L12.7648 19.5388L12.6285 19.6851ZM11.3719 19.6851C11.7314 19.3503 12.2689 19.3503 12.6285 19.6851L12.7648 19.5388C12.3285 19.1324 11.6719 19.1324 11.2356 19.5388L11.3719 19.6851ZM9.82166 21.129L11.3719 19.6851L11.2356 19.5388L9.68535 20.9826L9.82166 21.129ZM9.40677 21.129C9.52475 21.2389 9.70368 21.2389 9.82166 21.129L9.68535 20.9826C9.64416 21.021 9.58427 21.021 9.54308 20.9826L9.40677 21.129ZM7.85654 19.6851L9.40677 21.129L9.54308 20.9826L7.99285 19.5388L7.85654 19.6851ZM6.59996 19.6851C6.95948 19.3503 7.49702 19.3503 7.85654 19.6851L7.99285 19.5388C7.55653 19.1324 6.89997 19.1324 6.46365 19.5388L6.59996 19.6851ZM5.25698 20.9359L6.59996 19.6851L6.46365 19.5388L5.12067 20.7896L5.25698 20.9359ZM4.74229 12.1115C4.74229 15.0312 4.8579 17.9509 5.08914 20.8707L5.28851 20.8549C5.05769 17.9404 4.94229 15.0259 4.94229 12.1115H4.74229ZM5.0791 3.65842C4.85456 6.41665 4.74229 9.23434 4.74229 12.1115H4.94229C4.94229 9.23954 5.05435 6.42727 5.27844 3.67465L5.0791 3.65842ZM5.77024 2.95796C5.40116 2.97796 5.10983 3.28096 5.0791 3.65842L5.27844 3.67465C5.30173 3.38853 5.52001 3.17181 5.78106 3.15767L5.77024 2.95796ZM12.0002 2.78918C9.92354 2.78918 7.84689 2.84544 5.77024 2.95796L5.78106 3.15767C7.85411 3.04535 9.92715 2.98918 12.0002 2.98918V2.78918ZM18.2301 2.95796C16.1535 2.84544 14.0768 2.78918 12.0002 2.78918V2.98918C14.0732 2.98918 16.1462 3.04535 18.2193 3.15767L18.2301 2.95796ZM18.9213 3.65842C18.8905 3.28096 18.5992 2.97796 18.2301 2.95796L18.2193 3.15767C18.4803 3.17181 18.6986 3.38853 18.7219 3.67465L18.9213 3.65842Z" fill="currentColor"/>  <path d="M7.45467 9C7.20363 9 7.00012 8.77614 7.00012 8.5C7.00012 8.22386 7.20363 8 7.45467 8H11.5456C11.7966 8 12.0001 8.22386 12.0001 8.5C12.0001 8.77614 11.7966 9 11.5456 9H7.45467Z" fill="currentColor" stroke="currentColor" stroke-/>  <path d="M7.4349 13C7.19478 13 7.00012 12.7761 7.00012 12.5C7.00012 12.2239 7.19478 12 7.4349 12H16.5653C16.8055 12 17.0001 12.2239 17.0001 12.5C17.0001 12.7761 16.8055 13 16.5653 13H7.4349Z" fill="currentColor" stroke="currentColor" stroke-width="0.2"/>  <path d="M7.4349 16C7.19478 16 7.00012 15.7761 7.00012 15.5C7.00012 15.2239 7.19478 15 7.4349 15H16.5653C16.8055 15 17.0001 15.2239 17.0001 15.5C17.0001 15.7761 16.8055 16 16.5653 16H7.4349Z" fill="currentColor" stroke="currentColor" stroke-width="0.2"/> </svg>
    </Context>
    """
  end
end
