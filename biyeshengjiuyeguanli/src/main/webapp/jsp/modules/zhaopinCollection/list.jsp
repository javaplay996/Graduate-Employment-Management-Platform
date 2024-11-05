<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">



<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

</style>
<body>




    <!-- Pre Loader -->
    <div class="loading">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
<!--/Pre Loader -->
    <div class="wrapper">
        <!-- Page Content -->
        <div id="content">
            <!-- Top Navigation -->
            <%@ include file="../../static/topNav.jsp" %>
            <!-- Menu -->
            <div class="container menu-nav">
                <nav class="navbar navbar-expand-lg lochana-bg text-white">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="ti-menu text-white"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul id="navUl" class="navbar-nav mr-auto">
                        </ul>
                    </div>
                </nav>
            </div>
            <!-- /Menu -->
            <!-- Breadcrumb -->
            <!-- Page Title -->
            <div class="container mt-0">
                <div class="row breadcrumb-bar">
                    <div class="col-md-6">
                        <h3 class="block-title">招聘收藏管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">招聘收藏管理</li>
                            <li class="breadcrumb-item active">招聘收藏列表</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /Page Title -->

            <!-- /Breadcrumb -->
            <!-- Main Content -->
            <div class="container">

                <div class="row">
                    <!-- Widget Item -->
                    <div class="col-md-12">
                        <div class="widget-area-2 lochana-box-shadow">
                            <h3 class="widget-title">招聘收藏列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                                                                                                    
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        学生姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="yonghuNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="学生姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        入学时间
                                        <div class="layui-input-inline">
                                            <input type="text" id="ruxueTimeSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="入学时间" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        是否就业
                                        <div class="layui-input-inline">
                                            <select name="jiuyeTypesSelectSearch"  style="width: 150px;" id="jiuyeTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        专业
                                        <div class="layui-input-inline">
                                            <select name="zhuanyeTypesSelectSearch"  style="width: 150px;" id="zhuanyeTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        就职公司
                                        <div class="layui-input-inline">
                                            <input type="text" id="yonghuGongsiSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="就职公司" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        公司名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="zhaopinNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="公司名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        招聘开始时间
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="zhaopinStartTimeStartSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="开始" aria-controls="tableId">
                                        </div>
                                    </div>
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="zhaopinStartTimeEndSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="结束" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        招聘结束时间
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="zhaopinEndTimeStartSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="开始" aria-controls="tableId">
                                        </div>
                                    </div>
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="zhaopinEndTimeEndSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="结束" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                        
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <button onclick="add()" type="button" class="btn btn-success 新增">添加</button>
                                        <button onclick="graph()" type="button" class="btn btn-success 报表">报表</button>
                                        <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>

                                        <th >学生姓名</th>
                                        <th >学生手机号</th>
                                        <th >学生身份证号</th>
                                        <th >学生头像</th>
                                        <th >性别</th>
                                        <th >入学时间</th>
                                        <th >是否就业</th>
                                        <th >专业</th>
                                        <th >就职公司</th>
                                        <th >公司名称</th>
                                        <th >公司图片</th>
                                        <th >招聘开始时间</th>
                                        <th >招聘结束时间</th>
                                        <th >招聘详情</th>


                                        <th >收藏时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- /Widget Item -->
                </div>
            </div>
            <!-- /Main Content -->

        </div>
        <!-- /Page Content -->
    </div>
    <!-- Back to Top -->
    <a id="back-to-top" href="#" class="back-to-top">
        <span class="ti-angle-up"></span>
    </a>
    <!-- /Back to Top -->
    <%@ include file="../../static/foot.jsp" %>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "zhaopinCollection";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->
        var jiuyeTypesOptions = [];
        var zhuanyeTypesOptions = [];

        <!-- 本表的级联字段表 -->

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                            //学生姓名
            var yonghuNameSearchInput = $('#yonghuNameSearch');
            if( yonghuNameSearchInput != null){
                if (yonghuNameSearchInput.val() != null && yonghuNameSearchInput.val() != '') {
                    searchForm.yonghuName = $('#yonghuNameSearch').val();
                }
            }
                                                                                                     
                            //入学时间
            var ruxueTimeSearchInput = $('#ruxueTimeSearch');
            if( ruxueTimeSearchInput != null){
                if (ruxueTimeSearchInput.val() != null && ruxueTimeSearchInput.val() != '') {
                    searchForm.ruxueTime = $('#ruxueTimeSearch').val();
                }
            }
                     
            var jiuyeTypesSelectSearchInput = document.getElementById("jiuyeTypesSelectSearch");
            if(jiuyeTypesSelectSearchInput != null){
                var jiuyeTypesIndex = jiuyeTypesSelectSearchInput.selectedIndex;
                if( jiuyeTypesIndex  != 0){
                    searchForm.jiuyeTypes = document.getElementById("jiuyeTypesSelectSearch").options[jiuyeTypesIndex].value;
                }
            }
                     
            var zhuanyeTypesSelectSearchInput = document.getElementById("zhuanyeTypesSelectSearch");
            if(zhuanyeTypesSelectSearchInput != null){
                var zhuanyeTypesIndex = zhuanyeTypesSelectSearchInput.selectedIndex;
                if( zhuanyeTypesIndex  != 0){
                    searchForm.zhuanyeTypes = document.getElementById("zhuanyeTypesSelectSearch").options[zhuanyeTypesIndex].value;
                }
            }
                     
                            //就职公司
            var yonghuGongsiSearchInput = $('#yonghuGongsiSearch');
            if( yonghuGongsiSearchInput != null){
                if (yonghuGongsiSearchInput.val() != null && yonghuGongsiSearchInput.val() != '') {
                    searchForm.yonghuGongsi = $('#yonghuGongsiSearch').val();
                }
            }
                                                             
                            //公司名称
            var zhaopinNameSearchInput = $('#zhaopinNameSearch');
            if( zhaopinNameSearchInput != null){
                if (zhaopinNameSearchInput.val() != null && zhaopinNameSearchInput.val() != '') {
                    searchForm.zhaopinName = $('#zhaopinNameSearch').val();
                }
            }
                                         
                     
                                            <!-- 本表的查询条件 -->

                                getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("zhaopinCollection/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                //本表的
            //级联表的
                yonghuName: searchForm.yonghuName,
                ruxueTime: searchForm.ruxueTime,
                jiuyeTypes: searchForm.jiuyeTypes,
                zhuanyeTypes: searchForm.zhuanyeTypes,
                yonghuGongsi: searchForm.yonghuGongsi,

                zhaopinName: searchForm.zhaopinName,
                zhaopinStartTimeStart: searchForm.zhaopinStartTimeStart,
                zhaopinStartTimeEnd: searchForm.zhaopinStartTimeEnd,
                zhaopinEndTimeStart: searchForm.zhaopinEndTimeStart,
                zhaopinEndTimeEnd: searchForm.zhaopinEndTimeEnd,


            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)


                    //学生姓名
            var yonghuNameCell = document.createElement('td');
            yonghuNameCell.innerHTML = item.yonghuName;
            row.appendChild(yonghuNameCell);


                    //学生手机号
            var yonghuPhoneCell = document.createElement('td');
            yonghuPhoneCell.innerHTML = item.yonghuPhone;
            row.appendChild(yonghuPhoneCell);


                    //学生身份证号
            var yonghuIdNumberCell = document.createElement('td');
            yonghuIdNumberCell.innerHTML = item.yonghuIdNumber;
            row.appendChild(yonghuIdNumberCell);


                //学生头像
            var yonghuPhotoCell = document.createElement('td');
            var yonghuPhotoImg = document.createElement('img');
            var yonghuPhotoImgValue = item.yonghuPhoto;
            if(yonghuPhotoImgValue !=null && yonghuPhotoImgValue !='' && yonghuPhotoImgValue !='null'){
                    yonghuPhotoImg.setAttribute('src', yonghuPhotoImgValue);
                    yonghuPhotoImg.setAttribute('height', 100);
                    yonghuPhotoImg.setAttribute('width', 100);
                    yonghuPhotoCell.appendChild(yonghuPhotoImg);
            }else{
                    yonghuPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(yonghuPhotoCell);

                        //性别
            var sexTypesCell = document.createElement('td');
            sexTypesCell.innerHTML = item.sexValue;
            row.appendChild(sexTypesCell);


                    //入学时间
            var ruxueTimeCell = document.createElement('td');
            ruxueTimeCell.innerHTML = item.ruxueTime;
            row.appendChild(ruxueTimeCell);

                        //是否就业
            var jiuyeTypesCell = document.createElement('td');
            jiuyeTypesCell.innerHTML = item.jiuyeValue;
            row.appendChild(jiuyeTypesCell);

                        //专业
            var zhuanyeTypesCell = document.createElement('td');
            zhuanyeTypesCell.innerHTML = item.zhuanyeValue;
            row.appendChild(zhuanyeTypesCell);


                    //就职公司
            var yonghuGongsiCell = document.createElement('td');
            yonghuGongsiCell.innerHTML = item.yonghuGongsi;
            row.appendChild(yonghuGongsiCell);


                    //公司名称
            var zhaopinNameCell = document.createElement('td');
            zhaopinNameCell.innerHTML = item.zhaopinName;
            row.appendChild(zhaopinNameCell);


                //公司图片
            var zhaopinPhotoCell = document.createElement('td');
            var zhaopinPhotoImg = document.createElement('img');
            var zhaopinPhotoImgValue = item.zhaopinPhoto;
            if(zhaopinPhotoImgValue !=null && zhaopinPhotoImgValue !='' && zhaopinPhotoImgValue !='null'){
                    zhaopinPhotoImg.setAttribute('src', zhaopinPhotoImgValue);
                    zhaopinPhotoImg.setAttribute('height', 100);
                    zhaopinPhotoImg.setAttribute('width', 100);
                    zhaopinPhotoCell.appendChild(zhaopinPhotoImg);
            }else{
                    zhaopinPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(zhaopinPhotoCell);


                    //招聘开始时间
            var zhaopinStartTimeCell = document.createElement('td');
            zhaopinStartTimeCell.innerHTML = item.zhaopinStartTime;
            row.appendChild(zhaopinStartTimeCell);


                    //招聘结束时间
            var zhaopinEndTimeCell = document.createElement('td');
            zhaopinEndTimeCell.innerHTML = item.zhaopinEndTime;
            row.appendChild(zhaopinEndTimeCell);


                    //招聘详情
            var zhaopinContentCell = document.createElement('td');
            //如果图文详情包含图片
            if (item.zhaopinContent && item.zhaopinContent.indexOf('img') != -1) {
                //暂时只考虑图片+文字 和 文字+图片的情况
                var beginIndex = item.zhaopinContent.indexOf('<img');
                var endIndex = item.zhaopinContent.indexOf('>');
                    zhaopinContentCell.innerHTML = item.zhaopinContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            } else {
                if (item.zhaopinContent != null && item.zhaopinContent != "" && item.zhaopinContent.length >= 11) {
                        zhaopinContentCell.innerHTML = item.zhaopinContent.substring(0, 10) + "...";
                } else {
                        zhaopinContentCell.innerHTML = item.zhaopinContent;
                }
            }
            row.appendChild(zhaopinContentCell);



            //收藏时间
            var insertTimeCell = document.createElement('td');
            insertTimeCell.innerHTML = item.insertTime;
            row.appendChild(insertTimeCell);



            //每行按钮
            var btnGroup = document.createElement('td');

            //详情按钮
            var detailBtn = document.createElement('button');
            var detailAttr = "detail(" + item.id + ')';
            detailBtn.setAttribute("type", "button");
            detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            detailBtn.setAttribute("onclick", detailAttr);
            detailBtn.innerHTML = "查看";
            btnGroup.appendChild(detailBtn);
            //修改按钮
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "修改";
            btnGroup.appendChild(editBtn);
            //删除按钮
            var deleteBtn = document.createElement('button');
            var deleteAttr = 'remove(' + item.id + ')';
            deleteBtn.setAttribute("type", "button");
            deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
            deleteBtn.setAttribute("onclick", deleteAttr);
            deleteBtn.innerHTML = "删除";
            btnGroup.appendChild(deleteBtn);
            row.appendChild(btnGroup);

            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("zhaopinCollection/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addzhaopinCollection", "addzhaopinCollection");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }

    //填充级联表搜索下拉框
                                         
                                                                                                     
                     
            function jiuyeTypesSelectSearch() {
                var jiuyeTypesSelectSearch = document.getElementById('jiuyeTypesSelectSearch');
                if(jiuyeTypesSelectSearch != null) {
                    jiuyeTypesSelectSearch.add(new Option('-请选择-',''));
                    if (jiuyeTypesOptions != null && jiuyeTypesOptions.length > 0){
                        for (var i = 0; i < jiuyeTypesOptions.length; i++) {
                                jiuyeTypesSelectSearch.add(new Option(jiuyeTypesOptions[i].indexName, jiuyeTypesOptions[i].codeIndex));
                        }
                    }
                }
            }
                     
            function zhuanyeTypesSelectSearch() {
                var zhuanyeTypesSelectSearch = document.getElementById('zhuanyeTypesSelectSearch');
                if(zhuanyeTypesSelectSearch != null) {
                    zhuanyeTypesSelectSearch.add(new Option('-请选择-',''));
                    if (zhuanyeTypesOptions != null && zhuanyeTypesOptions.length > 0){
                        for (var i = 0; i < zhuanyeTypesOptions.length; i++) {
                                zhuanyeTypesSelectSearch.add(new Option(zhuanyeTypesOptions[i].indexName, zhuanyeTypesOptions[i].codeIndex));
                        }
                    }
                }
            }
                     
                                                             
                                         
                     
                                        
    //填充本表搜索下拉框
                    
    //查询级联表搜索条件所有列表
            function jiuyeTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=jiuye_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        jiuyeTypesOptions = res.data.list;
                    }
                });
            }
            function zhuanyeTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhuanye_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        zhuanyeTypesOptions = res.data.list;
                    }
                });
            }

    //查询当前表搜索条件所有列表












        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框
            jiuyeTypesSelect();
            zhuanyeTypesSelect();

            //查询当前表的搜索下拉框
            getDataList();

        //级联表的下拉框赋值
                                                 
                                                                                                                         
                         
            jiuyeTypesSelectSearch();
                         
            zhuanyeTypesSelectSearch();
                         
                                                                         
                                                 
                         
                                                
        //当前表的下拉框赋值
                                                            
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>