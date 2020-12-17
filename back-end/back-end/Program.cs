using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;
using back_end.Entidades;

namespace back_end
{
	public class Program
	{
		static readonly HttpClient client = new HttpClient();

		static async Task Main(string[] args)
		{
			try
			{
				string url = "http://localhost:51923/";
				HttpResponseMessage response = await client.GetAsync(url);
				response.EnsureSuccessStatusCode();
				string responseBody = await response.Content.ReadAsStringAsync();
				var datos = JsonSerializer.Deserialize<List<Datos>>(responseBody);		
			}
			catch(HttpRequestException ex)
			{
				Console.WriteLine($"Ups {ex.Message}");
			}
		}

	}
}