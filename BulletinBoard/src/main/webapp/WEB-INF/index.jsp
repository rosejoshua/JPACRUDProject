<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Old-School Bulletin Board</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
<h1>Bulletin Board (be nice!)</h1>

<table>
<tr><td colspan="4"><hr></td></tr>
<tr>
<th>#</th>
<th>Author</th>
<th>Post</th>
<th>Datetime</th>
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
  <input type="submit" value="Post Comment" />
  </td>
</tr>

</form>

</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>