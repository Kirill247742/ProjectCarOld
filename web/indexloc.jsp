<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <style>td{text-transform:uppercase;}</style>
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="grid.css" rel="stylesheet">
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="starter-template.css" rel="stylesheet">

</head>

<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href='<c:url value="/" />'>AvtoShop.by</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href='<c:url value="/" />'>Home</a></li>
                <li><a href='<c:url value="/createsell" />'>I'm a new seller</a></li>
                <li><a href='<c:url value="/createloc" />'>My location</a></li>
                <li><a href='<c:url value="/createcar" />'>Sell a car</a></li>
                <li><a href='<c:url value="/sell" />'>Sellers</a></li>
                <li><a href='<c:url value="/loc" />'>Locations</a></li>
                <li><a href='<c:url value="/car" />'>Buy a car</a></li>
            </ul>
        </div>
    </div>
</div>

<br></br>
<div class="container">

    <h2 class="sub-header">LOCATIONS LIST</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>

                <th>ID</th>
                <th>LOCATION</th>
                <th>EDIT INFO</th>
                <th>DELETE CAR</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="location" items="${locations}">
                <tr>
                    <td>${location.id}</td>
                    <td>${location.name}</td>
                    <td><a href='<c:url value="/editloc?id=${location.id}" />'>EDIT</a></td>
                    <td>
                        <form method="post" action='<c:url value="/deleteloc" />' style="display:inline;">
                            <input type="hidden" name="id" value="${location.id}">
                            <input type="submit" value="DELETE">
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>
</body>