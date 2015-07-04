<%@page import="com.borneo.framework.common.utils.StringUtils"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<%
	StringBuffer sb = new StringBuffer(request.getContextPath());
	sb.append("/login.jsp");	
	if(StringUtils.isNotBlank(request.getParameter("error"))) {
	    sb.append("?error=").append(request.getParameter("error"));
	}
	response.sendRedirect(sb.toString());
%>


