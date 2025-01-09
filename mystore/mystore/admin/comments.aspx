<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comments.aspx.cs" Inherits="admin_comments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table width="1100" align="center" border="1">
        <tr align="center">
            <td>编号</td>
            <td>商品</td>
            <td>封面</td>
            <td>用户</td>
            <td>内容</td>
            <td>时间</td>
            <td>操作</td>
        </tr>
        <%
            string id = Request.QueryString["id"];
            if (id != null)
            {
                YF.BLL.Comment.del(int.Parse(id));
                YF.JsHelper.AlertAndRedirect("删除成功！", "comments.aspx");
            }
            List<YF.Model.Comment> list = YF.BLL.Comment.commentlist();
            for (int i = 0; i < list.Count; i++)
            {
        %>
                <tr align="center">
                    <td><% =i+1 %></td>
                    <td><% =list[i].Goods.Title %></td>
                    <td><img src="../img/<% =list[i].Goods.Img %>" width="100" /></td>
                    <td><% =list[i].User.Name %></td>
                    <td><% =list[i].Detail %></td>
                    <td><% =list[i].Adddate %></td>
                    <td><a href="../goods.aspx?id=<% =list[i].Goods.Id %>" target="_blank">查看</a>|<a href="comments.aspx?id=<% =list[i].Id %>">删除</a></td>
                </tr>
        <% } %>


        
    </table>
</div>
    </form>
</body>
</html>
