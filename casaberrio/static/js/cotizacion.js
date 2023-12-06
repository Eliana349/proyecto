function confirmarEnvio() {
    // Muestra una ventana de confirmación
    var respuesta = confirm("¡Cotización enviada con éxito! ¿Deseas continuar con la reserva?");
    
    // Si el usuario hace clic en "Aceptar", redirige a la página de reserva
    if (respuesta) {
        window.location.href = "reservas.html";
    }
}