<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dettagli Ordine</title>
</head>
<body>
	<f:view>
		<h:form>
			<h1>Dettagli ordine:</h1>
			<table>
				<tr>
					<th>ID prodotto</th>
					<th>Prezzo unitario</th>
					<th>Quantita</th>
					<th>Prezzo</th>					

				</tr>
				<c:forEach var="orderLine" items="#{ordineController.orderLines}">
					<tr>
						<td>${orderLine.idProduct}</td>
						<td>${orderLine.price}</td>
						<td>${orderLine.quantity}</td>
						<td>${orderLine.subtotal}</td>
					</tr>
				</c:forEach>
			</table>
			<a href="faces/homeUser.jsp">Home</a>
		</h:form>
	</f:view>

</body>
</html>