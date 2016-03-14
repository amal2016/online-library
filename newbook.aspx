<%--  -amal_salh2006@yahoo.com --%>
<%@ Page Title="library -Add Book" Language="C#" MasterPageFile="~/Site.Master" Theme="lib_skin" AutoEventWireup="true" CodeBehind="newbook.aspx.cs" Inherits="online_library.newbook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="btncss.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
       
        
       
        .ii {
            text-transform: capitalize;
            resize:none;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div>
        <br />
         <asp:Label ID="Label7" runat="server" CssClass="pp" Text="Add New Book" SkinID="lb" ></asp:Label><br />
    <asp:Label ID="Label1" runat="server" Text="Book Name" SkinID="lb"></asp:Label>
        <input id="txt_name"   runat="server" placeholder="Enter Book Name" class="ii" type="text" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SkinID="req"  ControlToValidate="txt_name" ></asp:RequiredFieldValidator>
        <br />
         <asp:Label ID="Label2" runat="server" Text="Department" SkinID="lb"></asp:Label>
        <asp:DropDownList ID="dd_dept" runat="server" Height="23px" Width="241px" >
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SkinID="req"  ControlToValidate="dd_dept" ></asp:RequiredFieldValidator>
        <br />
         <asp:Label ID="Label3" runat="server" Text="Author" SkinID="lb"></asp:Label>
        <asp:DropDownList ID="dd_author" runat="server" Height="23px" Width="241px" >
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SkinID="req"  ControlToValidate="dd_author" ></asp:RequiredFieldValidator>
        <br />
         <asp:Label ID="Label4" runat="server" Text="File" SkinID="lb"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" Width="264px" CssClass="auto-style4" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" SkinID="req"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="uplValidator" runat="server" ControlToValidate="FileUpload1"
 ErrorMessage="only pdf,txt,doc" 
 ValidationExpression="(.+\.([Pp][Dd][Ff])|.+\.([Tt][Xx][Tt])|.+\.([Dd][Oo][Cc]))" ForeColor="#FF3300"></asp:RegularExpressionValidator>
        <br />
         <asp:Label ID="Label6" runat="server" Text="Book Image" SkinID="lb"></asp:Label>
        <asp:FileUpload ID="FileUpload2" runat="server" Width="264px" CssClass="auto-style7" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload2" SkinID="req"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUpload2"
 ErrorMessage="only jpeg,jpeg,png" 
 ValidationExpression="(.+\.([Ji][Pp][Ee][Gg])|.+\.([Pp][Nn][Gg])|.+\.([Jj][Pp][Gg]))" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
         <asp:Label ID="Label5" runat="server" Text="Description" SkinID="lb"></asp:Label>
        <br />
        <asp:TextBox ID="txt_decsrp" CssClass="ii" runat="server" Width="274px" Height="93px" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" SkinID="req" ControlToValidate="txt_decsrp" ></asp:RequiredFieldValidator>
        <br />
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="myButton" Text="Insert" Width="157px" Height="36px" />
        <asp:Label ID="lb_msg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#33CC33"></asp:Label>
         <br />

</div></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
