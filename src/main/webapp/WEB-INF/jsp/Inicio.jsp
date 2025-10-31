<%@ page pageEncoding="UTF-8" %>
<!-- SECTION BIENVENIDA -->
<div class="container mt-1 mb-3 section-bienvenida">
    <div class="row align-items-center">
        <!-- Columna texto -->
        <div class="col-md-8">
            <h3 class="text-center text-md-start">Bienvenido a AutoParts EIRL</h3>
            <p class="text-center text-md-start">
                Módulo de Administración del negocio. 
            </p>
            <p class="text-center text-md-start">
                Este es el espacio de gestión interna de AutoParts, donde podrás administrar el catálogo de autopartes, controlar ventas, actualizar inventario y dar seguimiento a los pedidos de clientes.
                <br><br>
                Nuestra plataforma está diseñada para que la administración del sitio sea más ágil, segura y eficiente, brindándote todas las herramientas necesarias para mantener la operación al día.
                <br><br>
                👉 Recuerda mantener actualizados los datos de productos, precios y stock para garantizar una excelente experiencia a nuestros clientes.
                <br><br>
                ¡Gracias por ser parte de la gestión que impulsa el crecimiento de AutoParts EIRL!
            </p>
        </div>

        <!-- Columna imagen -->
        <div class="col-md-4 text-center">
            <img src="Resources/img/repuestos.png" alt="AutoParts" class="img-fluid rounded">
        </div>
    </div>
</div>

<!-- Carrusel de Logos (Bootstrap) -->
<div class="container mb-5">
    <h2 class="text-center mb-4">Nuestras Marcas</h2>
    <div id="carouselLogos" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <!-- Slide 1 (Activo) -->
            <div class="carousel-item active">
                <div class="row justify-content-center">
                    <div class="col-6 col-md-3 text-center">
                        <img src="${pageContext.request.contextPath}/Resources/img/Logo_Stanley.jpg" class="img-fluid" alt="Stanley" style="max-height: 80px;">
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <img src="${pageContext.request.contextPath}/Resources/img/Logo_Dewalt.jpg" class="img-fluid" alt="Dewalt" style="max-height: 80px;">
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <img src="${pageContext.request.contextPath}/Resources/img/Logo_Bosch.jpg" class="img-fluid" alt="Bosch" style="max-height: 80px;">
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <img src="${pageContext.request.contextPath}/Resources/img/Logo_ByD.jpg" class="img-fluid" alt="ByD" style="max-height: 80px;">
                    </div>
                </div>
            </div>
            <!-- Slide 2 -->
            <div class="carousel-item">
                <div class="row justify-content-center">
                    <div class="col-6 col-md-3 text-center">
                        <img src="${pageContext.request.contextPath}/Resources/img/Logo_Makita.jpg" class="img-fluid" alt="Makita" style="max-height: 80px;">
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <img src="${pageContext.request.contextPath}/Resources/img/Logo_Lenox.jpg" class="img-fluid" alt="Milwaukee" style="max-height: 80px;">
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <img src="${pageContext.request.contextPath}/Resources/img/Logo_Klingspor.jpg" class="img-fluid" alt="3M" style="max-height: 80px;">
                    </div>
                    <div class="col-6 col-md-3 text-center">
                        <img src="${pageContext.request.contextPath}/Resources/img/Logo_Esab.jpg" class="img-fluid" alt="Ingersoll" style="max-height: 80px;">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
