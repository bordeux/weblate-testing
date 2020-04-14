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
        echo _("Hello HomePage");
    }

    public function helloYou() {
        echo _("Hello You from HomePage");
    }

    public function helloMartin() {
        echo _("Hello Martin from HomePage");
    }
}