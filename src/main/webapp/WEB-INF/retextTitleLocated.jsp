<%@ page import="java.util.List,model2.UserInventoryDisplay,model2.DisplayUserInventory" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

<title>Books Located</title>

<link type="text/css" rel="stylesheet" href="/retextdemo/css/reTextStyle.css">
</head>

<body>

<div id="container">
	<h2>ReText</h2>
	
	<%List<DisplayUserInventory> disp =(List<DisplayUserInventory>) request.getAttribute("titleList");%>
	<%String disp2 = (String)request.getAttribute("test"); %>
	
	
	<table id="located_table">
		<tr><td >  Title Located:"${title}"  </td></tr>
		<tr>
			<th>Price</th>
			<th>Condition</th>
			<th>Seller</th>
		</tr>
			
		<c:forEach var="tempTitle" items="${titleList}">	
		
			<c:url var="tempLink" value="RetextMessagesServlet">
				<c:param name="command" value="contactSeller" />
				<c:param name="sellerId" value="${tempTitle.id}" />
			</c:url>
						
			<tr>
				<td>  ${tempTitle.price} </td>
				<td>  ${tempTitle.condition}</td>
				<td>  ${tempTitle.seller}</td>
				<td><a href="${tempLink}">Contact Seller</a></td>
			</tr>
		</c:forEach>
	</table>	
		
	<div class="center-button">
		<input class="center-button" type="submit" value="Contact Seller">
	</div>

	<div class="copyright">
		<small>&copy copyright 2017 Holly Williams</small>
	</div>
</div>

</body>

</html>