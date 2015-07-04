<%@ include file="../../common/taglibs.jsp"%>
<borneo:override name="content">
	<div id="main">
		<div class="container-fluid">
			<div class="page-header">
				<div class="pull-left">
					<h1>
						<fmt:message key="AppVersionHistory" />
					</h1>
				</div>
			</div>

			<!-- content -->
			<div class="row-fluid">
				<div class="span12">
					<div class="box">
						<div class="box-title">
							<h3>
								<i class="icon-edit"></i>
								<fmt:message key="AppVersionHistory.create.new" />
							</h3>
						</div>
						<div class="box-content">
							<%@ include file="appVersionHistory-form.jsp"%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</borneo:override>
<%@ include file="../../layout/flat_header_fixed_layout.jsp"%>