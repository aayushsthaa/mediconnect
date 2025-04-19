<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/CustomerLeftsideNavigation.css"/>
<title>Insert title here</title>
</head>
<body>
<div class="container">
      <div class="sidebar">
        <div class="profile-section">
          <img src="${pageContext.request.contextPath}/images/profile.jpg" alt="Profile Picture" />
          <p class="profile-name">Customer Name</p>
        </div>

        <ul class="nav-list">
          <li>
            <button class="dropdown-btn">
              <div class="btn-flex">
                <span><i class="fa-solid fa-house"></i></span> Dashboard
              </div>
            </button>
          </li>

          <li>
            <button class="dropdown-btn">
              <div class="btn-flex">
                <span><i class="fa-solid fa-user-doctor"></i></span> Book an
                Appointment
              </div>
            </button>
          </li>

          <li>
            <button class="dropdown-btn">
              <div class="btn-flex">
                <span><i class="fa-solid fa-bookmark"></i></span> Bookings
              </div>
            </button>
            <ul class="dropdown-content">
              <li><a href="#">View Appointments</a></li>
              <li><a href="#">Update Appointments</a></li>
            </ul>
          </li>

          <li>
            <button class="dropdown-btn">
              <div class="btn-flex">
                <span><i class="fa-solid fa-gear"></i></span> Account
              </div>
            </button>
            <ul class="dropdown-content">
              <li><a href="#">Profile</a></li>
              <li><a href="#">Settings</a></li>
            </ul>
          </li>
        </ul>
      </div>
      </div>
      <script src="${pageContext.request.contextPath}/js/leftNavAdmin.js"></script>
</body>
</html>