<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AMC_CODE.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
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
	 	<div id="logoimg"><img src="../../images/ACM logo.png" /><span class="STYLE1">AMC���������˾������Ϣϵͳ</span></div>
		<div id="navcontainer" class="homepage">
        <ul id="nav">
            <li id="homep" class="navlevel1  firstNav"><a href="*"><span>��ҳ</span></a></li>
            <li id="manage" class="navlevel1 "><a href="/services"><span>��������</span></a></li>
            <li id="sale" class="navlevel1 "><a href="/work"><span>���۹���</span></a></li>
            <li id="purchasing" class="navlevel1 "><a href="/contact"><span>�ɹ�����</span></a></li>
			<li id="inventory" class="navlevel1 "><a href="/contact"><span>������</span></a></li>
			<li id="finance" class="navlevel1 "><a href="/contact"><span>�������</span></a></li>
			<li id="packing" class="navlevel1 "><a href="/contact"><span>��������</span></a></li>
			<li id="system" class="navlevel1 "><a href="/contact"><span>ϵͳ����</span></a></li>
        </ul>
    </div>
	</div>
	<div id="bodyContent">
	<table id="midTable">
	  <tr id="tophead">
	     <td><h3>���ڹ���</h3></td>
		 <td><h3>ϵͳ����</h3></td>
		 <td><h3>ϵͳ��½</h3></td>
	  </tr>
	  <tr>
	  	<td id="leftCol">
			
			<ul>
				<li>֪ͨ��11��11�գ���˾ȫ����Ա�ۿ���ʧ��33�졷<span id="news">~new</span></li>
				<li>11��15�գ�ϵͳ�̴棬�����������׼��</li>
				<li>10��31�գ���˾��ɨ�����ֿ������������졣</li>
				<li>9��30�գ�����ż�7�죬���ڽ�ǰ��ɹ�����Ԥף������졣</li>
			</ul>
		</td>
		<td id="midCol">
			
			<ul>
				<li>11�£��յ�ͨ��������˾��һ�ʴ󶩵��������������׼����������������󾫣�<span id="news">~new</span></li>
				<li>11���³��ƻ��Է�����������Ű��ƻ�ִ�У�������ʲô���⣬�뼰ʱ������ӳ��</li>
				<li>10�£��µ׿�������ɣ�����ѹ��������������鵱�³�����������ش�������</li>
				<li>10�����ڼ�鼴����ʼ����������������ڼ��׼����</li>
				<li>10���³��ƻ��Է�����������Ű��ƻ�ִ�У�������ʲô���⣬�뼰ʱ������ӳ��</li>
				
			</ul>
			
		</td>
		<td id="rightCol">
		<div id="loginForm">
		
		<form action="*" method="*">
		    ��&nbsp �ţ�<p>
			<select>
			<option>����</option>
            <option>������</option>
            <option>�ɹ���</option>
            <option>�ֿ���</option>
            <option>�����</option>
			<option>��װ������</option>
            </select>
			<br />
             �û�����<p>
            <input type="text" name="fname" />
            <br />
            ��&nbsp �룺<p>
             <input type="password" name="lname" />
             <br />
             <asp:Button ID="denglu" runat="server" Text="��½" onclick="denglu_Click" />
             <asp:Button ID="submit" runat="server" Text="ע��" onclick="submit_Click" />
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