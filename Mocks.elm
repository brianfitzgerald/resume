module Mocks exposing (..)

import Types exposing (..)


birdFighting : Project
birdFighting =
    { description = "For a whole year, whenever I saw a bird, I would pick a fight with it. For owls, I tended to use a stiff uppercut; for pigeons, a couple jabs to the plumage usually did the trick."
    , tagline = "I fought every bird I saw"
    , title = "Bird Fighting"
    , technologies = [ "Birds" ]
    }


stealingFromWalmart : Project
stealingFromWalmart =
    { description = "I shoplifted various items from the Walmart in town."
    , tagline = "I took what I wanted from Walmart."
    , title = "Stealing from Walmart"
    , technologies = [ "Pockets" ]
    }


mockProjects : List Project
mockProjects =
    [ birdFighting, stealingFromWalmart ]
