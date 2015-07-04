<%@ include file="../../common/taglibs.jsp" %>
<script src="${pageContext.request.contextPath}/js/ckeditor.customized.basic.js"></script> 
<form:form class='form-horizontal form-validate' id="inputForm" method="post" action="${ctx}/admin/editorsChoiceApp/save" modelAttribute="editorsChoiceApp">	
		<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message key="EditorsChoiceApp.appInfoId" /></label>
		<div class="col-xs-4">
				<form:select items="${appInfoList}" itemLabel="appName" data-rule-required="true"
                     itemValue="id" path="appInfo.id" cssClass="chosen-select form-control"/>
		</div>
		</div>
		<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message key="EditorsChoiceApp.editorTip" /></label>
		<div class="col-xs-4">
			<div class="box">
				<div class="box-content nopadding">
					<form:textarea path="editorTip" cssClass="ckeditor span12" rows="3" data-rule-required='true' />
				</div>
			</div>
			
		</div>
		</div>
	<div class="form-actions col-sm-offset-2 col-xs-4">
	
		<button type="submit" class="btn btn-primary"><fmt:message key="action.submit" /></button>
		<button type="button" class="btn" onclick="location.href='${ctx}/admin/editorsChoiceApp';"><fmt:message key="cancel" /></button>
	</div>
</form:form>
