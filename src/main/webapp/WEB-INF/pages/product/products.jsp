<%-- 
    Document   : products
    Created on : Jan 7, 2022, 5:55:58 PM
    Author     : Damian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Products">
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
    </style>
    <h1 class="ProductsTitle">Products</h1>
    <div class="prodTable">
    <form method="POST" action="${pageContext.request.contextPath}/Products">
        

        <br>
        <div class="row headerRow">
            <div class="col-md"></div>
            <div class="col-md-2"><b>ID</b></div>
            <div class="col-md-2"><b>Name</b></div>
            <div class="col-md-2"><b>Price</b></div>
            <div class="col-md-2"><b>Description</b></div>
            <div class="col-md-2"><b>Quantity</b></div>
            <div class="col-md-1"></div>
        </div>
        <br>
        <c:forEach var="product" items="${products}" varStatus="status">
            <div class="row">
                <div class="col-md">
                    <input type="checkbox" name="product_ids" value="${product.id}" />
                </div>
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
                <div class="col-md-1">
                    <a style="background-color:pink; color: black;" class="btn btn-secondary" href="${pageContext.request.contextPath}/Products/Update?id=${product.id}" role="button">Edit Product</a>
                </div>
            </div>
            <br>
        </c:forEach>
        <a style="background-color: pink;" class="btn btn-warning btn-lg" href="${pageContext.request.contextPath}/Products/Create" role="button">Add Product</a>
        <button style=" background-color: maroon; float: right;" class="btn btn-danger" type="submit">Delete Product</button>
    </form>
    </div>
</t:pageTemplate>