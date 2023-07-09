# ABC-Jobs-Portal
Web application works similar to Linkedin that allows user find a job and apply for job
oppurtunities. User can register and login to the website, search another user,
edit profile, and change password. The
application also includes administration that has authority to manage the
user data and also sending bulk email with email sender.


## Project Overview
There are 2 types of users in this Community portal. They are
1. Software Programmer
2. Administrator

Software Programmer can perform following functions in the portal
1. Login and Register in to the portal
2. Search & Find Other Programmers after login and view their profile.
3. Change password retrieval functionality.
4. Update their Profile after logging in.



Administrator can perform following functions in the portal
1. Administer user data.
2. Send bulk email inviting programmers to register on the community portal

## Technologies Used & System Requirements
Backend  : Java SE 17, MySQL 8, Spring MVC <br/>
Frontend : JSP, JavaScript, CSS, Bootstrap <br/>
Server   : Apache Tomcat 9.0 <br/>
IDE      : Eclipse IDE JEE 2022

## HOW TO RUN
1. **Import Existing Project into Eclipse IDE** <br/>
2. **Create MySQL database**
```bash
mysql> create database abc_jobs
```
3. **Configure persistence.xml for Database Username and Password**
```xml
<persistence-unit name="abcjob">
  <properties>
    <property name="javax.persistence.jdbc.url" value="jdbc:mysql://localhost:3306/abc_jobs" />
    <property name="javax.persistence.jdbc.user" value="<YOUR_DB_USERNAME>" />
    <property name="javax.persistence.jdbc.password" value="<YOUR_DB_PASSWORD>" />
    <property name="javax.persistence.jdbc.driver" value="com.mysql.jdbc.Driver" />
    <property name="hibernate.show_sql" value="true" />
    <property name="hibernate.format_sql" value="true" />
  </properties>
</persistence-unit>
```
4. **Run application on Tomcat Server 9.0**

## Screenshot
<p>Home Page</p>
<img src="./images/homepage.png" alt="home_page" width="50%"/>
<p>Register</p>
<img src="./images/register.png" alt="register" width="50%"/>
<p>Login</p>
<img src="./images/login.png" alt="login" width="50%"/>
<p>Dashboard</p>
<img src="./images/dashboard.png" alt="search" width="50%"/>
<p>Profile page</p>
<img src="./images/profile.png" alt="profile" width="50%"/>
<p>Edit Profile page</p>
<img src="./images/edit-profile.png" alt="profile" width="50%"/>
<p>Search User</p>
<img src="./images/search-user.png" alt="search" width="50%"/>
<p>Admin Pages</p>
<p>Admin Dashboard</p>
<img src="./images/admin-dashboard.png" alt="admin" width="50%"/>
<p>User Management</p>
<img src="./images/user-management.png" alt="admin" width="50%"/>
<p>Send Bulk Email</p>
<img src="./images/send-bulk-email.png" alt="admin" width="50%"/>
