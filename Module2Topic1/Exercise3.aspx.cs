using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
            if (!IsPostBack)
            {
                finalGrade.Text = "Submit your grade percentage to see your final grade!";
            }
        }

        
        protected void Calculate_Click(object sender, EventArgs e)
        {
            int final = int.Parse(Grade.Text);
            if (final < 60){
                finalGrade.Text = "5.0";
                Response.Write(
                    $"<script> alert('Hoorah, See you next term')</script>");
            }
            else if (final >= 60 && final <= 64.50)
            {
                finalGrade.Text = "3.0"; Response.Write(
     $"<script> alert('Congratulations! You barely Passed!')</script>");
            }
            else if (final >= 64.51 && final <= 69){
                finalGrade.Text = "2.75";
                Response.Write(
    $"<script> alert('Congratulations! You Passed!')</script>");
            }
            else if (final >= 69.01 && final <= 73.50){
                finalGrade.Text = "2.50";
                Response.Write(
    $"<script> alert('Congratulations! You Passed!')</script>");
            }
            else if (final >= 73.51 && final <= 78){
                finalGrade.Text = "2.25";
                Response.Write(
    $"<script> alert('Congratulations! You Passed!')</script>");
            }
            else if (final >= 78.01 && final <= 82.50){
                finalGrade.Text = "2.00";
                Response.Write(
    $"<script> alert('Congratulations! You Passed!')</script>");
            }
            else if (final >= 82.51 && final <= 87){
                finalGrade.Text = "1.75";
                Response.Write(
    $"<script> alert('Congratulations! You Passed!')</script>");
            }
            else if (final >= 87.01 && final <= 91.50){
                finalGrade.Text = "1.50";
                Response.Write(
    $"<script> alert('Congratulations! You Passed!')</script>");
            }
            else if (final >= 91.51 && final <= 96){
                finalGrade.Text = "1.25";
                Response.Write(
    $"<script> alert('Congratulations! You Passed!')</script>");
            }
             else if (final > 96){
                finalGrade.Text = "1.00";
                Response.Write(
                    $"<script> alert('Congratulations! You Passed!')</script>");
            }

        }
    }
}