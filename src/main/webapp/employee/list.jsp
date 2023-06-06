<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 06/06/2023
  Time: 7:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách nhân viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container" style="padding: 20px 0px">
    <div class="row">
        <div class="col-md-10">
            <h1>
                Danh sách nhân viên
            </h1>
        </div>
        <div class="col-md-2">
            <a href="employee-servlet?action=new" class="btn btn-primary">
                Thêm nhân viên
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col" class="text-center">ID</th>
                    <th scope="col" class="text-center">Tên</th>
                    <th scope="col" class="text-center">Ngày sinh</th>
                    <th scope="col" class="text-center">Địa chỉ</th>
                    <th scope="col" class="text-center">Vị trí</th>
                    <th scope="col" class="text-center">Phòng ban</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${not empty employees}">
                        <c:forEach items="${employees}" var="employee" varStatus="loop">
                            <tr>
                                <th class="text-center">${employee.id}</th>
                                <th class="text-center">${employee.name}</th>
                                <th class="text-center">${employee.birth}</th>
                                <th class="text-center">${employee.address}</th>
                                <th class="text-center">${employee.position}</th>
                                <th class="text-center">${employee.department}</th>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="6">Danh sách nhân viên trống</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
