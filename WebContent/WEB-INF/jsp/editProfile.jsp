<%@ include file="common/taglibs.jsp"%>

<borneo:override name="content">
<div id="main">
			<div class="container-fluid">
				<div class="page-header">
					<div class="pull-left">
						<h1><fmt:message key="user.profile" /></h1>
					</div>
				</div>
			   <!-- content -->
			 <div class="row-fluid">
				<div class="span12">
					<div class="box">
						<div class="box-title">
							<h3>
								<i class="icon-user"></i><fmt:message key="user.profile.edit" />
							</h3>
						</div>
						<div class="box-content">
							<form:form action="${ctx }/secure/back/profile/update.html" method="POST" class='form-horizontal form-validate' 
										id="inputForm" modelAttribute="appUserProfile" >
							<form:hidden path="profileId" />
							
									<div class="control-group">
										<label for="textfield" class="control-label"><fmt:message key="user.firstname" /></label>
										<div class="controls">
											<form:input path="firstName" id="firstName" cssClass="input-xlarge" data-rule-required="true" data-rule-minlength="2" />
									
										</div>
									</div>
									<div class="control-group">
										<label for="textfield" class="control-label"><fmt:message key="user.lastname" /></label>
										<div class="controls">
											<form:input path="lastName" id="lastName" cssClass="input-xlarge" data-rule-required="true" data-rule-minlength="2" />
									
										</div>
									</div>
									
									<div class="control-group">
										<label for="textfield" class="control-label"><fmt:message key="user.contact.no" /></label>
										<div class="controls">
											<form:input path="contactNo" id="contactNo" cssClass="input-xlarge" data-rule-required="true" data-rule-minlength="2" />
									
										</div>
									</div>
									<div class="control-group">
										<label for="textfield" class="control-label"><fmt:message key="user.email" /></label>
										<div class="controls">
											<form:input path="emailAddress" id="emailAddress" cssClass="input-xlarge" data-rule-required="true" data-rule-email="true" />
									
										</div>
									</div>
																		
									<div class="form-actions">
										<button type="submit" class="btn btn-primary"><fmt:message key='save.changes'/></button>
									</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row-fluid">
				<div class="span12">
					<div class="box">
						<div class="box-title">
							<h3>
								<i class="icon-user"></i><fmt:message key="user.change.password" />
							</h3>
						</div>
						<div class="box-content">
							<form action="${ctx }/secure/back/profile/chgpwd.html" method="POST" class='form-horizontal form-validate' 
										id="inputForm" >
							
									<div class="control-group">
										<label for="textfield" class="control-label"><fmt:message key="user.username" /></label>
										<div class="controls">
											<input type="text" id="username" name="username" class="input-xlarge" value="${username}" readonly />
									
										</div>
									</div>
									<div class="control-group">
										<label for="password" class="control-label"><fmt:message key="user.password" /></label>
										<div class="controls">
											<input type="password" name="password" id="password" class="input-xlarge" data-rule-required="true" placeholder="**********" readonly >
										</div>
									</div>
									<div class="control-group">
										<label for="pwfield" class="control-label"><fmt:message key="user.new.password" /></label>
										<div class="controls">
											<input type="password" name="pwfield" id="pwfield" class="input-xlarge" data-rule-required="true">
										</div>
									</div>
																											
									<div class="form-actions">
										<button type="submit" class="btn btn-primary"><fmt:message key='save.changes'/></button>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			</div>
</div>
</borneo:override>
<%@ include file="layout/flat_header_fixed_layout.jsp"%>