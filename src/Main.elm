module Main exposing (..)

import Browser
import Html exposing (Html, a, div, h1, h2, h3, img, li, p, text, ul)
import Html.Attributes exposing (alt, class, href, src)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    {}


init : Model
init =
    {}



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    model



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ header
        , mainContent
        , footer
        ]


header : Html Msg
header =
    div [ class "header" ]
        [ h1 [] [ text "Mr. Theik Chan" ]
        , p [] [ text "Senior iOS Developer" ]
        , p [] [ text "iOS (Swift/Objective-C), Android(Kotlin/Java), Flutter(Dart)" ]
        , p [] [ text "Address: Bangkok, Thailand" ]
        , p [] [ text "Language Spoken: English, Burmese" ]
        , p [] [ a [ href "https://github.com/TheikChan" ] [ text "Github" ] ]
        , p [] [ a [ href "https://www.linkedin.com/in/theik-chan-9a3b6210a/" ] [ text "LinkedIn" ] ]
        ]


mainContent : Html Msg
mainContent =
    div [ class "main-content" ]
        [ aboutSection
        , skillSection
        , projectsSection
        , contactSection
        ]


aboutSection : Html Msg
aboutSection =
    div [ class "section about" ]
        [ h1 [] [ text "About Me" ]
        , p [] [ text "Experienced software developer with over 7 years in the tech industry, specializing in mobile application development and team leadership. Proven expertise working in Fintech, startups, consulting, product development and remote cross-regional teams. Highly skilled in collaboration, with a solid track record of delivering high-quality applications. Proficient in Agile and SCRUM methodologies, self-motivated, and adept at troubleshooting and driving technical discussions." ]
        ]


skillSection : Html Msg
skillSection =
    div [ class "section skill" ]
        [ h1 [] [ text "Skill" ]
        , h2 [] [ text "Platform/Framework:" ]
        , ul []
            [ li [] [ text "iOS, Android, Flutter, Swift, Objective-C, Kotlin, Java, Dart" ]
            , li [] [ text "UIKit, SwiftUI, Android Architecture Components, Combine, RxSwift, RxJava, RxDart, REST, SOAP, Alamofire, Retrofit, Dio" ]
            , li [] [ text "SQLite, Realm, Core Data, Room, Swift Data" ]
            , li [] [ text "MVC, MVP, MVVM+C, VIP, Clean and Modular Architecture" ]
            , li [] [ text "Bluetooth, iBaecon, NFC, Actxa Fitness Tracker" ]
            , li [] [ text "Analytics, API Integration, Payment Integration, Third Party Integration" ]
            , li [] [ text "Team Leading, peer programming, code review,  refactoring, migration, performance optimization, documentation" ]
            , li [] [ text "Technical design discussion, technical consultant, technical support, brainstorming" ]
            , li [] [ text "Development, Unit and Integration Testing, Production release, Release monitoring, Troubleshooting,  Crashlytics" ]
            ]
        , h2 [] [ text "Tools" ]
        , ul []
            [ li [] [ text "Xcode, Android Studio, VS Code, Git, GitFlow, Jenkins, CI/CD, Fastlane, Sourcetree, Postman" ]
            , li [] [ text "Jira, Confluence, Asana, ClickUp, Trello" ]
            , li [] [ text "App Store, Play Store, TestFlight, App Center, Firebase" ]
            ]
        ]



-- projectsSectionOld : Html Msg
-- projectsSectionOld =
--     div [ class "section projects" ]
--         [ h1 [] [ text "Projects" ]
--         , ul []
--             [ li [] [ a [ href "https://apps.apple.com/us/app/wavepay/id1439175549" ] [ text "WavePay - Mobile Wallet" ] ]
--             , li [] [ text "iFeedback/Sweet Changi Airport" ]
--             , li [] [ text "CAG Sweet" ]
--             , li [] [ text "iScan" ]
--             , li [] [ text "Conference" ]
--             , li [] [ text "Actxa - Fitness Tracker" ]
--             , li [] [ text "Market Data Provider" ]
--             , li [] [ text "Flexible Pass" ]
--             , li [] [ text "MinTheinKha" ]
--             , li [] [ text "Koolpon - Digital coupons" ]
--             , li [] [ text "DailyHR" ]
--             , li [] [ text "SMS (Smart Service Management System)" ]
--             , li [] [ text "SBGG Ecommerce" ]
--             , li [] [ text "School Management System" ]
--             , li [] [ text "RealEstate Property" ]
--             ]
--         ]


