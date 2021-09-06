defmodule Moon.Assets.Icon do
  use Moon.StatelessComponent
  alias Moon.Assets.Icons

  prop name, :string

  prop color, :string, values: Moon.colors()
  prop background_color, :string, values: Moon.colors()
  prop font_size, :string
  prop click, :event
  prop class, :string

  @assets_map %{
    arrowsbottomleft: Icons.Arrowsbottomleft,
    arrowsbottomright: Icons.Arrowsbottomright,
    arrowschevrondowndouble: Icons.Arrowschevrondowndouble,
    arrowschevronleftdouble: Icons.Arrowschevronleftdouble,
    arrowschevronrightdouble: Icons.Arrowschevronrightdouble,
    arrowschevronupdouble: Icons.Arrowschevronupdouble,
    arrowsdiagonalsbltr: Icons.Arrowsdiagonalsbltr,
    arrowsdiagonalstlbr: Icons.Arrowsdiagonalstlbr,
    arrowsdown: Icons.Arrowsdown,
    arrowsforward: Icons.Arrowsforward,
    arrowsleft: Icons.Arrowsleft,
    arrowsleftcurved: Icons.Arrowsleftcurved,
    arrowsrefresh: Icons.Arrowsrefresh,
    arrowsreply: Icons.Arrowsreply,
    arrowsright: Icons.Arrowsright,
    arrowsrightcurved: Icons.Arrowsrightcurved,
    arrowstopleft: Icons.Arrowstopleft,
    arrowstopright: Icons.Arrowstopright,
    arrowstransfer: Icons.Arrowstransfer,
    arrowsup: Icons.Arrowsup,
    arrowsupdate: Icons.Arrowsupdate,
    chartarea: Icons.Chartarea,
    chartbar: Icons.Chartbar,
    chartbaralternitive: Icons.Chartbaralternitive,
    chartbarvertical: Icons.Chartbarvertical,
    chartdashboard: Icons.Chartdashboard,
    chartfin: Icons.Chartfin,
    chartline: Icons.Chartline,
    chartpiechart: Icons.Chartpiechart,
    chartrelation: Icons.Chartrelation,
    chartround: Icons.Chartround,
    chatchat: Icons.Chatchat,
    chatcomment: Icons.Chatcomment,
    chatcommentadd: Icons.Chatcommentadd,
    chatcommentbubble: Icons.Chatcommentbubble,
    chatcommentbubblealert: Icons.Chatcommentbubblealert,
    chatcommentbubblequestionmark: Icons.Chatcommentbubblequestionmark,
    chatcommentremove: Icons.Chatcommentremove,
    chatcommenttext: Icons.Chatcommenttext,
    chatdoublebubble: Icons.Chatdoublebubble,
    chatstatschat: Icons.Chatstatschat,
    controlschevrondown: Icons.Controlschevrondown,
    controlschevrondownsmall: Icons.Controlschevrondownsmall,
    controlschevronleft: Icons.Controlschevronleft,
    controlschevronleftsmall: Icons.Controlschevronleftsmall,
    controlschevronright: Icons.Controlschevronright,
    controlschevronrightsmall: Icons.Controlschevronrightsmall,
    controlschevronup: Icons.Controlschevronup,
    controlschevronupsmall: Icons.Controlschevronupsmall,
    controlsclear: Icons.Controlsclear,
    controlsclose: Icons.Controlsclose,
    controlsclosesmall: Icons.Controlsclosesmall,
    controlscollapse: Icons.Controlscollapse,
    controlsdiagonalsinsight: Icons.Controlsdiagonalsinsight,
    controlsdiagonalsoutsight: Icons.Controlsdiagonalsoutsight,
    controlsexpand: Icons.Controlsexpand,
    controlseye: Icons.Controlseye,
    controlseyecrossed: Icons.Controlseyecrossed,
    controlsminus: Icons.Controlsminus,
    controlsplus: Icons.Controlsplus,
    controlsverticaldoublechevron: Icons.Controlsverticaldoublechevron,
    devicesbluetooth: Icons.Devicesbluetooth,
    devicesjoystick: Icons.Devicesjoystick,
    deviceskeyboard: Icons.Deviceskeyboard,
    devicesmac: Icons.Devicesmac,
    devicesmacbook: Icons.Devicesmacbook,
    devicesmacbookandiphone: Icons.Devicesmacbookandiphone,
    devicesmouse: Icons.Devicesmouse,
    devicesphone: Icons.Devicesphone,
    devicessmartphone: Icons.Devicessmartphone,
    devicestvbox: Icons.Devicestvbox,
    filesadd: Icons.Filesadd,
    filescase: Icons.Filescase,
    filesclipboard: Icons.Filesclipboard,
    filesclipboardtext: Icons.Filesclipboardtext,
    filescode: Icons.Filescode,
    filescopy: Icons.Filescopy,
    filesdelete: Icons.Filesdelete,
    filesdraft: Icons.Filesdraft,
    filesexport: Icons.Filesexport,
    filesexternallink: Icons.Filesexternallink,
    filesfile: Icons.Filesfile,
    filesfolderclosed: Icons.Filesfolderclosed,
    filesfolderopen: Icons.Filesfolderopen,
    filesfolderopenalternative: Icons.Filesfolderopenalternative,
    filesfolderzip: Icons.Filesfolderzip,
    filesglasses: Icons.Filesglasses,
    filesimport: Icons.Filesimport,
    filesmagazine: Icons.Filesmagazine,
    filesprint: Icons.Filesprint,
    filesremove: Icons.Filesremove,
    filessave: Icons.Filessave,
    filesscan: Icons.Filesscan,
    filesshare: Icons.Filesshare,
    filessticker: Icons.Filessticker,
    filesstickers: Icons.Filesstickers,
    filestable: Icons.Filestable,
    filestext: Icons.Filestext,
    genericabout: Icons.Genericabout,
    genericalarm: Icons.Genericalarm,
    genericalarmround: Icons.Genericalarmround,
    genericamountnumber: Icons.Genericamountnumber,
    genericbet: Icons.Genericbet,
    genericblock: Icons.Genericblock,
    genericbookmark: Icons.Genericbookmark,
    genericbrowser: Icons.Genericbrowser,
    genericburgerregular: Icons.Genericburgerregular,
    genericburgerzig: Icons.Genericburgerzig,
    genericcheckalternative: Icons.Genericcheckalternative,
    genericcheckrounded: Icons.Genericcheckrounded,
    genericclose: Icons.Genericclose,
    genericdelete: Icons.Genericdelete,
    genericdislike: Icons.Genericdislike,
    genericdownload: Icons.Genericdownload,
    genericdraghandle: Icons.Genericdraghandle,
    genericedit: Icons.Genericedit,
    genericglobe: Icons.Genericglobe,
    genericheart: Icons.Genericheart,
    generichelp: Icons.Generichelp,
    generichome: Icons.Generichome,
    genericidea: Icons.Genericidea,
    genericinfo: Icons.Genericinfo,
    genericinfoalternative: Icons.Genericinfoalternative,
    genericlike: Icons.Genericlike,
    genericlink: Icons.Genericlink,
    genericlogin: Icons.Genericlogin,
    genericlogout: Icons.Genericlogout,
    genericloyalty: Icons.Genericloyalty,
    genericmention: Icons.Genericmention,
    genericmenu: Icons.Genericmenu,
    genericminus: Icons.Genericminus,
    genericmultibet: Icons.Genericmultibet,
    genericnews: Icons.Genericnews,
    genericpicture: Icons.Genericpicture,
    genericplus: Icons.Genericplus,
    genericsearch: Icons.Genericsearch,
    genericsettings: Icons.Genericsettings,
    genericshareandroid: Icons.Genericshareandroid,
    genericshareios: Icons.Genericshareios,
    genericshareiosbig: Icons.Genericshareiosbig,
    genericstar: Icons.Genericstar,
    generictag: Icons.Generictag,
    genericticket: Icons.Genericticket,
    genericupload: Icons.Genericupload,
    genericuser: Icons.Genericuser,
    genericusers: Icons.Genericusers,
    icon_about: Icons.IconAbout,
    icon_add: Icons.IconAdd,
    icon_alert_circle: Icons.IconAlertCircle,
    icon_align_left: Icons.IconAlignLeft,
    icon_all_sports: Icons.IconAllSports,
    icon_arrow_diagonal_down_left: Icons.IconArrowDiagonalDownLeft,
    icon_arrow_diagonal_up_right: Icons.IconArrowDiagonalUpRight,
    icon_arrow_diagonals: Icons.IconArrowDiagonals,
    icon_arrow_down: Icons.IconArrowDown,
    icon_arrow_l_down: Icons.IconArrowLDown,
    icon_arrow_l_up: Icons.IconArrowLUp,
    icon_arrow_left_right: Icons.IconArrowLeftRight,
    icon_arrow_left: Icons.IconArrowLeft,
    icon_arrow_right: Icons.IconArrowRight,
    icon_arrow_top_right: Icons.IconArrowTopRight,
    icon_arrow_up_down: Icons.IconArrowUpDown,
    icon_arrow_up: Icons.IconArrowUp,
    icon_asian_view: Icons.IconAsianView,
    icon_attache: Icons.IconAttache,
    icon_award: Icons.IconAward,
    icon_banner_info: Icons.IconBannerInfo,
    icon_bell: Icons.IconBell,
    icon_bitcoin_talk: Icons.IconBitcoinTalk,
    icon_bombay_club: Icons.IconBombayClub,
    icon_burger: Icons.IconBurger,
    icon_calendar_empty: Icons.IconCalendarEmpty,
    icon_calendar: Icons.IconCalendar,
    icon_card: Icons.IconCard,
    icon_case: Icons.IconCase,
    icon_cash_out: Icons.IconCashOut,
    icon_casino_bell: Icons.IconCasinoBell,
    icon_casino: Icons.IconCasino,
    icon_chart_area: Icons.IconChartArea,
    icon_chart_bar: Icons.IconChartBar,
    icon_chart_pies: Icons.IconChartPies,
    icon_chart_round: Icons.IconChartRound,
    icon_chart_segment: Icons.IconChartSegment,
    icon_chevron_down_rounded: Icons.IconChevronDownRounded,
    icon_chevron_down: Icons.IconChevronDown,
    icon_chevron_left_rounded: Icons.IconChevronLeftRounded,
    icon_chevron_left: Icons.IconChevronLeft,
    icon_chevron_right_rounded: Icons.IconChevronRightRounded,
    icon_chevron_right: Icons.IconChevronRight,
    icon_chevron_up_down: Icons.IconChevronUpDown,
    icon_chevron_up_rounded: Icons.IconChevronUpRounded,
    icon_chevron_up: Icons.IconChevronUp,
    icon_circle: Icons.IconCircle,
    icon_claps: Icons.IconClaps,
    icon_clock: Icons.IconClock,
    icon_close_rounded: Icons.IconCloseRounded,
    icon_close_small: Icons.IconCloseSmall,
    icon_close: Icons.IconClose,
    icon_code: Icons.IconCode,
    icon_collapse: Icons.IconCollapse,
    icon_copy: Icons.IconCopy,
    icon_credit: Icons.IconCredit,
    icon_crypto: Icons.IconCrypto,
    icon_currency_ada: Icons.IconCurrencyAda,
    icon_currency_ars: Icons.IconCurrencyArs,
    icon_currency_bdt: Icons.IconCurrencyBdt,
    icon_currency_bob: Icons.IconCurrencyBob,
    icon_currency_brl: Icons.IconCurrencyBrl,
    icon_currency_btc: Icons.IconCurrencyBtc,
    icon_currency_cad: Icons.IconCurrencyCad,
    icon_currency_clp: Icons.IconCurrencyClp,
    icon_currency_cny: Icons.IconCurrencyCny,
    icon_currency_crc: Icons.IconCurrencyCrc,
    icon_currency_eth: Icons.IconCurrencyEth,
    icon_currency_eur: Icons.IconCurrencyEur,
    icon_currency_gel: Icons.IconCurrencyGel,
    icon_currency_hkd: Icons.IconCurrencyHkd,
    icon_currency_idr: Icons.IconCurrencyIdr,
    icon_currency_inr: Icons.IconCurrencyInr,
    icon_currency_iqd: Icons.IconCurrencyIqd,
    icon_currency_jpy: Icons.IconCurrencyJpy,
    icon_currency_krw: Icons.IconCurrencyKrw,
    icon_currency_ltc: Icons.IconCurrencyLtc,
    icon_currency_mxn: Icons.IconCurrencyMxn,
    icon_currency_myr: Icons.IconCurrencyMyr,
    icon_currency_pen: Icons.IconCurrencyPen,
    icon_currency_pkr: Icons.IconCurrencyPkr,
    icon_currency_rub: Icons.IconCurrencyRub,
    icon_currency_soc: Icons.IconCurrencySoc,
    icon_currency_thb: Icons.IconCurrencyThb,
    icon_currency_trx: Icons.IconCurrencyTrx,
    icon_currency_try: Icons.IconCurrencyTry,
    icon_currency_uah: Icons.IconCurrencyUah,
    icon_currency_usd: Icons.IconCurrencyUsd,
    icon_currency_usdt: Icons.IconCurrencyUsdt,
    icon_currency_ves: Icons.IconCurrencyVes,
    icon_currency_vnd: Icons.IconCurrencyVnd,
    icon_currency_xrp: Icons.IconCurrencyXrp,
    icon_cursor: Icons.IconCursor,
    icon_data: Icons.IconData,
    icon_delete: Icons.IconDelete,
    icon_desktop: Icons.IconDesktop,
    icon_details: Icons.IconDetails,
    icon_double: Icons.IconDouble,
    icon_download: Icons.IconDownload,
    icon_duotone_arrows: Icons.IconDuotoneArrows,
    icon_duotone_chat: Icons.IconDuotoneChat,
    icon_duotone_coins: Icons.IconDuotoneCoins,
    icon_duotone_mail: Icons.IconDuotoneMail,
    icon_e_sports_call_of_duty: Icons.IconESportsCallOfDuty,
    icon_e_sports_counter_strike: Icons.IconESportsCounterStrike,
    icon_e_sports_dota2: Icons.IconESportsDota2,
    icon_e_sports_e_nba: Icons.IconESportsENba,
    icon_e_sports_e_sport: Icons.IconESportsESport,
    icon_e_sports_football: Icons.IconESportsFootball,
    icon_e_sports_hearthstone: Icons.IconESportsHearthstone,
    icon_e_sports_league_of_legends: Icons.IconESportsLeagueOfLegends,
    icon_e_sports_overwatch: Icons.IconESportsOverwatch,
    icon_e_sports_rainbow: Icons.IconESportsRainbow,
    icon_e_sports_rocket_league: Icons.IconESportsRocketLeague,
    icon_e_sports_star_craft: Icons.IconESportsStarCraft,
    icon_edit: Icons.IconEdit,
    icon_error_circle: Icons.IconErrorCircle,
    icon_error: Icons.IconError,
    icon_expand: Icons.IconExpand,
    icon_eye_closed: Icons.IconEyeClosed,
    icon_eye: Icons.IconEye,
    icon_facebook: Icons.IconFacebook,
    icon_filter: Icons.IconFilter,
    icon_forward: Icons.IconForward,
    icon_freebet: Icons.IconFreebet,
    icon_full_screen: Icons.IconFullScreen,
    icon_gamepad: Icons.IconGamepad,
    icon_general_info: Icons.IconGeneralInfo,
    icon_gift: Icons.IconGift,
    icon_glasses: Icons.IconGlasses,
    icon_globe: Icons.IconGlobe,
    icon_google_auth: Icons.IconGoogleAuth,
    icon_google: Icons.IconGoogle,
    icon_hamburger: Icons.IconHamburger,
    icon_help: Icons.IconHelp,
    icon_history: Icons.IconHistory,
    icon_home: Icons.IconHome,
    icon_hub88: Icons.IconHub88,
    icon_hyperlink: Icons.IconHyperlink,
    icon_in_play: Icons.IconInPlay,
    icon_info_circle: Icons.IconInfoCircle,
    icon_info: Icons.IconInfo,
    icon_instagram: Icons.IconInstagram,
    icon_left_arrow_curve_right: Icons.IconLeftArrowCurveRight,
    icon_life_ring: Icons.IconLifeRing,
    icon_lightbulb: Icons.IconLightbulb,
    icon_limit: Icons.IconLimit,
    icon_line: Icons.IconLine,
    icon_link: Icons.IconLink,
    icon_list_numbered: Icons.IconListNumbered,
    icon_live_casino: Icons.IconLiveCasino,
    icon_live_chat: Icons.IconLiveChat,
    icon_live_stream: Icons.IconLiveStream,
    icon_lock: Icons.IconLock,
    icon_login: Icons.IconLogin,
    icon_logo_plain: Icons.IconLogoPlain,
    icon_logout: Icons.IconLogout,
    icon_loyalty_0: Icons.IconLoyalty0,
    icon_mail: Icons.IconMail,
    icon_menu_home: Icons.IconMenuHome,
    icon_menu: Icons.IconMenu,
    icon_minus: Icons.IconMinus,
    icon_mobile: Icons.IconMobile,
    icon_money: Icons.IconMoney,
    icon_moneybag: Icons.IconMoneybag,
    icon_moon: Icons.IconMoon,
    icon_more: Icons.IconMore,
    icon_news: Icons.IconNews,
    icon_notification_unread: Icons.IconNotificationUnread,
    icon_notification: Icons.IconNotification,
    icon_padlock: Icons.IconPadlock,
    icon_pencil: Icons.IconPencil,
    icon_photo: Icons.IconPhoto,
    icon_picture: Icons.IconPicture,
    icon_pin: Icons.IconPin,
    icon_play: Icons.IconPlay,
    icon_plus: Icons.IconPlus,
    icon_price_boost: Icons.IconPriceBoost,
    icon_print: Icons.IconPrint,
    icon_profile: Icons.IconProfile,
    icon_promotions: Icons.IconPromotions,
    icon_refresh: Icons.IconRefresh,
    icon_reward: Icons.IconReward,
    icon_row: Icons.IconRow,
    icon_sb_shield: Icons.IconSbShield,
    icon_search: Icons.IconSearch,
    icon_settings: Icons.IconSettings,
    icon_share: Icons.IconShare,
    icon_sliders: Icons.IconSliders,
    icon_slots: Icons.IconSlots,
    icon_snackbar_success: Icons.IconSnackbarSuccess,
    icon_sport_widget: Icons.IconSportWidget,
    icon_sports_afl: Icons.IconSportsAfl,
    icon_sports_american_foot_ball: Icons.IconSportsAmericanFootBall,
    icon_sports_badminton: Icons.IconSportsBadminton,
    icon_sports_base_ball: Icons.IconSportsBaseBall,
    icon_sports_basket_ball: Icons.IconSportsBasketBall,
    icon_sports_biathlon: Icons.IconSportsBiathlon,
    icon_sports_boxing: Icons.IconSportsBoxing,
    icon_sports_center: Icons.IconSportsCenter,
    icon_sports_cricket: Icons.IconSportsCricket,
    icon_sports_cycling: Icons.IconSportsCycling,
    icon_sports_darts: Icons.IconSportsDarts,
    icon_sports_e_sports: Icons.IconSportsESports,
    icon_sports_fantasy: Icons.IconSportsFantasy,
    icon_sports_featured: Icons.IconSportsFeatured,
    icon_sports_foot_ball: Icons.IconSportsFootBall,
    icon_sports_golf: Icons.IconSportsGolf,
    icon_sports_greyhound: Icons.IconSportsGreyhound,
    icon_sports_hand_ball: Icons.IconSportsHandBall,
    icon_sports_harness: Icons.IconSportsHarness,
    icon_sports_horse_racing: Icons.IconSportsHorseRacing,
    icon_sports_horse: Icons.IconSportsHorse,
    icon_sports_ice_hockey: Icons.IconSportsIceHockey,
    icon_sports_mma: Icons.IconSportsMma,
    icon_sports_motor_sports: Icons.IconSportsMotorSports,
    icon_sports_poker: Icons.IconSportsPoker,
    icon_sports_politics: Icons.IconSportsPolitics,
    icon_sports_pool: Icons.IconSportsPool,
    icon_sports_popular: Icons.IconSportsPopular,
    icon_sports_rugby: Icons.IconSportsRugby,
    icon_sports_ski: Icons.IconSportsSki,
    icon_sports_snooker: Icons.IconSportsSnooker,
    icon_sports_special: Icons.IconSportsSpecial,
    icon_sports_squash: Icons.IconSportsSquash,
    icon_sports_table_tennis: Icons.IconSportsTableTennis,
    icon_sports_tennis: Icons.IconSportsTennis,
    icon_sports_volley_ball: Icons.IconSportsVolleyBall,
    icon_sports_water_polo: Icons.IconSportsWaterPolo,
    icon_star_empty: Icons.IconStarEmpty,
    icon_star_filled: Icons.IconStarFilled,
    icon_star_flag: Icons.IconStarFlag,
    icon_stars: Icons.IconStars,
    icon_start: Icons.IconStart,
    icon_stats: Icons.IconStats,
    icon_stop: Icons.IconStop,
    icon_stopwatch: Icons.IconStopwatch,
    icon_success_circle: Icons.IconSuccessCircle,
    icon_sun: Icons.IconSun,
    icon_support: Icons.IconSupport,
    icon_table: Icons.IconTable,
    icon_tag: Icons.IconTag,
    icon_telegram: Icons.IconTelegram,
    icon_text: Icons.IconText,
    icon_timer: Icons.IconTimer,
    icon_twitter: Icons.IconTwitter,
    icon_upload: Icons.IconUpload,
    icon_user: Icons.IconUser,
    icon_users: Icons.IconUsers,
    icon_verify: Icons.IconVerify,
    icon_virtual_sports: Icons.IconVirtualSports,
    icon_vkontakte: Icons.IconVkontakte,
    icon_volatility: Icons.IconVolatility,
    icon_wallet_rounded: Icons.IconWalletRounded,
    icon_wallet: Icons.IconWallet,
    icon_wand: Icons.IconWand,
    icon_warning: Icons.IconWarning,
    icon_whatsapp: Icons.IconWhatsapp,
    icon_youtube: Icons.IconYoutube,
    icon_zoom: Icons.IconZoom,
    mailbox: Icons.Mailbox,
    mailemailstats: Icons.Mailemailstats,
    mailenvelope: Icons.Mailenvelope,
    mailfilter: Icons.Mailfilter,
    mailfiltercrossed: Icons.Mailfiltercrossed,
    mailflag: Icons.Mailflag,
    maillink: Icons.Maillink,
    mailsend: Icons.Mailsend,
    mapscompas: Icons.Mapscompas,
    mapslocation: Icons.Mapslocation,
    mapsmap: Icons.Mapsmap,
    mapsmarker: Icons.Mapsmarker,
    mapspanorama: Icons.Mapspanorama,
    mapspin: Icons.Mapspin,
    mapspinadd: Icons.Mapspinadd,
    mapspinlocation: Icons.Mapspinlocation,
    mapsworld: Icons.Mapsworld,
    mediafastback: Icons.Mediafastback,
    mediafastforward: Icons.Mediafastforward,
    mediagif: Icons.Mediagif,
    mediaheadphones: Icons.Mediaheadphones,
    mediamegaphone: Icons.Mediamegaphone,
    mediamice: Icons.Mediamice,
    mediamicealternative: Icons.Mediamicealternative,
    mediamonitor: Icons.Mediamonitor,
    mediamusic: Icons.Mediamusic,
    medianovolume: Icons.Medianovolume,
    mediapause: Icons.Mediapause,
    mediaphoto: Icons.Mediaphoto,
    mediaplay: Icons.Mediaplay,
    mediasoundwave: Icons.Mediasoundwave,
    mediastop: Icons.Mediastop,
    mediatuner: Icons.Mediatuner,
    mediatuneralternative: Icons.Mediatuneralternative,
    mediavideo: Icons.Mediavideo,
    mediavolume: Icons.Mediavolume,
    notificationsactivity: Icons.Notificationsactivity,
    notificationsaddbell: Icons.Notificationsaddbell,
    notificationsalert: Icons.Notificationsalert,
    notificationsapp: Icons.Notificationsapp,
    notificationsbell: Icons.Notificationsbell,
    notificationsbellalarm: Icons.Notificationsbellalarm,
    notificationsbellcross: Icons.Notificationsbellcross,
    notificationsbellringing: Icons.Notificationsbellringing,
    notificationsbellringingalternative: Icons.Notificationsbellringingalternative,
    notificationserror: Icons.Notificationserror,
    notificationsnotifications: Icons.Notificationsnotifications,
    notificationsquestionmark: Icons.Notificationsquestionmark,
    notificationssettings: Icons.Notificationssettings,
    other3dots: Icons.Other3dots,
    other3dotshorizontal: Icons.Other3dotshorizontal,
    otherframe: Icons.Otherframe,
    otherid: Icons.Otherid,
    otherlightning: Icons.Otherlightning,
    othermoon: Icons.Othermoon,
    otherother: Icons.Otherother,
    otherplug: Icons.Otherplug,
    otherrewards: Icons.Otherrewards,
    othersad: Icons.Othersad,
    othersmile: Icons.Othersmile,
    othersun: Icons.Othersun,
    otherwater: Icons.Otherwater,
    securitykey: Icons.Securitykey,
    securitylock: Icons.Securitylock,
    securitymagnet: Icons.Securitymagnet,
    securityshield: Icons.Securityshield,
    securityshieldsecured: Icons.Securityshieldsecured,
    securityumbrella: Icons.Securityumbrella,
    securityunlock: Icons.Securityunlock,
    securityverified: Icons.Securityverified,
    securityverifiedface: Icons.Securityverifiedface,
    shopbag: Icons.Shopbag,
    shopbasket: Icons.Shopbasket,
    shopcard: Icons.Shopcard,
    shopcart: Icons.Shopcart,
    shopcrypto: Icons.Shopcrypto,
    shopcryptocoin: Icons.Shopcryptocoin,
    shopwallet: Icons.Shopwallet,
    shopwirelesspay: Icons.Shopwirelesspay,
    softwarebug: Icons.Softwarebug,
    softwarecode: Icons.Softwarecode,
    softwarecursor: Icons.Softwarecursor,
    softwaredashboard: Icons.Softwaredashboard,
    softwaredata: Icons.Softwaredata,
    softwaredownload: Icons.Softwaredownload,
    softwarehand: Icons.Softwarehand,
    softwarelogin: Icons.Softwarelogin,
    softwarelogout: Icons.Softwarelogout,
    softwarenut: Icons.Softwarenut,
    softwareplate: Icons.Softwareplate,
    softwarepuzzle: Icons.Softwarepuzzle,
    softwaresettings: Icons.Softwaresettings,
    softwareshutdown: Icons.Softwareshutdown,
    softwaresorting: Icons.Softwaresorting,
    softwarewrench: Icons.Softwarewrench,
    sportamericanfootball: Icons.Sportamericanfootball,
    sportbadminton: Icons.Sportbadminton,
    sportbaseball: Icons.Sportbaseball,
    sportbasketball: Icons.Sportbasketball,
    sportbeachvolley: Icons.Sportbeachvolley,
    sportbeachvolleyball: Icons.Sportbeachvolleyball,
    sportbombay: Icons.Sportbombay,
    sportboxing: Icons.Sportboxing,
    sportcasino: Icons.Sportcasino,
    sportcricket: Icons.Sportcricket,
    sportcrosscountry: Icons.Sportcrosscountry,
    sportcsgo: Icons.Sportcsgo,
    sportcycling: Icons.Sportcycling,
    sportdarts: Icons.Sportdarts,
    sportdota2: Icons.Sportdota2,
    sportesportgeneric: Icons.Sportesportgeneric,
    sportfeatured: Icons.Sportfeatured,
    sportfieldhockey: Icons.Sportfieldhockey,
    sportfloorball: Icons.Sportfloorball,
    sportfutsal: Icons.Sportfutsal,
    sportgolf: Icons.Sportgolf,
    sportgreyhound: Icons.Sportgreyhound,
    sporthandball: Icons.Sporthandball,
    sportharness: Icons.Sportharness,
    sporthorseracing: Icons.Sporthorseracing,
    sporticehockey: Icons.Sporticehockey,
    sportlol: Icons.Sportlol,
    sportmma: Icons.Sportmma,
    sportmotor: Icons.Sportmotor,
    sportoverwatch: Icons.Sportoverwatch,
    sportrugby: Icons.Sportrugby,
    sportsettennis: Icons.Sportsettennis,
    sportsnooker: Icons.Sportsnooker,
    sportsoccer: Icons.Sportsoccer,
    sportspecials: Icons.Sportspecials,
    sportsportsbet: Icons.Sportsportsbet,
    sporttabletennis: Icons.Sporttabletennis,
    sporttennis: Icons.Sporttennis,
    sportwaterpolo: Icons.Sportwaterpolo,
    textancor: Icons.Textancor,
    textattach: Icons.Textattach,
    textbold: Icons.Textbold,
    textbulletslist: Icons.Textbulletslist,
    textcards: Icons.Textcards,
    textcenter: Icons.Textcenter,
    textclearformatting: Icons.Textclearformatting,
    textcut: Icons.Textcut,
    textdescreaseindent: Icons.Textdescreaseindent,
    textincertline: Icons.Textincertline,
    textincreaseindent: Icons.Textincreaseindent,
    textitalic: Icons.Textitalic,
    textleftalign: Icons.Textleftalign,
    textmarker: Icons.Textmarker,
    textmath: Icons.Textmath,
    textnumberslist: Icons.Textnumberslist,
    textrightalign: Icons.Textrightalign,
    textsize: Icons.Textsize,
    textstrikethrough: Icons.Textstrikethrough,
    textstyle: Icons.Textstyle,
    texttable: Icons.Texttable,
    texttablealternative: Icons.Texttablealternative,
    textunderline: Icons.Textunderline,
    timealarm: Icons.Timealarm,
    timecalendar: Icons.Timecalendar,
    timecalendaradd: Icons.Timecalendaradd,
    timecalendaralternative: Icons.Timecalendaralternative,
    timecalendardate: Icons.Timecalendardate,
    timecalendarremove: Icons.Timecalendarremove,
    timecalendarsucsess: Icons.Timecalendarsucsess,
    timeclock: Icons.Timeclock,
    timesandglass: Icons.Timesandglass,
    timestopwatch: Icons.Timestopwatch,
    timestopwatchtimer: Icons.Timestopwatchtimer,
    timetime: Icons.Timetime,
    timewatch: Icons.Timewatch,
    typeclosedhand: Icons.Typeclosedhand,
    typedefault: Icons.Typedefault,
    typehandpointing: Icons.Typehandpointing,
    typehelp: Icons.Typehelp,
    typemove: Icons.Typemove,
    typenotallowed: Icons.Typenotallowed,
    typeopenedhand: Icons.Typeopenedhand,
    typetext: Icons.Typetext,
    typezoomin: Icons.Typezoomin,
    typezoomout: Icons.Typezoomout
  }
  def icon_name_to_module(icon_name) do
    @assets_map[:"#{icon_name}"]
  end

  def render(assigns) do
    ~F"""
    {@name && icon_name_to_module(@name) &&
      live_component(@socket, icon_name_to_module(@name),
        color: @color,
        background_color: @background_color,
        font_size: @font_size,
        click: @click,
        class: @class
      )}
    """
  end
end
