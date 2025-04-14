<?php

namespace App\Http\Controllers\API\Auth;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class RegisterNotifaction extends Mailable
{
    use Queueable, SerializesModels;
    protected $data;

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function build(){
        return $this->view('auth.register_confirmation')->with($this->data)->subject('Регистрация на сайте Capigame');
    }
}
