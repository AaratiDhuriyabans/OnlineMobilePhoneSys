<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CompanyMaster.aspx.cs" Inherits="Admin_CompanyMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: right;
        }
        .style4
        {
            text-align: right;
            width: 536px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" min-height:400px; vertical-align:top">
    <center><h1 style="color: #FFFFFF; background-color: #0066FF">CompanyMaster</h1></center>
<table cellpadding="2" class="style1">
        <tr>
            <td class="style4">
                <strong>Enter Company Name*:</strong></td>
            <td valign="top">
                &nbsp;<asp:TextBox ID="txtcompanynm" runat="server" Height="31px" Width="225px" 
                    MaxLength="100" ValidationGroup="a"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcompanynm" Display="Dynamic" ErrorMessage="*" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td valign="top">
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
           AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="companyid" 
           DataSourceID="SqlDataSource1">
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               <asp:BoundField DataField="companyid" HeaderText="COMPANYID" 
                   InsertVisible="False" ReadOnly="True" SortExpression="companyid" />
               <asp:BoundField DataField="companyname" HeaderText="COMPANYNAME" 
                   SortExpression="companyname" />
           </Columns>
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
           DeleteCommand="DELETE FROM company_mst WHERE (companyid = @companyid)" 
           SelectCommand="SELECT companyid, companyname FROM company_mst ORDER BY companyid" 
           UpdateCommand="UPDATE company_mst SET companyname = @companyname WHERE (companyid = @companyid)">
           <DeleteParameters>
               <asp:Parameter Name="companyid" />
           </DeleteParameters>
           <UpdateParameters>
               <asp:Parameter Name="companyname" />
               <asp:Parameter Name="companyid" />
           </UpdateParameters>
       </asp:SqlDataSource>
    </center>
</div>
</asp:Content>

