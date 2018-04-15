<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="gridchkall.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="Gridv1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333"  GridLines="None" Height="348px" 
            Width="712px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
        <asp:TemplateField HeaderText="select">
        <ItemTemplate>
        <asp:CheckBox ID="CheckBox1" runat="server" />
        </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="EmployeeNo">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("eno") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("eno") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EmployeeName">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ename") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ename") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EmployeeSalary">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("salary") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("salary") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Add">
            <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" Text="Add" 
                    onclick="LinkButton1_Click"></asp:LinkButton>
            </ItemTemplate>
            <FooterTemplate>
               <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" />
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnDelete" runat="server" Text="Delete" onclick="BtnDelete_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:CheckBox ID="chkall" runat="server" Text="SelectAll" AutoPostBack="True" 
            oncheckedchanged="chkall_CheckedChanged" />
    </div>
    </form>
</body>
</html>
