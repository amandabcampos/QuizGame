<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Menu</title>
<%@ include file="partials/style-tags.jsp"%>
</head>
<body>


	<ul
		class="nav nav-pills justify-content-end navbar navbar-light bg-light">
		<li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
	</ul>

	<%-- 	<h1>Welcome to Conquests and Cats, ${name}</h1>
	<p>You have ${numCards} cards in your collection</p> --%>

	<div class="container">
	<!-- <div class="card" style="width: 30rem;"> -->
	<div class="card"">
		<div class="card-body">
			<h5 class="card-title">Welcome, ${name} Kitty</h5>
			<h6 class="card-subtitle mb-2 text-muted"
				style="text-align: center; font-family: Courier, monospace;">Cards
				Collected: ${numCards}</h6>
			<br />

			<form action="/play-map">
				<c:if test="${!maps.equals(null)}">

					<div class="form-group">
						<h6 class="card-subtitle mb-2 text-muted"
							style="text-align: center; font-family: Courier, monospace;">Your
							Maps:</h6>
						<select multiple class="form-control"
							id="exampleFormControlSelect2" name="mapId">
							<c:forEach items="${maps}" var="map">
								<option value="${map.id}">${map.name}</option>
							</c:forEach>
						</select> <input type="hidden" value="${userId}" name="userId" /> <br />
						<div style="text-align: center;">
							<button type="submit" class="user-submit">Play Map</button>

						</div>

					</div>
				</c:if>
			</form>
			<br />
			
			
						<%-- 
					<select name="mapId">
						<c:forEach items="${maps}" var="map">
							<option value="${map.id}">${map.name}</option>
						</c:forEach>
					</select>
					<input type="hidden" value="${userId}" name="userId" />
					<button type="submit">Play Map</button>
				</c:if>
			</form> --%>
			
			
			
			

			<form action="/create">
			
				<input type="hidden" name="userId" value="${userId}" />
				<div style="text-align: center;">
				<button type="submit" class="user-submit">Create Map</button>
				</div>
			</form>
			
			
<%-- 			<h4>Or would you like to edit a map?</h4>
				<form method="post" action="/create">
					<select name="mapId">
						<c:forEach var="map" items="${maps}">
							<option value="${map.id}">${map.name}</option>
						</c:forEach>
					</select> <input type="hidden" value="${userId}" name="userId" />

					<button type="submit" class="btn btn-secondary">submit</button>
				</form> --%>
			
			
			
			
			
			
			

		</div>
	</div>
	</div>






	<!-- LOGIN AND SIGN UP HAVEN'T BEEN FULLY IMPLEMENTED YET -->

	<%-- 	<h5>Cards you have collected</h5>
	<select>
			<c:forEach items="${items}" var="item">
				<option >${item.cardName}</option>
			</c:forEach>
	</select> --%>


<footer class="navbar-light bg-light" style="position: absolute;
  bottom: 0;
  width: 100%;">
  <p>� 2020 Copyright</p>
  <p style="line-height: 0.2;">Application by:</p>
  <p style="margin-bottom:0;"><a href="https://github.com/amandabcampos" target="_blank">Amanda Campos</a> | 
  <a href="https://github.com/James-Buttercheese" target="_blank">James McDowell</a> | 
  <a href="https://github.com/jlcenters" target="_blank">Jillian Centers</a></p>
</footer>





</body>
</html>