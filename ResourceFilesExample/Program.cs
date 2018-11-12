using System;
using System.Text;

namespace ResourceFilesExample
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Resource file test");
            Console.WriteLine(Encoding.UTF8.GetString(Resource.example));
        }
    }
}
