module BreadWebm exposing (..)

import Element exposing (centerX, centerY, column, el, fill, height, html, rgb255, spacing, text, width)
import Element.Background as Background
import Element.Font as Font
import Html exposing (source, video)
import Html.Attributes exposing (src, type_)
import VirtualDom

main =
    Element.layout []
        (column
            [ Background.color (rgb255 0 0 0)
            , centerX
            , centerY
            , Font.color (rgb255 255 255 255)
            , height fill
            , spacing 10
            , width fill
            ]
            [ el
                [ centerX
                , centerY
                ]
                (text "Breadpudding's WEBM Collection")
            , el
                [ centerX
                , centerY
                , width fill
                ]
                (html
                    (video
                        [ VirtualDom.attribute "autoplay" "1"
                        , VirtualDom.attribute "controls" "1"
                        , VirtualDom.attribute "loop" "1"
                        ]
                        [ source
                            [ src "/random"
                            , type_ "video/webm"
                            ]
                            []
                        ]
                    )
                )
            ]
        )