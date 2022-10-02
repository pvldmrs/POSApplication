<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add User">
    <h1 class="PageTitle">Add User</h1>
    <style>
        
        .PageTitle{
            padding-top:50px;
            text-align:center;
            font-family: Arial;
            font-size:65px;
        }
        .addUserAlign{
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
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/Users/Create">
        <div class="inputs">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Username is required.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Email is required.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Password is required.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="position">Position</label>
                <select class="custom-select d-block w-100" id="positon" name="position" required>
                    <option value="">Choose...</option>
                    <option value="ADMINISTRATOR">Administrator</option>
                    <option value="DG">Dg</option>
                    <option value="CASHIER">Cashier</option>
                </select>
                <div class="invalid-feedback">
                    Please select a position.
                </div>
            </div>
        </div>
        </div>
        <button style="background-color: pink;" class="btn btn-warning btn-lg btn-block addUserAlign" type="submit">Save</button>
    </form>
</t:pageTemplate>
   
<script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
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