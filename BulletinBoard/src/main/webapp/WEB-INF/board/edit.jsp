<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Edit Post</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="header">

    <h1>Bulletin Board</h1>

</div>
<div class="container-fluid">
<h2>Edit Post</h2>
<h2>${bulletin.author}</h2>
<table>
<tr><td colspan="4"><hr></td></tr>

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
</form>
  <td>
  <form action="home.do" method="POST">
  <button type="submit">Cancel</button>
  </form>
  </td>
</tr>
</table>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>