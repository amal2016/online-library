<%--  -amal_salh2006@yahoo.com --%>

<%@ Page Title="library" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Theme="lib_skin" CodeBehind="admin.aspx.cs" Inherits="online_library.admin" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div>
        <ul style="padding-left:20px;color:blue" >
            <li><a href="usermanage.aspx">Manage Users</a></li>
            <li><a href="dept.aspx">Add Category</a></li>
            <li><a href="addauthor.aspx">Add Author</a></li>
              <li><a href="m_dept.aspx">Manage Authors</a></li>
            <li><a href="newbook.aspx">Add Book</a></li>
        </ul>
        </div>
     <div>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="182px" Width="593px" Palette="Chocolate" >
            <series>
                <asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Bubble" XValueMember="lastlogin" YValueMembers="count" YValuesPerPoint="2">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libr_con %>" SelectCommand="select lastlogin,count(userno)'count' from u_user group by lastlogin"></asp:SqlDataSource>
        
    
  
        

        <asp:Label ID="Label2" runat="server" Text="Number Of Users Registered Today :" ></asp:Label>
        <asp:Label ID="lb_regist" runat="server"></asp:Label>
        <br />
 
        <asp:Label ID="Label3" runat="server" Text="Number Of Users Login Today :" ></asp:Label>
        <asp:Label ID="lb_login" runat="server"></asp:Label>

   </div>
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
