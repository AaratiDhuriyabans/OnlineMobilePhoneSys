<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="Admin_ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 214px;
            text-align: right;
        }
        .style4
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
 <h1 class="style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Product Details</h1>
    <table cellspacing="1" class="style1">
        <tr>
            <td class="style3">
                CompanyName*:</td>
            <td>
                <asp:DropDownList ID="ddlcompany" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="companyname" 
                    DataValueField="companyid" Height="20px" Width="176px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
                    SelectCommand="SELECT [companyid], [companyname] FROM [company_mst]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                CategoryName*:</td>
            <td>
                <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="catnm" DataValueField="catid" 
                    Height="20px" Width="158px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
                    SelectCommand="SELECT [catid], [catnm] FROM [category_mst]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    ProductName*:</td>
            <td>
                <asp:TextBox ID="txtproductname" runat="server" Height="36px" Width="444px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtproductname" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Price*:</td>
            <td>
                <asp:TextBox ID="txtprice" runat="server" Height="36px" Width="444px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtprice" Display="Dynamic" ErrorMessage="*" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    OS(Operating System)*:</td>
            <td>
                <asp:TextBox ID="txtos" runat="server" Height="55px" Width="450px" 
                        TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtos" Display="Dynamic" ErrorMessage="*" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    RAM*:</td>
            <td>
                <asp:TextBox ID="txtram" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtram" Display="Dynamic" ErrorMessage="*" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    ItemWeight*:</td>
            <td>
                <asp:TextBox ID="txtitemweight" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtitemweight" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Product Diamension*:</td>
            <td>
                <asp:TextBox ID="txtproductdiamension" runat="server" Height="36px" 
                        Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtproductdiamension" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Batteries*:</td>
            <td>
                <asp:TextBox ID="txtbatteries" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtbatteries" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Item Model Number*:</td>
            <td>
                <asp:TextBox ID="txtitemmodelnumber" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtitemmodelnumber" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Wireless Communication Technology*:</td>
            <td>
                <asp:TextBox ID="txtwct" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtwct" Display="Dynamic" ErrorMessage="*" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Connectectivity Technologoies*:</td>
            <td>
                <asp:TextBox ID="txtct" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtct" Display="Dynamic" ErrorMessage="*" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Special Features*:</td>
            <td>
                <asp:TextBox ID="txtfeatures" runat="server" Height="73px" TextMode="MultiLine" 
                        Width="441px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtfeatures" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Display Technology*:</td>
            <td>
                <asp:TextBox ID="txtdisplay" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" 
                    ValidationGroup="a" ControlToValidate="txtdisplay"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Other Camera Features*:</td>
            <td>
                <asp:TextBox ID="txtothercamera" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" 
                    ValidationGroup="a" ControlToValidate="txtothercamera"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Form Factor*:</td>
            <td>
                <asp:TextBox ID="txtformfactor" runat="server" Height="61px" TextMode="MultiLine" 
                        Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtformfactor" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Weight*:</td>
            <td>
                <asp:TextBox ID="txtweight" runat="server" Height="56px" TextMode="MultiLine" 
                        Width="443px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtweight" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Color*:</td>
            <td>
                <asp:TextBox ID="txtcolor" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtcolor" Display="Dynamic" ErrorMessage="*" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Battery Power Rating*:</td>
            <td>
                <asp:TextBox ID="txtbattery" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtbattery" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    Phone TalkTime*:</td>
            <td>
                <asp:TextBox ID="txtphonetalktime" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="txtphonetalktime" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    PhoneStandBy Time*:</td>
            <td>
                <asp:TextBox ID="txtphonetime" runat="server" Height="36px" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="txtphonetime" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    What&nbsp; In The Box*:</td>
            <td>
                <asp:TextBox ID="txtquestion" runat="server" Height="50px" TextMode="MultiLine" 
                        Width="450px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="txtquestion" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    ProductImage*:</td>
            <td>
                &nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="438px" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                    &nbsp;</td>
            <td>
                <asp:Button ID="btnsave" runat="server" style="font-weight: 700" Text="Save*" 
                        ValidationGroup="a" onclick="btnsave_Click" />
