<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ConfirmaUsuario extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $url;

    public function __construct(String $url)
    {
        $this->url = $url;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.confirmaEmail')
            ->from('maytattoop@gmail.com')
            ->subject('Confirmação de Email - May Pinheiro Tattoo')
            ->with([
                'url' => $this->url,
            ]);
//        ->attach(base_path().'/public/img/logo_nova.png',[
//                'logo' => 'logo_nova.png',
//                'mime' => 'image/png'
//            ]);
    }
}
