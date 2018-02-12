<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<br><br><br>
<div class="container-wrapper">
    <div class="container" >
        <div class="page-header">
            <h1 class="bg-primary">Product  Page</h1>
            
        <table style="background:#dde4e452;" class="table">
           <thead>
            <tr class="bg-success">
            	
                <td colspan="6"><h1>Details</h1></td>
                
            </tr>
            </thead> 
            <c:forEach items="${products}" var="product">
                <tr>
                    <td width="20%"><img src="<c:url value="/resources/images/${product.productId}.png"  />" width="50%" alt="image"/></td>
                    <td style="color:tomato;font-size:20px;">${product.productName}</td>
                    <td style="color:tomato;font-size:20px;">${product.productCategory}</td>
                    <td style="color:tomato;font-size:20px;">${product.productCondition}</td>
                    <td style="color:tomato;font-size:20px;">${product.productPrice} INR </td>
                    <td style="font-size:20px;">
                        <a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>View</a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-trash"></span>Delete</a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br>
         <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
</div></div></div>
       

<%@ include file="/WEB-INF/views/template/footer.jsp" %>