projectsSection : Html Msg
projectsSection =
    div [ class "section projects" ]
        [ h1 [] [ text "Projects" ]
        , div [ class "grid-container" ]
            [ div [ class "card" ]
                [ img [ src "assets/wave_pay_wallet_app.png", class "card-image", alt "WavePay Wallet" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "WavePay - Mobile Wallet"
                            , text " "
                            , a [ href "https://apps.apple.com/us/app/wavepay/id1439175549" ] [ text "App Store Link" ]
                            ]
                        ]
                    , p [] [ text """WavePay, mobile wallet application by WaveMoney enabling the inclusion of all users into the digital
                    payment ecosystem, riding on the largest network of ~60,000 agents and 200,000+ merchants.
                    WavePay is one stop solution for all your payment needs .""" ]
                    ]
                ]
            , div [ class "card" ]
                [ img [ src "assets/sweet_ichangi_app.png", class "card-image", alt "iFeedback/Sweet Changi Airport" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "iFeedback/Sweet Changi Airport"
                            , text " "
                            , a [ href "https://apps.apple.com/sg/app/sweet-changi-airport/id1378230482?mt=8" ] [ text "App Store Link" ]
                            ]
                        ]
                    , p [] [ text """iFeedback/ SWEET Changi Airport is the mobile app version of Changi Airport Group (Singapore) Pte Ltd’s Service Workforce Empowerment and Experience Transformation initiative. The suite of tools available complements the duties of our working community towards better safety, efficiency and passenger experience at Changi Airport.""" ]
                    ]
                ]
            , div [ class "card" ]
                [ img [ src "assets/actxa_fitness_app.png", class "card-image", alt "Actxa - Fitness Tracker" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "Actxa - Fitness Tracker"
                            , text " "
                            , a [ href "https://play.google.com/store/apps/details?id=com.actxa.actxa" ] [ text "Play Store Link" ]
                            ]
                        ]
                    , p [] [ text """Actxa is a fitness application that charts your progress and sets personal goals to stay motivated. With
                    the Actxa App, you can personalise your profile, sync your daily stats, update your weight and monitor
                    your sleep patterns with a simple tap of a button.""" ]
                    ]
                ]
            ]
        , div [ class "grid-container" ]
            [ div [ class "card" ]
                [ img [ src "assets/market_data_provider_app.png", class "card-image", alt "Market Data Provider" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "Market Data Provider"
                            , text " "
                            , a [ href "https://apps.apple.com/us/app/market-data-provider/id1447795949?mt=8" ] [ text "App Store Link" ]
                            ]
                        ]
                    , p [] [ text """Market Data Provider is a mobile application mainly intended for the merchants to provide real time
                    prices from various markets, such as commodity, gold, currency and stock prices, etc. to support your
                    business movement and direction.""" ]
                    ]
                ]
            , div [ class "card" ]
                [ img [ src "assets/mintheinkha_app.png", class "card-image", alt "MinTheinKha" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "MinTheinKha"
                            , text " "
                            , a [ href "https://apps.apple.com/us/app/mintheinkha/id1291876782?mt=8" ] [ text "App Store Link" ]
                            ]
                        ]
                    , p [] [ text """You can use the Min Thein Kha Application to get predictions for you, your family, your friends, and
                    your colleagues. You will get predicted answers back within (48) hours. Also, you can find out what
                    mysteries are ahead in your future with Live Video calls with expert astrologers. Draw your tarot cards
                    online and get your accurate tarot reading for your life. Min Thein Kha has the Best Personal Tarot
                    Reading for you .""" ]
                    ]
                ]
            , div [ class "card" ]
                [ img [ src "assets/sbgg_ecommerce_app.png", class "card-image", alt "SBGG Ecommerce" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "SBGG Ecommerce"
                            , text " "
                            , a [ href "https://apps.apple.com/us/app/sawbwargyigone/id1623098155?platform=iphone" ] [ text "App Store Link" ]
                            ]
                        ]
                    , p [] [ text """Actxa is a fitness application that charts your progress and sets personal goals to stay motivated. With
                    the Actxa App, you can personalise your profile, sync your daily stats, update your weight and monitor
                    your sleep patterns with a simple tap of a button.""" ]
                    ]
                ]
            ]
        , div [ class "grid-container" ]
            [ div [ class "card" ]
                [ img [ src "assets/dream_house_real_estate_app.png", class "card-image", alt "DreamHouse - Real Estate" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "DreamHouse - Real Estate"
                            , text " "
                            , a [ href "https://apps.apple.com/us/app/dream-house-dh/id1638969494?platform=iphone" ] [ text "App Store Link" ]
                            ]
                        ]
                    , p [] [ text """RealEstate project is everyone can purchase, sell or rent the properties faster and easier. The app offers
                    app-only benefits to sell or rent. Browse, view your property's details, read reviews and contact the
                    agents. The user can search properties that are near bus stops or schools or supermarkets. User can also
                    purchase paid contents with payment subscription plan.""" ]
                    ]
                ]
            , div [ class "card" ]
                [ img [ src "assets/daily_hrms_app.png", class "card-image", alt "DailyHR" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "DailyHR"
                            , text " "
                            , a [ href "https://apps.apple.com/us/app/dailyhrms/id1507119086?platform=iphone" ] [ text "App Store Link" ]
                            ]
                        ]
                    , p [] [ text """DailyHR project is recording for employee daily attendance and employees can easily request leave
                    from their mobile phone and management level can make approval just with one click. Employees can
                    also easily request Overtime Hour Work Time and can easily edit employee details information.
                    Employees can search colleagues from the employees directory and can make communication with
                    them by email or phone directly. Employees can also check the Leave calendar for Holiday and leave
                    day. In Admin role and Manager role they can see employee attendance request and overtime request
                    and leave request and management level can make accept or decline and then, can also check daily
                    attendance report. My responsibility is to create all features on the app.""" ]
                    ]
                ]
            , div [ class "card" ]
                [ img [ src "assets/otsms_app.png", class "card-image", alt "SMS (Smart Service Management System)" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "SMS (Smart Service Management System)"
                            , text " "
                            , a [ href "https://apps.apple.com/us/app/otsms/id1511411284?platform=iphone" ] [ text "App Store Link" ]
                            ]
                        ]
                    , p [] [ text """SMS project is an application for add work order requests. Work order request can assign to engineer
                    by admin role or senior engineer role and each engineer can see their intervention request in schedule
                    list and can make finish intervention by related their intervention and when finish intervention these
                    have two types are quotation and schedule for next day.""" ]
                    ]
                ]
            ]
        , div [ class "grid-container" ]
            [ div [ class "card" ]
                [ img [ src "assets/t_and_h_school_app.png", class "card-image", alt "School Management System" ] []
                , div [ class "card-content" ]
                    [ h2 []
                        [ p []
                            [ text "School Management System"
                            , text " "
                            , a [ href "https://apps.apple.com/sg/app/t-h-maths-centre/id1572383041?platform=iphone" ] [ text "App Store Link" ]
                            ]
                        ]
                    , p [] [ text """School Management system App ensured the real-time interaction between teachers and students
                    through SMS messages. Parents can register programs and competitions via SMS mobile app and pay
                    their child’s school fee online payment. My responsibility is to create all features on the app.""" ]
                    ]
                ]
            , div [] []
            , div [] []
            ]
        ]



