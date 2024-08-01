<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="StudentCRUD.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 59%; height: 135px;">
        <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
                <asp:Label ID="Label1" runat="server" Text="Student Details" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="width: 250px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text="Student ID"></asp:Label>
            </td>
            <td style="width: 250px">
                <asp:TextBox ID="idBox" runat="server" Font-Size="Small" Width="191px" CssClass="col-md-offset-0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" Text="Full Name"></asp:Label>
            </td>
            <td style="width: 250px">
                <asp:TextBox ID="fullNameBox" runat="server" Font-Size="Small" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" Text="Faculty"></asp:Label>
            </td>
            <td style="width: 250px">
                <asp:DropDownList ID="facultyBox" runat="server">
                    <asp:ListItem>Info Management</asp:ListItem>
                    <asp:ListItem>Theology</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Software Engineering</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text="Course Name"></asp:Label>
            </td>
            <td style="width: 250px">
                <asp:TextBox ID="courseNameBox" runat="server" Font-Size="Small" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" Text="Course Code"></asp:Label>
            </td>
            <td style="width: 250px">
                <asp:TextBox ID="courseCodeBox" runat="server" Font-Size="Small" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" Text="Marks"></asp:Label>
            </td>
            <td style="width: 250px">
                <asp:TextBox ID="marksBox" runat="server" Font-Size="Small" Width="191px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" Text="Date of Birth"></asp:Label>
            </td>
            <td style="width: 250px">
                <asp:TextBox ID="dateBox" runat="server" Font-Size="Small" TextMode="Date" Width="191px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
                <asp:Button ID="insertBTN" runat="server" OnClick="insertBTN_Click" Text="Insert" Width="86px" />
                <asp:Button ID="updateBTN" runat="server" OnClick="updateBTN_Click" Text="Update" />
                <asp:Button ID="deleteBTN" runat="server" Text="Delete" OnClick="deleteBTN_Click" />
                <asp:Button ID="displayBTN" runat="server" Text="Display" OnClick="displayBTN_Click1" />
                <asp:Button ID="searchBTN" runat="server" OnClick="searchBTN_Click" style="margin-top: 2" Text="Search" />
             </td>
            <td style="width: 250px">
                &nbsp;</td>
        </tr>
         <tr>
            <td style="width: 23px">&nbsp;</td>
            <td style="width: 350px">
            &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
            </td>
            <td style="width: 250px">&nbsp;</td>
        </tr>

    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" Width="1011px">
    </asp:GridView>
    <br />
</asp:Content>