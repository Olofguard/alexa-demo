<?php

namespace App\Http\Controllers;


class AlexaController extends Controller
{
    public function launch()
    {
        return \Alexa::say('Welcome to the demo app');
    }
}