module View.Components exposing (..)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Css exposing (..)
import Types exposing (Project, Work)


title : String -> Html msg
title content =
    h1 [ css [ fontSize (px 48) ] ] [ text content ]


subtitle : String -> Html msg
subtitle content =
    span [ css [ fontSize (px 28) ] ] [ text content ]


itemRow : String -> List (Html msg) -> Html msg
itemRow title content =
    div [] <| h1 [ css [ fontSize (px 36) ] ] [ text title ] :: content


project : Project -> Html msg
project proj =
    div []
        [ h1 [ css [ fontSize (px 24) ] ] [ text proj.title ]
        , span [ css [ fontSize (px 16) ] ] [ text proj.tagline ]
        , div [ css [ fontSize (px 16), paddingTop (px 15), paddingBottom (px 15) ] ] [ text proj.description ]
        , proj.technologies |> List.map text |> span [ css [ paddingRight (px 15) ] ]
        ]


work : Work -> Html msg
work wor =
    div []
        [ h1 [ css [ fontSize (px 24) ] ] [ text wor.title ]
        , span [ css [ fontSize (px 16) ] ] [ text wor.duration ]
        , div [ css [ fontSize (px 16), paddingTop (px 15), paddingBottom (px 15) ] ] [ text wor.description ]
        ]
