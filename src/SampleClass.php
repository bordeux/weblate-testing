<?php

namespace App;

/**
 * Class SampleClass
 * @package App
 */
class SampleClass
{
    public function helloTest() {
        echo "Hello Test";
    }

    public function helloWorld() {
        echo translate("Hello World");
    }

    public function helloYou() {
        echo translate("Hello You");
    }

    public function helloMartin() {
        echo translate("Hello Martin", "sample");
    }
}