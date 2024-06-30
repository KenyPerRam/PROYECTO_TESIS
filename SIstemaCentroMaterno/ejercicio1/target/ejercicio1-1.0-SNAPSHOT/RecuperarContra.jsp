<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Recuperar Contraseña - Centro Materno Infantil</title>
        <style>
            /* Estilos globales */
            body {
                font-family: 'Roboto', sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f8f9fa;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .background {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-image: url('https://images.ecestaticos.com/Bosqgwi-bRoiiu2s89AjrlamxUE=/0x70:1716x1040/1338x751/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F8db%2F8b6%2Faa5%2F8db8b6aa54b585253e15f79a68447aeb.jpg');
                background-size: cover;
                background-position: center;
                z-index: -1;
            }

            .container {
                position: relative;
                z-index: 1;
                width: 100%;
                max-width: 500px;
                padding: 20px;
                text-align: center;
            }

            .login-form {
            background-color: rgba(255, 255, 255, 0.9);
                padding: 40px;
    border-radius: 0; /* Elimina el redondeo de las esquinas */
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
                transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
                border: 1px solid #ccc;
                position: relative;
                margin-top: -50px;
            }

            .login-form:hover {
                box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
                transform: translateY(-5px);
            }

            h2 {
                font-family: 'Montserrat', sans-serif;
                font-weight: 600;
                color: #273c75;
                font-size: 36px;
                margin-bottom: 30px;
                text-transform: uppercase;
                letter-spacing: 1px;
                text-align: center;
            }

            .login-form p {
                text-align: center;
                max-width: 80%;
                margin: 0 auto 20px;
            }

            .form-group {
                margin-bottom: 20px;
                position: relative;
                text-align: left; /* Alineación del texto a la izquierda */
            }

            .form-group label {
                display: block;
                margin-bottom: 10px;
                color: #495057;
                font-weight: bold;
                font-size: 18px;
                /* text-align: center; */ /* No se centra para mantenerlo a la izquierda */
            }

            .form-group input {
                width: 100%; /* Ancho completo */
                padding: 14px;
                border: none;
                border-bottom: 2px solid #aaa;
                border-radius: 5px;
                font-size: 16px;
                transition: border-color 0.3s ease-in-out;
                box-sizing: border-box;
                outline: none;
                background-color: rgba(255, 255, 255, 0.8);
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .form-group .toggle-password {
                position: absolute;
                right: 20px;
                top: 50%;
                transform: translateY(-50%);
                cursor: pointer;
                color: #273c75;
                font-size: 14px;
            }

            .form-group .toggle-password:hover {
                text-decoration: underline;
            }

            .form-group .btn-container {
                display: flex;
                justify-content: center; /* Centrar los botones horizontalmente */
                align-items: center; /* Centrar verticalmente */
                margin-top: 30px;
                text-align: center; /* Centrar contenido dentro del contenedor */
            }

            .form-group .btn {
                flex: 1;
                padding: 12px; /* Reducido para hacer los botones más estrechos */
                border: none;
                border-radius: 8px;
                cursor: pointer;
                text-decoration: none;
                text-align: center;
                box-sizing: border-box;
                font-size: 16px;
                transition: background-color 0.3s ease-in-out, transform 0.2s ease-in-out;
                overflow: hidden;
                background-color: #273c75;
                color: #ffffff;
                box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
                max-width: 200px; /* Máximo ancho para evitar que se expandan demasiado */
            }

            .form-group .btn:last-child {
                background-color: #3c40c6;
            }

            .form-group .btn:hover {
                background-color: #1a2b4c;
                transform: scale(1.03);
            }

            .form-group .btn:last-child:hover {
                background-color: #5758bb;
            }
        </style>
    </head>
    <body>
        <div class="background"></div>
        <div class="container">
            <div class="login-form">
                <h2>RECUPERAR CONTRASEÑA</h2>
                <form action="<%= request.getContextPath()%>/ControllerRecuperarContrasena" method="post">
                    <div class="form-group">
                        <label for="usuario">Usuario:</label>
                        <input type="text" id="usuario" name="usuario" placeholder="Ingrese su usuario" required>
                    </div>
                    <div class="form-group">
                        <label for="nuevaContraseña">Nueva Contraseña:</label>
                        <input type="password" id="nuevaContraseña" name="nuevaContraseña" placeholder="Ingrese su nueva contraseña" required>
                        <span class="toggle-password" onclick="togglePasswordVisibility(this)">Mostrar</span>
                    </div>
                    <div class="form-group">
                        <label for="confirmarContraseña">Confirmar Contraseña:</label>
                        <input type="password" id="confirmarContraseña" name="confirmarContraseña" placeholder="Confirme su nueva contraseña" required>
                        <span class="toggle-password" onclick="togglePasswordVisibility(this)">Mostrar</span>
                    </div>
                    <div class="form-group btn-container">
                        <center>
                            <button type="submit" class="btn">Recuperar</button>
                            <a href="<%= request.getContextPath()%>/index.jsp" class="btn btn-return">Retornar</a>
                        </center>

                    </div>
                </form>
            </div>
        </div>

        <script>
            function togglePasswordVisibility(span) {
                var passwordField = span.previousElementSibling;
                if (passwordField.type === 'password') {
                    passwordField.type = 'text';
                    span.textContent = 'Ocultar';
                } else {
                    passwordField.type = 'password';
                    span.textContent = 'Mostrar';
                }
            }
        </script>
    </body>
</html>
