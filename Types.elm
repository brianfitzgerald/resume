module Types exposing (..)

import Date exposing (Date)


type alias Project =
    { startDate : Date
    , description : String
    , title : String
    }


mockProject : Project
mockProject =
    { description = "I fought every bird I saw"
    , title = "Bird Fighting"
    , startDate = Date.fromTime (0)
    }
