using System;

class Program
{
    static void Main(string[] args)
    {
        foreach (var value in Enum.GetValues(typeof(Environment.SpecialFolder)))
        {
            var name = Enum.GetName(typeof(Environment.SpecialFolder), value);
            var specialFolder = (Environment.SpecialFolder) value;
            var folder = Environment.GetFolderPath(specialFolder, Environment.SpecialFolderOption.DoNotVerify);
            Console.WriteLine($"{name}: {folder}");
        }
    }
}