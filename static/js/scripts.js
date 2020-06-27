var $ = jQuery;

$(document).ready(function () {
   let container_modo_preparo = $('#modo_preparo');
   let container_ingredientes = $('#ingredients');

    let conteudo_modo_preparo = container_modo_preparo.attr("data-produto");
    let conteudo_ingredientes = container_ingredientes.attr("data-produto");
    $(container_modo_preparo).html(conteudo_modo_preparo);
    $(container_ingredientes).html(conteudo_ingredientes);

    // Modal de confirmação de Delete Receita
    $(document).on('click', '.confirm-delete', function () {
      $("#confirmDeleteModal").attr("caller-id", $(this).attr("id"));
    });

    $(document).on('click', '#confirmDeleteButtonModal', function () {
      let caller = $("#confirmDeleteButtonModal").closest(".modal").attr("caller-id");
      window.location = $("#".concat(caller)).attr("href");
    });

});


