using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;

namespace PS.HireRocks.Web.Helpers
{
    public class EmailHelper
    {
        public async Task SendEmailNotification(string to, string subject, string body)
        {
            using (var client = new SmtpClient())
            {

                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("gauri@perceptsystems.com", "W#lcom3GS");
                client.EnableSsl = true;

                using (var message = new MailMessage())
                {

                    message.To.Add(to);
                    message.Subject = subject;
                    message.Body = body;
                    message.IsBodyHtml = true;

                    try
                    {
                        await client.SendMailAsync(message);
                    }
                    catch (SmtpException ex)
                    {
                        Console.WriteLine(ex.ToString());
                    }
                }
            }
        }
    }
}