<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
        <asp:Label ID="Label1" runat="server" Text="Hev Abi - Babaero" Font-Family="helvetica neue, sans-serif" Font-Size="32px"
     BackColor="Transparent"></asp:Label><br />
        <

        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>
        <asp:Image ID="Image1" runat="server" ImageUrl="https://i.scdn.co/image/ab67616d0000b2737300c1e7edcdbd15a42e1579" 
    Width="200px" Height="200px" AlternateText="Album Cover"></asp:Image><br />

        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Prev" />
        <asp:Button ID="Button2" runat="server" onclick="PlayButton_Click" Text="Play" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click"  Text="Next" />
        <br />

        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_event_handling.htm#:~:text=onclick=%22btnclick_Click%22 --%>
        <span ID="Playing" runat="server" Visible="false"></span>
        <br />
      

<script runat="server">
    protected void PlayButton_Click(object sender, EventArgs e)
    {
        
        Playing.InnerText = $"Now playing {Label1.Text}";
    
        Playing.Visible = true;
    }
</script>


        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <%-- Hint: https://learn.microsoft.com/en-us/troubleshoot/developer/webapps/aspnet/development/inline-expressions#:~:text=displays%20the%20current%20time --%>
        <%= DateTime.Now.ToLocalTime() %>
    </form>
</body>
</html>
