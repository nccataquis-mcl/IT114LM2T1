<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <h1>Malayan Music Festival Registration</h1>
    <form runat="server">
        <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>
        <asp:TextBox ID="First_Name" runat="server" placeholder="Enter First Name" ></asp:TextBox>
        <br />
        <asp:TextBox ID="Last_Name" runat="server" placeholder="Enter Last Name" ></asp:TextBox>
        <br />

        <br />
        <br />

        <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>
        <asp:TextBox ID="AgeTextBox" runat="server" TextMode="Number" placeholder="Enter your age"></asp:TextBox>
        <br />
        <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>
        <asp:DropDownList ID="TicketTypeDropDownList" runat="server" AutoPostBack="true">
        <asp:ListItem Value="Starter">Starter</asp:ListItem>
        <asp:ListItem Value="General Admission">General Admission</asp:ListItem>
        <asp:ListItem Value="Gold">Gold</asp:ListItem>
        <asp:ListItem Value="VIP">VIP</asp:ListItem>
        </asp:DropDownList>

        <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>
        <asp:RadioButtonList ID="AttendanceDaysRadioButtonList" runat="server" RepeatLayout="UnorderedList">
        <asp:ListItem Value="Day1Only">Day 1</asp:ListItem>
        <asp:ListItem Value="Day2Only">Day 2</asp:ListItem>
        <asp:ListItem Value="BothDays">Both</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>
        <asp:label ID ="perf" runat="server" text =" Which performances are you planning to attend?"></asp:Label>
        <asp:CheckBoxList id="checkbox" runat="server">
 
         <asp:ListItem>Hev Abi</asp:ListItem>
         <asp:ListItem>Baby Hev</asp:ListItem>
         <asp:ListItem>Hev Baby</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:label id="Message" runat="server" AssociatedControlID="checkbox"/>
        <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>
    <asp:Label ID="Label1" runat="server" Text="Proof Of Payment"></asp:Label><br />
    <asp:FileUpload ID="FileUpload1" runat="server" accept =".png, .jpg, .img" />
    </form>
</body>
</html>
