<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CategoryMaster.aspx.cs" Inherits="Admin_CategoryMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 630px;
        }
        .style4
        {
            width: 630px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" min-height:400px; vertical-align:top">
   <center><h1>Category Master</h1></center>
    <table cellpadding="2" class="style1">
        <tr>
            <td class="style4">
                <strong>Enter Category Name*:</strong></td>
            <td>
                &nbsp;<asp:TextBox ID="txtcatnm" runat="server" Height="31px" Width="225px" 
                    MaxLength="100" ValidationGroup="a"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcatnm" Display="Dynamic" ErrorMessage="*" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp; &nbsp;<asp:Button ID="btnsave" runat="server" 
                    style="font-weight: 700" Text="Save" onclick="btnsave_Click" 
                    ValidationGroup="a" />
&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
    </table>
    <center>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="catid" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="catid" HeaderText="CATEOGRYID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="catid" />
                <asp:BoundField DataField="catnm" HeaderText="CATEGORYNAME" 
                    SortExpression="catnm" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
            DeleteCommand="DELETE FROM category_mst WHERE (catid = @catid)" 
            SelectCommand="SELECT catid, catnm FROM category_mst ORDER BY catid" 
            UpdateCommand="UPDATE category_mst SET catnm = @catnm WHERE (catid = @catid)">
            <DeleteParameters>
                <asp:Parameter Name="catid" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="catnm" />
                <asp:Parameter Name="catid" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</div>
</asp:Content>

