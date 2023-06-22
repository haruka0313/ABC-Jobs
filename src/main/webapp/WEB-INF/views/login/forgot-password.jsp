<jsp:include page="../../header.jsp">
    <jsp:param value="Forgot Password" name="HTMLtitle" />
</jsp:include>

<div class="container mb-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card mt-5">
                <div class="card-body">
                    <h2 class="card-title text-dark text-center">Reset your password</h2>
                    <p class="card-text">Enter your email and we'll send you a link to reset your password</p>
                    <div class="alert alert-danger ${message == null ? "d-none" : "d-block"}" role="alert">
                        ${message}
                    </div>
                    <form action="forgot-password" method="post">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="emailAddress" required>
                            <label for="floatingInput">Email address</label>
                            <div class="invalid-feedback">
                                Email address should be have @ and .
                            </div>
                        </div>
                        <div class="d-flex justify-content-center">
            <button type="submit" class="btn btn-block btn-primary">Reset your password</button>
       					 </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<hr>
<jsp:include page="../../footer.jsp"></jsp:include>
