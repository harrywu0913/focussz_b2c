<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/sticky-footer.css"  type="text/css">
<%
String style = request.getParameter("style");
if(StringUtils.isBlank(style)){
	style = SystemManager.systemSetting.getStyle();
}
%>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/bootstrap3.0.0/css/<%=style %>/bootstrap.min.css"  type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/bootstrap3.0.0/css/docs.css"  type="text/css">
<%
System.out.println("SystemManager.systemSetting.getOpenResponsive()="+SystemManager.systemSetting.getOpenResponsive());

Object responsive_session = request.getSession().getAttribute("responsive");
boolean non_responsive = true;
if(responsive_session!=null){
	if(responsive_session.toString().equals("y")){
		non_responsive = false;
	}
}else{
	if(SystemManager.systemSetting.getOpenResponsive().equals("n")){
		non_responsive = true;
	}else{
		non_responsive = false;
	}
}
if(non_responsive){
%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/bootstrap3.0.0/css/non-responsive.css"  type="text/css">
<%} %> --%>