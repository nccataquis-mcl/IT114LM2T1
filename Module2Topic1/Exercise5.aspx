<%@Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" %>
<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Reflection on ASP.NET WebForms</h1>
    <p>
        ASP.NET WebForms and plain HTML are both used in web development,
        but they differ significantly. HTML creates static pages, while ASP.NET WebForms builds dynamic web apps.
        WebForms lets developers create pages with server-side controls, simplifying complex app development with
        features like data binding and validation.
    </p>
    <p>
        Comparing HTML to ASP.NET WebForms, HTML is simpler and lighter for static content.
        WebForms offers more abstraction and productivity but adds complexity.

    <h2>Code Behind (C#) vs. JavaScript</h2>
    <p>
      Code-behind (C#) and JavaScript are used for logic in ASP.NET WebForms. C# handles server-side tasks like data processing,
      while JavaScript manages client-side tasks such as UI interactions and validation.
    </p>
    <h2>Postbacks</h2>
    <p>
        Postbacks in ASP.NET WebForms reload the entire page when a control triggers an event,
        enabling stateful components. However, frequent postbacks can impact performance,
        so optimization is crucial.






</asp:Content>
