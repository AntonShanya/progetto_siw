<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap.css" rel="stylesheet" type="text/css"></link>
<title>New Provider</title>
</head>
<body
	style="font-family: georgia; margin-top: 30px; margin-left: 40px; margin-right: 40px">
	<f:view>
		<h:form>
			<table>
				<tr >
					<td class="col-sm-3">Nome:</td>
					<td><h:inputText value="#{providerController.name}"
							styleClass="form-control" required="true"
							requiredMessage=" Name is mandatory" id="name" /></td>
					<td><strong><h:message for="name" /></strong></td>
				</tr>
				<tr>
					<td class="col-sm-3">Telefono:</td>
					<td><h:inputText value="#{providerController.phoneNumber}"
							styleClass="form-control" required="true"
							requiredMessage=" PhoneNumber is mandatory" id="phoneNumber" /></td>
					<td><strong><h:message for="phoneNumber" /></strong></td>
				</tr>
				<tr>
					<td class="col-sm-3">Email:</td>
					<td><h:inputText value="#{providerController.email}"
							styleClass="form-control" required="true"
							requiredMessage=" Email is mandatory" id="email" /></td>
					<td><strong><h:message for="email" /></strong></td>
				</tr>
				<tr>
					<td class="col-sm-3">Partita IVA:</td>
					<td><h:inputTextarea value="#{ providerController.vatid}"
							styleClass="form-control" required="true"
							requiredMessage=" VatID is mandatory" id="vatid" /></td>
					<td><strong><h:message for="vatid" /></strong></td>
				</tr>
				<tr>
					<td class="col-sm-3">Citt�:</td>
					<td><h:inputText value="#{providerController.city}"
							styleClass="form-control" required="true"
							requiredMessage="city is mandatory" id="city" /></td>
					<td><strong><h:message for="city" /></strong></td>
				</tr>
				<tr>
					<td class="col-sm-3">Via:</td>
					<td><h:inputText value="#{providerController.street}"
							styleClass="form-control" required="true"
							requiredMessage="street is mandatory" id="street" /></td>
					<td><strong><h:message for="street" /></strong></td>
				</tr>

				<tr>
					<td class="col-sm-3">CAP:</td>
					<td><h:inputText value="#{providerController.zipcode}"
							styleClass="form-control" required="true"
							requiredMessage="zipcode is mandatory" id="zipcode" /></td>
					<td><strong><h:message for="zipcode" /></strong></td>
				</tr>

				<tr>
					<td class="col-sm-3">Paese:</td>
					<td><h:inputText value="#{providerController.country}"
							styleClass="form-control" required="true"
							requiredMessage="country is mandatory" id="country" /></td>
					<td><strong><h:message for="country" /></strong></td>
				</tr>

				<tr>
					<td class="col-sm-3">Stato:</td>
					<td><h:inputText value="#{providerController.state}"
							styleClass="form-control" required="true"
							requiredMessage="state is mandatory" id="state" /></td>
					<td><strong><h:message for="state" /></strong></td>
				</tr>

			</table>
			<br>
			<div>
				<h:commandButton value="Conferma" styleClass="btn btn-warning"
					action="#{providerController.createProvider()}">
					<f:param name="idProduct" value="#{productController.id}" />
				</h:commandButton>
				<a href="javascript:history.back()">Annulla operazione</a>
			</div>
		</h:form>

	</f:view>
</body>
</html>