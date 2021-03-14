<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Post</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
<h1>Edit Post</h1>
<h2>${bulletin.author}</h2>

<table>
<tr><td colspan="4"><hr></td></tr>
<!--  -->




<form action="editPost.do" method="POST">
<th>#</th>
<th colspan="2"><label for="post">Post</label></th>
</tr>

<tr>
  <td>   
${bulletin.id}
  </td>  

  <td>
  <input type="text" id="post" name="post" value="${bulletin.post}" size="50"/>
  </td>
  <td>
  <button type="submit" id="postId" name="postId" value="${bulletin.id}">Update Post</button>
  </td>
</tr>

</form>





<!--  -->
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>