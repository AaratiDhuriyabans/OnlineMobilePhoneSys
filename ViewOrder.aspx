<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewOrder.aspx.cs" Inherits="Admin_ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
    <center><h1 style="color: #000000; background-color: #FFFF00"> *****User Order Details*****</h1></center>
    <center style="background-color: #FFFF00">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Width="759px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="OrderID" 
                    SortExpression="orderid" />
                <asp:BoundField DataField="sno" HeaderText="Sr.No" SortExpression="sno" />
                <asp:BoundField DataField="pid" HeaderText="ProductID" SortExpression="pid" />
                <asp:BoundField DataField="pname" HeaderText="ProductName" 
                    SortExpression="pname" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" 
                    SortExpression="quantity" />
                <asp:BoundField DataField="dateoforder" HeaderText="DateOfOrder" 
                    SortExpression="dateoforder" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        </center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
            SelectCommand="SELECT * FROM [orderdetails_mst] ORDER BY [orderid], [pid]">
        </asp:SqlDataSource>
</div>
</asp:Content>

