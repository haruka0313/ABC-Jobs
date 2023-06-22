<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
  <jsp:param value="Reset" name="HTMLtitle" />
</jsp:include>

<div class="container mb-5">
  <div class="row justify-content-center mt-5">
    <div class="col-lg-6 col-md-8 col-sm-10">
      <h1 class="text-center mb-4">Reset your password</h1>
      <form:form action="reset" method="post">
        <div class="mb-3">
          <label for="password" class="form-label">New Password</label>
          <input type="password" class="form-control" id="password" name="password" required>
          <div class="invalid-feedback">
            Password required & must be match
          </div>
        </div>
        <div class="mb-3">
          <label for="passwordConfirmation" class="form-label">New Password Confirmation</label>
          <input type="password" class="form-control" id="passwordConfirmation" name="passwordConfirmation" required>
          <div class="invalid-feedback">
            Password required & must be match
          </div>
        </div>
        <div class="d-grid gap-2">
          <button type="submit" class="btn btn-primary">Update Password</button>
        </div>
      </form:form>
    </div>
  </div>
</div>
<hr>
<jsp:include page="../../footer.jsp"></jsp:include>
