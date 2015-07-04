<%@ include file="../../common/taglibs.jsp" %>
<form:form class='form-horizontal form-validate' id="inputForm" method="post" action="${ctx}/admin/tappUser/save"
           modelAttribute="tappUser">
    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="TappUser.newPassword"/></label>

        <div class="col-xs-4">
            <form:password path="newPassword" id="newPassword" placeholder="*********"
                           data-rule-equalTo="#retypeNewPassword" cssClass="form-control "/>
        </div>
    </div>
    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="TappUser.retypeNewPassword"/></label>

        <div class="col-xs-4">
            <input type="password" name="retypeNewPassword" id="retypeNewPassword" placeholder="*********"
                   data-rule-equalTo="#newPassword" class="form-control "/>
        </div>
    </div>
    <div class="form-actions col-sm-offset-2 col-xs-4">

        <button type="submit" class="btn btn-primary"><fmt:message key="action.submit"/></button>
        <button type="button" class="btn" onclick="location.href='${ctx}/admin/tappUser';"><fmt:message
                key="cancel"/></button>
    </div>
</form:form>
