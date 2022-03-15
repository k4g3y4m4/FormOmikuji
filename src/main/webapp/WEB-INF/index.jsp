<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Omikuji</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body class="bg-dark">
<main>
    <div class="container py-5">
        <div class="card">
            <div class="card-header">
                <h1 class="card-title text-center">おみくじ</h1>
            </div>
            <div class="card-body">
                <form action="/sendOmikuji" method="post">
                    <div class="row g-3 py-3 align-items-center">
                        <div class="col-md-8">
                            <label for="inputNumber" class="col-form-label">Pick any number from 5 to 25</label>
                        </div>
                        <div class="col-md-4">
                            <input type="number" id="inputNumber" name="inputNumber" class="form-control" aria-describedby="" min="5" max="25">
                        </div>
                    </div>
                    <div class="row g-3 py-3 align-items-center">
                        <div class="col-md-8">
                            <label for="inputCity" class="col-form-label">Enter the name of any City</label>
                        </div>
                        <div class="col-md-4">
                            <input type="text" id="inputCity" name="inputCity" class="form-control" aria-describedby="">
                        </div>
                    </div>
                    <div class="row g-3 py-3 align-items-center">
                        <div class="col-md-8">
                            <label for="inputName" class="col-form-label">Enter the name of any real person</label>
                        </div>
                        <div class="col-md-4">
                            <input type="text" id="inputName" name="inputName" class="form-control" aria-describedby="">
                        </div>
                    </div>
                    <div class="row g-3 py-3 align-items-center">
                        <div class="col-md-8">
                            <label for="inputProfession" class="col-form-label">Enter professional endeavor or hobby:</label>
                        </div>
                        <div class="col-md-4">
                            <input type="text" id="inputProfession" name="inputProfession" class="form-control" aria-describedby="">
                        </div>
                    </div>
                    <div class="row g-3 py-3 align-items-center">
                        <div class="col-md-8">
                            <label for="inputLiving" class="col-form-label">Enter any type of living thing.</label>
                        </div>
                        <div class="col-md-4">
                            <input type="text" id="inputLiving" name="inputLiving" class="form-control" aria-describedby="">
                        </div>
                    </div>
                    <!-- add textarea input-->
                    <div class="row g-3 py-3 align-items-center">
                        <div class="col-md-8">
                            <label for="inputText" class="col-form-label">Say something nice to someone:</label>
                        </div>
                        <div class="col-md-4">
                            <textarea id="inputText" name="inputText" class="form-control" aria-describedby=""></textarea>
                        </div>
                    </div>
                    <!-- add button right here -->
                    <div class="d-flex flex-row-reverse  g-3 py-3">
                        <div class="col-auto">
                            <button type="submit" class="btn btn-primary">Send</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>
</body>
</html>
