<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@page language="java" contentType="text/html; charset=UTF-8"
            pageEncoding="UTF-8"%>
    <title>公司处理</title>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/resources/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/resources/js/jquery.easyui.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/resources/js/wkbcompany.js"></script>


    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/wkb.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/demo.css">
</head>
<body>
<div >
    <form id="fmCompanyQuery" method="post" class="popWin_wrap">
        <table id="tabCompanyQuery" class="editTable">
            <tr>
                <td ><label class="ml10" for="txt_cId">公司编号：</label></td>
                <td><input id="txt_cId" name="cId"/></td>

                <td ><label class="ml10" for="txt_name">公司名称：</label></td>
                <td><input id="txt_name" name="name"/></td>
                <td ><label class="ml10" for="txt_contact">联系人：</label></td>
                <td><input id="txt_contact" name="contact"/></td>
                <td ><label class="ml10" for="txt_mobile">用户手机：</label></td>
                <td><input id="txt_mobile" name="mobile" /></td>
            </tr>
            <tr>

                <td ><label class="ml10" for="txt_tel">用户电话：</label></td>
                <td><input id="txt_tel" name="tel"/></td>


                <td>创建时间：</td>
                <td colspan="2"><input style="width:95px" class="easyui-datebox"  data-options="validType:'querydatevalidator'"
                                       type="text" id="tbBeginCreatedt" name="beginCreatedt">&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;<input
                        style="width:95px" class="easyui-datebox" type="text" id="tbEndCreatedt"  data-options="validType:'querydatevalidator'"
                        name="endCreatedt"></td>
            </tr>

        <tr>
            <td></td>
            <td></td>
            <td colspan="2"><div class="submitBtns" >
                <a href="javascript:void(0);" id="btn_companySearch">查询</a>&nbsp;&nbsp;
                <a href="javascript:void(0);" id="btn_companyReset">清空</a>&nbsp;&nbsp;
                <a href="javascript:void(0);" id="btn_companySwitch">切换</a>&nbsp;&nbsp;
            </div></td>
            </td>
        </tr>
        </table>
    </form>
</div>
<div style="margin:20px 0;"></div>

<table id="table_company" class="easyui-datagrid" title="公司列表" >
    <thead>
    </thead>
</table>

<div id="companyManagerDialog"  style="padding:10px" data-options="closed:true,modal:true,draggable:false,top:100" ></div>

<%--<div id="dlgUserConfig" class="easyui-window"
     closed="true" >
    <form id="fmUserConfig" method="post" class="popWin_wrap">
        <table id="tabUserConfig" class="editTable">
            <tr>
                <td ><label class="ml10" for="txt_config_userId">用户编号：</label></td>
                <td><input id="txt_config_userId" name="config_userId" class="easyui-validatebox" validType="number" invalidMessage="请输入整数"/></td>
                <td ><label class="ml10" for="txt_config_userName">用户名称：</label></td>
                <td><input id="txt_config_userName" name="config_userName"/></td>
                <td ><label class="ml10" for="txt_config_userMobile">用户手机：</label></td>
                <td><input id="txt_config_userMobile" name="config_userMobile" /></td>
            </tr>
            <tr>

                <td ><label class="ml10" for="txt_config_userTel">用户电话：</label></td>
                <td><input id="txt_config_userTel" name="config_userTel"/></td>
                <td>加入时间：</td>
                <td colspan="3"><input style="width:95px" class="easyui-datebox"  data-options="validType:'querydatevalidator'"
                                       type="text" id="add_tbBeginJointdt" name="add_beginJointdt">&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;<input
                        style="width:95px" class="easyui-datebox" type="text" id="add_tbEndJointdt"  data-options="validType:'querydatevalidator'"
                        name="add_endJointdt"></td>

                </td>
            </tr>
            <tr>
                <td ><label class="ml10" for="txt_config_manager">角色：</label></td>
                <td><select class="easyui-combobox" id="txt_config_manager" options="editable:false" name="config_manager" style="width:200px;">
                    <option value="0">员工</option>
                    <option value="1">管理员</option>
                </select>
            </tr>
        </table>
        <tr>
            <td></td>
            <td colspan="2"><div class="submitBtns" >
                <a href="javascript:void(0);" id="btn_config_userSearch">查询</a>
                <a href="javascript:void(0);" id="btn_config_userReset">清空</a>
            </div></td>
            <td colspan="2"><div class="submitBtns" >
                <a href="javascript:void(0);" id="btn_config_userConfirm">置成管理员</a>
                <a href="javascript:void(0);" id="btn_config_userCancel">撤销管理员</a>
            </div></td>
        </tr>
        <input type="hidden" id="h_cId"/>
    </form>

    <table id="table_config_user" class="easyui-datagrid" title="用户列表" >
        <thead>
        </thead>
    </table>

</div>--%>

</body>
</html>