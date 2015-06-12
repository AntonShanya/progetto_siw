<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<f:view>
		<h:form>
			<h1>Creazione Ordine</h1>
			<br>
			<div>
				Aggiungi un prodotto:
				<h:commandButton value="Submit"
					action="#{productController.listProductForOrder()}" />
			</div>

			<div>
				Chiudi l'ordine:
				<h:commandButton value="Submit"
					action="#{ordineController.closeOrder()}" />
			</div>




		</h:form>
	</f:view>

</body>
</html>