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
                <div class="card text-center">
                    <div class="card-header">
                        <h1 class="card-title text-center">おみくじ</h1>
                    </div>
                    <div class="card-body">
                        <p class="text-justify">
                            En <c:out value="${omikuji.getNumber()}"></c:out> años, tu viviras en <c:out value="${omikuji.getCity()}"></c:out>
                            con <c:out value="${omikuji.getName()}"></c:out>, <c:out value="${omikuji.getProfession()}"></c:out>.
                            La proxima vez que te vayas a <c:out value="${omikuji.getLiving()}"></c:out> tu tendras buena suerte.
                            Además, tu no debes <c:out value="${omikuji.getText()}"></c:out>.
                        </p>
                    </div>
                    <div class="card-footer">
                        <a href="/reset">Go back</a>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
