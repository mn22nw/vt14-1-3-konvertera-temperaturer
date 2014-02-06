using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Temperaturer.Model
{
    public static class TemperatureConverter
    {
        public static int CelciusToFahrenheit(int degreesC)
        {
            double fHeit= degreesC * 1.8 + 32; //Celcius till Fahrenheit

            return Convert.ToInt32(fHeit); 
        }

        public static int FahrenheitToCelcius(int degreesF)
        {
            double Celc = (degreesF - 32) * (5 / 9); // Fahrenheit till Celcius

            return Convert.ToInt32(Celc);
        }
    }
}