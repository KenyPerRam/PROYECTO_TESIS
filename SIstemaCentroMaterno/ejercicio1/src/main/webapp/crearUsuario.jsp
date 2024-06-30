<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Crear Usuario - Centro Materno Infantil</title>
        <style>
            /* Estilos globales */
            body {
                font-family: 'Roboto', sans-serif;
                margin: 0;
                padding: 0;
                background-color: #273c75;
                background-image: url('https://images.ecestaticos.com/Bosqgwi-bRoiiu2s89AjrlamxUE=/0x70:1716x1040/1338x751/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F8db%2F8b6%2Faa5%2F8db8b6aa54b585253e15f79a68447aeb.jpg');
                background-size: cover;
                background-position: center;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .container {
                max-width: 400px; /* Ancho máximo reducido */
                width: 100%;
                padding: 20px;
                text-align: center;
                z-index: 1;
                position: relative;
                overflow: hidden;
                transition: transform 0.3s ease-in-out;
            }

            .container:hover {
                transform: translateY(-3.5px); /* Desplazamiento hacia arriba */
            }

            .login-form {
                background-color: rgba(255, 255, 255, 0.9);
                padding: 40px;
                border-radius: 15px 15px 0 0; /* Redondea todas las esquinas */
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
                transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
                border: 1px solid #ccc;
                position: relative;
                margin-top: -50px;
            }

            h2 {
                color: #273c75;
                font-size: 36px;
                font-weight: 600;
                margin-bottom: 30px;
                text-transform: uppercase;
                letter-spacing: 1px;
                text-align: center;
                font-family: 'Montserrat', sans-serif;
            }

            .form-group {
                margin-bottom: 20px;
                position: relative;
                text-align: left;
            }

            .form-group label {
                display: block;
                margin-bottom: 10px;
                color: #495057;
                font-weight: bold;
                font-size: 18px;
            }

            .form-group input,
            .form-group select {
                width: 100%;
                padding: 14px;
                border: none;
                border-bottom: 2px solid #aaa;
                font-size: 16px;
                transition: border-color 0.3s ease-in-out;
                box-sizing: border-box;
                outline: none;
                background-color: rgba(255, 255, 255, 0.8);
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .toggle-password {
                position: absolute;
                right: 20px;
                top: 50%;
                transform: translateY(-50%);
                cursor: pointer;
                color: #273c75;
                font-size: 14px;
            }

            .toggle-password:hover {
                text-decoration: underline;
            }

            .form-group .btn-container {
                display: flex;
                justify-content: center; /* Centrar los botones horizontalmente */
                margin-top: 30px;
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

            .form-row {
                display: flex;
                justify-content: space-between;
                gap: 10px;
            }

            .form-row .form-group {
                flex: 1;
                margin-bottom: 0;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <main>
                <div class="login-form">
                    <h2>CREAR USUARIO</h2>
                    <form action="<%= request.getContextPath()%>/ControllerRegistroPaciente1" method="post">
                        <div class="form-group">
                            <label for="username">Nombre del paciente:</label>
                            <input type="text" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="lastname">Apellido del paciente:</label>
                            <input type="text" id="lastname" name="lastname" required>
                        </div>
                        <div class="form-group">
                            <label for="user">Nombre de usuario:</label>
                            <input type="text" id="user" name="user" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña:</label>
                            <input type="password" id="password" name="password" required>
                            <span class="toggle-password" onclick="togglePasswordVisibility(this);">Mostrar</span>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="document-type">Tipo documento:</label>
                                <select id="document-type" name="document-type" required>
                                    <option value="dni">DNI</option>
                                    <option value="passport">Pasaporte</option>
                                    <option value="other">Otro</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="document-number">N° documento:</label>
                                <input type="text" id="document-number" name="document-number" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="birthdate">Fecha nacimiento:</label>
                                <input type="date" id="birthdate" name="birthdate" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Número celular:</label>
                                <input type="tel" id="phone" name="phone" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email">Correo electrónico:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group btn-container">
                            <center>
                                <button type="submit" class="btn">Registrar</button>
                                <a href="<%= request.getContextPath()%>/index.jsp" class="btn btn-return">Retornar</a>
                            </center>

                        </div>
                    </form>
                </div>
            </main>
        </div>

        <script>
            function togglePasswordVisibility(span) {
                var passwordField = document.getElementById('password');
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
