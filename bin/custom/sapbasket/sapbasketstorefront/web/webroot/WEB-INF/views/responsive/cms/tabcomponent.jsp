<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>

 		<!-- <ul style="list-style-type:none;"> --style="width: 100px; padding:50px;> -->
 		<%-- <table class="custom1">
 		<tr>
			<c:forEach items="${storebannerset}" var="storebanner" varStatus="status">
			<td> 
				<c:if test="${ycommerce:evaluateRestrictions(storebanner)}">
				<div  class="owl-item active" ">
				<div class="innerstore" >
					<c:url value="${storebanner.urlLink}" var="encodedUrl" />
					<a  href="${encodedUrl}"<c:if test="${storebanner.external}"> target="_blank"</c:if>><img src="${storebanner.media.url}" alt="${not empty storebanner.headline ? storebanner.headline : storebanner.media.altText}" title="${not empty storebanner.headline ? storebanner.headline : storebanner.media.altText}"/></a>
					</div>
					</div>
				</c:if>
				</td>
			</c:forEach>
			</tr>
			</table> --%>
			

<div  class="article-container clearfix">
	<div class="tabhead">
		<a href="">${component.title}</a>
		<span class="glyphicon"></span>
	</div>
	<img src="${media.url}" alt="${media.altText}" align="right" class="img-circle" height="200" width="200"/>
	<div class="tabbody">${component.content}</div>
	
</div>