&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        </table>
        <center>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pid" 
                DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" />
                    <asp:BoundField DataField="pid" HeaderText="Product ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="pid" />
                    <asp:BoundField DataField="pname" HeaderText="ProductName" 
                        SortExpression="pname" />
                    <asp:BoundField DataField="catid" HeaderText="CatID" 
                        SortExpression="catid" />
                    <asp:BoundField DataField="companyid" HeaderText="CompanyId" 
                        SortExpression="companyid" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="os" HeaderText="Operating System" 
                        SortExpression="os" />
                    <asp:BoundField DataField="ram" HeaderText="RAM" SortExpression="ram" />
                    <asp:BoundField DataField="itemweight" HeaderText="ItemWeight" 
                        SortExpression="itemweight" />
                    <asp:BoundField DataField="productdiamensions" HeaderText="ProductDiamensions" 
                        SortExpression="productdiamensions" />
                    <asp:BoundField DataField="batteries" HeaderText="Batteries" 
                        SortExpression="batteries" />
                    <asp:BoundField DataField="itemmodelnumber" HeaderText="ItemModelNumber" 
                        SortExpression="itemmodelnumber" />
                    <asp:BoundField DataField="wirelesscommunicationtechnologies" 
                        HeaderText="WirelessCommunicationTechnologies" 
                        SortExpression="wirelesscommunicationtechnologies" />
                    <asp:BoundField DataField="connectivitytechnologies" 
                        HeaderText="ConnectivityTechnologies" 
                        SortExpression="connectivitytechnologies" />
                    <asp:BoundField DataField="specialfeatures" HeaderText="SpecialFeatures" 
                        SortExpression="specialfeatures" />
                    <asp:BoundField DataField="displaytechnology" HeaderText="DisplayTechnology" 
                        SortExpression="displaytechnology" />
                    <asp:BoundField DataField="othercamerafeatures" 
                        HeaderText="othercamerafeatures" SortExpression="othercamerafeatures" />
                    <asp:BoundField DataField="formfactor" HeaderText="FormFactor" 
                        SortExpression="formfactor" />
                    <asp:BoundField DataField="w" HeaderText="Weight" SortExpression="w" />
                    <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                    <asp:BoundField DataField="batterypowerrating" HeaderText="BatteryPowerRating" 
                        SortExpression="batterypowerrating" />
                    <asp:BoundField DataField="phonetalktime" HeaderText="PhoneTalkTime" 
                        SortExpression="phonetalktime" />
                    <asp:BoundField DataField="phonestandbytime" HeaderText="PhoneStandbytime" 
                        SortExpression="phonestandbytime" />
                    <asp:BoundField DataField="whatinthebox" HeaderText="whatinthebox" 
                        SortExpression="whatinthebox" />
                    <asp:TemplateField HeaderText="Picture">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" 
                                ImageUrl='<%# Eval("picture") %>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                               </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:OnlineMobilePhoneSystem %>" 
                DeleteCommand="DELETE FROM product_mst WHERE (pid = @pid)" 
                SelectCommand="SELECT pid, pname, catid, companyid, price, os, ram, itemweight, productdiamensions, batteries, itemmodelnumber, wirelesscommunicationtechnologies, connectivitytechnologies, specialfeatures, displaytechnology, othercamerafeatures, formfactor, w, color, batterypowerrating, phonetalktime, phonestandbytime, whatinthebox, picture FROM product_mst ORDER BY pid" 
                
                UpdateCommand="UPDATE product_mst SET pname = @pname, catid = @catid, companyid = @companyid, price = @price, os = @os, ram = @ram, itemweight = @itemweight, productdiamensions = @productdiamensions, batteries = @batteries, itemmodelnumber = @itemmodelnumber, wirelesscommunicationtechnologies = @wirelesscommunicationtechnologies, connectivitytechnologies = @connectivitytechnologies, specialfeatures = @specialfeatures, displaytechnology = @displaytechnology, othercamerafeatures = @othercamerafeatures, formfactor = @formfactor, w = @w, color = @color, batterypowerrating = @batterypowerrating, phonetalktime = @phonetalktime, phonestandbytime = @phonestandbytime, whatinthebox = @whatinthebox WHERE (pid = @pid)">
                <DeleteParameters>
                    <asp:Parameter Name="pid" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pname" />
                    <asp:Parameter Name="catid" />
                    <asp:Parameter Name="companyid" />
                    <asp:Parameter Name="price" />
                    <asp:Parameter Name="os" />
                    <asp:Parameter Name="ram" />
                    <asp:Parameter Name="itemweight" />
                    <asp:Parameter Name="productdiamensions" />
                    <asp:Parameter Name="batteries" />
                    <asp:Parameter Name="itemmodelnumber" />
                    <asp:Parameter Name="wirelesscommunicationtechnologies" />
                    <asp:Parameter Name="connectivitytechnologies" />
                    <asp:Parameter Name="specialfeatures" />
                    <asp:Parameter Name="displaytechnology" />
                    <asp:Parameter Name="othercamerafeatures" />
                    <asp:Parameter Name="formfactor" />
                    <asp:Parameter Name="w" />
                    <asp:Parameter Name="color" />
                    <asp:Parameter Name="batterypowerrating" />
                    <asp:Parameter Name="phonetalktime" />
                    <asp:Parameter Name="phonestandbytime" />
                    <asp:Parameter Name="whatinthebox" />
                    <asp:Parameter Name="pid" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </center>
       
</div>
</asp:Content>

