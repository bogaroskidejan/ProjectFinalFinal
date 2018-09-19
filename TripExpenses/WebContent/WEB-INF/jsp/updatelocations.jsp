<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <!-- Required meta tags -->
        <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/assets/money_euro.png" />
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
					<script src="${pageContext.request.contextPath}/static/alertify.js-0.3.11/lib/alertify.min.js"></script>
                    <!-- include the core styles -->
                    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/alertify.js-0.3.11/themes/alertify.core.css" />
                    <!-- include a theme, can be included into the core instead of 2 separate files -->
                    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/alertify.js-0.3.11/themes/alertify.default.css" />
                    <!-- Optional JavaScript -->
                    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


                    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
                    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
                    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
                 
                        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    
                            <script>
                                $(document).ready(function() {

                                $("#Add").click(function(event) {
                                $(".col-xl-12").hide();
                                $("#formica").show();
                                }   );
                                
                                $("#Update").click(function(event) {
                                    $(".col-xl-12").hide();
                                    $("#formica1").show();
                                    }   );

                                $('#example').DataTable({
                                "pageLength": 5
                                });
            
                                setTimeout(function(){
                                $("#divic").fadeIn(200);
                                },200);
                                } );
                            </script>
    
                            <title>Travel Expenses</title>
                            <style>
                                body {
                                background: url("${pageContext.request.contextPath}/static/assets/background2.jpg") no-repeat center center fixed;
                                /* Center and scale the image nicely */
                                background-size: cover;        
                                }
                                .col-xl-12 {
                                padding: 0 2%;
                                align-content: center;
                                align-items: center;
                                align-self: center;
                                }
                                #login {
                                background-image: linear-gradient(to bottom, rgba(170, 170, 170, 1),rgba(170, 170, 170, 1),rgba(99,123,131,0.3));
                                border-radius: 30px;
                                width: 100%;
                                z-index: 20;
                                top: 0; bottom: 0; left: 0; right: 0;
                                margin: auto;
                                text-align: center;
                                padding: 20px;
                                border: 3px solid #ffffffc9;
                                display: none;
                                }
                                
                                #p1 {
		                        font-family: roboto;
		                        font-size: 30px;
		                        font-style: italic;
		                        font-weight: bold;
		                        color: rgba(247, 247, 247, 0.74);
		                        }
		                        label {
		                        font-weight: bold;
		                        color: white;
		                        padding: 10px 0 0 10px;
		                        }
                                .navbar-brand {
                                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                                }
                                #foot { 
                                position: fixed;
                                bottom: 0;
                                right: 0;
                                color: #000000;
                                text-align: right;
                                margin-right: 5px;
                                width:100%;
                                }
                                .nav-item {
                                margin-left: 5px;
                                margin-right: 5px;
                                font-size: 1em;
                                }
                                .nav-item.active {
                                font-weight: bold;
                                background-color:#ecececc9;
                                border-radius: 50px;
                                border: 1px solid #d8d8d8c5;
                                }
								.dataTables_length{
                                display: none;
                                }
                                #divic{
                                background-image: linear-gradient(to bottom, rgba(170, 170, 170, 1),rgba(170, 170, 170, 0.5),rgba(99,123,131,0.3));
                                margin-top: 2%;
                                align-content: center;
                                align-items: center;
                                align-self: center;
                                border-radius: 30px;
                                display: none;
                                }

                                .row{
                                
                                }
                                .dataTables_length{

                                }
                                .container-fluid{
                                }
        
                                #formica1{
                                background-image: linear-gradient(to bottom, rgba(170, 170, 170, 1),rgba(170, 170, 170, 1),rgba(99,123,131,0.3));
                                border-radius: 30px;
                                width: 70%;
                                z-index: 20;
                                top: 0; bottom: 0; left: 0; right: 0;
                                margin: auto;
                                margin-top: 2%;
                                text-align: center;
                                padding: 20px;
                                border: 3px solid #ffffffc9;
                                }
                                #Add{
                                margin-left: 6%;
                                margin-top: 0.7%;
                                position: absolute;
                                z-index: 1;
                                }
                                #lg { 
                                 	font-size: 0.75em;
                                 }
                                 .error {
                                 color: red;
                                 }
                            </style>
                            <script lang="JavaScript">
                            function validateForma() {
                                if (document.getElementById('inputLocName').value == "") {
                                    alertify.alert("All fields must be filled!");
                                    document.getElementById('inputLocName').focus();
                                    return false;
                                } else if (document.getElementById('inputCountry').value == "") {
                                    alertify.alert("All fields must be filled!");
                                    document.getElementById('inputCountry').focus();
                                    return false;
                                } else if (document.getElementById('inputDailyAllowance').value == "") {
                                    alertify.alert("All fields must be filled!");
                                    document.getElementById('inputDailyAllowance').focus();
                                    return false;
                                } else if (document.getElementById('inputLocDistance').value == "") {
                                    alertify.alert("All fields must be filled!");
                                    document.getElementById('inputLocDistance').focus();
                                    return false;
                                } else if (check_locname() && check_country() && check_allowance() && check_distance()) {
                                    return true;
                                } else {
                                    return false;
                                }  
                            }
                            function check_locname() {
                                var regExLocName =  /^[A-Z][a-z]+(\s[A-Z][a-z]+)*$/;
                                if(!regExLocName.test(document.getElementById('inputLocName').value)) {
                                    error.innerHTML = "Name should only contain letters!";
                                    return false;
                                } else {
                                    document.getElementById('error').innerHTML = "";
                                    return true;
                                };
                            }
                            function check_country() {
                                var regExLocName =  /^[A-Z][a-z]+(\s[A-Z][a-z]+)*$/;
                                if(!regExLocName.test(document.getElementById('inputCountry').value)) {
                                    error1.innerHTML = "Name should only contain letters!";
                                    return false;
                                } else {
                                    document.getElementById('error1').innerHTML = "";
                                    return true;
                                };
                            }
                            function check_allowance() {
                                var regExLocName = /^[0-9]{1,8}$/;
                                if(!regExLocName.test(document.getElementById('inputDailyAllowance').value)) {
                                    error2.innerHTML = "Name should only contain numbers!";
                                    return false;
                                } else {
                                    document.getElementById('error2').innerHTML = "";
                                    return true;
                                };
                            }
                            function check_distance() {
                                var regExLocName = /^[0-9]{1,4}$/;
                                if(!regExLocName.test(document.getElementById('inputLocDistance').value)) {
                                    error3.innerHTML = "Name should only contain numbers!";
                                    return false;
                                } else {
                                    document.getElementById('error3').innerHTML = "";
                                    return true;
                                };
                            }
                            </script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffffffc9;">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                <img src="${pageContext.request.contextPath}/static/assets/money.ico" width="50" height="50" alt="">
                    Engineering Travel Expenses
            </a>
      
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                     
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/employees">Employees</a>
                    </li>
                    <li class="nav-item active">
                        <a id="act" class="nav-link" href="#">Locations <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/businesstrips">Business Trips</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/bills">Bills</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/tripbills">Trip Bills</a>
                    </li>
					<sec:authorize access="hasAuthority('admin')">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/users">Admin Page</a>
                    </li>
                    </sec:authorize>
                </ul>
                <sec:authorize access="!isAuthenticated()">
					<c:url var="loginUrl" value="login" />
					<form class="form-inline my-2 my-lg-0" action="${loginUrl}" method="post">
					<input type="submit" class="btn btn-outline-primary my-2 my-sm-0"   value="log In">
				                  
				                         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"> 
				                </form>
				</sec:authorize>
                <sec:authorize access="isAuthenticated()">
					<c:url var="logoutUrl" value="logout" />
					<form class="form-inline my-2 my-lg-0" action="${logoutUrl}" method="post">
					<input id="lg" type="submit" class="btn btn-outline-primary my-2 my-sm-0"   value="Sign Out <security:authentication property="principal.username" />">
				                   
				                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"> 
					</form>
				</sec:authorize>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <form id="formica1" action="${pageContext.request.contextPath}/doupdatelocation" method="post" onsubmit="return validateForma();">
					<input name="locid" type="hidden"  value="${location.locid}" />
                    <div class="form-group row">
                        <label for="inputLocName" class="col-sm-5 col-form-label">Name: </label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="inputLocName" name="locname" value="${location.locname}" onblur="check_locname();">
                            <div class="error" id="error"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputCountry" class="col-sm-5 col-form-label">Country: </label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="inputCountry" name="loccountry" value="${location.loccountry}" onblur="check_country();">
                        	<div class="error" id="error1"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputDailyAllowance" class="col-sm-5 col-form-label">Daily allowance: </label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="inputDailyAllowance" name="locdailyallowance" value="${location.locdailyallowance}" onblur="check_allowance();">
                        	<div class="error" id="error2"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputLocDistance" class="col-sm-5 col-form-label">Location distance: </label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="inputLocDistance" name="locdistance" value="${location.locdistance}" onblur="check_distance();">
                       		<div class="error" id="error3"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12">
                            <br/>
                            <button class="btn btn-success" type="submit" id="submit">Update</button>
                            <input type="reset" class="btn btn-danger" value="Reset" />
                        </div>
                    </div>        
                </form>
            
            </div>
            <footer id="foot">
                <p>
                    Engineering Software Lab® Copyright©2018
                </p>
            </footer>
        </div>
    </body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update location</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/doupdatelocation" method="post">
	<table class="formtable">
	

		<input name="locid" type="hidden"  value="${location.locid}" /> 

		<tr>
			<td class="label">Name: </td>
			<td class="control">
			<input  class="control" name="locname" value="${location.locname}" />
			</td>
			
			
		</tr>
		<tr>
			<td class="label">Country: </td>
			<td class="control">
			<input    name="loccountry"  value="${location.loccountry}" />
			</td>
		</tr>
		<tr>
			<td class="label">Daily allowance: </td>
			<td class="control">
			<input name="locdailyallowance" value="${location.locdailyallowance}" />
			</td>
		</tr>
		<tr>
			<td class="label">Loc distance: </td>
			<td class="control">
			<input name="locdistance"  value="${location.locdistance}" />
			</td>
		</tr>
		<tr>
			<td class="label"></td>
			<td class="control"><input type="submit" value="Update location"></td>
		</tr>
		 
	</table>
	<!-- <input name="${_csrf.paramaterName }" type="hidden" value="${_csrf.token}}" /> -->
	
</form>
</body>
</html> --%>