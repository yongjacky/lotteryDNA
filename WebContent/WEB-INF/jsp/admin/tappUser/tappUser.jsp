<%@ include file="../../common/taglibs.jsp" %>
<borneo:override name="content">
    <div id="main">
        <div class="container-fluid" style="width: 100%">
            <div class="page-header">
                <div class="pull-left">
                    <h1><fmt:message key="TappUser"/></h1>
                </div>
            </div>

            <!-- content -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="box box-color box-bordered">
                        <div class="box-title">
                            <h3>
                                <i class="fa fa-table"></i><fmt:message key="TappUser.list"/>

                            </h3>
                        </div>
                        <div class="box-content nopadding">
                            <table id="table1" class="table table-hover table-nomargin table-bordered dataTable">
                                <thead>
                                <tr class='thefilter'>
                                    <th><fmt:message key="TappUser.username"/></th>
                                    <th><fmt:message key="TappUser.status"/></th>
                                    <th><fmt:message key="TappUser.userType"/></th>
                                    <th><fmt:message key="createdBy"/></th>
                                    <th><fmt:message key="createdDate"/></th>
                                    <th><fmt:message key="modifiedBy"/></th>
                                    <th><fmt:message key="modifiedDate"/></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" varStatus="status" items="${page_list_object}">
                                    <tr>
                                        <td>
                                            <a href="${ctx}/admin/tappUser/${item.id}/edit">
                                                <c:out value='${item.username}'/>&nbsp;
                                            </a>
                                        </td>
                                        <td>
                                            <c:out value='${item.status}'/>&nbsp;
                                        </td>
                                        <td>
                                            <c:out value='${item.userTypeStr}'/>&nbsp;
                                        </td>
                                        <td>
                                            <c:out value='${item.createdBy}'/>&nbsp;
                                        </td>
                                        <td>
                                            <c:out value='${item.createdDateString}'/>&nbsp;
                                        </td>
                                        <td>
                                            <c:out value='${item.modifiedBy}'/>&nbsp;
                                        </td>
                                        <td>
                                            <c:out value='${item.modifiedDateString}'/>&nbsp;
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="form-actions">
                            <input type="submit" class='btn btn-primary'
                                   value="<fmt:message key="TappUser.create.new" />"
                                   onclick="location.href='${ctx}/admin/tappUser/add';">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</borneo:override>
<%@ include file="../../layout/flat_header_fixed_layout.jsp" %>
