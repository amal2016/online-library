<%--  -amal_salh2006@yahoo.com --%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Theme="lib_skin" CodeBehind="booooks.aspx.cs" Inherits="online_library.booooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div> 
      
              <asp:ListView ID="ListView1"  DataKeyNames="b_id" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" OnPreRender="ListView1_PreRender" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                  <td id="Td1" runat="server" ><asp:Label ID="booknameLabel" CssClass="capit" runat="server" Text='<%# Eval("bookname") %>' />
                    <br />
                       <asp:Label ID="authorLabel" CssClass="capit" runat="server" Text='<%# Eval("author") %>' />
                    <br />
                    <asp:LinkButton ID="LinkButton1" SkinID="linkb" runat="server" CommandName="Select"  Text= "view"></asp:LinkButton>
                    <br />
                   
                    <asp:Image ID="Image2" runat="server" Height="100px" ToolTip='<%#Eval("bookname") %>' ImageUrl='<%# Eval("img", "{0}") %>' Width="80px" />
                    <br /></td>
            </AlternatingItemTemplate>
            
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
           
            <ItemTemplate>
                <td runat="server" ><asp:Label ID="booknameLabel" CssClass="capit" runat="server" Text='<%# Eval("bookname") %>' />
                    <br />
                    <asp:Label ID="authorLabel"  CssClass="capit"  runat="server" Text='<%# Eval("author") %>' />
                    <br />
                   <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="Select" Text= "view" SkinID="linkb">view</asp:LinkButton>
                    <br />
                    
                    <asp:Image ID="Image2" runat="server" Height="100px" ToolTip='<%#Eval("bookname") %>' ImageUrl='<%# Eval("img", "{0}") %>' Width="80px" />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                    <td colspan = "3">
               
            </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
         
        </asp:ListView>
         <asp:DataPager ID="DataPager2" PageSize="12" OnPreRender="DataPager2_PreRender" runat="server" PagedControlID="ListView1">
            <Fields>
                <asp:NextPreviousPagerField ShowFirstPageButton="True" ShowNextPageButton="False" />
        <asp:NumericPagerField />
        <asp:NextPreviousPagerField ShowLastPageButton="True" ShowPreviousPageButton="False" />
            </Fields>
        </asp:DataPager>
   </div>
    <p>
   
        
   
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libr_con %>" SelectCommand="SELECT book.b_id,book.bookname, book.link, book.img, dept.dept_name, author.fname + '  ' + author.lname AS author FROM book INNER JOIN dept ON book.dept_id = dept.dept_id INNER JOIN author ON book.author_id = author.suth_no"></asp:SqlDataSource>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    </asp:Content>
