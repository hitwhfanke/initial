<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<% String appPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
    <title>学生列表</title>
    <%@include file="common/head.jsp" %>
</head>
<body>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>学生列表</h2>
        </div>
        
  
        <form name="firstForm" action="<%=appPath%>/spareTimes/${adminId}/student/search" method="post">
        	<div class="panel-heading ">
        	    <table class="table table-bookName">
        	       <thead>
        	       		<tr> 
        					<th width="90" >学生名称：</th>
        					<th width="150">
        						<input type="text" name="studentName" class="allInput" value="${studentName}" placeholder="输入检索老师姓名^o^" />
        					</th>
        					<th> 
        						<input type="submit" id="tabSub" value="检索" /> 
        					</th>
        					 <th width="30"><a class="btn btn-info" href="<%=appPath%>/spareTimes/${adminId}/adminList" >返回首页</a></th>
        				</tr> 
        	       </thead> 
        	    </table> 
         	</div>
        </form>
       
        
        <div class="panel-body">
            <table class="table table-hover">
                <thead>
                <tr> 
                	<th>学号</th>
                    <th>学生姓名</th>
                    <th>年级</th>
                    <th>院系号</th> 
                    <th>邮箱</th>
                    <th>电话号码</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${students}" var="sk">
                    <tr>
                    	<td>${sk.studentId}</td>
                        <td>${sk.studentName}</td>
                        <td>${sk.grade}</td>
                        <td>${sk.depId}</td>
                        <td>${sk.emailAddress}</td>
                        <td>${sk.phone}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table> 
        </div>

        
    </div>
</div>




<%--jQery文件,务必在bootstrap.min.js之前引入--%>
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<%--使用CDN 获取公共js http://www.bootcdn.cn/--%>
<%--jQuery Cookie操作插件--%>
<script src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<%--jQuery countDown倒计时插件--%>
<script src="http://cdn.bootcss.com/jquery.countdown/2.1.0/jquery.countdown.min.js"></script>

</body>

</html>

