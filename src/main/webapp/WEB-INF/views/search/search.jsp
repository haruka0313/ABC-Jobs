<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Search" name="HTMLtitle" />
</jsp:include>
<div class="container" style="margin-top:50px;margin-bottom:40px;">
    <form action="" method="get" class="mb-4">
    	<h1>Search Other</h1>
    	<input type="text" class="form-control" name="q" placeholder="Search Other" value="<%= request.getParameter("q") != null ? request.getParameter("q") : "" %>">
   	    <div id="searchHelp" class="form-text">Press enter to search</div>
    </form>

    <div>
    	<h1>${notFound == true ? "Not Found" : ""}</h1>
	   	<c:forEach var="s" items="${selected}">
	       <div class="d-flex align-items-center border mb-3 rounded p-5 shadow-sm">
	        <div class="rounded-circle bg-primary bg-gradient d-flex align-items-center justify-content-center" style="width: 100px; height: 100px;">
        <span class="fs-3 text-white">${s.getFirstName().charAt(0)}${s.getLastName().charAt(0)}</span>
    		</div>
	          <div>
				    <h2 style="margin-left: 20px;">${s.getFirstName()} ${s.getLastName()}</h2>
    				<p style="margin-left: 20px;">${s.getTitle()}</p>
				</div>

	           <form action="result" method="post" class="ms-auto">
	           		<input type="hidden" name="uId" value="${s.getUserId()}">
		           	<button type="submit" class="btn btn-outline-info ms-auto">View Profile</button>
			   </form>
	       </div>
     	</c:forEach>
    </div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include>