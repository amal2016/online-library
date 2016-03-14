<%--  -amal_salh2006@yahoo.com --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="usermanage.aspx.cs" Inherits="online_library.usermanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
      
        
      
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="body">
        <br />
     
        <asp:Label CssClass="pp" runat="server" ID="kk" Text="Manage Users"></asp:Label>
        <asp:GridView ID="grid"  CssClass="Grid1" runat="server" Width="72px" AutoGenerateColumns="False" 

         CellPadding="3"  DataKeyNames="userno" OnRowDataBound="grid_RowDataBound" OnSelectedIndexChanging="grid_SelectedIndexChanging" BackColor="White" BorderColor="#999999" BorderWidth="1px" ForeColor="Black" GridLines="Vertical" Height="188px" BorderStyle="Solid" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
             <AlternatingRowStyle BackColor="#CCCCCC" />       

      <Columns>

        <asp:BoundField DataField="userno" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="userno" />

        <asp:BoundField DataField="username" HeaderText="UserName" SortExpression="username" />

        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
             <asp:BoundField DataField="lastlogin" ApplyFormatInEditMode="true" DataFormatString="{0:d}" HeaderText="LastLogin" SortExpression="lastlogin" />
             <asp:BoundField DataField="joindate" ApplyFormatInEditMode="true" DataFormatString="{0:d}" HeaderText="Join Date" SortExpression="joindate" />
          <asp:BoundField DataField="ustatus" HeaderText="Status" SortExpression="ustatus" />

          <asp:TemplateField HeaderText="Active/Block" ShowHeader="False">
              <ItemTemplate>
                  <asp:Button ID="btn_blk" runat="server" CausesValidation="false" CommandName="Select" Text="button" />
              </ItemTemplate>
          </asp:TemplateField>

          <asp:TemplateField HeaderText="Delete" ShowHeader="False">
              <ItemTemplate>
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return isDelete();" CausesValidation="False" CommandName="Delete" >Delete</asp:LinkButton>
              </ItemTemplate>
          </asp:TemplateField>

      </Columns>     
            <RowStyle CssClass="row" />
             <FooterStyle BackColor="#CCCCCC" />

        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />       

             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:libr_con %>" DeleteCommand="DELETE FROM [u_user] WHERE [userno] = @original_userno AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND [email] = @original_email AND (([lastlogin] = @original_lastlogin) OR ([lastlogin] IS NULL AND @original_lastlogin IS NULL)) AND (([joindate] = @original_joindate) OR ([joindate] IS NULL AND @original_joindate IS NULL)) AND (([ustatus] = @original_ustatus) OR ([ustatus] IS NULL AND @original_ustatus IS NULL))" InsertCommand="INSERT INTO [u_user] ([username], [email], [lastlogin], [joindate], [ustatus]) VALUES (@username, @email, @lastlogin, @joindate, @ustatus)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [userno], [username], [email], [lastlogin], [joindate], [ustatus] FROM [u_user] WHERE ([urole] = @urole)" UpdateCommand="UPDATE [u_user] SET [username] = @username, [email] = @email, [lastlogin] = @lastlogin, [joindate] = @joindate, [ustatus] = @ustatus WHERE [userno] = @original_userno AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND [email] = @original_email AND (([lastlogin] = @original_lastlogin) OR ([lastlogin] IS NULL AND @original_lastlogin IS NULL)) AND (([joindate] = @original_joindate) OR ([joindate] IS NULL AND @original_joindate IS NULL)) AND (([ustatus] = @original_ustatus) OR ([ustatus] IS NULL AND @original_ustatus IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_userno" Type="Int32" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_lastlogin" DbType="Date" />
                <asp:Parameter Name="original_joindate" DbType="Date" />
                <asp:Parameter Name="original_ustatus" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="lastlogin" DbType="Date" />
                <asp:Parameter Name="joindate" DbType="Date" />
                <asp:Parameter Name="ustatus" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="user" Name="urole" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="lastlogin" DbType="Date" />
                <asp:Parameter Name="joindate" DbType="Date" />
                <asp:Parameter Name="ustatus" Type="String" />
                <asp:Parameter Name="original_userno" Type="Int32" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_lastlogin" DbType="Date" />
                <asp:Parameter Name="original_joindate" DbType="Date" />
                <asp:Parameter Name="original_ustatus" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
       </div>
 
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    </asp:Content>
