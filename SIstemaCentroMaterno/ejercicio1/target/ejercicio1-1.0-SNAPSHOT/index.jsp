<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - Centro Materno Infantil</title>
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
            margin-bottom: 10px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .profile-icon {
            width: 100px;
            height: 100px;
            margin-bottom: 20px;
            opacity: 0.8; /* Aplicar transparencia */
        }

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group label {
            display: block;
            margin-bottom: 10px;
            color: #495057;
            font-weight: bold;
            font-size: 18px;
            text-align: left;
        }

        .form-group input {
            width: 100%;
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
            margin-top: 30px;
            text-align: center;
        }

        .form-group .btn {
            padding: 16px 32px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease-in-out, transform 0.2s ease-in-out;
            overflow: hidden;
            background-color: #273c75;
            color: #ffffff;
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
        }

        .form-group .btn:hover {
            background-color: #1a2b4c;
            transform: scale(1.03);
        }

        .forgot-password,
        .register-link {
            margin-top: 20px;
            text-align: center;
        }

        .forgot-password a,
        .register-link a {
            color: #273c75;
            text-decoration: none;
            transition: color 0.3s ease-in-out;
        }

        .forgot-password a:hover,
        .register-link a:hover {
            color: #1a2b4c;
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <div class="container">
        <div class="login-form">
            <h2>CENTRO MATERNO INFANTIL</h2>
            <img src="https://static.vecteezy.com/system/resources/previews/007/033/146/non_2x/profile-icon-login-head-icon-vector.jpg" alt="Profile Icon" class="profile-icon">
            <form action="<%= request.getContextPath() %>/ControllerLogeo" method="post">
                <div class="form-group">
                    <label for="username">Usuario:</label>
                    <input type="text" id="username" name="username" placeholder="Ingrese su nombre de usuario" required>
                </div>
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" placeholder="Ingrese su contraseña" required>
                    <span class="toggle-password" onclick="togglePasswordVisibility(this);">Mostrar</span>
                </div>
                <div class="form-group btn-container">
                    <button type="submit" class="btn">Iniciar Sesión</button>
                </div>
                <div class="forgot-password">
                    <p>¿Olvidaste tu contraseña? <a href="RecuperarContra.jsp">Recupérala aquí</a></p>
                </div>
                <div class="register-link">
                    <p>¿No tienes cuenta? <a href="crearUsuario.jsp">Regístrate aquí</a></p>
                </div>
            </form>
        </div>
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
