<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Users">
    <h1 class="PageTitle">Users</h1>
      <style>
        .usersTable{
           display: block;
            margin-left: auto;
            margin-right: auto;
            width: 100%;
        }
        .PageTitle{
            padding-top:50px;
            text-align:center;
            font-family: Arial;
            font-size:65px;
        }
        .headerRow{
            border-style:groove;
        }
      </style>
    <div class="usersTable">
    <form method="POST" action="${pageContext.request.contextPath}/Users">

        <br>
        <div class="row headerRow">
            <div class="col-md-2"></div>
            <div class="col-md-3"><b>Username</b></div>
            <div class="col-md-3"><b>Email</b></div>
            <div class="col-md-3"><b>Position</b></div>
  
        </div>
        <br>
        <c:forEach var="user" items="${users}" varStatus="status">
            <div class="row">
                <div class="col-md-2">
                    <input type="checkbox" name="user_ids" value="${user.id}"/>
                </div>
                <div class="col-md-3">
                    ${user.username}
                </div>
                <div class="col-md-3">
                    ${user.email}
                </div>
                <div class="col-md-3">
                    ${user.position}
                </div>
            </div>
        </c:forEach>
        <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
         <a style="background-color: pink;" class="btn btn-warning btn-lg" href="${pageContext.request.contextPath}/Users/Create" role="button">Add User</a>
         <button style="background-color: maroon;" class="btn btn-danger" style="float:right;" type="submit">Delete Users</button>
        </c:if>
        
        
    </form>
    </div>
</t:pageTemplate>