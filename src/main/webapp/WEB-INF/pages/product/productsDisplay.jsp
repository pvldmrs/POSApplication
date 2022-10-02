<%-- 
    Document   : productsDisplay
    Created on : Jan 8, 2022, 8:46:21 PM
    Author     : Damian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Products">
    <h1 class="ProductsTitle">Products</h1>
    <style>
        .prodTable{
           display: block;
            margin-left: auto;
            margin-right: auto;
            width: 100%;
        }
        .ProductsTitle{
            padding-top:50px;
            text-align:center;
            font-family: Arial;
            font-size:65px;
        }
        .headerRow{
            border-style:groove;
        }
        .itemsRows{
            
        }
    </style>
    <div class="prodTable">
    <form method="POST" action="${pageContext.request.contextPath}/Products">

        <br>
        <div class="row headerRow">
            <div class="col-md-2 "><b>ID</b></div>
            <div class="col-md-2 "><b>Name</b></div>
            <div class="col-md-2 "><b>Price</b></div>
            <div class="col-md-2 "><b>Description</b></div>
            <div class="col-md-2 "><b>Quantity</b></div>

        </div>
        <br>
        <div class="itemsRows">
        <c:forEach var="product" items="${products}" varStatus="status">
            <div class="row">
                <div class="col-md-2">
                    ${product.id}
                </div>
                <div class="col-md-2">
                    ${product.name}
                </div>
                <div class="col-md-2">
                    ${product.price}
                </div>
                <div class="col-md-2">
                    ${product.description}
                </div>
                <div class="col-md-2">
                    ${product.quantity}
                </div>
            </div>
            <br>
        </c:forEach>
        </div>
    </form>
    </div>
</t:pageTemplate>