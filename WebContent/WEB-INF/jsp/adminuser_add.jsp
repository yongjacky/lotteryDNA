<%@ include file="common/taglibs.jsp"%>

<borneo:override name="content">
<div id="main">
			<div class="container-fluid">
				<div class="page-header">
					<div class="pull-left">
						<h1><c:out value="${title }" /></h1>
					</div>
				</div>
			
			   <!-- content -->
			 <div class="row-fluid">
				<div class="span12">
					<div class="box box-bordered">
						<div class="box-title">
							<h3>
								<c:out value="${title }" />
							</h3>
						</div>
						<div class="box-content nopadding">
							<form action="#" method="POST" class='form-horizontal form-bordered form-validate' id="bb">
								<div class="control-group">
										<label for="textfield" class="control-label">Text input</label>
										<div class="controls">
											<input type="text" name="textfield" id="textfield" class="input-xlarge" data-rule-required="true" data-rule-minlength="2" value="${ user.name }">
									
										</div>
									</div>
									<div class="control-group">
										<label for="emailfield" class="control-label">Email</label>
										<div class="controls">
											<input type="text" name="emailfield" id="emailfield" class="input-xlarge" data-rule-email="true" data-rule-required="true" value="${ user.email }">
										</div>
									</div>
									<div class="control-group">
										<label for="oldpwfield" class="control-label">Password</label>
										<div class="controls">
											<input type="text" name="oldpwfield" id="oldpwfield" class="input-xlarge" data-rule-required="true" value="${ user.password }">
										</div>
									</div>
									
									<div class="form-actions">
										<input type="submit" class="btn btn-primary" value="Submit">
										<button type="button" class="btn">Cancel</button>
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