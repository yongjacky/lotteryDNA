<%@ include file="../../common/taglibs.jsp" %>
<borneo:override name="content">
    <div id="main">
        <div class="container-fluid">
            <div class="page-header">
                <div class="pull-left">
                    <h1><fmt:message key="SystemConfig"/></h1>
                </div>
            </div>

            <!-- content -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="box box-color box-bordered">
                        <div class="box-title">
                            <h3>
                                <i class="fa fa-table"></i><fmt:message key="SystemConfig.list"/>

                            </h3>
                        </div>
                        <div class="box-content nopadding">
                            <table id="table1" class="table table-hover table-nomargin table-bordered dataTable-columnfilter dataTable" style="width:100%;">
                                <thead>
                                <tr class='thefilter'>
                                    <th><fmt:message key="SystemConfig.conversionRate"/></th>
                                </tr>
                                <tr>
                                    <th><fmt:message key="SystemConfig.conversionRate"/></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" varStatus="status" items="${page_list_object}">
                                    <tr>
                                        <td>
                                            <a href="${ctx}/admin/systemConfig/edit">
                                                <c:out value='${item.conversionRate}'/>&nbsp;
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="form-actions">
                            <input type="submit" class='btn btn-primary' value="<fmt:message key="SystemConfig.edit" />"
                                   onclick="location.href='${ctx}/admin/systemConfig/edit';">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
</script>
</borneo:override>
<%@ include file="../../layout/flat_header_fixed_layout.jsp" %>
