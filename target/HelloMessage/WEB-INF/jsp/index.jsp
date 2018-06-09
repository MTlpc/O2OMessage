<%@page language="java" contentType="text/html; utf-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>店铺管理系统</title>

    <!-- Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                店铺管理系统
            </h3>
            <table class="table">
                <thead>
                <tr>
                    <th>
                        编号
                    </th>
                    <th>
                        店铺名
                    </th>
                    <th>
                        描述
                    </th>
                    <th>
                        地址
                    </th>
                    <th>
                        联系方式
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${list}" var="message" varStatus="status">
                    <tr <c:if test="${status.index % 2 != 0}" >class="success"</c:if> >
                        <td>
                            ${status.index + 1 }
                        </td>
                        <td>
                            ${message.shopName}
                        </td>
                        <td>
                            ${message.shopDesc}
                        </td>
                        <td>
                            ${message.shopAddr}
                        </td>
                        <td>
                            ${message.phone}
                        </td>
                        <td>
                            <a href="/superadmin/update?id=${message.getShopId()}">通过审核</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
