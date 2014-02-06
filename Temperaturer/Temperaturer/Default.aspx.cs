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
                    var tempSt = int.Parse(tempSteg.Text); // start ska öka med denna 6ggr
                   // Table1.Visible = true;


                    TableRow headerRow = new TableRow();
                    headerRow.CssClass = "headerRow";
                    TableCell celcius = new TableCell();
                    celcius.Text = "°C";
                    TableCell fahrenheit = new TableCell();
                    fahrenheit.Text = "°F";

                    Table1.Rows.Add(headerRow);

                    TableRow tRow = new TableRow();
                   
                    for (int i = 1; i < 7; i++)
                    {
                        TableRow tr = new TableRow();
                        TableCell tb1 = new TableCell();
                        TableCell tb2 = new TableCell();

  
                        if (radio1.Checked)  // C to F
                        {
                            headerRow.Controls.Add(celcius);
                            headerRow.Controls.Add(fahrenheit);
                            tb1.Text = (startT += tempSt).ToString();
                            tb2.Text = (Model.TemperatureConverter.CelciusToFahrenheit(startT += tempSt)).ToString();
                        }

                        if (radio2.Checked)  // F to C
                        {
                            headerRow.Controls.Add(fahrenheit);
                            headerRow.Controls.Add(celcius);
                            tb1.Text = (startT += tempSt).ToString();
                            tb2.Text = (Model.TemperatureConverter.FahrenheitToCelcius(startT += tempSt)).ToString();
                        }

                        tr.Controls.Add(tb1);
                        tr.Controls.Add(tb2);

                        Table1.Rows.Add(tr);
                    }

                   // var chosenC = Model.TemperatureConverter.CelciusToFahrenheit(startT);
                  //  var chosenF = Model.TemperatureConverter.FahrenheitToCelcius(slutT);

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