<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Model.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 353px;
            text-align: center;
        }
        .auto-style3 {
            height: 36px;
        }
        .auto-style4 {
            text-align: center;
            height: 36px;
            width: 452px;
        }
        .auto-style5 {
            height: 36px;
            width: 461px;
            text-align: right;
        }
        .auto-style6 {
            width: 461px;
            text-align: right;
        }
        .auto-style7 {
            width: 452px;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            height: 36px;
            text-align: right;
        }
        .auto-style10 {
            text-align: left;
            width: 452px;
        }
        .auto-style11 {
            text-align: justify;
            width: 452px;
        }
        .auto-style12 {
            height: 36px;
            width: 452px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="First name"></asp:Label>
                    </td>
                    <td class="auto-style4">
            <asp:TextBox ID="TxtFirtName" runat="server" class="form-control" Font-Size="13pt" Height="30px" Width="250px" ></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Last name"></asp:Label>
                    </td>
                    <td class="auto-style7">
            <asp:TextBox ID="TxtLastName" runat="server" class="form-control" Font-Size="13pt" Height="30px" Width="250px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="Email "></asp:Label>
                    </td>
                    <td class="auto-style7">
            <asp:TextBox ID="TxtEmail" runat="server" class="form-control" Font-Size="13pt" Height="30px" Width="250px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                    </td>
                    <td class="auto-style12">
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                 <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style8">
                        <br />
                        <br />
                     </td>
                    <td class="auto-style10">
                        <asp:Button ID="BtnSave" runat="server" Text="Save" class="btn btn-info" OnClick="BtnSave_Click" Width="87px"/>
                        <asp:Button ID="BtnBack" runat="server" Text="Back" class="btn btn-info" OnClick="BtnBack_Click" Width="87px"/>
                     </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
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
