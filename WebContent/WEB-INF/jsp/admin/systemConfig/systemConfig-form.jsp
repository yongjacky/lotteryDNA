<%@ include file="../../common/taglibs.jsp" %>
<form:form class='form-horizontal form-validate' id="inputForm" method="post" action="${ctx}/admin/systemConfig/save"
           modelAttribute="systemConfig">
    <div class="form-group">
        <label class="control-label col-sm-2"><fmt:message key="SystemConfig.conversionRate"/></label>

        <div class="col-xs-4">
            <form:input path="conversionRate" data-rule-number="true" data-rule-required="true"
                        cssClass="form-control"/><fmt:message key="per.my"/>
        </div>
    </div>
    <div class="form-actions col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary"><fmt:message key="action.submit"/></button>
        <button type="button" class="btn" onclick="location.href='${ctx}/admin/systemConfig';"><fmt:message
                key="cancel"/></button>
    </div>
</form:form>
