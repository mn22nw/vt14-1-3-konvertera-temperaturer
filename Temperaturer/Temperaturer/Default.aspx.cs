using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temperaturer
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Konvertera_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {
                    var startT = int.Parse(startTemp.Text);
                    var slutT = int.Parse(slutTemp.Text);
                    var tempSt = int.Parse(tempSteg.Text);
                   // Table1.Visible = true;

                    TableRow headerRow = new TableRow();
                    TableCell celcius = new TableCell();
                    celcius.Text = "°C";
                    TableCell fahrenheit = new TableCell();
                    fahrenheit.Text = "°F";

                    headerRow.Controls.Add(celcius);

                    Table1.Rows.Add(headerRow);

                    TableRow tRow = new TableRow();
                   
                    for (int i = 1; i < 8; i++)
                    {
                        TableRow tr = new TableRow();
                        TableCell tb1 = new TableCell();
                        TableCell tb2 = new TableCell();
                        
                        tb1.Text = "grader"+i;
                        tb2.Text = "farenRumple" + i;

                        tr.Controls.Add(tb1);
                        tr.Controls.Add(tb2);

                        Table1.Rows.Add(tr);
                    }
                    
                    

                    //    Outputkvitto.Visible = true;
                    //   Totalt.Text = String.Format("{0,10}{1,10:c}", "Totalt: ", test.Subtotal);
                    //   Rabattsats.Text = String.Format("{0,10}{1,10}%", "Rabattsats: ", test.DiscountRate * 100);
                    //   Rabatt.Text += String.Format("{0,10}{1,10:c}", "Rabatt: ", test.MoneyOff);
                    //   Slutsumma.Text += String.Format("{0,10}{1,10:c}", "Att betala: ", (sum - test.MoneyOff));
                }

                catch (Exception ex)
                {
                    var error = new CustomValidator
                    {
                        IsValid = false,
                        ErrorMessage = ex.Message
                    };
                    Page.Validators.Add(error);
                }
            }
        }

     
    }
}