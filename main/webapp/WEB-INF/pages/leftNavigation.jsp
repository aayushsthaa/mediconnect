<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/leftNavigation.css" />
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    />
</head>
<body>
<div class="container">
        <div class="sidebar">
          <div class="profile-section">
            <img src="${pageContext.request.contextPath}/images/profile.jpg" alt="Profile Picture" />
            <p class="profile-name">Admin Name</p>
          </div>
  
          <ul class="nav-list">
            <li>
              <button class="dropdown-btn">
                <div class="btn-flex">
                  <span><i class="fa-solid fa-house"></i></span> Dashboard
                </div>
              </button>
              <ul class="dropdown-content">
                <li><a href="#">Overview</a></li>
                <li><a href="#">Stats</a></li>
              </ul>
            </li>
          
            <li>
              <button class="dropdown-btn">
                <div class="btn-flex">
                  <span><i class="fa-solid fa-user-doctor"></i></span> Doctors
                </div>
              </button>
              <ul class="dropdown-content">
                <li><a href="#">All Doctors</a></li>
                <li><a href="#">Add Doctor</a></li>
              </ul>
            </li>
          
            <li>
              <button class="dropdown-btn">
                <div class="btn-flex">
                  <span><i class="fa-solid fa-hospital-user"></i></span> Patients
                </div>
              </button>
              <ul class="dropdown-content">
                <li><a href="#">All Patients</a></li>
                <li><a href="#">Add Patient</a></li>
              </ul>
            </li>
          
            <li>
              <button class="dropdown-btn">
                <div class="btn-flex">
                  <span><i class="fa-solid fa-user-nurse"></i></span> Staff
                </div>
              </button>
              <ul class="dropdown-content">
                <li><a href="#">All Staff</a></li>
                <li><a href="#">Add Staff</a></li>
              </ul>
            </li>
          
            <li>
              <button class="dropdown-btn">
                <div class="btn-flex">
                  <span><i class="fa-solid fa-bookmark"></i></span> Bookings
                </div>
              </button>
              <ul class="dropdown-content">
                <li><a href="#">View Appointments</a></li>
                <li><a href="#">History</a></li>
              </ul>
            </li>
          
            <li>
              <button class="dropdown-btn">
                <div class="btn-flex">
                  <span><i class="fa-solid fa-clipboard"></i></span> Reports
                </div>
              </button>
              <ul class="dropdown-content">
                <li><a href="#">Generate</a></li>
                <li><a href="#">View</a></li>
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