-- projectsSection : Html Msg
-- projectsSection =
--     div [ class "section projects" ]
--         [ h1 [] [ text "Projects" ]
--         , div [ class "project" ]
--             [ h1 [] [ text "WavePay - Mobile Wallet" ]
--             , p [] [ a [ href "https://apps.apple.com/us/app/wavepay/id1439175549" ] [ text "App Store Link" ] ]
--             , img [ src "assets/wave_pay_wallet_app.png", class "project-image", alt "WavePay Wallet" ] []
--             , p [] [ text """WavePay, mobile wallet application by WaveMoney enabling the inclusion of all users into the digital
--             payment ecosystem, riding on the largest network of ~60,000 agents and 200,000+ merchants.
--             WavePay is one stop solution for all your payment needs .""" ]
--             ]
--         , div [ class "project" ]
--             [ h1 [] [ text "iFeedback/Sweet Changi Airport" ]
--             , p [] [ a [ href "https://apps.apple.com/sg/app/sweet-changi-airport/id1378230482?mt=8" ] [ text "App Store Link" ] ]
--             , img [ src "assets/sweet_ichangi_app.png", class "project-image", alt "iFeedback/Sweet Changi Airport" ] []
--             , p [] [ text """iFeedback/ SWEET Changi Airport is the mobile app version of Changi Airport Group (Singapore) Pte Ltd’s Service Workforce Empowerment and Experience Transformation initiative. The suite of tools available complements the duties of our working community towards better safety, efficiency and passenger experience at Changi Airport.""" ]
--             ]
--         , div [ class "project" ]
--             [ h1 [] [ text "Actxa - Fitness Tracker" ]
--             , p [] [ a [ href "https://play.google.com/store/apps/details?id=com.actxa.actxa" ] [ text "Play Store Link" ] ]
--             , img [ src "assets/actxa_fitness_app.png", class "project-image", alt "Actxa - Fitness Tracker" ] []
--             , p [] [ text """Actxa is a fitness application that charts your progress and sets personal goals to stay motivated. With
--             the Actxa App, you can personalise your profile, sync your daily stats, update your weight and monitor
--             your sleep patterns with a simple tap of a button.""" ]
--             ]
--         , div [ class "project" ]
--             [ h1 [] [ text "Market Data Provider" ]
--             , p [] [ a [ href "https://apps.apple.com/us/app/market-data-provider/id1447795949?mt=8" ] [ text "App Store Link" ] ]
--             , img [ src "assets/market_data_provider_app.png", class "project-image", alt "Market Data Provider" ] []
--             , p [] [ text """Market Data Provider is a mobile application mainly intended for the merchants to provide real time
--             prices from various markets, such as commodity, gold, currency and stock prices, etc. to support your
--             business movement and direction.""" ]
--             ]
--         , div [ class "project" ]
--             [ h1 [] [ text "MinTheinKha" ]
--             , p [] [ a [ href "https://apps.apple.com/us/app/mintheinkha/id1291876782?mt=8" ] [ text "App Store Link" ] ]
--             , img [ src "assets/mintheinkha_app.png", class "project-image", alt "MinTheinKha" ] []
--             , p [] [ text """You can use the Min Thein Kha Application to get predictions for you, your family, your friends, and
--             your colleagues. You will get predicted answers back within (48) hours. Also, you can find out what
--             mysteries are ahead in your future with Live Video calls with expert astrologers. Draw your tarot cards
--             online and get your accurate tarot reading for your life. Min Thein Kha has the Best Personal Tarot
--             Reading for you .""" ]
--             ]
--         , div [ class "project" ]
--             [ h1 [] [ text "SBGG Ecommerce" ]
--             , p [] [ a [ href "https://apps.apple.com/us/app/sawbwargyigone/id1623098155?platform=iphone" ] [ text "App Store Link" ] ]
--             , img [ src "assets/sbgg_ecommerce_app.png", class "project-image", alt "SBGG Ecommerce" ] []
--             , p [] [ text """SBGG app offers app-only benefits to shop on sawbwargyigone.com faster and easier. Browse, view
--             product details, read reviews, and purchase thousands of products. Sawbwargyigone delivers anywhere
--             in Yangon now. Whether you’re buying construction or electrical materials, tracking orders, reading
--             reviews, or just shopping, the SBGG app offers more benefits than shopping on sawbwargyigone.com
--             via your browser version. My responsibility is to create all features on the app.""" ]
--             ]
--         , div [ class "project" ]
--             [ h1 [] [ text "RealEstate Property" ]
--             , p [] [ a [ href "https://apps.apple.com/us/app/dream-house-dh/id1638969494?platform=iphone" ] [ text "App Store Link" ] ]
--             , img [ src "assets/dream_house_real_estate_app.png", class "project-image", alt "RealEstate Property" ] []
--             , p [] [ text """RealEstate project is everyone can purchase, sell or rent the properties faster and easier. The app offers
--             app-only benefits to sell or rent. Browse, view your property's details, read reviews and contact the
--             agents. The user can search properties that are near bus stops or schools or supermarkets. User can also
--             purchase paid contents with payment subscription plan.""" ]
--             ]
--         , div [ class "project" ]
--             [ h1 [] [ text "DailyHR" ]
--             , p [] [ a [ href "https://apps.apple.com/us/app/dailyhrms/id1507119086?platform=iphone" ] [ text "App Store Link" ] ]
--             , img [ src "assets/daily_hrms_app.png", class "project-image", alt "DailyHR" ] []
--             , p [] [ text """DailyHR project is recording for employee daily attendance and employees can easily request leave
--             from their mobile phone and management level can make approval just with one click. Employees can
--             also easily request Overtime Hour Work Time and can easily edit employee details information.
--             Employees can search colleagues from the employees directory and can make communication with
--             them by email or phone directly. Employees can also check the Leave calendar for Holiday and leave
--             day. In Admin role and Manager role they can see employee attendance request and overtime request
--             and leave request and management level can make accept or decline and then, can also check daily
--             attendance report. My responsibility is to create all features on the app.""" ]
--             ]
--         , div [ class "project" ]
--             [ h1 [] [ text "SMS (Smart Service Management System)" ]
--             , p [] [ a [ href "https://apps.apple.com/us/app/otsms/id1511411284?platform=iphone" ] [ text "App Store Link" ] ]
--             , img [ src "assets/otsms_app.png", class "project-image", alt "SMS (Smart Service Management System)" ] []
--             , p [] [ text """SMS project is an application for add work order requests. Work order request can assign to engineer
--             by admin role or senior engineer role and each engineer can see their intervention request in schedule
--             list and can make finish intervention by related their intervention and when finish intervention these
--             have two types are quotation and schedule for next day.""" ]
--             ]
--         , div [ class "project" ]
--             [ h1 [] [ text "School Management System" ]
--             , p [] [ a [ href "https://apps.apple.com/sg/app/t-h-maths-centre/id1572383041?platform=iphone" ] [ text "App Store Link" ] ]
--             , img [ src "assets/t_and_h_school_app.png", class "project-image", alt "School Management System" ] []
--             , p [] [ text """School Management system App ensured the real-time interaction between teachers and students
--             through SMS messages. Parents can register programs and competitions via SMS mobile app and pay
--             their child’s school fee online payment. My responsibility is to create all features on the app.""" ]
--             ]
--         ]


