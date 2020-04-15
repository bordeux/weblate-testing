<?php

namespace App;

/**
 * Class HomepageClass
 * @package App
 */
class HomepageClass
{
    public function helloTest() {
        echo "Hello HomePage";
    }

    public function helloWorld() {
        echo translate("Hello HomePage");
    }

    public function helloYou() {
        echo translate("Hello You from HomePage");
    }

    public function helloMartin() {
        echo translate("Hello Martin from HomePage", "homepage");
    }
}