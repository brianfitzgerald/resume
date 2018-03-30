module View.Components exposing (..)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Css exposing (..)
import Date.Format exposing (format)
import Types exposing (Project)


title : String -> Html msg
title content =
    h1 [ class "title" ] [ text content ]


project : Project -> Html msg
project proj =
    div []
        [ h1 [ css [ padding (px 20) ] ] [ text proj.title ]
        , text proj.description
        , br [] []
        , text <| format "%Y" proj.startDate
        ]
