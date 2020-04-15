<?php

function translate(string $string, string $domain = "default"){
    return dgettext($domain, $string);
}