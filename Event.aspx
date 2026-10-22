<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="event.aspx.cs" Inherits="program4._event" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Event Registration</title>
    <style type="text/css">
        .auto-style1 { width: 100%; }
        .label { width: 200px; padding: 10px; }
        .input { padding: 10px; }
        .validator { color: red; padding-left: 10px; }
        .title {
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="title">Event Registration</div>
        <table class="auto-style1">
            <!-- Name -->
            <tr>
                <td class="label">Name:</td>
                <td class="input">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="TextBox1" ErrorMessage="Full Name is required"
                        CssClass="validator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <!-- Email -->
            <tr>
                <td class="label">Email:</td>
                <td class="input">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="TextBox2" ErrorMessage="Email is required"
                        CssClass="validator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <!-- Gender -->
            <tr>
                <td class="label">Gender:</td>
                <td class="input">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="RadioButtonList1" ErrorMessage="Please select gender"
                        CssClass="validator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <!-- Phone -->
            <tr>
                <td class="label">Phone Number:</td>
                <td class="input">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="TextBox3" ErrorMessage="Phone number is required"
                        CssClass="validator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <!-- Address -->
            <tr>
                <td class="label">Address:</td>
                <td class="input">
                    <asp:TextBox ID="TextBox4" runat="server" Height="100px" Width="260px"
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="TextBox4" ErrorMessage="Address is required"
                        CssClass="validator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <!-- Event -->
            <tr>
                <td class="label">Event Registration:</td>
                <td class="input">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select Event</asp:ListItem>
                        <asp:ListItem>AI &amp; Machine Learning Workshop</asp:ListItem>
                        <asp:ListItem>Code Jam</asp:ListItem>
                        <asp:ListItem>Gaming &amp; eSports</asp:ListItem>
                        <asp:ListItem>Fusion Fiesta</asp:ListItem>
                        <asp:ListItem>Canvas Caravan</asp:ListItem>
                        <asp:ListItem>Dance</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ControlToValidate="DropDownList1" InitialValue="Select Event"
                        ErrorMessage="Please select an event" CssClass="validator">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <!-- Submit -->
            <tr>
                <td class="label"></td>
                <td class="input">
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px"
                        OnClick="Button1_Click" />
                </td>
            </tr>
            <!-- Message -->
            <tr>
                <td class="label"></td>
                <td class="input">
                    <asp:Label ID="Label1" runat="server" ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
