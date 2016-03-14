<%-- amal_salh2006@yahoo.com --%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="datedropdown.ascx.cs"  Inherits="web1.datedropdown" %>


    <strong>year
    </strong>
    <asp:DropDownList ID="ddyear" runat="server"  onchange="PopulateDays()" Height="20px" Width="59px">
    </asp:DropDownList>
    <strong>month
    <asp:DropDownList ID="ddmonth" runat="server"  onchange="PopulateDays()" Height="20px" Width="59px" AutoPostBack="true" >
    </asp:DropDownList>
    day<asp:DropDownList ID="ddday" runat="server" Height="20px" Width="59px">
    </asp:DropDownList>
    </strong>
<asp:CustomValidator ID="Validator" runat="server" ErrorMessage="*" 
ClientValidationFunction = "Validate" ForeColor="#CC0000" />
<script type="text/javascript">
    function PopulateDays() {
        var ddlMonth = document.getElementById("<%=ddmonth.ClientID%>");
    var ddlYear = document.getElementById("<%=ddyear.ClientID%>");
    var ddlDay = document.getElementById("<%=ddday.ClientID%>");
    var y = ddlYear.options[ddlYear.selectedIndex].value;
    var m = ddlMonth.options[ddlMonth.selectedIndex].value != 0;
    if (ddlMonth.options[ddlMonth.selectedIndex].value != 0 && ddlYear.options[ddlYear.selectedIndex].value != 0) {
        var dayCount = 32 - new Date(ddlYear.options[ddlYear.selectedIndex].value, ddlMonth.options[ddlMonth.selectedIndex].value - 1, 32).getDate();
        ddlDay.options.length = 0;
        AddOption(ddlDay, "DD", "0");
        for (var i = 1; i <= dayCount; i++) {
            AddOption(ddlDay, i, i);
        }
    }
}

function AddOption(ddl, text, value) {
    var opt = document.createElement("OPTION");
    opt.text = text;
    opt.value = value;
    ddl.options.add(opt);
}

function Validate(sender, args) {
    var ddlMonth = document.getElementById("<%=ddmonth.ClientID%>");
    var ddlYear = document.getElementById("<%=ddyear.ClientID%>");
    var ddlDay = document.getElementById("<%=ddday.ClientID%>");
    args.IsValid = (ddlDay.selectedIndex != 0 && ddlMonth.selectedIndex != 0 && ddlYear.selectedIndex != 0)
}
</script>