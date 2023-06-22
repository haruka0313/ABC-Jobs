<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../header.jsp">
    <jsp:param value="Profile" name="HTMLtitle" />
</jsp:include>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="alert alert-success alert-dismissible fade show ${message == null ? "d-none" : "d-flex"}" role="alert">
                ${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>

            <div class="card mb-4">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-auto">
                            <div class="rounded-circle bg-primary bg-gradient d-flex align-items-center justify-content-center" style="width: 100px; height: 100px;">
                                <span class="fs-3 text-white">${f}${l}</span>
                            </div>
                        </div>
                        <div class="col">
                            <h2 class="card-title">${fullName}</h2>
                            <p class="card-text">${title}</p>
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-success" id="follow">Follow</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card mb-4">
                <div class="card-body">
                    <h3 class="card-title">About Me</h3>
                    <hr>
                    <p class="card-text">${about}</p>
                </div>
            </div>

            <div class="card mb-4">
                <div class="card-body">
                    <h3 class="card-title">Experience</h3>
                    <hr>
                    <c:forEach var="e" items="${ex}">
                        <div class="d-flex mb-3">
                            <i class='bx bx-map-pin fs-2 me-3'></i>
                            <div class="flex-grow-1">
                                <h4 class="card-title">${e.getPosition()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                                <p class="card-text">${e.getCompanyName()}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="card mb-4">
                <div class="card-body">
                    <h3 class="card-title">Education</h3>
                    <hr>
                    <c:forEach var="e" items="${ed}">
                        <div class="d-flex mb-3">
                            <i class='bx bx-book fs-2 me-3'></i>
                            <div class="flex-grow-1">
                                <h4 class="card-title">${e.getEducationName()} (${e.getStartDate().split("-")[0]} - ${e.getEndDate().split("-")[0]})</h4>
                                <p class="card-text">${e.getIntitutionName()}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-body">
                    <div class="d-flex mb-3">
                        <i class='bx bx-building fs-2 me-3'></i>
                        <div class="flex-grow-1">
                            <h4 class="card-title">Company</h4>
                            <p class="card-text">${company}</p>
                        </div>
					</div>
                </div>
            </div>

<div class="card mb-4">
    <div class="card-body">
        <h3 class="card-title">Contact Me</h3>
        <hr>
        <div class="card mb-4">
            <div class="card-body">
                <div class="d-flex mb-3">
                    <i class='bx bx-envelope fs-2 me-3'></i>
                    <div class="flex-grow-1">
                        <h4 class="card-title">Email</h4>
                        <p class="card-text">${email}</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="card mb-4">
            <div class="card-body">
                <div class="d-flex mb-3">
                    <i class='bx bx-globe fs-2 me-3'></i>
                    <div class="flex-grow-1">
                        <h4 class="card-title">Website</h4>
                        <p class="card-text">${website}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
<hr>
<script>
	const followBtn = document.querySelector("#follow");
	followBtn.addEventListener("click", () => {
		if(followBtn.innerHTML == "Follow") {
			followBtn.classList.remove("btn-success");
			followBtn.classList.add("btn-outline-success");
			followBtn.innerHTML = "Unfollow";
		} else {
			followBtn.classList.add("btn-success");
			followBtn.classList.remove("btn-outline-success");
			followBtn.innerHTML = "Follow";
		}
	});
</script>
<jsp:include page="../../footer.jsp">
<jsp:param value="true" name="loadJS" />
</jsp:include>