contactSection : Html Msg
contactSection =
    div [ class "section contact" ]
        [ h1 [] [ text "Contact" ]
        , p []
            [ text "Phone: "
            , a [ href "tel:+959795566375" ] [ text "+959795566375" ]
            , text " , "
            , a [ href "tel:+660830423100" ] [ text "+660830423100" ]
            ]
        , p []
            [ text "Whatsapp: "
            , a [ href "tel:+959795566375" ] [ text "+959795566375" ]
            ]
        , p [] [ text "Line ID: theikchan" ]
        , p []
            [ text "Email: "
            , a [ href "mailto:theikchan.tc@gmail.com" ] [ text "theikchan.tc@gmail.com" ]
            ]
        , p [] [ a [ href "https://www.linkedin.com/in/theik-chan-9a3b6210a/" ] [ text "LinkedIn" ] ]
        , p [] [ a [ href "https://github.com/TheikChan" ] [ text "Github" ] ]
        ]



-- techStackSection : Html Msg
-- techStackSection =
--     div [ class "section contact" ]
--         [ h1 [] [ text "Built by" ]
--         , p []
--             [ text "Elm, CSS, Github, Zed, Chat GPT"
--             , text " "
--             , text "Deployed by Github Action"
--             ]
--         ]


footer : Html Msg
footer =
    div [ class "footer" ]
        [ p [] [ text "© 2024 Theik Chan" ]
        ]



