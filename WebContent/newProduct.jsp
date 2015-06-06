<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>New Product</title>
</head>
<body>
	<f:view>
		<h:form>
			<table>
				<tr>
					<td>Name:</td>
					<td><h:inputText value="#{productController.name}"
							required="true" requiredMessage="Name is mandatory" id="name" />
						<strong><h:message for="name" /></strong></td>
				</tr>
				<tr>
					<td>Code:</td>
					<td><h:inputText value="#{productController.code}"
							required="true" requiredMessage="Code is mandatory" id="code" />
						<h:message for="code" /></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><h:inputText value="#{productController.price}"
							required="true" requiredMessage="Price is mandatory"
							converterMessage="Price must be a number" id="price" /> <h:message
							for="price" /></td>
				</tr>

				<tr>
					<td>Desc:</td>
					<td><h:inputTextarea value="#{productController.description}"
							required="false" cols="20" rows="5" /></td>
				</tr>
			</table>
			<div>
				<h:commandButton value="Submit"
					action="#{productController.createProduct()}" />
			</div>
			<br>
			<div>
				<a href = "javascript:history.back()">Annulla operazione</a>
			</div>
		</h:form>

	</f:view>
</body>
</html>
