<%@ include file="taglibs.jsp"%>
<%
    String contextPath = request.getContextPath();
%>
<link rel="stylesheet" href="<%= contextPath %>/css/bootstrap.min.css">
<%-- <!-- Bootstrap responsive -->
<link rel="stylesheet" href="<%= contextPath %>/css/bootstrap-responsive.min.css"> --%>
<!-- jQuery UI -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/jquery-ui/smoothness/jquery-ui.css">
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
<!-- PageGuide -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/pageguide/pageguide.css">
<!-- Fullcalendar -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/fullcalendar/fullcalendar.css">
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/fullcalendar/fullcalendar.print.css" media="print">
<!-- Tagsinput -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/tagsinput/jquery.tagsinput.css">
<!-- dataTables -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/datatable/TableTools.css">
<!-- chosen -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/chosen/chosen.css">
<!-- multi select -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/multiselect/multi-select.css">
<!-- select2 -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/select2/select2.css">
<!-- multi select -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/multiselect/multi-select.css">
<!-- date & time picker -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/timepicker/bootstrap-timepicker.min.css">
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/datepicker/datepicker.css">
<!-- colorbox -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/colorbox/colorbox.css">
<!-- color picker -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/colorpicker/colorpicker.css">

<!-- icheck -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/icheck/all.css">
<!-- Notify -->
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/gritter/jquery.gritter.css">
<!-- Theme CSS -->
<link rel="stylesheet" href="<%= contextPath %>/css/style.css">
<!-- Color CSS -->
<link rel="stylesheet" href="<%= contextPath %>/css/themes.css">
<link rel="stylesheet" href="<%= contextPath %>/css/plugins/gritter/jquery.gritter.css">

<!-- jQuery -->
<script src="<%= contextPath %>/js/jquery.min.js"></script>

<!-- Nice Scroll -->
<script src="<%= contextPath %>/js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
<!-- jQuery UI -->
<script src="<%= contextPath %>/js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
<script src="<%= contextPath %>/js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
<script src="<%= contextPath %>/js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
<script src="<%= contextPath %>/js/plugins/jquery-ui/jquery.ui.draggable.min.js"></script>
<script src="<%= contextPath %>/js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
<script src="<%= contextPath %>/js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
<script src="<%= contextPath %>/js/plugins/jquery-ui/jquery.ui.position.js"></script>
<%-- <script src="<%= contextPath %>/js/plugins/jquery-ui/jquery.ui.menu.min.js"></script> --%>
<%-- <script src="<%= contextPath %>/js/plugins/jquery-ui/jquery.ui.autocomplete.min.js"></script> --%>
<!-- Touch enable for jquery UI -->
<script src="<%= contextPath %>/js/plugins/touch-punch/jquery.touch-punch.min.js"></script>
<!-- slimScroll -->
<script src="<%= contextPath %>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<!-- Bootstrap -->
<script src="<%= contextPath %>/js/bootstrap.min.js"></script>
<!-- vmap -->
<script src="<%= contextPath %>/js/plugins/vmap/jquery.vmap.min.js"></script>
<script src="<%= contextPath %>/js/plugins/vmap/jquery.vmap.world.js"></script>
<script src="<%= contextPath %>/js/plugins/vmap/jquery.vmap.sampledata.js"></script>
<!-- Bootbox -->
<script src="<%= contextPath %>/js/plugins/bootbox/jquery.bootbox.js"></script>
<!-- Bootbox -->
<script src="<%= contextPath %>/js/plugins/form/jquery.form.min.js"></script>
<!-- Flot -->
<script src="<%= contextPath %>/js/plugins/flot/jquery.flot.min.js"></script>
<script src="<%= contextPath %>/js/plugins/flot/jquery.flot.bar.order.min.js"></script>
<script src="<%= contextPath %>/js/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="<%= contextPath %>/js/plugins/flot/jquery.flot.resize.min.js"></script>
<!-- imagesLoaded -->
<script src="<%= contextPath %>/js/plugins/imagesLoaded/jquery.imagesloaded.min.js"></script>
<!-- PageGuide -->
<script src="<%= contextPath %>/js/plugins/pageguide/jquery.pageguide.js"></script>
<!-- FullCalendar -->
<script src="<%= contextPath %>/js/plugins/fullcalendar/fullcalendar.min.js"></script>
<!-- dataTables -->
<script src="<%= contextPath %>/js/plugins/datatable/jquery.dataTables.min.js"></script>
<script src="<%= contextPath %>/js/plugins/datatable/TableTools.min.js"></script>
<script src="<%= contextPath %>/js/plugins/datatable/ColReorder.min.js"></script>
<script src="<%= contextPath %>/js/plugins/datatable/ColVis.min.js"></script>
<script src="<%= contextPath %>/js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>
<script src="<%= contextPath %>/js/plugins/datatable/jquery.dataTables.grouping.js"></script>
<!-- Chosen -->
<script src="<%= contextPath %>/js/plugins/chosen/chosen.jquery.min.js"></script>
<!-- MultiSelect -->
<script src="<%= contextPath %>/js/plugins/multiselect/jquery.multi-select.js"></script>

