$(document).ready(function () {
    $('#parte_corpo').change( function () {
        let parte = $('#parte_corpo').val()
        if (parte === 'Outra') {
            $('.outra_parte').removeAttr('hidden')
        } else {
            $('.outra_parte').attr('hidden',true)
        }
    })

    $("#overlay").css({ display: "block" });

    $('.telefone').blur( function (e) {
        let tamanho = $(this).val().length

        if(tamanho > 10 ){
            $(this).mask('(00) 00000-0000')
        } else if(tamanho === 0) {
            $(this).unmask();
        } else {
            $(this).mask('(00) 0000-0000')
        }
    })

    $('.telefone').focusin(function (e) {
            $(this).unmask();
    })
    // .length verifica se o campo existe na página
    if($("input[name='telefone']").length) {
        if ($("input[name='telefone']").val().length > 10) {
            $("input[name='telefone']").mask('(00) 00000-0000')
        } else if ($("input[name='telefone']").val().length == 10) {
            $("input[name='telefone']").mask('(00) 0000-0000')
        }
    }

    $('.dinheiro').mask("#.##0,00", {reverse: true});

    $("#formulario").submit(function() {

        $('.telefone').unmask();
        $('.celular').unmask();
        $('.cpf').unmask();
        $('.cnpj').unmask();

        // if($('#valor_min').length) {
        //     var vl = $('#valor_min').val();
        //     vl = vl.replace('.', '');
        //     vl = vl.replace(',', '.');
        //     $('#valor_min').val(vl);
        // }
        //
        // if($('#valor_max').length) {
        //     var vl = $('#valor_max').val();
        //     vl = vl.replace('.','');
        //     vl = vl.replace(',','.');
        //     $('#valor_max').val(vl);
        // }

    });

    $('#arquivos').on('change',function(){
        //get the file name
        var fileName = $(this).val();
        //replace the "Choose a file" label
        $(this).next('.custom-file-label').html(fileName);
    })


})
