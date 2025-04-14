<?php

namespace App\Http\Controllers\API\Order;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class OrderNotifaction extends Mailable
{
    use Queueable, SerializesModels;

    protected $data;

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function build(){
        return $this->view('reset.reset_password')->with($this->data)->subject('Сброс пароля на Capigame');
    }
}