<!-- CKEditor -->
<script src="<%= contextPath %>/js/plugins/ckeditor/ckeditor.js"></script>
<!-- Custom file upload -->
<script src="<%= contextPath %>/js/plugins/fileupload/bootstrap-fileupload.min.js"></script>
<script src="<%= contextPath %>/js/plugins/mockjax/jquery.mockjax.js"></script>

<!-- select2 -->
<script src="<%= contextPath %>/js/plugins/select2/select2.min.js"></script>
<!-- icheck -->
<script src="<%= contextPath %>/js/plugins/icheck/jquery.icheck.min.js"></script>
<!-- TagsInput -->
<script src="<%= contextPath %>/js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
<!-- Masked inputs -->
<script src="<%= contextPath %>/js/plugins/maskedinput/jquery.maskedinput.min.js"></script>
<!-- masonry -->
<script src="<%= contextPath %>/js/plugins/masonry/jquery.masonry.min.js"></script>

<!-- date & time picker -->
<script src="<%= contextPath %>/js/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="<%= contextPath %>/js/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- color picker -->
<script src="<%= contextPath %>/js/plugins/colorpicker/bootstrap-colorpicker.js"></script>
<!-- Validation -->
<script src="<%= contextPath %>/js/plugins/validation/jquery.validate.min.js"></script>
<script src="<%= contextPath %>/js/plugins/validation/additional-methods.min.js"></script>
<!-- Theme framework -->
<script src="<%= contextPath %>/js/eakroko.min.js"></script>
<!-- Theme scripts -->
<script src="<%= contextPath %>/js/application.min.js"></script>
<script src="<%= contextPath %>/js/plugins/gritter/jquery.gritter.min.js"></script>

<%-- <!-- Toast Message -->
<link rel="stylesheet" href="<%= contextPath %>/js/plugins/toastmessage/css/jquery.toastmessage.css">
<script src="<%= contextPath %>/js/plugins/toastmessage/jquery.toastmessage.js"></script> --%>

<!--[if lte IE 9]>
<script src="<%= contextPath %>/js/plugins/placeholder/jquery.placeholder.min.js"></script>
<script>
$(document).ready(function() {
$('input, textarea').placeholder();
});
</script>
<![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="<%= contextPath %>/img/favicon.png"<%= contextPath %>/>
<!-- Apple devices Homescreen icon -->
<link rel="apple-touch-icon-precomposed"
      href="<%= contextPath %>/img/apple-touch-icon-precomposed.png"<%= contextPath %>/>

<!-- AjaxAnywhere -->
<script src="<%= contextPath %>/js/aa.js"></script>

<c:set var="localeCode" value="${pageContext.response.locale}" />
<c:choose>
  <c:when test="${localeCode == 'ms_MY' }"> 
    <script src="${ctx}/js/default.validate.message.js"></script>
    <%-- <script src="${ctx}/js/default.dataTable.language.js" ></script>  --%>
  </c:when>
  <c:otherwise>
   
  </c:otherwise>
</c:choose>