<%@ include file="../../common/taglibs.jsp" %>
<form:form class='form-horizontal form-validate' id="inputForm" method="post" action="${ctx}/admin/tappUser/save"
           modelAttribute="tappUser">
    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="TappUser.username"/></label>

        <div class="col-xs-4">
            <form:input path="username" id="username" cssClass="form-control "
            	 data-msg-remote="Username Duplicated"    data-rule-remote="${ctx}/admin/tappUser/check?id=${tappUser.id}" data-rule-required="true"/>
        </div>
    </div>
    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="TappUser.newPassword"/></label>

        <div class="col-xs-4">
            <form:password path="newPassword" id="newPassword" placeholder="*********"
                           data-rule-equalTo="#retypeNewPassword" cssClass="form-control" data-rule-minlength="6"  />
        </div>
    </div>
    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="TappUser.retypeNewPassword"/></label>

        <div class="col-xs-4">
            <input type="password" name="retypeNewPassword" id="retypeNewPassword" placeholder="*********"
                   data-rule-equalTo="#newPassword" class="form-control" data-rule-minlength="6"  />
        </div>
    </div>
    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="TappUser.status"/></label>

        <div class="col-xs-4">
            <div class="check-line">
                <form:checkbox path="status" class='icheck-me' data-skin="square" data-color="blue"/><label
                    class="inline"><fmt:message key="enabled"/></label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="TappUser.userType"/></label>

   		<div class="col-xs-4">
             <form:select  items="${userTypes}" itemLabel="label" itemValue="value" path="userType"
                         cssClass="form-control chosen-select" data-rule-required="true"/> 
        </div>

    </div>

    <div class="form-group">
        <label for="textfield" class="control-label col-sm-2"><fmt:message key="TappUser.roles"/></label>

        <div class="col-xs-4">
            <table class="table table-hover table-nomargin">

                <tr>
                    <c:forEach var="trole" items="${troles}" varStatus="varStatus">
                    <td>
                        <div class="check-line">
                            <input name="roles_id" type="checkbox" value="${trole.tid }"
                                   <c:if test="${trole.checked == 'true' }">checked</c:if> class='icheck-me'
                                   data-skin="square" data-color="blue"/>
                            <label class="inline">${trole.troleName}</label>
                        </div>
                    </td>
                    <c:if test="${ varStatus.index+1 % 4==0 }">
                </tr>
                <tr>
                    </c:if>
                    </c:forEach>
                </tr>

            </table>
        </div>
    </div>

    <div class="form-actions col-sm-offset-2 col-xs-4">
        <button onclick="location.href='${ctx}/admin/tappUser/${tappUser.id}/changePass';" type="button"
                class="btn btn-primary"><fmt:message key="TappUser.changePass"/></button>
        <button type="submit" class="btn btn-primary"><fmt:message key="action.submit"/></button>
        <button type="button" class="btn" onclick="location.href='${ctx}/admin/tappUser';"><fmt:message
                key="cancel"/></button>
    </div>
</form:form>
