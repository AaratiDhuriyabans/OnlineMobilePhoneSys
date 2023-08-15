<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CompanyCategoryMapping.aspx.cs" Inherits="Admin_CompanyCategoryMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 590px;
            text-align: right;
            font-weight: 700;
        }
        .style4
        {
            width: 590px;
            text-align: right;
        }
        .style6
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" min-height:400px; vertical-align:top">
<center><h1 style="color: #FFFFFF; background-color: #0066FF">CompanyCategoryMapping</h1></center>
    <table cellpadding="2" class="style1">
        <tr>
            <td class="style4" valign="top">
                <strong>Select Company*:</strong></td>
            <td>
                <asp:DropDownList ID="ddlcompany" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="companyname" 
                    DataValueField="companyid">
                    <asp:ListItem Value="-1">Select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
                    SelectCommand="SELECT [companyid], [companyname] FROM [company_mst] ORDER BY [companyid], [companyname]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4" valign="top">
                <strong>Select Category*:</strong></td>
            <td class="style6">
                <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="catnm" DataValueField="catid" 
                    Width="184px">
                    <asp:ListItem Value="-1">Select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
                    SelectCommand="SELECT [catid], [catnm] FROM [category_mst] ORDER BY [catid], [catnm]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;<asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                    Text="Attach" onclick="Button1_Click" />
                &nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <center>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataKeyNames="companycategoryid" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="companycategoryid" HeaderText="companycategoryid" 
                    InsertVisible="False" ReadOnly="True" SortExpression="companycategoryid" />
                <asp:BoundField DataField="catnm" HeaderText="catnm" 
                    SortExpression="catnm" />
                <asp:BoundField DataField="companyname" HeaderText="companyname" 
                    SortExpression="companyname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
            DeleteCommand="DELETE FROM companycategorymapping WHERE (catid = @catid)" 
            
            SelectCommand="SELECT companycategorymapping.companycategoryid, category_mst.catnm, company_mst.companyname FROM category_mst INNER JOIN companycategorymapping ON category_mst.catid = companycategorymapping.catid INNER JOIN company_mst ON companycategorymapping.companyid = company_mst.companyid ORDER BY category_mst.catnm, company_mst.companyname">
            <DeleteParameters>
                <asp:Parameter Name="catid" />
            </DeleteParameters>
        </asp:SqlDataSource>
</center>
</div>
    </asp:Content>

