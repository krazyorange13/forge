#!/bin/bash

DECK1='GAS_9_Scytheclaw Raptor based deck_11_1.dck'
DECK2='GAV_1_16_Vintage Merfolk Fish Generated Deck_6_18.dck'

./forge.sh sim -d "$DECK1" "$DECK2" -n 20 -q