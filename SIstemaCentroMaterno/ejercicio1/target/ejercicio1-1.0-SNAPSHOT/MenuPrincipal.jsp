<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Centro Materno Infantil</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <!-- Estilos CSS personalizados -->
        <style>

            /* Estilos personalizados aquí */
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f8f9fa;
                color: #495057;
            }
            .navbar {
                background-color: #111 !important; /* Color ligeramente aclarado */
            }
            .navbar-nav .nav-link {
                color: #ffffff !important; /* Color blanco para las letras */
            }
            .navbar-nav .nav-link:hover {
                color: #d1d1d1 !important; /* Color gris claro al pasar el mouse */
            }
            .navbar-brand {
                color: #ffffff !important; /* Color blanco para el texto de la marca */
            }
            .jumbotron {
                background-color: #192a56; /* Azul muy oscuro para el jumbotron */
                padding: 4rem;
                border-radius: 0;
                color: #ffffff; /* Texto blanco para mejor contraste */
            }
            .card {
                border: none;
                transition: box-shadow 0.3s ease;
            }
            .card:hover {
                box-shadow: 0px 0px 20px rgba(39, 60, 117, 0.5);
            }
            .btn-primary {
                background-color: #3c40c6; /* Azul intenso para el botón primario */
                border-color: #3c40c6;
            }
            .btn-primary:hover {
                background-color: #5758bb; /* Tono más oscuro al pasar el mouse */
                border-color: #5758bb;
            }
            .footer {
                background-color: #000000; /* Color de fondo del pie de página */
                color: #ffffff;
                padding: 3rem 0;
                position: relative;
                text-align: center;
            }
            .footer .footer-image {
                display: block;
                margin: 0 auto 20px;
            }
            .footer .footer-content {
                margin-top: 20px;
            }
            /* Estilos para centrar contenido */
            .container-centered {
                max-width: 800px; /* Ancho máximo del contenido centrado */
                margin: auto; /* Margen automático para centrar */
                text-align: center; /* Alinear texto al centro */
            }
            .lead-intenso {
                color: #000; /* Color negro más intenso */
            }
            .card-img-top {
                height: 200px; /* Altura fija para todas las imágenes */
                object-fit: cover; /* Mantener la proporción de la imagen */
            }
            /* Estilos para la sección de bienvenida */
            .welcome-section {
                display: flex;
                align-items: center;
                justify-content: space-between;
                text-align: left;
                background-color: #fff;
                padding: 2rem;
                box-shadow: 0px 0px 20px rgba(39, 60, 117, 0.1);
                border-radius: 8px;
            }
            .welcome-text {
                flex: 1;
                padding-right: 2rem;
            }
            .welcome-image {
                flex: 1;
                text-align: center;
            }
            .welcome-image img {
                width: 140%;
                max-width: 450px;
                border-radius: 8px;
            }
            /* Estilos para la sección de opiniones */
            .opiniones-section {
                background-color: #f1f1f1;
                padding: 3rem 0;
            }
            .opiniones-section .card {
                box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }
            .opiniones-section .card-body {
                padding: 2rem;
            }
            /* Estilos para la sección de convenios */

            .convenios-section {
                background-color: #f8f9fa;
                padding: 3rem 0;
                text-align: center;
            }

            .convenios-section .convenio-img {
                max-width: 100%;
                height: auto;
                max-height: 150px; /* Ajusta la altura según sea necesario */
                object-fit: contain; /* Mantiene la proporción de la imagen */
            }
            /* Estilos para la sección de contactos */
            .contactos-section {
                background-color: #f8f9fa;
                padding: 3rem 0;
                text-align: center;
            }
            .contactos-section .contact-item {
                margin-bottom: 2rem;
            }
            .contactos-section i {
                font-size: 2rem;
                margin-bottom: 1rem;
            }


            /* imagen usuario */


            .footer-image:hover {
                transform: scale(1.1); /* Aumenta un poco el tamaño al pasar el mouse */
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Sombra más pronunciada al pasar el mouse */
            }

            .social-container {
                display: flex;
                justify-content: center;
                align-items: center;
                gap: 200px; /* Increased gap for more separation */
                margin-top: 20px;
            }
            .footer-image {
                text-align: center;
            }
            .social-icon {
                display: block;
                margin: 0 auto;
                transition: transform 0.3s;
            }
            .social-link:hover .social-icon {
                transform: scale(1.1);
            }

            .background {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f8f9fa;
                color: #495057;
                background-image: url('https://es.oceanomedicina.com/wp-content/uploads/2023/07/Ser-resilientes-ante-el-examen-de-residencias-medicas.jpg'); /* Ruta a tu imagen de fondo */
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed; /* Para que la imagen de fondo no se desplace */
            }

            .text-center{
                opacity: 0.9; /* Aplicar transparencia */
            }

            .opiniones-section{
                opacity: 0.9;
            }
            .contactos-section{
                opacity: 0.9;
            }
            .social-container{
                opacity: 0.9;
            }
            .convenios-section{
                opacity: 0.9;

            }
        </style>
    </head>
    <body  class="background">

        <!-- Barra de navegación -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <br>
                <!--<img src="https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png" alt="Logo Usuario" class="footer-image" width="90" height="70">-->

                <a class="navbar-brand" href="#">Av. 22 de Agosto 1001, Comas 15311</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="MenuPrincipal.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="historialCitas.jsp">Historial</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="StafMedico.jsp">Equipo Médico</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="especialidades.jsp">Especialidades</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Salir</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Encabezado con imagen de fondo (Jumbotron) -->
        <div class="jumbotron jumbotron-fluid text-center">
            <div class="container">
                <h1 class="display-4">Bienvenido al sitio web del Centro de Salud Materno Infantil</h1>
                <p class="lead">Ofrecemos atención médica especializada y cuidado integral para madres y niños.</p>
            </div>
        </div>

        <!-- Sección de servicios -->
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="https://st3.depositphotos.com/3889193/12497/i/450/depositphotos_124978952-stock-photo-female-doctor-at-the-reception.jpg" class="card-img-top" alt="Servicio 1">
                        <center>
                            <div class="card-body">
                                <h5 class="card-title">Reserva tu cita</h5>
                                <p class="card-text">Podrás reservar citas de manera online sin hacer largas colas tan solo tomándote unos cuantos minutos.</p>
                                <a href="reservaCita.jsp" class="btn btn-primary">Más información</a>
                            </div>
                        </center>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="https://www.estarvital.com.pe/storage/135/staff_medico_EV-360x360.png" class="card-img-top" alt="Servicio 2">
                        <center>
                            <div class="card-body">
                                <h5 class="card-title">Staff Médico</h5>
                                <p class="card-text">Podrás ver todo el equipo médico disponible para que te puedas ir familiarizando.</p>
                                <a href="StafMedico.jsp" class="btn btn-primary">Más información</a>            
                            </div>
                        </center>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="https://cazaofertas.com.mx/wp-content/uploads/2022/04/promocion-farmacia-soriana-medicamentos.jpg" class="card-img-top" alt="Servicio 3">
                        <center>
                            <div class="card-body">
                                <h5 class="card-title">Lo Nuevo</h5>
                                <p class="card-text">Podrás ver las novedades que incluimos sobre productos, promociones de las que no te debes perder.</p>
                                <a href="Nuevo.jsp" class="btn btn-primary">Más información</a>                                    
                            </div>
                        </center>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sección de bienvenida -->
        <div class="container my-5">
            <div class="welcome-section">
                <div class="welcome-text">
                    <center>
                        <h2 class="display-4" style="font-size: 30px; color: #004aad;">CENTRO MATERNAL INFANTIL</h2>

                    </center>
                    <p class="lead lead-intenso" style="font-size: 18px;">Bienvenido al Centro Materno Infantil, donde cuidamos de la salud de tu familia con dedicación y compromiso.</p>
                    <center>
                        <p class="lead mb-4 lead-intenso">Conoce nuestros servicios:</p>

                    </center>
                    <div class="row justify-content-center">
                        <div class="col-md-6">
                            <ul class="list-unstyled">
                                <li>🧑🏻 Atención  adultos y niños</li>
                                <li>🚑 Ambulancia Cardiomóvil</li>
                                <li>🩺 Atención  ambulatoria</li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul class="list-unstyled">
                                <li>🤰 Programa materno infantil</li>
                                <li>🔍 Diagnóstico de imágenes</li>
                                <li>🧪 Laboratorio</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="welcome-image">
                    <img src=" https://pbs.twimg.com/media/Cb6jqbOW0AAuG4E.jpg:large" alt="Imagen de Bienvenida">
                </div>
            </div>
        </div>

        <!-- Sección de opiniones -->
        <div class="opiniones-section">
            <div class="container">
                <h2 class="text-center mb-5">Opiniones</h2>
                <div class="row">
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <center>
                                    <p class="card-text">"Excelente atención y personal muy capacitado. Me sentí muy bien atendida en todo momento."</p>

                                    <p class="card-text">- María López</p>

                                    <img src="https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/523/posts/32694/final_image/tutorial-preview-large.png  " alt="convenio 2" class="footer-image" width="120" height="80">
                                </center>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <center>
                                    <p class="card-text">"La calidad de servicio es insuperable. Altamente recomendable para las personas que recien se atienden"</p>

                                    <p class="card-text">- Juan Pérez</p>

                                    <img src="https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/523/posts/32694/final_image/tutorial-preview-large.png  " alt="convenio 2" class="footer-image" width="120" height="80">
                                </center>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <center>

                                    <p class="card-text">"Muy agradecida por la atención brindada. El personal es muy amable y profesional."</p>
                                    <p class="card-text">- Ana García</p>

                                    <img src="https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/523/posts/32694/final_image/tutorial-preview-large.png  " alt="convenio 2" class="footer-image" width="120" height="80">
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sección de convenios -->
        <div class="convenios-section">
            <div class="container">
                <h2 class="text-center mb-5">Convenios</h2>
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <img src=" https://upload.wikimedia.org/wikipedia/commons/c/c0/Nuevo_logo_de_Rimac_Seguros.PNG" alt="convenio 1" class="footer-image" width="200" height="80">

                    </div>
                    <div class="col-md-3">

                        <img src="https://bucket.mlcdn.com/a/3740/3740786/images/fd0d4a312f566ca5fac8cf00071680a2448d73d8.png " alt="convenio 2" class="footer-image" width="200" height="80">

                    </div>
                    <div class="col-md-3">
                        <img src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhzwD89uGHuHd6Qst1wwO9QBtakuYCHmkFZw&s" alt="convenio 3" class="footer-image" width="200" height="80">


                    </div>
                    <div class="col-md-3">
                        <img src=" https://cdn.batitienda.com/baticloud/images/mainlogo_af0be21097854065b2e1726522cbbd52_637995959783748145_0_m.png" alt="convenio 4" class="footer-image" width="200" height="80">



                    </div>
                </div>
            </div>
        </div>

        <!-- Sección de contacto -->
        <section class="contactos-section">
            <div class="container">
                <h2 class="mb-4">Contacto</h2>
                <div class="row">
                    <div class="col-md-4 contact-item">
                        <i class="fas fa-phone"></i>
                        <h4>Teléfono</h4>
                        <p>(01) 3214266</p>
                    </div>
                    <div class="col-md-4 contact-item">
                        <i class="fas fa-envelope"></i>
                        <h4>Correo electrónico</h4>
                        <p>info@centromaternoinfantil.com</p>
                    </div>
                    <div class="col-md-4 contact-item">
                        <i class="fas fa-map-marker-alt"></i>
                        <h4>Dirección</h4>
                        <p>Av. 22 de Agosto 1001, Comas 15311</p>
                    </div>
                </div>

                <!-- Agregar enlaces a redes sociales con imágenes o íconos -->
                <div class="social-container">
                    <div class="footer-image">
                        <a href="https://www.instagram.com/tu_usuario_instagram" target="_blank" class="social-link">
                            <img src="https://i.blogs.es/c04a74/instagram/450_1000.webp" alt="Instagram" class="social-icon" style="width: 90px; height: 60px;">
                            <br>Instagram
                        </a>
                    </div>
                    <div class="footer-image">
                        <a href="https://www.facebook.com/tu_usuario_facebook" target="_blank" class="social-link">
                            <img src="https://en.followersnet.com/wp-content/uploads/2016/02/Facebook-1.png" alt="Facebook" class="social-icon" style="width: 100px; height: 90px;">
                            <br>Facebook
                        </a>
                    </div>
                    <div class="footer-image">
                        <a href="https://www.tiktok.com/@tu_usuario_tiktok" target="_blank" class="social-link">
                            <img src="https://p16-tiktokcdn-com.akamaized.net/obj/tiktok-obj/cd61a2ec8afe8fa5fbd3484cb1bc6193.png" alt="TikTok" class="social-icon" style="width: 110px; height: 90px;">
                            <br>TikTok
                        </a>
                    </div>
                </div>

            </div>
        </section>



        <!-- Pie de página -->
        <div class="footer">
            <div class="container">
                <img src="https://upload.wikimedia.org/wikipedia/commons/4/4a/Minsa.png" alt="Logo MINSA" class="footer-image" width="200" height="80">

                <div class="footer-content">
                    <p>&copy; 2024 Centro Materno Infantil. Todos los derechos reservados.</p>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="#" class="text-white">Privacidad</a></li>
                        <li class="list-inline-item"><a href="#" class="text-white">Términos</a></li>
                        <li class="list-inline-item"><a href="#" class="text-white">Contacto</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS y scripts personalizados -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+1ZKT4+Uk/2W0AnGx4/YVv+VjHH2P+mlzj3KqPO3GzFv3lJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+2lA0O9pgK3EwrjA0BDPsm+rVcdOyHQ6Bfj" crossorigin="anonymous"></script>
    </body>
</html>
