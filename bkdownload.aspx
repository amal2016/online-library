<%--  -amal_salh2006@yahoo.com --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bkdownload.aspx.cs" Inherits="online_library.bkdownload" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div>
      <style>
           .Star
        {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }
        .WaitingStar
        {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }
        .FilledStar
        {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
      </style> 
      <asp:Label ID="Label3" runat="server" Text="Rate Of The Book" Font-Bold="True"></asp:Label>
     <div id="rating" >

         <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <cc1:Rating ID="Rating1" AutoPostBack="true" OnChanged="OnRatingChanged" runat="server"
        StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
        FilledStarCssClass="FilledStar">
    </cc1:Rating>
    <br />
    <asp:Label ID="lblRatingStatus" runat="server" Text=""></asp:Label>

<br />
<asp:Label ID="lbmsg" CssClass="lb" runat="server" Text=""></asp:Label>
     </div>
        <br />

     
     
        
        <asp:ListView ID="ListView2" runat="server" DataSourceID="dsbookdetails" OnItemDataBound="ListView2_ItemDataBound">
          
           
           
                
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
          
             
            <ItemTemplate>
                <span style="">
                <asp:Label ID="booknameLabel" runat="server" Text='<%# Eval("bookname") %>' />
                <br />
              
                <asp:Label ID="bookdescLabel" runat="server" Text='<%# Eval("bookdesc") %>' />
                <br />
             
                <span>
              <asp:Image ID="Image2" runat="server"  Height="150 px" Width="150 px" ImageUrl='<%# Eval("img", "{0}") %>' />
              </span><br />
               
               <span>
              <asp:LinkButton ID="hyper" runat="server"  Text="Download" PostBackUrl='<%# Eval("link", "downloadhandler.ashx?file={0}") %>'></asp:LinkButton>
              </span><br />
             
                <asp:Label ID="downLabel" runat="server" Text='<%# Eval("down") %>' />
                <br />
               
                <asp:Label ID="dept_nameLabel" runat="server" Text='<%# Eval("dept_name") %>' />
                <br />
               
                <asp:Label ID="anameLabel" runat="server" Text='<%# Eval("aname") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
        
        </asp:ListView>
        <asp:SqlDataSource ID="dsbookdetails" runat="server" ConnectionString="<%$ ConnectionStrings:libr_con %>" SelectCommand="SELECT book.bookname, book.bookdesc, book.img
, book.link,cast( book.downloadtimes as varchar) + ' download' AS 'down',
 dept.dept_name, author.fname + '  ' + author.lname 
 AS 'aname' FROM author INNER JOIN book ON
  author.suth_no = book.author_id INNER JOIN dept
   ON book.dept_id = dept.dept_id
where book.b_id=@bid">
            <SelectParameters>
                <asp:SessionParameter Name="bid" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
 
  

    </asp:Content>
