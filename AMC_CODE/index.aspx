<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AMC_CODE.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<link rel="stylesheet" href="../../CSS/acmStyle.css" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	font-size: xx-large;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
<script type="text/javascript" src="../../JS/jquery.js"></script> 
<script type="text/javascript" src="../../JS/jquery.easing.1.3.js"></script> 

</head>

<body>
	<div id="headwrap">
	 	<div id="logoimg"><img src="../../images/ACM logo.png" /><span class="STYLE1">AMC汽车配件公司管理信息系统</span></div>
		<div id="navcontainer" class="homepage">
        <ul id="nav">
            <li id="homep" class="navlevel1  firstNav"><a href="*"><span>首页</span></a></li>
            <li id="manage" class="navlevel1 "><a href="/services"><span>经理管理</span></a></li>
            <li id="sale" class="navlevel1 "><a href="/work"><span>销售管理</span></a></li>
            <li id="purchasing" class="navlevel1 "><a href="/contact"><span>采购管理</span></a></li>
			<li id="inventory" class="navlevel1 "><a href="/contact"><span>库存管理</span></a></li>
			<li id="finance" class="navlevel1 "><a href="/contact"><span>财务管理</span></a></li>
			<li id="packing" class="navlevel1 "><a href="/contact"><span>发货管理</span></a></li>
			<li id="system" class="navlevel1 "><a href="/contact"><span>系统管理</span></a></li>
        </ul>
    </div>
	</div>
	<div id="bodyContent">
	<table id="midTable">
	  <tr id="tophead">
	     <td><h3>近期公告</h3></td>
		 <td><h3>系统新闻</h3></td>
		 <td><h3>系统登陆</h3></td>
	  </tr>
	  <tr>
	  	<td id="leftCol">
			
			<ul>
				<li>通知：11月11日，公司全体人员观看《失恋33天》<span id="news">~new</span></li>
				<li>11月15日：系统盘存，请各部门做好准备</li>
				<li>10月31日：公司大扫除，仓库组获得流动红旗。</li>
				<li>9月30日：国庆放假7天，请在节前完成工作，预祝国庆愉快。</li>
			</ul>
		</td>
		<td id="midCol">
			
			<ul>
				<li>11月：收到通用汽车公司的一笔大订单，请各部门做好准备，务必做到精益求精！<span id="news">~new</span></li>
				<li>11月月初计划以发出，请各部门按计划执行，如遇到什么问题，请及时向经理反映。</li>
				<li>10月，月底考核已完成，结果已公布，其中销售组当月超额完成任务特此提出表扬。</li>
				<li>10月中期检查即将开始，请各部门做好中期检查准备。</li>
				<li>10月月初计划以发出，请各部门按计划执行，如遇到什么问题，请及时向经理反映。</li>
				
			</ul>
			
		</td>
		<td id="rightCol">
		<div id="loginForm">
		
		<form action="*" method="*">
		    部&nbsp 门：<p>
			<select>
			<option>经理</option>
            <option>销售组</option>
            <option>采购组</option>
            <option>仓库组</option>
            <option>会计组</option>
			<option>包装发货组</option>
            </select>
			<br />
             用户名：<p>
            <input type="text" name="fname" />
            <br />
            密&nbsp 码：<p>
             <input type="password" name="lname" />
             <br />
             <asp:Button ID="denglu" runat="server" Text="登陆" onclick="denglu_Click" />
             <asp:Button ID="submit" runat="server" Text="注册" onclick="submit_Click" />
              </form>
			  </div>
		</td>
	  </tr>
	  </table>
	</div>
	<div id="pagefooter">? 2011 Raka, LLC ? 2011 Raka, LLC <span class="pipe">|</span> 30 Penhallow Street, Suite 300 East, Portsmouth, NH 03801 <span class="pipe">|</span> 603.436.7770 <span class="pipe">|</span> Follow us on <a class="external" id="twitterLink" href="http://www.twitter.com/rakacreative"></a></div>
</div>
</body>
</html>