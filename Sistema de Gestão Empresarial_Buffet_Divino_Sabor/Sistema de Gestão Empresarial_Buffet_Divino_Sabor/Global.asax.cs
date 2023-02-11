using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Serilog;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Código que é executado na inicialização do aplicativo
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            Log.Logger = new LoggerConfiguration()
            .WriteTo.File("D:\\temp\\testebuffet.txt",
              restrictedToMinimumLevel: Serilog.Events.LogEventLevel.Information,
              rollingInterval: RollingInterval.Hour)
            .CreateLogger();

        }
    }
}