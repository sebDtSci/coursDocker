#!/bin/bash

echo "entrez un chiffre : "
read chiffre

let "res = $chiffre ** 2"

echo "$res"
