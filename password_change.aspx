<%--  -amal_salh2006@yahoo.com --%>
<%@ Page Title="change password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Theme="lib_skin" CodeBehind="password_change.aspx.cs" Inherits="online_library.password_change" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div >
       
      <asp:Label ID="Label12" Text="Change Password"  runat="server"  CssClass="pp"></asp:Label><br />
 <asp:Label ID="Label1" runat="server" Text="New Password" SkinID="lb" ></asp:Label>


        <input id="TextBox1" runat="server" placeholder="Pssword" maxlength="20" type="password" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" SkinID="req"></asp:RequiredFieldValidator>
        <br />
         <asp:Label ID="Label2" runat="server"  Text="Re Password" SkinID="lb"></asp:Label>


        <input id="textBox2" type="password" runat="server" placeholder="Re Enter" maxlength="20" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" SkinID="req"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="Not the same" ForeColor="#FF3300"></asp:CompareValidator>
        <br />
        <asp:RegularExpressionValidator ID="Regex3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Password : Minimum 8 characters at least 1 UpperCase , 1 LowerCase and 1 Number" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change" Width="135px" Height="42px" />
        <br />
        <br />
        <asp:Label ID="lb_msg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#009900"></asp:Label>
        <br />
        <br />
        <br />


    </div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
