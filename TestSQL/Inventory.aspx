<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="Model.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>รายการอาหาร</title>
    <link href="Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 109px;
        }
        .auto-style3 {
            width: 109px;
        }
        .auto-style4 {
            height: 26px;
            width: 774px;
        }
        .auto-style5 {
            width: 774px;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 774px;
            height: 29px;
        }
        .auto-style8 {
            width: 109px;
            height: 29px;
        }
        .auto-style9 {
            height: 1015px;
            text-align: left;
        }
        .auto-style13 {
            height: 26px;
            width: 273px;
        }
        .auto-style14 {
            height: 29px;
            width: 273px;
        }
        .auto-style15 {
            width: 273px;
        }
        .auto-style17 {
            width: 575px;
        }
        .auto-style18 {
            width: 540px;
        }
        </style>
</head>
<body style="height: 1030px">
    <form id="form1" runat="server">
        <div class="auto-style9">
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="รหัสสมาชิก"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="LbId" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:Label ID="Label4" runat="server" Text="ชื่อสมาชิก"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="LbFirtName" runat="server"></asp:Label>
                        <asp:Label ID="LbLastName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" Text="คะแนนสะสม"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="LbPoint" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
            <asp:Button ID="BtnEdit" runat="server" OnClick="BtnEdit_Click" Text="Option" class="btn btn-info"/>
                        <asp:Button ID="BtnOut" runat="server" OnClick="BtnOut_Click" Text="Log out" class="btn btn-danger"/>
                    </td>
                </tr>
            </table>
            <br />


            

            <asp:GridView ID="GVMenu" BorderWidth="0px" GridLines="None" AutoGenerateColumns="False" CssClass="table table-condensed" runat="server" Width="1041px" HorizontalAlign="Center" Height="512px"    >
                <Columns>
                    <asp:BoundField DataField="order_id" HeaderText="รหัสอาหาร"  />
                    <asp:BoundField DataField="order_name" HeaderText="ชื่ออาหาร" />
                    <asp:TemplateField HeaderText="รูป">
                        <ItemTemplate>
                            <asp:Image Height="90px" Width="150px" ImageUrl='<%# Eval("order_image") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="order_price" HeaderText="ราคาอาหาร(บาท)" />
                    <asp:BoundField DataField="order_unit" HeaderText="จำนวนอาหาร" />
                    <asp:TemplateField HeaderText="สั่งซื้อ">
                        <ItemTemplate>
                            <asp:DropDownList ID="DDL_Select" runat="server" Height="32px" Width="70px" EnableTheming="True" >
                                <asp:ListItem Value="0">0</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>


            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
            <asp:Button ID="Ordering" runat="server" Height="48px" OnClick="Ordering_Click" Text="OK" Width="124px" class="btn btn-primary btn-lg btn-block"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />


            

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />


        </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.js"></script>
</body>
</html>
