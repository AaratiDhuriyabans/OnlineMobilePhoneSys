<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Admin_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">    
 <center><h1 style="background-color: #FFFF00">*****User FeedBack*****</h1></center>
 <center style="background-color: #FFFF00">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
        Width="496px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="fullname" HeaderText="Visitor UserName" 
                SortExpression="fullname" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="comment" HeaderText="Comment" 
                SortExpression="comment" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
        SelectCommand="SELECT * FROM [feedback_mst] ORDER BY [date] DESC">
    </asp:SqlDataSource>
 <br />
 </div>  
</asp:Content>

