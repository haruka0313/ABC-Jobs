<jsp:include page="../../header.jsp">
    <jsp:param value="Thank You !" name="HTMLtitle" />
</jsp:include>

<div class="container my-5">
    <div class="text-center">
        <img src="images/thankyou.png" alt="Thank You Image" class="img-fluid" style="max-width: 350px;">
    </div>
    <div class="container">
        <h1 class="text-center my-4">Thank You !</h1>
        <p class="text-center lead">Thank you <span class="fw-bold">${email}</span> for your registration. A little more and you're good to go.</p>
        <div class="d-flex justify-content-center">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ver">
                Get Confirmation Link
            </button>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade text-center" id="ver" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <i class='bx bxs-envelope fs-2'></i>
                <h2>Successful</h2>
                <p>The link has been sent it to your email</p>
                <a href="verified" class="btn btn-secondary">Continue</a>
            </div>
        </div>
    </div>
</div>

<hr>
<jsp:include page="../../footer.jsp"></jsp:include>
