<%--  -amal_salh2006@yahoo.com --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Theme="lib_skin" CodeBehind="register.aspx.cs" Inherits="online_library.register" %>
<%@ Register src="datedropdown.ascx" tagname="datedropdown" tagprefix="uc1" %>


<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="btncss.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="Scripts/jquery.mask.js"></script>
     <script type="text/javascript">
         var specialKeys = new Array();
         specialKeys.push(8); 
         $(function () {
             $(".numeric").bind("keypress", function (e) {
                 var keyCode = e.which ? e.which : e.keyCode
                 var ret = ((keyCode >= 64 && keyCode <= 91) ||(keyCode > 96 && keyCode < 123) );
                 $(".error").css("display", ret ? "none" : "inline");
                 return ret;
             });
             $(".numeric").bind("paste", function (e) {
                 return false;
             });
             $(".numeric").bind("drop", function (e) {
                 return false;
             });
         });
    </script>
    <style type="text/css">
               
        .txt {
            margin-left: 8px;
            margin-bottom:4px;
        }
       
       
       
    
       
       
        
       
       
       
    
       
       
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    
   
    <div>
  <style type="text/css">
       
        
       
        .pp {
           
            font-weight:bold;
            font-family:'Book Antiqua';
            color:green;
        }
    </style>
       <br />  
           <strong>  
           <asp:Label ID="Label6" runat="server" CssClass="pp" Text="Sign Up" ></asp:Label></strong><br />
        <asp:Label ID="Label1" runat="server" Text="First Name" SkinID="lb"></asp:Label>
        <input id="txt_fname"  runat="server" style="text-transform:capitalize" maxlength="20" class="numeric" placeholder="First Name" type="text" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SkinID="req" runat="server" ControlToValidate="txt_fname"  ></asp:RequiredFieldValidator>
        <br />
                <asp:Label ID="Label2" runat="server" Text="Last Name" SkinID="lb"></asp:Label>
        <input id="txt_lname" maxlength="20" runat="server" style="text-transform:capitalize" placeholder="Last Name" class="numeric" type="text" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  SkinID="req" runat="server"   ControlToValidate="txt_lname" ></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label8" runat="server" Text="User Name" SkinID="lb"></asp:Label>
        <input id="txtusername" placeholder="User Name" runat="server" maxlength="25" type="text" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  SkinID="req" runat="server" ControlToValidate="txt_mail" ></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Email" SkinID="lb"></asp:Label>
        <input id="txt_mail" placeholder="Email Address" runat="server" maxlength="35" type="email" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  SkinID="req" runat="server" ControlToValidate="txt_mail" ></asp:RequiredFieldValidator>
        <br />
                <asp:Label ID="Label5" runat="server" Text="Country" SkinID="lb"></asp:Label>
        <asp:DropDownList ID="ddcountry" runat="server" Height="34px" OnSelectedIndexChanged="ddcountry_SelectedIndexChanged" Width="245px" Font-Bold="True">
        </asp:DropDownList>
        <br />
                <asp:Label ID="Label3" runat="server" Text="Date Of Birth" SkinID="lb"></asp:Label>
        <uc1:datedropdown ID="datedropdown1" runat="server" />
        <br />
        

        

<cc1:CaptchaControl ID="Captcha1" runat="server"

 CaptchaBackgroundNoise="Low" CaptchaLength="5"

 CaptchaHeight="60" CaptchaWidth="200"

 CaptchaLineNoise="None" CaptchaMinTimeout="5"

 CaptchaMaxTimeout="240" FontColor = "#529E00" />

        <asp:Label ID="lb_verific" runat="server" Text="Enter Verification Code" Font-Bold="True"></asp:Label><br />
        <asp:TextBox ID="txtVerify" runat="server"></asp:TextBox>

 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SkinID="req" ControlToValidate = "txtVerify"></asp:RequiredFieldValidator>

        <br />


        

        <asp:Button ID="Button1" runat="server" CssClass="myButton" OnClick="Button1_Click" Text="Register" Width="110px" Height="27px" />
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Black"></asp:Label>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
