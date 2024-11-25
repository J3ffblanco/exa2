<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SistemaSoporte.aspx.cs" Inherits="TuProyecto.SistemaSoporte" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Soporte</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        header {
            background-color: #007bff;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #0056b3;
        }
        nav a {
            color: white;
            text-decoration: none;
            padding: 15px 20px;
        }
        nav a:hover {
            background-color: #003d80;
        }
        .container {
            width: 80%;
            margin: 20px auto;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .table th, .table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        .table th {
            background-color: #007bff;
            color: white;
        }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
            display: inline-block;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Sistema de Soporte Técnico</h1>
    </header>

    <nav>
        <a href="#usuarios">Usuarios</a>
        <a href="#tecnicos">Técnicos</a>
        <a href="#equipos">Equipos</a>
    </nav>

    <div class="container">
        <!-- Sección de Usuarios -->
        <section id="usuarios">
            <h2>Usuarios</h2>
            <a href="#" class="btn">Agregar Usuario</a>
            <table class="table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Teléfono</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Carlos Gómez</td>
                        <td>carlos.gomez@example.com</td>
                        <td>(123) 456-7890</td>
                        <td>
                            <a href="#" class="btn">Editar</a>
                            <a href="#" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>

        <!-- Sección de Técnicos -->
        <section id="tecnicos">
            <h2>Técnicos</h2>
            <a href="#" class="btn">Agregar Técnico</a>
            <table class="table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Especialidad</th>
                        <th>Teléfono</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Juan Pérez</td>
                        <td>Redes</td>
                        <td>(321) 654-9870</td>
                        <td>
                            <a href="#" class="btn">Editar</a>
                            <a href="#" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>

        <!-- Sección de Equipos -->
        <section id="equipos">
            <h2>Equipos</h2>
            <a href="#" class="btn">Agregar Equipo</a>
            <table class="table">
                <thead>
                    <tr>
                        <th>Nombre del Equipo</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>PC-12345</td>
                        <td>En reparación</td>
                        <td>
                            <a href="#" class="btn">Ver detalles</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 Sistema de Soporte</p>
    </footer>
</body>
</html>


