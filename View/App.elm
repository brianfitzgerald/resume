module View.App exposing (app)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import View.Components as Components
import Mocks exposing (mockProjects)


app : String -> Html msg
app model =
    div [ class "stuff" ]
        [ Components.title "About Me"
        , Components.title "My IQ"
        , Components.title "My High Scores"
        , mockProjects
            |> List.map Components.project
            |> div []
        ]