-- Some of the project I have contributed and developed are
-- 1) Wave Pay
-- ● WavePay, mobile wallet application by WaveMoney enabling the inclusion of all users into the digital
-- payment ecosystem, riding on the largest network of ~60,000 agents and 200,000+ merchants.
-- WavePay is one stop solution for all your payment needs .
-- ● App Store link - https://apps.apple.com/us/app/wavepay/id1439175549
-- 2) iFeedback/Sweet Changi Airport
-- ● iFeedback/ SWEET Changi Airport is the mobile app version of Changi Airport Group (Singapore) Pte
-- Ltd’s Service Workforce Empowerment and Experience Transformation initiative. The suite of tools
-- available complements the duties of our working community towards better safety, efficiency and
-- passenger experience at Changi Airport.
-- ● App Store link - https://apps.apple.com/sg/app/sweet-changi-airport/id1378230482?mt=8
-- 3) CAG Sweet
-- ● CAG SWEET is Changi Airport Group’s Service Workforce Empowerment and Experience
-- Transformation initiative. The suite of tools available on SWEET complements the duties of our
-- workforce towards safety and efficiency at Changi Airport.
-- 4) Actxa
-- ● Actxa is a fitness application that charts your progress and sets personal goals to stay motivated. With
-- the Actxa App, you can personalise your profile, sync your daily stats, update your weight and monitor
-- your sleep patterns with a simple tap of a button.
-- ● Play Store link - https://play.google.com/store/apps/details?id=com.actxa.actxa
-- 5) iScan
-- ● iScan is the official QR Scanning app for Conference. It allows exhibitors to scan and manage their
-- captured leads. App works offline and doesn’t require constant connectivity to the internet. Exhibitors
-- can quick access captured leads.
-- ● App Store link - https://apps.apple.com/us/app/iscan/id1462599019
-- ● Play Store link - https://play.google.com/store/apps/details?id=com.corpit.iScanMFT2019&hl=ln
-- 6) Conference
-- ● Conference app to view conference programme, speaker information, list of exhibitors, business
-- matching, survey, polling and live Q&A, important information and more.
-- ● App Store link - https://apps.apple.com/us/app/iptc-2019/id1454202936
-- ● Play Store link - https://play.google.com/store/apps/details?id=com.corpit.cet2019&hl=ln
-- 7) Market Data Provider
-- ● Market Data Provider is a mobile application mainly intended for the merchants to provide real time
-- prices from various markets, such as commodity, gold, currency and stock prices, etc. to support your
-- business movement and direction.
-- ● App Store link - https://apps.apple.com/us/app/market-data-provider/id1447795949?mt=8
-- 8) Flexible Pass
-- ● Flexible Pass is the No.1 and first ever fitness pass in Myanmar that gives you access to over 150
-- gyms, fitness centers and hotels in Myanmar offering a wide a variety of fitness activities. You can use
-- Flexible Pass for over 20 different types of fitness categories such as gym usage, fitness classes,
-- swimming, rock climbing, indoor skydiving, yoga, boxing, ice skating, laser tag, paintball, horse
-- riding, tennis, bootcamp, bouldering, special fitness event, futsal, self defense classes, etc.
-- ● App Store link - https://apps.apple.com/us/app/flexible-pass/id1340737634?ls=1
-- ● Play Store link - https://play.google.com/store/apps/details?id=com.flexiblepass.androidapp
-- 9) MinTheinKha
-- ● You can use the Min Thein Kha Application to get predictions for you, your family, your friends, and
-- your colleagues. You will get predicted answers back within (48) hours. Also, you can find out what
-- mysteries are ahead in your future with Live Video calls with expert astrologers. Draw your tarot cards
-- online and get your accurate tarot reading for your life. Min Thein Kha has the Best Personal Tarot
-- Reading for you .
-- ● App Store link - https://itunes.apple.com/us/app/mintheinkha/id1291876782?mt=8
-- 10) DailyHR
-- ● DailyHR project is recording for employee daily attendance and employees can easily request leave
-- from their mobile phone and management level can make approval just with one click. Employees can
-- also easily request Overtime Hour Work Time and can easily edit employee details information.
-- Employees can search colleagues from the employees directory and can make communication with
-- them by email or phone directly. Employees can also check the Leave calendar for Holiday and leave
-- day. In Admin role and Manager role they can see employee attendance request and overtime request
-- and leave request and management level can make accept or decline and then, can also check daily
-- attendance report. My responsibility is to create all features on the app.
-- ● App Store link - https://apps.apple.com/us/app/dailyhrms/id1507119086?mt=8
-- 11) SMS (Smart Service Management System)
-- ● SMS project is an application for add work order requests. Work order request can assign to engineer
-- by admin role or senior engineer role and each engineer can see their intervention request in schedule
-- list and can make finish intervention by related their intervention and when finish intervention these
-- have two types are quotation and schedule for next day.
-- ● App Store link - https://apps.apple.com/us/app/otsms/id1511411284
-- 12) SBGG ERP
-- ● SBGG app offers app-only benefits to shop on sawbwargyigone.com faster and easier. Browse, view
-- product details, read reviews, and purchase thousands of products. Sawbwargyigone delivers anywhere
-- in Yangon now. Whether you’re buying construction or electrical materials, tracking orders, reading
-- reviews, or just shopping, the SBGG app offers more benefits than shopping on sawbwargyigone.com
-- via your browser version. My responsibility is to create all features on the app.
-- ● App Store link - https://apps.apple.com/us/app/sawbwargyigone/id1623098155?mt=8
-- 13) School Management System
-- ● Conference app to view conference programme, speaker information, list of exhibitors, business
-- matching, survey, polling and live Q&A, important information and more.
-- ● School Management system App ensured the real-time interaction between teachers and students
-- through SMS messages. Parents can register programs and competitions via SMS mobile app and pay
-- their child’s school fee online payment. My responsibility is to create all features on the app.
-- ● App Store link - T&H Math Center - https://apps.apple.com/sg/app/t-h-maths-centre/id1572383041
-- 14) RealEstate Property
-- ● RealEstate project is everyone can purchase, sell or rent the properties faster and easier. The app offers
-- app-only benefits to sell or rent. Browse, view your property's details, read reviews and contact the
-- agents. The user can search properties that are near bus stops or schools or supermarkets. User can also
-- purchase paid contents with payment subscription plan.
-- ● App Store link - https://apps.apple.com/us/app/dream-house-dh/id1638969494?mt=8
-- 15) Koolpon
-- ● KOOLPON is a free mobile application that brings digital coupons in Myanmar which include various
-- coupons, great offers & unbelievable discounts from restaurants, bars, cafes, spa, beauty salons, gyms,
-- hotels, travel agents, education centers and many categories in Yangon. User can enjoy our promotion
-- and discount by get coupons and only show QR code.
-- ● App Store user link - https://itunes.apple.com/us/app/koolpon/id1149057083?mt=8
-- ● App Store merchant link - https://apps.apple.com/us/app/koolpon-merchant/id1234534934
-- ● Play Store user link - https://play.google.com/store/apps/details?
-- id=com.aceplus.theikchan.koolpon&hl=en
-- ● Play Store merchant link - https://play.google.com/store/apps/details?id=com.koolpon.merchant.mm
