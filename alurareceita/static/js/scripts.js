let $ = jQuery;
let container = $('#modo_preparo, #ingredients');

let cod_produto_enviado = container.attr("data-produto");
$(container).html(cod_produto_enviado);


// Modal de confirmação de Delete Receita
$(document).on('click', '.confirm-delete', function () {
  $("#confirmDeleteModal").attr("caller-id", $(this).attr("id"));
});

$(document).on('click', '#confirmDeleteButtonModal', function () {
  let caller = $("#confirmDeleteButtonModal").closest(".modal").attr("caller-id");
  window.location = $("#".concat(caller)).attr("href");
});

