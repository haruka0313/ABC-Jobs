<jsp:include page="../../header.jsp">
    <jsp:param value="Dashboard" name="HTMLtitle" />
</jsp:include>

<div class="container">
  <div class="row" style="margin-top:50px;">
    <div class="col-md-3">
      <div class="d-flex flex-column border rounded-3 pb-4">
        <a href="profile" class="text-decoration-none">
          <div class="border p-0 rounded-3 border-5">
            <div class="fs-1 d-flex align-items-center justify-content-center bg-primary text-white" style="height: 25vh;">
              <span>${f}</span>
              <span>${l}</span>
            </div>
          </div>
        </a>
        <div class="px-4 py-3">
          <h2>${fullName}</h2>
          <p>${title}</p>
        </div>
        <button class="btn btn-outline-success mx-4">Create a post</button>
      </div>
    </div>

    <!-- post -->
    <div class="col-md-6">
      <div class="d-flex gap-3 p-3 mb-3 border rounded-3 shadow-sm">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="my-posts" checked>
          <label class="form-check-label" for="my-posts">
            My posts
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="show-all">
          <label class="form-check-label" for="show-all">
            Show all
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="show-jobs">
          <label class="form-check-label" for="show-jobs">
            Show Jobs
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="saved-posts">
          <label class="form-check-label" for="saved-posts">
            Saved posts
          </label>
        </div>
      </div>

      <div class="border rounded-3 mb-3 px-3" id="post1">
        <div class="d-flex align-items-center gap-2 py-3">
          <span class="px-3 py-2 rounded-circle border">J</span>
          <a href="" class="text-decoration-none fs-5">Joe</a>
          <small class="ms-auto">15 hours ago</small>
        </div>

        <!-- content -->
        <div class="">
          <p class="fw-bold fs-4">What is the best game?</p>
        </div>

        <div class="d-flex align-items-center gap-2 py-3">
	        <button type="button" class="btn btn-outline-secondary d-flex align-items-center gap-2" onclick="likePost()">
 	 <i class="bx bxs-heart"></i> Like
	</button>
          <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary">
            <i class='bx bx-message-square-dots'></i> Comments
          </a>
          <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary">
			<i class='bx bx-share'></i> Share
			</a>
			</div>
			</div>


  <div class="border rounded-3 mb-3 px-3" id="post2">
    <div class="d-flex align-items-center gap-2 py-3">
      <span class="px-3 py-2 rounded-circle border">M</span>
      <a href="" class="text-decoration-none fs-5">Mary</a>
      <small class="ms-auto">2 days ago</small>
    </div>

    <!-- content -->
    <div>
      <p class="fw-bold fs-4">What are some good books to read?</p>
    </div>

    <div class="d-flex align-items-center gap-2 py-3">
      <button type="button" class="btn btn-outline-secondary d-flex align-items-center gap-2" onclick="likePost()">
  <i class="bx bxs-heart"></i> Like
</button>


      <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary">
        <i class='bx bx-message-square-dots'></i> Comments
      </a>
      <a href="" class="d-flex align-items-center gap-2 btn btn-outline-secondary">
        <i class='bx bx-share'></i> Share
      </a>
    </div>
  </div>
</div>

 <!-- notification & create post -->
    <div class="col-md-3">
      <div class="py-3 px-4 rounded-3 border">

        <div class="border-bottom mb-3">
          <h4 class="fs-4">${nf1.getEmailSubject()}</h4>
          <p>Check your email</p>
        </div>

        <div class="border-bottom mb-3">
          <h4 class="fs-4">${nf2.getEmailSubject()}</h4>
          <p>Check your email</p>
        </div>
        
        <div class="border-bottom mb-3">
          <h4 class="fs-4">${nf3.getEmailSubject()}</h4>
          <p>Check your email</p>
        </div>

        <div class="text-center">
          <a href="" class="btn btn-primary">See all notifications</a>
        </div>
      </div>
    </div>
  </div>
</div>


<hr>
<jsp:include page="../../footer.jsp"></jsp:include>


