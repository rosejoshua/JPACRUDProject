<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Author Posts</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="container-fluid">
<h1>Author Posts</h1>
<h2>${author}</h2>

<table>
<tr><td colspan="4"><hr></td></tr>
<tr>
<th>#</th>
<th>Post</th>
<th colspan="3">Datetime</th>
</tr>

<c:forEach var="b" items="${authorBoard}">
<tr>
  <td>${b.id}</td>    
    
  <td>  
  <c:if test="${not b.isDeleted}">
  	<c:if test="${not empty b.inReplyTo}">Re: #${b.inReplyTo}...</c:if>
		${b.post}
  			<c:if test="${b.isEdited}"><i>[edited]</i></c:if>
  </c:if>  
  <c:if test="${b.isDeleted}"><i>[DELETED BY AUTHOR]</i></c:if>  
  </td> 
   
  <td>${b.dateTime}</td>
  <td>
  
  <form action="edit.do" method="GET">
  <button name="postId" type="submit" value="${b.id}">Edit</button>
  </form>
  
  </td>
  
  <td>
  
  <form action="deletePost.do" method="POST">
  <button name="postId" type="submit" value="${b.id}">Delete</button>
  </form>
  
  </td>

</tr>
</c:forEach>
</table>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>