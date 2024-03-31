<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagina.aspx.cs" Inherits="Veterinaria.pagina" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clínica Veterinaria</title>
    <link rel="stylesheet" href="styles.css">
    <link href="CSS/CSS.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


<body>
    <header>
        <div class="container">
            <nav>
                <ul class="menu">
                    <li><a href="pagina.aspx">Inicio</a></li>
                    <li><a href="Registrar.aspx">Registrar Mascota</a></li> 
                    <li><a href="asignar_citas.aspx">Asignar citas</a></li>
                    <li><a href="medicamentos.aspx">Medicamentos</a></li>
                    <li><a href="medicos.aspx">Medicos</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn">Reportes</a>
                        <div class="dropdown-content">
                            <a href="ReporteUsuario.aspx">Reporte de Usuarios</a>
                            <a href="ReporteMacotas.aspx">Reporte de Mascotas</a>
                            <a href="ReporteCitas.aspx">Reporte de Control de Citas</a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="container">
                <h1>Clínica Veterinaria</h1>
            </div>
        </div>
    </header>

    <main>
        <div class="container">
            <h2>Bienvenido a nuestra clínica veterinaria</h2>
            <p>Somos expertos en el cuidado de tus mascotas. Ofrecemos servicios de atención médica, vacunación, cirugía y más.</p>
        </div>
       
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2024 Clínica Veterinaria. Todos los derechos reservados.&nbsp;&nbsp;&nbsp; </p>
        </div>
    </footer>
</body>
</html>
