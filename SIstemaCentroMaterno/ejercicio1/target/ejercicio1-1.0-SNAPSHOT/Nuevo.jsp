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
                background-image: url('https://www.universia.net/content/dam/universia/imagenes/2022/07/especialidades%20m%C3%A9dicas%20con%20m%C3%A1s%20salida%20laboral.jpg'); /* Ruta a tu imagen de fondo */
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
            .noticias-section{
                margin-top: 40px;

            }
            .noticias-section{
                opacity: 0.9;
            }

            .promo-img {
                width: 100%;
                height: 200px;
                object-fit: cover;
            }
            .card {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transition: transform 0.2s, box-shadow 0.2s;
            }
            .card:hover {
                transform: scale(1.05);
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            }
            .card-body {
                padding: 20px;
            }
            .card-title {
                font-size: 1.5em;
                color: #007bff;
            }
            .card-text {
                font-size: 1em;
                color: #333;
            }



            .news-item {
                background-color: #f9f9f9;
                padding: 20px;
                margin-bottom: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transition: transform 0.2s, box-shadow 0.2s;
            }
            .news-item:hover {
                transform: scale(1.02);
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            }
            .news-title {
                font-size: 1.5em;
                color: #007bff;
                margin-bottom: 10px;
            }
            .news-text {
                font-size: 1em;
                color: #333;
            }
            .news-img {
                width: 80%;
                height: auto;
                max-height: 200px;
                object-fit: cover;
                border-radius: 10px;
                margin: 0 auto;
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
                <center>
                    <h1 class="display-4">Modulo de información Nueva</h1>
                    <p class="lead">En esta sección como usuario registrado en el sistema podra ver las noticias ultimas y promociones en los productos en el centro materno.</p>

                </center>
            </div>
        </div>


        <!-- Sección de Promociones -->
        <div class="promociones-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <img src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH9wJNpmfS8zMtvef5QbwL_nAbZHrHj8QeRg&s" class="card-img-top promo-img" alt="Promoción 1">
                            <div class="card-body text-center">
                                <h5 class="card-title">Jarabes</h5>
                                <p class="card-text">Aprovecha nuestras ofertas especiales en jarabes durante todo el mes. Consulta a nuestro personal para obtener más información y recomendaciones personalizadas.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="https://farmaciauniversal.com/assets/sources/PRODUCTOS/00908a.jpg" class="card-img-top promo-img" alt="Promoción 2">
                            <div class="card-body text-center">
                                <h5 class="card-title">Medicamentos</h5>
                                <p class="card-text">Visítanos y descubre nuestras promociones mensuales en medicamentos esenciales. Nuestro equipo está listo para asistirte y asegurarse de que recibas el mejor cuidado posible.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="https://clinicalaluz.pe/wp-content/uploads/2019/03/clinica-la-luz-diagnostico-imagenes-main.jpg" class="card-img-top promo-img" alt="Promoción 3">
                            <div class="card-body text-center">
                                <h5 class="card-title">Exámenes Rayos X</h5>
                                <p class="card-text">Durante este mes, ofrecemos descuentos especiales en nuestros exámenes de rayos X. No pierdas la oportunidad de realizarte un diagnóstico preciso y confiable con nuestros profesionales calificados.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <section class="contactos-section" style="margin-top: 30px;">
            <div class="container">
                <h2 class="text-center mb-4">Noticias Recientes</h2>
                <div class="row">
                    <div class="col-md-6">
                        <div class="news-item">
                            <h4 class="news-title">Minsa brinda recomendaciones para afrontar la temporada de bajas temperaturas</h4>
                            <p class="news-text">El director general de Intervenciones Estratégicas en Salud Pública, Cristian Díaz Vélez, destaca la importancia de la vacunación, el lavado de manos, la correcta manera de abrigarse, el cuidado de la piel, entre otras recomendaciones.</p>
                            <div class="text-center">
                                <img src="https://s2.abcstatics.com/abc/www/multimedia/salud/2023/10/06/resfriado-prolongado-RRNCD9qX8939UVKKHsDGWPL-1200x840@abc.JPG" class="img-fluid mt-3 news-img" alt="Imagen de la noticia 1">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="news-item">
                            <h4 class="news-title">¿Es mejor hidratarse con agua o con electrolitos cuando nos ejercitamos?</h4>
                            <p class="news-text">Es una parte crítica de la salud en general, la hidratación apropiada ayuda al cuerpo a funcionar de manera normal, pero con el calor del verano resulta difícil saber cuál es la mejor forma de reponer lo que se ha perdido con el sudor.</p>
                            <div class="text-center">
                                <img src="https://cdn.unotv.com/images/2024/06/agua-o-electrolitos-140735.jpg" class="img-fluid mt-3 news-img" alt="Imagen de la noticia 2">
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </section>

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
