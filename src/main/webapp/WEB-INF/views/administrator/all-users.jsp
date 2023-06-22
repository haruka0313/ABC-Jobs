<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="All users" name="HTMLtitle" />
    <jsp:param value="../css/zephyr.css" name="isNested" />
</jsp:include>
 
<div class="container" style="margin-top:50px;margin-bottom:40px;">
<div class="row mb-3">
    <div class="col-6">
      <a href="<%= request.getContextPath() %>/admin" class="btn btn-outline-danger">Back to Admin Panel</a>
    </div>
  </div>
	<table class="table table-hover my-3">
	    <thead>
	      <tr>
	        <th scope="col">#</th>
	        <th scope="col">Full Name</th>
	        <th scope="col">Email</th>
	        <th scope="col">Title</th>
	        <th scope="col">Action</th>
	      </tr>
	    </thead>
	    <tbody>
	    	<% int i = 1; %>
		   	<c:forEach var="user" items="${users}">
	   		  <tr>
		        <th scope="row"><%= i++ %></th>
		        <td>${user.getFirstName()} ${user.getLastName()}</td>
		        <td>${user.getUser().getEmail()}</td>
		        <td>${user.getTitle() == null ? "-" : user.getTitle()}</td>
		        <td>
		          <a href="profile/${user.getUserId()}" class="btn btn-outline-secondary btn-sm"><i class='bx bx-edit'></i></a>
					<a href="delete/${user.getUserId()}" onclick="return confirm('Are you sure you want to delete?')" class="btn btn-outline-danger btn-sm"><i class="bx bx-trash"></i></a>
					<a href="" class="btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#detailModal${user.getUserId()}"><i class='bx bx-detail'></i></a>
		        </td>
		      </tr>
		

				<!-- detail -->
				 <div class="modal fade" id="detailModal${user.getUserId()}" style="z-index: 2000;">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">Detail</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        <ul class="list-group list-group-flush">
				          <li class="list-group-item">
				            <h4>First Name</h4>
				            <p>${user.getFirstName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Last Name</h4>
				            <p>${user.getLastName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Title</h4>
				            <p>${user.getTitle()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>About</h4>
				            <p>${user.getAbout()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Company Name</h4>
				            <p>${user.getCompanyName()}</p>
				          </li>
				          <li class="list-group-item">
				            <h4>Website</h4>
				            <a href="">${user.getWebsite()}</a>
				          </li>
				        </ul>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				      </div>
				    </div>
			  	</div>
			   </div>
		   	</c:forEach>
	    </tbody>
	  </table>
</div>
<hr>
<jsp:include page="../../footer.jsp"></jsp:include>