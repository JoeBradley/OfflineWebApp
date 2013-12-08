using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Activation;
using System.Web;
using System.Web.Routing;
using OfflineWebApp.Service;

namespace OfflineWebApp
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            // for implementing the restful webservice
            routes.Add(new ServiceRoute("api/v1/", new WebServiceHostFactory(), typeof(APISerivce)));

        }
    }
}