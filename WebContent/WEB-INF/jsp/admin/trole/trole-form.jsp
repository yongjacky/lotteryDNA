<%@ include file="../../common/taglibs.jsp" %>
<script>
    $(function () {
        $("input[name='check_all']").change(function () {
            if ($(this).is(':checked')) {
                $(this).parent().parent().parent().siblings().find("input").iCheck('check');
            } else {
                $(this).parent().parent().parent().siblings().find("input").iCheck('uncheck');
            }
        });
    });
</script>

<form:form class='form-horizontal form-validate' id="inputForm" method="post" action="${ctx}/admin/trole/save"
           modelAttribute="trole">
    <div class="control-group">
        <label for="textfield" class="control-label"><fmt:message key="Trole.troleName"/></label>

        <div class="controls">
            <form:input path="troleName" id="troleName" cssClass="input-xlarge " data-rule-required='true'/>
        </div>
    </div>
    <div class="control-group">
        <label for="textfield" class="control-label"><fmt:message key="Trole.troleCode"/></label>

        <div class="controls">
            <form:input path="troleCode" id="troleCode" cssClass="input-xlarge " data-rule-required='true'/>
        </div>
    </div>
    <div class="control-group">
        <label for="textfield" class="control-label"><fmt:message key="Trole.troleType"/></label>

        <div class="controls">
            <form:input path="troleType" id="troleType" cssClass="input-xlarge " data-rule-required='true'/>
        </div>
    </div>

    <table class="table table-hover table-nomargin table-bordered dataTable-columnfilter dataTable">
        <thead>
        <tr>
            <th style="width:100px"><fmt:message key="Tmodule.tmoduleName"/></th>
            <th style="width:100px"></th>
            <th style="width:100px"></th>
            <th style="width:100px"></th>
            <th style="width:100px"></th>
            <th style="width:100px"></th>
        </tr>
        <tr class='thefilter'>
            <th style="width:100px"><fmt:message key="Tmodule.tmoduleName"/></th>
            <th style="width:100px"><fmt:message key="create.permission"/></th>
            <th style="width:100px"><fmt:message key="read.permission"/></th>
            <th style="width:100px"><fmt:message key="edit.permission"/></th>
            <th style="width:100px"><fmt:message key="delete.permission"/></th>
            <th style="width:100px"><fmt:message key="select.all"/></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tmodule" items="${tmoduleList}">
            <tr class='thefilter'>
                <td>
                    <label class="inline">${tmodule.tmoduleName}</label>
                </td>
                <td>
                    <div class="check-line">
                        <input name="create_${tmodule.tid}" type="checkbox"
                               <c:if test="${tmodule.tcreatePermission == 'true' }">checked</c:if> class='icheck-me'
                               data-skin="square" data-color="blue">
                    </div>
                </td>
                <td>
                    <div class="check-line">
                        <input name="read_${tmodule.tid}" type="checkbox"
                               <c:if test="${tmodule.treadPermission == 'true' }">checked</c:if> class='icheck-me'
                               data-skin="square" data-color="blue">
                    </div>
                </td>
                <td>
                    <div class="check-line">
                        <input name="edit_${tmodule.tid}" type="checkbox"
                               <c:if test="${tmodule.teditPermission == 'true' }">checked</c:if> class='icheck-me'
                               data-skin="square" data-color="blue">
                    </div>
                </td>
                <td>
                    <div class="check-line">
                        <input name="delete_${tmodule.tid}" type="checkbox"
                               <c:if test="${tmodule.tdeletePermission == 'true' }">checked</c:if> class='icheck-me'
                               data-skin="square" data-color="blue">
                    </div>
                </td>
                <td>
                    <div class="check-line">
                        <input name="check_all" type="checkbox" class='icheck-me' data-skin="square" data-color="blue">
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="form-actions">

        <button type="submit" class="btn btn-primary"><fmt:message key="action.submit"/></button>
        <button type="button" class="btn" onclick="location.href='${ctx}/admin/trole';"><fmt:message
                key="cancel"/></button>
    </div>
</form:form>
