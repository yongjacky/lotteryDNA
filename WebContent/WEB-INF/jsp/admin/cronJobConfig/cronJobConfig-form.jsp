<%@ include file="../../common/taglibs.jsp"%>

<form:form class='form-horizontal form-validate' id="inputForm"
	method="post" action="${ctx}/admin/cronJobConfig/save"
	modelAttribute="cronJobConfig">

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="CronJobConfig.processName" /></label>
		<div class="col-xs-4">
			<form:input path="processName" cssClass="form-control "
				data-rule-required="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="CronJobConfig.serviceId" /></label>
		<div class="col-xs-4">
			<form:input path="serviceId" cssClass="form-control "
				data-rule-required="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="CronJobConfig.methodId" /></label>
		<div class="col-xs-4">
			<form:input path="methodId" cssClass="form-control "
				data-rule-required="true" />
		</div>
	</div>

	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="CronJobConfig.interval" /></label>
		<div class="col-xs-4">
			<form:input path="interval" cssClass="form-control "
				data-rule-required="true"  />
		</div>
	</div>
	
	<!--  
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="CronJobConfig.lastProcStartDate" /></label>
		<div class="col-xs-4">
			<form:input path="lastProcStartDate" cssClass="form-control "
				data-rule-required="false" readonly="true" />
		</div>
	</div>
	
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="CronJobConfig.lastProcEndDate" /></label>
		<div class="col-xs-4">
			<form:input path="lastProcEndDate" cssClass="form-control "
				data-rule-required="false" readonly="true" />
		</div>
	</div>
	
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="CronJobConfig.status" /></label>
		<div class="col-xs-4">
			<form:input path="status" cssClass="form-control "
				data-rule-required="false" readonly="true" />
		</div>
	</div>
   -->
	<div class="form-group">
		<label for="textfield" class="control-label col-sm-2"><fmt:message
				key="CronJobConfig.enable" /></label>
		<div class="col-xs-4">
			<div class="check-line">
				<form:checkbox path="enable" class="icheck-me" data-skin="square"
					data-color="blue" />
			</div>
		</div>
	</div>

	<div class="form-actions col-sm-offset-2 col-xs-4">

		<button type="submit" class="btn btn-primary">
			<fmt:message key="action.submit" />
		</button>
		<button type="button" class="btn"
			onclick="location.href='${ctx}/admin/cronJobConfig';">
			<fmt:message key="cancel" />
		</button>
	</div>
</form:form>