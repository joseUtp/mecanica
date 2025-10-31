<%-- 
    Document   : Plantilla
    Created on : 13 set. 2025, 5:05:39 p. m.
    Author     : Tino Varas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title><%@ include file="/WEB-INF/jspf/title.jspf" %></title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/styles.css" />
    </head>
    <body class="bg-light d-flex flex-column min-vh-100">

        <!-- Navbar -->
        <%@ include file="/WEB-INF/jspf/nav.jspf" %>

        <!-- Contenido principal -->
        <main class="flex-fill">
            <div class="container mt-4">
                <jsp:include page="${param.pageContent}" />
            </div>
        </main>

        <!-- Footer -->
        <%@ include file="/WEB-INF/jspf/footer.jspf" %>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
