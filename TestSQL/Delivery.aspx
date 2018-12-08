<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delivery.aspx.cs" Inherits="Model.Delivery" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>รายการสั่งอาหาร</title>
    <link href="Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 542px;
        }
        .auto-style2 {
            width: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:GridView ID="GVList" runat="server" AutoGenerateColumns="False" Width="301px" Height="16px" GridLines="None" class="table table-hover">
                <Columns>
                    <asp:BoundField DataField="order_name" HeaderText="รายการอาหาร" />
                    <asp:TemplateField HeaderText="จำนวน" >
                        <ItemTemplate>
                            <asp:Label ID="LB" runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:TextBox ID="TxtPrice" runat="server" Font-Size="17pt" Height="40px" Width="213px" TextMode="Number" ReadOnly="True" ></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text="ค่าจัดส่ง 50 บาท"></asp:Label>
            <br />
            <asp:TextBox ID="TxtCharge" runat="server" Font-Size="17pt" Height="40px" ReadOnly="True" Width="213px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="ใช้ Point แทนเงินสด 1 Point = 1 บาท"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="คุณมี "></asp:Label>
            <asp:Label ID="LBPoint" runat="server"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text=" Point"></asp:Label>
            <br />
            <asp:TextBox ID="TxtPoint" runat="server" Font-Size="17pt" Height="40px" Width="213px" TextMode="Number" AutoPostBack="True" OnTextChanged="TxtPoint_TextChanged" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="ราคารวม"></asp:Label>
            <br />
            <asp:TextBox ID="TxtTotalPrice" runat="server" Font-Size="17pt" Height="40px" ReadOnly="True" Width="213px" ></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="การสั่งซื้อ 50 บาท ได้ Point 1 แต้ม "></asp:Label>
            <br />
            <asp:Label ID="Label8" runat="server" Text="* ไม่รวมกับค่าจัดส่ง"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="ที่อยู่การจัดส่ง"></asp:Label>
            <br />
            <asp:TextBox ID="TxtAddress" runat="server" Height="158px" TextMode="MultiLine" Width="314px" ></asp:TextBox>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
            <asp:Button ID="BTConfirm" runat="server" Text="Confirm"  Height="50px" Width="127px" OnClick="BTConfirm_Click" class="btn btn-primary btn-lg btn-block" />
                    </td>
                    <td class="auto-style1">
            <asp:Button ID="BtCancel" runat="server" Text="Cancel" Height="50px" Width="127px" class="btn btn-primary btn-lg btn-block" OnClick="BtCancel_Click"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>
            <br />
        </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.js"></script>
</body>
</html>
