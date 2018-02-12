
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<br><br><br>
<body>
<div class="container-wrapper">
    <div class="container" style="background:#dde4e452;">
        <div class="page-header">
            <h1>Admin page</h1>

            <p class="lead" style="font-weight:bolder;">Welcome administrator page!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2 style="font-weight:bolder;">
                Welcome: ${pageContext.request.userPrincipal.name} |
                <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
            </h2>

        </c:if>

        <h3 style="font-weight:bolder;">
            <a href="<c:url value="/admin/productInventory" /> ">Product</a>
        </h3>

        <p>Manage Product</p>

        <br/><br/>

        <h3 style="font-weight:bolder;">
            <a href="<c:url value="/admin/customer" /> ">Manage Customer</a> 
        </h3>

        <p>View Customer</p>
        </div>
        </div>
</body>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>