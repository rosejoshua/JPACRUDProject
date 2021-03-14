<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Old-School Bulletin Board</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css" type="text/css">
</head>
<body>
<div class="container-fluid">
<h1>Bulletin Board (be nice!)</h1>

<table>
<tr><td colspan="4"><hr></td></tr>
<tr>
<th>#</th>
<th>Author</th>
<th>Post</th>
<th colspan="3">Datetime</th>
</tr>

<c:forEach var="b" items="${bulletinBoard}">
<tr>

  <td>${b.id}</td>
  
  <td><a href="getAllAuthor.do?author=${b.author}">${b.author}</a></td>
  
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

<tr><td colspan="4"><hr></td></tr>

<tr>
<form action="addPost.do" method="POST">
<th><label for="inReplyTo">Re:</label></th>
<th><label for="author">Author:</label></th>
<th colspan="2"><label for="post">Message:</label></th>
</tr>

<tr>
  <td>   
   <select name="inReplyTo" id="inReplyTo">
    <option value=0>n/a</option>
    	<c:forEach var="b" items="${bulletinBoard}">
    	<option value="${b.id}">${b.id}</option>
		</c:forEach>
  </select>
  </td>  
  
  <td>
  <input type="text" id="author" name="author" size="20" />
  </td>
  <td>
  <input type="text" id="post" name="post" size="50"/>
  </td>
  <td>
  <button name="submit" type="submit" value="${b.id}">Post to Board</button>
  </td>
</tr>

</form>

</table>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>