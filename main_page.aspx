<%--  -amal_salh2006@yahoo.com --%>
<%@ Page Title="Books" Language="C#" MasterPageFile="~/Site.Master" Theme="lib_skin" AutoEventWireup="true" CodeBehind="main_page.aspx.cs" Inherits="online_library.main_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div>
      
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="b_id" DataSourceID="SqlDataSource1" GroupItemCount="3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                  <td id="Td1" runat="server" ><asp:Label ID="booknameLabel" CssClass="capit" runat="server" Text='<%# Eval("bookname") %>' />
                    <br />
                       <asp:Label ID="authorLabel" CssClass="capit" runat="server" Text='<%# Eval("author") %>' />
                    <br />
                      <asp:LinkButton ID="LinkButton1" runat="server"  SkinID="linkb" CommandName="Select" Text="View"></asp:LinkButton>
                    <br />
                   
                    <asp:Image ID="Image2" runat="server" Height="100px"  ToolTip='<%#Eval("bookname") %>' ImageUrl='<%# Eval("img", "{0}") %>' Width="80px" />
                    <br /></td>
            </AlternatingItemTemplate>
            
            <EmptyDataTemplate>
                <table id="Table1" runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td id="Td2" runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
           
            <ItemTemplate>
                <td id="Td3" runat="server" ><asp:Label ID="booknameLabel" CssClass="capit" runat="server" Text='<%# Eval("bookname") %>' />
                    <br />
                    <asp:Label ID="authorLabel" CssClass="capit" runat="server" Text='<%# Eval("author") %>' />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select" Text="View"  SkinID="linkb"></asp:LinkButton>
                    <br />
                    
                    <asp:Image ID="Image2" runat="server" Height="100px" ToolTip='<%#Eval("bookname") %>' ImageUrl='<%# Eval("img", "{0}") %>'   Width="80px" />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td4" runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr2" runat="server">
                        <td id="Td5" runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
         
        </asp:ListView>
    </div>
  <p>
   
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libr_con %>" SelectCommand="SELECT book.b_id,book.bookname, book.link, book.img, dept.dept_name, author.fname + '  ' + author.lname AS author FROM book INNER JOIN dept ON book.dept_id = dept.dept_id INNER JOIN author ON book.author_id = author.suth_no where book.dept_id=@did">
            <SelectParameters>
                <asp:QueryStringParameter Name="did" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div><br />
    </div>
</asp:Content>
