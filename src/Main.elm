module Main exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ text "Theik Chan"
        , div [] [ text "Mobile Developer" ]
        , div [] [ text "iOS (Swift/Objective-C), Android(Kotlin/Java), Flutter(Dart)" ]
        , text "Email: theikchan.tc@gmail.com"
        , text "Linkedin: https://www.linkedin.com/in/theikchan"
        , text "Twitter: https://twitter.com/theikchan_dev"

        -- , row [ width fill ] [ text "header" ]
        -- , column [ scrollbarY, width fill ] (List.repeat 100 (text "content"))
        -- , row [ width fill ] [ text "footer" ]
        -- , button [ onClick Decrement ] [ text "-" ]
        -- , div [] [ text (String.fromInt model) ]
        -- , button [ onClick Increment ] [ text "+" ]
        ]
