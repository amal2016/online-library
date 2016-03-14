<%--  -amal_salh2006@yahoo.com --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Theme="lib_skin" CodeBehind="contactus.aspx.cs" Inherits="online_library.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
      <div>
          <p style="color:green;font-weight:bold">Send Message To Us</p>
<asp:Label ID="Label1" SkinID="lb" runat="server" Text="Name"></asp:Label>
<input type="text" placeholder="Name" ID="txtName" runat="server" MaxLength="30" ValidationGroup = "contact"  ></input>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SkinID="req"

             ControlToValidate = "txtName" ></asp:RequiredFieldValidator> 
        <br />

        <asp:Label ID="Label2" SkinID="lb" runat="server" Text="Subject"></asp:Label>
        <input type="text" placeholder="Subject" ID="txtSubject" MaxLength="40" runat="server" ></>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SkinID="req"

             ControlToValidate = "txtSubject" ></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="Label3" runat="server" SkinID="lb" Text="Email"></asp:Label>
         <input type="email" placeholder="email@server.com" ID="txtEmail" MaxLength="35" runat="server" ></>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SkinID="req"

            ControlToValidate = "txtEmail" ></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator id="valRegEx" runat="server"

            ControlToValidate="txtEmail"

            ValidationExpression=".*@.*\..*"

            ErrorMessage="Invalid Email address."

            display="dynamic" ForeColor="Red"></asp:RegularExpressionValidator>

            <br />
         <asp:Label ID="Label4" runat="server" Text="Message" SkinID="lb" ></asp:Label>
         <br />

         <asp:TextBox ID="txtBody" runat="server" Width="274px" Height="93px" CssClass="capit" TextMode="MultiLine" ></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBody" SkinID="req"></asp:RequiredFieldValidator>

          






        <br />
        <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" Width="113px" />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor = "Green"></asp:Label>







    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
