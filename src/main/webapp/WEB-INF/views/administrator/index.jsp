<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Admin Dashboard" name="HTMLtitle" />
</jsp:include>

<div class="container"  style="margin-top: 50px; margin-bottom: 40px;">
  <h1>Welcome back, ${adminName}</h1>
  <div class="container" style="margin-top: 50px; margin-bottom: 40px;">
  <div class="row row-cols-1 row-cols-md-2 g-4">
    <div class="col">
      <div class="card h-100">
        <div class="card-body">
          <h5 class="card-title"><i class="bi bi-envelope-fill me-2"></i>Send Bulk Email</h5>
          <p class="card-text">Send an email to multiple users at once.</p>
          <a href="admin/send-bulk" class="btn btn-outline-primary">Go to Send Bulk Email</a>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card h-100">
        <div class="card-body">
          <h5 class="card-title"><i class="bi bi-people-fill me-2"></i>Show All Users</h5>
          <p class="card-text">View a list of all registered users.</p>
          <a href="admin/all-users" class="btn btn-outline-primary">Go to Show All Users</a>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

<hr>
<jsp:include page="../../footer.jsp"></jsp:include>