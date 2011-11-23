<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="AMC_CODE.register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>AMC用户注册</title>
    <script type="text/javascript">
    function showCustomer(str)
{
var xmlhttp;    
if (str=="")
  {
  document.getElementById("lblmessage").innerHTML="用户名不能为空！";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("lblmessage").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","userid.aspx?userid="+str,true);
xmlhttp.send();
}
</script>
    <link rel="stylesheet" href="../../CSS/acmStyle.css" type="text/css" />
    <link href="../../CSS/calendar-blue.css" rel="stylesheet">
    <link href="../../CSS/TestDate.css" rel="stylesheet">
    <script src="../../plugins/Calendar.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        登录名：<asp:TextBox ID="userid" runat="server" onblur="showCustomer(this.value)" ></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="userid" ErrorMessage="登录名不能为空"></asp:RequiredFieldValidator>
        
        <asp:Label ID="lblmessage" runat="server" ForeColor="Black"></asp:Label>
                </br>
        登录密码： <asp:TextBox ID="password" runat="server" TextMode=Password></asp:TextBox>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="password" ErrorMessage="密码不能为空！"></asp:RequiredFieldValidator>
       
        </br>
       
        确认密码：<asp:TextBox ID="password1" runat="server" TextMode=Password></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="password" ControlToValidate="password1" 
            ErrorMessage="两次输入的密码不同！"></asp:CompareValidator>
        </br>
        真实姓名：<asp:TextBox ID="name" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="name" ErrorMessage="真实姓名不能为空！"></asp:RequiredFieldValidator>
        
        </br>
        部门：<asp:DropDownList ID="region" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="region_name" DataValueField="region_id">
        </asp:DropDownList>
        角色：<asp:DropDownList ID="role" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="role_name" 
            DataValueField="role_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AMCConnectionString %>" 
            SelectCommand="SELECT [role_id], [role_name] FROM [role]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AMCConnectionString %>" 
            SelectCommand="SELECT [region_name], [region_id] FROM [region]"></asp:SqlDataSource>
        <br />
        &nbsp;性别：<asp:RadioButtonList ID="sex" runat="server">
<asp:ListItem Value="男" Selected="True">男</asp:ListItem>
<asp:ListItem Value="女" Selected="True">女</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;<br />
        生日：<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        &nbsp;
			<A onclick="return showCalendar('txtDate', 'y-mm-dd');" href="#"><img src="../../image/Button.gif" id="IMG2" align="absMiddle" border="0" /></A><br/>
        手机：<asp:TextBox ID="phone" runat="server"></asp:TextBox>
       <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="phone" ErrorMessage="请输入11位手机号码" 
            ValidationExpression="\d{11}"></asp:RegularExpressionValidator>--%>
        </br>
        电邮：<asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="email" ErrorMessage="请正确输入email地址" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </br>
        地址：<asp:TextBox ID="address" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="submit" runat="server" Text="注册" onclick="submit_Click1" />
        </br>
    </div>
    
    </form>
 
</body>
</html>

