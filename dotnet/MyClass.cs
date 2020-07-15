using CurrencyDotNetCore;
using CurrencyDotNetCore.Model;

namespace dc
{
    public class MyClass
    {

        public decimal GetRate()
        {
            CurrencyConverter currencyConverter = new CurrencyConverter();
            decimal rate = currencyConverter.GetRate(Currency.EUR, Currency.USD);
            return rate;
        }
    }
}
