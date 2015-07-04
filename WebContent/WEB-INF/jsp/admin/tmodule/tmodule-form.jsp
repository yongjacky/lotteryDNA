<%@ include file="../../common/taglibs.jsp" %>
<form:form class='form-horizontal form-validate' id="inputForm" method="post" action="${ctx}/admin/tmodule/save"
           modelAttribute="tmodule">
    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="Tmodule.tmoduleCode"/></label>

        <div class="col-xs-4">
            <form:input path="tmoduleCode" id="tmoduleCode" cssClass="form-control " data-rule-required='true'/>
        </div>
    </div>
    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="Tmodule.tmoduleName"/></label>

        <div class="col-xs-4">
            <form:input path="tmoduleName" id="tmoduleName" cssClass="form-control " data-rule-required='true'/>
        </div>
    </div>
    <div class="form-actions col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary"><fmt:message key="action.submit"/></button>
        <button type="button" class="btn" onclick="location.href='${ctx}/admin/tmodule';"><fmt:message
                key="cancel"/></button>
    </div>
</form:form>
