<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Theme="lib_skin" CodeBehind="m_dept.aspx.cs" Inherits="online_library.m_dept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div>
         
 <asp:Label CssClass="pp" runat="server" ID="kk" Text="Manage Cateogories"></asp:Label>
        <asp:GridView ID="GridView4" CssClass="Grid1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="dept_id" DataSourceID="deptsdatasource" ForeColor="Black" GridLines="Vertical" Width="568px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="dept_id" HeaderText="Number" InsertVisible="False" ReadOnly="True" SortExpression="dept_id" />
                <asp:TemplateField HeaderText="Name" SortExpression="dept_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" MaxLength="80" Text='<%# Bind("dept_name") %>' Width="150px" Height="22px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" SkinID="req"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("dept_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description" SortExpression="descrip">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2"   Width="204px" Height="93px" runat="server" CssClass="capit" Text='<%# Bind("descrip") %>' TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" SkinID="req"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("descrip") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <RowStyle CssClass="row" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="deptsdatasource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:libr_con %>" DeleteCommand="DELETE FROM [dept] WHERE [dept_id] = @original_dept_id AND (([descrip] = @original_descrip) OR ([descrip] IS NULL AND @original_descrip IS NULL)) AND (([dept_name] = @original_dept_name) OR ([dept_name] IS NULL AND @original_dept_name IS NULL))" InsertCommand="INSERT INTO [dept] ([descrip], [dept_name]) VALUES (@descrip, @dept_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [dept]" UpdateCommand="UPDATE [dept] SET [descrip] = @descrip, [dept_name] = @dept_name WHERE [dept_id] = @original_dept_id AND (([descrip] = @original_descrip) OR ([descrip] IS NULL AND @original_descrip IS NULL)) AND (([dept_name] = @original_dept_name) OR ([dept_name] IS NULL AND @original_dept_name IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_dept_id" Type="Int32" />
                <asp:Parameter Name="original_descrip" Type="String" />
                <asp:Parameter Name="original_dept_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="descrip" Type="String" />
                <asp:Parameter Name="dept_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="descrip" Type="String" />
                <asp:Parameter Name="dept_name" Type="String" />
                <asp:Parameter Name="original_dept_id" Type="Int32" />
                <asp:Parameter Name="original_descrip" Type="String" />
                <asp:Parameter Name="original_dept_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
<br />



    </div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
