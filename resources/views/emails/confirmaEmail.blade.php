@component('mail::message')


@component('mail::panel')
Olá, tudo bem?

Recebemos seu cadastro para acompanhamento e solicitações de orçamentos.
Clique no botão abaixo, ou copie e cole o endereço do link no seu
navegador para confirmar o email.
@endcomponent

@component('mail::button', ['url' => $url,'color','success'])
Confirmar
@endcomponent

{{$url}}

Obrigado,<br>
{{ config('app.name') }}
@endcomponent
