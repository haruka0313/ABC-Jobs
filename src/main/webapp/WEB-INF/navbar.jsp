<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm border">
  <div class="container-fluid">
    <a class="navbar-brand fs-3 fw-bold" href="home"><span class="text-primary">ABC</span> Jobs.</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbar">
      <form action="<%= request.getContextPath() %>/search" method="get" class="w-100 mt-3">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search someone..." name="q" autocomplete="off" data-bs-toggle="popover" data-bs-trigger="focus" data-bs-title="Tips" data-bs-content="Press enter to continue">
        </div>
      </form>
      <ul class="navbar-nav ms-auto d-flex align-items-center gap-2 mt-3 mb-0">
        <% if( (Boolean) session.getAttribute("isLogin") != null) { %>
        <li class="nav-item">
          <a href="<%= request.getContextPath() %>/logout" class="btn btn-danger">Logout</a>
        </li>
        <% } else { %>
        <li class="nav-item">
          <a href="<%= request.getContextPath() %>/login" class="btn btn-outline-primary">Login</a>
        </li>
        <li class="nav-item">
          <a href="<%= request.getContextPath() %>/registration" class="btn btn-primary">Register</a>
        </li>
        <% } %>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Menu
          </a>
          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
            <li>
              <a class="dropdown-item" href="<%= request.getContextPath() %>/home">Home</a>
            </li>
            <li>
              <a class="dropdown-item" href="<%= request.getContextPath() %>/search">Search</a>
            </li>
            <% if((Boolean) session.getAttribute("isLogin") != null) { %>
            <li>
              <a class="dropdown-item" href="<%= request.getContextPath() %>/dashboard">Dashboard</a>
            </li>
            <% } %>
           <% if((Boolean) session.getAttribute("isLogin") != null && session.getAttribute("roleId") != null && session.getAttribute("roleId").toString().equals("1")) { %>
            <li>
              <a class="dropdown-item" href="<%= request.getContextPath() %>/admin">Admin</a>
            </li>
            <% } %>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
