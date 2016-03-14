<%--  -amal_salh2006@yahoo.com --%>

<%@ Page Title="Add Author" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Theme="lib_skin" CodeBehind="addauthor.aspx.cs" Inherits="online_library.addauthor" %>
<%@ Register src="datedropdown.ascx" tagname="datedropdown" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="btncss.css" rel="stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div >
         
        <br />
           <asp:Label ID="Label7" runat="server" CssClass="pp" Text="Add New Author" SkinID="lb" ></asp:Label><br />
         <asp:Label ID="Label2" SkinID="lb" runat="server" Text="First Name"></asp:Label>

        <input id="txt_name" runat="server" placeholder="Author First Name" style="text-transform:capitalize" maxlength="30" type="text" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" SkinID="req"></asp:RequiredFieldValidator>
        <br />
         <asp:Label ID="Label6" runat="server" Text="Last Name" SkinID="lb"></asp:Label>

        <input id="txt_lname" runat="server" maxlength="25" placeholder="Author Last Name" style="text-transform:capitalize" type="text" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_lname" SkinID="req"></asp:RequiredFieldValidator>
        <br />
         <asp:Label ID="Label3" runat="server" Text="Country" SkinID="lb"></asp:Label>
        <asp:DropDownList ID="ddcountry" runat="server" Height="27px" Width="240px"  >
        </asp:DropDownList>
        <br />
         <asp:Label ID="Label4" runat="server" Text="Date Of Birth" SkinID="lb"></asp:Label>
        <uc1:datedropdown ID="datedropdown1" runat="server" />
        <br />
         <asp:Label ID="Label5" runat="server" Text="Brief" SkinID="lb"></asp:Label>

        <br />

 <asp:TextBox ID="txt_brief" runat="server"  Width="274px" Height="93px" CssClass="capit" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_brief" SkinID="req"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server"  CssClass="myButton" OnClick="Button1_Click" Text="Insert " Width="101px" />
        <asp:Label ID="lb_msg" runat="server" CssClass="lb"></asp:Label>
        <br />

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   
</asp:Content>
