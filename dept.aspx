
<%--  -amal_salh2006@yahoo.com --%>
<%@ Page Title="library -Add category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Theme="lib_skin" CodeBehind="dept.aspx.cs" Inherits="online_library.dept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="btncss.css" rel="stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div>
       
             
 
        <br />
        <asp:label id="lbb" runat="server" Text="Add New cateogry" CssClass="pp"  ></asp:label><br />

        <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" ></asp:Label>
        <input id="txt_name" runat="server" placeholder="category Name" maxlength="35" style="text-transform:capitalize" type="text" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SkinID="req"  ControlToValidate="txt_name" ></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Description" SkinID="lb"></asp:Label>
        <br />
        <asp:TextBox ID="txt_desc" CssClass="capit" runat="server" Height="86px" TextMode="MultiLine" Width="295px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SkinID="req"  ControlToValidate="txt_desc" ></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="myButton" Text="Insert" Width="139px" Height="26px" />


        <asp:Label ID="lb_msg" runat="server" CssClass="lb"></asp:Label>


        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libr_con %>" SelectCommand="SELECT suth_no, fname + '  ' + lname AS name FROM author ORDER BY fname"></asp:SqlDataSource>


    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
