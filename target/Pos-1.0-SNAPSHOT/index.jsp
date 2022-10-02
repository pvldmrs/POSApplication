<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Pos">
    <style>
        .center{
            position: fixed;
            top: 50%;
            right: 50%;
            font-family: Arial;
            font-size:60px;
        }
        .imgIndex{padding-top: 30px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 30%;
            float:right;
        }
    </style>
    <div>
        <img class="imgIndex" src="Images/pos1.png">
    </div>
    <div class="center">
        <h1> Welcome to POS! </h1>
    </div>
</t:pageTemplate>