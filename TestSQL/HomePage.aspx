<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Model.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ยินดีต้อนรับ</title>
    <link href="Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    

    <style>
        p.b {font: italic bold 16px Georgia, serif;}
    </style>

    <style>
    
      
    
        .auto-style1 {
            height: 512px;
        }
        .auto-style2 {
            height: 32px;
        }
    
        .auto-style3 {
            width: 100%;
            height: 333px;
        }
        .auto-style4 {
            height: 51px;
        }
        .auto-style5 {
            height: 51px;
            width: 113px;
        }
        .auto-style6 {
            width: 113px;
        }
        .auto-style7 {
            height: 32px;
            width: 113px;
        }
        .auto-style8 {
            height: 51px;
            width: 520px;
        }
        .auto-style9 {
            width: 520px;
        }
        .auto-style10 {
            height: 32px;
            width: 520px;
        }
        .auto-style11 {
            height: 51px;
            width: 201px;
        }
        .auto-style12 {
            width: 201px;
        }
        .auto-style13 {
            height: 32px;
            width: 201px;
        }
        .auto-style14 {
            height: 51px;
            width: 373px;
        }
        .auto-style15 {
            width: 373px;
        }
        .auto-style16 {
            height: 32px;
            width: 373px;
        }
    
        .auto-style17 {
            width: 113px;
            height: 43px;
        }
        .auto-style18 {
            width: 520px;
            height: 43px;
        }
        .auto-style19 {
            width: 201px;
            height: 43px;
        }
        .auto-style20 {
            width: 373px;
            height: 43px;
        }
        .auto-style21 {
            height: 43px;
        }
    
        .auto-style22 {
            width: 113px;
            height: 53px;
        }
        .auto-style23 {
            width: 520px;
            height: 53px;
        }
        .auto-style24 {
            width: 201px;
            height: 53px;
        }
        .auto-style25 {
            width: 373px;
            height: 53px;
        }
        .auto-style26 {
            height: 53px;
        }
    
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            
            

            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5">
                      <p class="b">  <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></p>
                    </td>
                    <td class="auto-style8">
            
            

            <asp:TextBox ID="txtUser" runat="server" class="form-control" placeholder="Username" Width="220px" ></asp:TextBox>
                    </td>
                    <td class="auto-style11">

                        <p class="b"><asp:Label ID="Label3" runat="server" Text="Username"></asp:Label></p>
                    </td>
                    <td class="auto-style14">
            
            

            <asp:TextBox ID="ReUser" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <p class="b"><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></p>
                    </td>
                    <td class="auto-style8">
            <asp:TextBox ID="txtPass" runat="server" class="form-control" TextMode="Password" placeholder="Password" Width="220px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <p class="b"><asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></p>
                    </td>
                    <td class="auto-style14">
            
            

            <asp:TextBox ID="RePass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                    
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style23">
            <asp:Button ID="BtnSign" runat="server" class="btn btn-success" OnClick="BtnSign_Click" Text="Sign in" Width="113px" />
    
                    </td>
                    <td class="auto-style24">
                        <p class="b"><asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label></p>
                    </td>
                    <td class="auto-style25">
            
            

            <asp:TextBox ID="ReConPass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style26"></td>
                    
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">
                        <p class="b"><asp:Label ID="Label6" runat="server" Text="Firstname"></asp:Label></p>
                    </td>
                    <td class="auto-style15">
            
            

            <asp:TextBox ID="ReFirt" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19">
                        <p class="b"><asp:Label ID="Label7" runat="server" Text="Lastname"></asp:Label></p>
                    </td>
                    <td class="auto-style20">
            
            

            <asp:TextBox ID="ReLast" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style21"></td>
                    
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">
                        <p class="b"><asp:Label ID="Label8" runat="server" Text="Email"></asp:Label></p>
                    </td>
                    <td class="auto-style15">
            
            

            <asp:TextBox ID="ReEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style16">
            <asp:Button ID="register" runat="server" class="btn btn-info" OnClick="register_Click" Text="Register" Width="110px" />
                        <asp:Label ID="ReComplete" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
            </table>

    

        </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.js"></script>
    
    </body>
</html>
