<%-- 
    Document   : editProduct
    Created on : Jan 8, 2022, 12:12:45 PM
    Author     : Damian
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Edit Product">
    <h1 class="PageTitle">Edit Product</h1>
     <style>
        
        .PageTitle{
            padding-top:50px;
            text-align:center;
            font-family: Arial;
            font-size:65px;
        }
        .editProdAlign{
           display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
            margin-top:30px;
        }
        .inputs{
            padding-left:440px;
        }
    </style>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/Products/Update">
        <div class="inputs">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="" value="${product.name}" required/>
                <div class="invalid-feedback">
                    Name is required.
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="price">Price</label>
                <input type="text" class="form-control" id="price" name="price" placeholder="" value="${product.price}" required/>
                <div class="invalid-feedback">
                    Price is required.
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="description">Description</label>
                <input type="text" class="form-control" id="description" name="description" placeholder="" value="${product.description}" required/>
                <div class="invalid-feedback">
                    Description Spot is required.
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="quantity">Quantity</label>
                <input type="text" class="form-control" id="quantity" name="quantity" placeholder="" value="${product.quantity}" required/>
                <div class="invalid-feedback">
                    Quantity Spot is required.
                </div>
            </div>
        </div>
        </div>
        <input type="hidden" name="product_id" value="${product.id}"/>
        <button style="background-color: pink;" class="btn btn-warning btn-lg btn-block editProdAlign" type="submit">Save</button>

    </form>
</t:pageTemplate>

<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict';

        window.addEventListener('load', function () {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');

            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>