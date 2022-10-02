<%-- 
    Document   : addProduct
    Created on : Jan 8, 2022, 12:10:52 AM
    Author     : Damian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add Product">
    <h1 class="PageTitle">Add Product</h1>
    <style>
        
        .PageTitle{
            padding-top:50px;
            text-align:center;
            font-family: Arial;
            font-size:65px;
        }
        .addProdAlign{
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
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/Products/Create">
        <div class="inputs">
        <div class="">
            <div class="col-md-6 mb-3">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="" value="" required/>
                <div class="invalid-feedback">
                    Name is required.
                </div>
            </div>
        </div>

        <div class="">
            <div class="col-md-6 mb-3">
                <label for="price">Price</label>
                <input type="text" class="form-control" id="price" name="price" placeholder="" value="" required/>
                <div class="invalid-feedback">
                    Price is required.
                </div>
            </div>
        </div>

        <div class="">
            <div class="col-md-6 mb-3">
                <label for="description">Description</label>
                <input type="text" class="form-control" id="description" name="description" placeholder="" value="" required/>
                <div class="invalid-feedback">
                    Description Spot is required.
                </div>
            </div>
        </div>

        <div class="">
            <div class="col-md-6 mb-3">
                <label for="quantity">Quantity</label>
                <input type="text" class="form-control" id="quantity" name="quantity" placeholder="" value="" required/>
                <div class="invalid-feedback">
                    Quantity Spot is required.
                </div>
            </div>
        </div>
        </div>
        <button style= "background-color: pink" class="btn btn-warning btn-lg btn-block addProdAlign" type="submit">Save</button>
        
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