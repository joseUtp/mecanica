<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container mt-5">
    <h3 class="mb-4">Gestión de Clientes</h3>
    <div class="card shadow">
        <!-- Pestañas -->
        <ul class="nav nav-tabs" id="clientTabs" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="data-tab" data-bs-toggle="tab" data-bs-target="#data-tab-pane" type="button" role="tab">
                    <i class="fas fa-user-edit me-1"></i>Datos del Cliente
                </button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="list-tab" data-bs-toggle="tab" data-bs-target="#list-tab-pane" type="button" role="tab">
                    <i class="fas fa-list me-1"></i>Listado de Clientes
                </button>
            </li>
        </ul>
        <div class="tab-content p-4" id="clientTabsContent">

            <!-- Formulario de Cliente -->
            <div class="tab-pane fade show active" id="data-tab-pane" role="tabpanel" aria-labelledby="data-tab">
                <form id="clienteForm" action="${pageContext.request.contextPath}/SrvCliente" method="POST">
                    <input type="hidden" name="accion" id="formAccion" value="registrar">
                    <input type="hidden" name="estado" value="true">

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="nombre" class="form-label">Nombre del cliente:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>
                        <div class="col-md-6">
                            <label for="dni" class="form-label">N° Documento (DNI):</label>
                            <input type="text" class="form-control" id="dni" name="dni" required
                                   pattern="^\d{8}$" maxlength="8" minlength="8"
                                   title="El DNI debe tener exactamente 8 dígitos numéricos">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="correo" class="form-label">E-mail:</label>
                            <input type="email" class="form-control" id="correo" name="correo" required>
                        </div>
                        <div class="col-md-6">
                            <label for="telefono" class="form-label">Teléfono:</label>
                            <input type="text" class="form-control" id="telefono" name="telefono" required>
                        </div>
                    </div>

                    <div class="button-group">
                        <button type="submit" class="btn btn-primary btn-action">
                            <i class="fas fa-save me-1"></i>Guardar
                        </button>
                        <button type="reset" class="btn btn-warning btn-action">
                            <i class="fas fa-times me-1"></i>Cancelar
                        </button>
                    </div>
                </form>
            </div>

            <!-- Listado de Clientes -->
            <div class="tab-pane fade" id="list-tab-pane" role="tabpanel" aria-labelledby="list-tab">
                <c:choose>
                    <c:when test="${not empty listaCliente}">
                        <table class="table table-bordered table-hover">
                            <thead class="table-dark">
                                <tr>
                                    <th class="text-center">ID</th>
                                    <th class="text-center">Nombre</th>
                                    <th class="text-center">DNI</th>
                                    <th class="text-center">Correo</th>
                                    <th class="text-center">Teléfono</th>
                                    <th class="text-center">Estado</th>
                                    <th class="text-center">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="cli" items="${listaCliente}">
                                    <tr>
                                        <td>${cli.idcliente}</td>
                                        <td>${cli.nombre}</td>
                                        <td>${cli.dni}</td>
                                        <td>${cli.correo}</td>
                                        <td>${cli.telefono}</td>
                                        <td>${cli.estado ? 'Activo' : 'Inactivo'}</td>
                                        <td class="text-center">
                                            <a href="#" class="btn btn-sm btn-warning btn-editar"
                                               data-id="${cli.idcliente}"
                                               data-nombre="${cli.nombre}"
                                               data-dni="${cli.dni}"
                                               data-correo="${cli.correo}"
                                               data-telefono="${cli.telefono}"
                                               data-estado="${cli.estado}">
                                                Editar
                                            </a>
                                            <a href="SrvCliente?accion=eliminar&id=${cli.idcliente}" class="btn btn-danger btn-sm"
                                               onclick="return confirm('¿Eliminar este cliente?');">Eliminar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:when>
                    <c:otherwise>
                        <div class="alert alert-warning">
                            No se encontraron clientes registrados.
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Validación y lógica para editar -->
<script src="resources/js/cliente.js" type="text/javascript"></script>
