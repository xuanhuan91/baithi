<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 06/06/2023
  Time: 7:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tạo mới nhân viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
</head>
<body>
<form action="employee-servlet" method="POST" style="padding: 20px 0px">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    Tên: <input class="form-control" type="text" name="name">
                </div>
                <div class="form-group">
                    Ngày sinh: <input class="form-control" type="text" name="birth">
                </div>
                <div class="form-group">
                    Địa chỉ: <input class="form-control" type="text" name="address">
                </div>
                <div class="form-group">
                    Vị trí: <input class="form-control" type="text" name="position">
                </div>
                <div class="form-group">
                    Phòng ban: <input class="form-control" type="text" name="department">
                </div>
                <div class="form-group text-center" style="margin-top: 20px;">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
