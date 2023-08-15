<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Admin_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: right;
            width: 534px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" min-height:400px; vertical-align:top">
  <table cellspacing="1" class="style1">
            <tr>
                <td class="style2" 
                    style="border: thin solid #000000; font-family: Arial; background-color: #9900CC; font-size: medium; font-weight: bold; font-style: normal" 
                    valign="top">
                    <h1 class="style2">
                        Contact Us</h1>
                </td>
            </tr>
            <tr>
                <td style="border-color: #000000; background-color: #3399FF; border-style: none solid solid solid; border-width: thin" 
                    valign="top">
                    <table cellspacing="1" class="style1">
                        <tr>
                            <td class="style4" 
                                style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <strong>EnterName:*</strong></td>
                            <td style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <asp:TextBox ID="txtusername" runat="server" Height="27px" Width="209px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtname" Display="Dynamic" ErrorMessage="*" Font-Bold="True" 
                                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF; font-weight: 700;" 
                                valign="top">
                                Enter Address:*</td>
                            <td style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <asp:TextBox ID="txtaddress" runat="server" Height="34px" Width="209px" 
                                    TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="*" 
                                    Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <strong>Enter EmailID:*</strong></td>
                            <td style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <asp:TextBox ID="txtmail" runat="server" Height="27px" Width="209px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtEmailID" Display="Dynamic" ErrorMessage="*" 
                                    Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtEmailID" Display="Dynamic" ErrorMessage="*Invalid Email" 
                                    Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <strong>Enter MobileNumber:*</strong></td>
                            <td style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <asp:TextBox ID="txtmobno" runat="server" Height="27px" Width="209px" 
                                    MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtMobileNumber" Display="Dynamic" ErrorMessage="*" 
                                    Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <strong>Enter Query:*</strong>&nbsp;&nbsp;&nbsp; </td>
                            <td style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <asp:TextBox ID="txtquery" runat="server" Height="31px" Width="209px" 
                                    TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtquery" Display="Dynamic" ErrorMessage="*" 
                                    Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" 
                                style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                &nbsp;</td>
                            <td style="font-family: Arial; font-size: medium; font-style: normal; background-color: #FFFFFF" 
                                valign="top">
                                <br />
                                <asp:Button ID="btnSend" runat="server" Text="Send" style="font-weight: 700" 
                                    onclick="btnSend_Click" />
&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" style="font-weight: 700"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="border-style: none solid solid solid; border-width: thin; border-color: #000000; background-color: #FF99FF; font-family: Arial; font-size: medium; font-weight: bold; font-style: normal;" 
                    valign="top">
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    
</div>
</asp:Content>

