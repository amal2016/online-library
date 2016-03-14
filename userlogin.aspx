<%--  -amal_salh2006@yahoo.com --%>
<%@ Page Title="login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Theme="lib_skin" Inherits="online_library.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
    <style type="text/css">
        .auto-style3 {
            margin-left: 33px;
        }
        .fied {
            width: 40%;
        }

    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div id="lgn">

<fieldset class="fied"> <legend>Login</legend>
  
                                

  
      
                                    <asp:Label ID="UserNameLabel" SkinID="lb" runat="server" AssociatedControlID="UserName" >Email</asp:Label><br />
                                    <asp:TextBox ID="UserName" runat="server"  ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" SkinID="req"></asp:RequiredFieldValidator>
                                    <br />
                                    <br />

                                    <asp:Label ID="PasswordLabel" SkinID="lb" runat="server" AssociatedControlID="Password">Password</asp:Label>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"  ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" SkinID="req"></asp:RequiredFieldValidator>
                                    <br />

                                    <asp:Button ID="LoginButton" runat="server"  CommandName="Login" OnClick="LoginButton_Click" Text="Log In"   />
        <asp:Label ID="lbmsg" runat="server" ForeColor="#009900"></asp:Label>
        


                                    <br />
        
        </fieldset>

    </div>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
