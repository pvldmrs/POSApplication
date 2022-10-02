<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .btnEdit{
        font-family: Arial;
        font-size:60px;
    }
</style>
<nav class="text-center navbar navbar-expand-md navbar-hover-teal navbar-dark  bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand btnEdit" href="${pageContext.request.contextPath}">NextGen POS</a>
            <div class="collapse navbar-collapse" id="navbarCollapse" >
            <ul class="navbar-nav d-flex justify-content-end">
                <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
                    <li class="nav-item ${activePage eq 'Products' ? 'active' : ''}">
                        <a class="nav-link" style="color:white;" href="${pageContext.request.contextPath}/Products">Products</a>
                    </li>
                </c:if>

                <c:if test="${pageContext.request.isUserInRole('DgRole')}">
                    <li class="nav-item ${activePage eq 'Products' ? 'active' : ''}">
                        <a class="nav-link" style="color:white;" href="${pageContext.request.contextPath}/Products">Products</a>
                    </li>
                </c:if>

                <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
                    <li class="nav-item ${activePage eq 'Users' ? 'active' : ''}">
                        <a class="nav-link" style="color:white;" href="${pageContext.request.contextPath}/Users">Users</a>
                    </li>
                </c:if>

               

                <li class="nav-item ${pageContext.request.requestURI eq '/Pos/about.jsp' ? 'active' : ''}">
                    <a class="nav-link" style="color:white;" href="${pageContext.request.contextPath}/about.jsp">About</a>
                </li>

                <li class="nav-item ${activePage eq 'ProductsDisplay' ? 'active' : ''}">
                    <a class="nav-link" style="color:white;" href="${pageContext.request.contextPath}/ProductsDisplay">Products for viewer</a>
                </li>
                <li class="nav-item">
                    <c:choose>
                        <c:when test="${pageContext.request.getRemoteUser() == null}">
                            <a class="nav-link" style="color:pink;"  href="${pageContext.request.contextPath}/Login">Login</a>
                        </c:when>
                        <c:otherwise>
                            <a class="nav-link" style="color:maroon;" href="${pageContext.request.contextPath}/Logout">Logout</a>
                        </c:otherwise>
                    </c:choose>
                </li>
            </ul>
        </div>
    </div>
</nav> 