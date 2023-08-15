<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: right;
            width: 614px;
            font-weight: bold;
        }
        .style5
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" min-height:400px; vertical-align:top">
<center><h1 style="color: #FFFFFF; background-color: #000099">Change Password</h1></center>
    <table cellpadding="2" class="style1">
        <tr>
            <td class="style4">
                Username*:</td>
            <td class="style5">
                <asp:TextBox ID="txtusername" runat="server" Height="35px" Width="232px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Enter New Password*:</td>
            <td class="style5">
                <asp:TextBox ID="txtnewpassword" runat="server" Height="35px" Width="232px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtnewpassword" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Confirm Password*:</td>
            <td class="style5">
                <asp:TextBox ID="txtconpassword" runat="server" Height="35px" Width="232px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtconpassword" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;
                <asp:Button ID="Button1" runat="server" style="font-weight: 700; color: #FFFFFF; background-color: #000099;" 
                    Text="Change Password!" onclick="Button1_Click" />
                &nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</div>
</asp:Content>

