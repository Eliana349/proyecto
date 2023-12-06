function confirmarEnvio() {
    var respuesta = confirm("¡Cotización enviada con éxito! ¿Deseas continuar con la reserva?");

    if (respuesta) {
        // Redirige a la página de reservas
        window.location.replace('https://casaberrio.com');
    } else {
        // Redirige a otra página (puedes cambiar la URL)
        window.location.replace('https://casaberrio.com');
    }

    // Devuelve false para evitar que el formulario se envíe de forma predeterminada
    return false;
}

const valores = {
    'menu1': 50,
    'menu2': 75,
    'menu3': 100,
    // Asocia los valores según tus necesidades
  };

  // Asociar los elementos del formulario a sus valores
  const elementos = {
    'menu': document.getElementById('id_menu'),
    'childrens_menu': document.getElementById('id_childrens_menu'),
    'additional_entries': document.getElementById('id_additional_entries'),
    'additional_services': document.getElementById('id_additional_services'),
    // Asocia más elementos según tus necesidades
  };

  // Actualizar el total al cambiar cualquier campo
  for (const key in elementos) {
    if (elementos.hasOwnProperty(key)) {
      elementos[key].addEventListener('change', actualizarTotal);
    }
  }

  function actualizarTotal() {
    let total = 0;

    for (const key in elementos) {
      if (elementos.hasOwnProperty(key)) {
        const valorSeleccionado = elementos[key].value;
        total += valores[valorSeleccionado] || 0;
      }
    }

    // Actualizar el contenido del elemento HTML que muestra el total
    document.getElementById('total').textContent = total;
  }