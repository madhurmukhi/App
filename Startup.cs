using System.Threading.Tasks;
using System.Web.Cors;
using Microsoft.Owin;
using Microsoft.Owin.Cors;
using Owin;
using UserManagement;
using UserManagement.Identity;
using LTech;


[assembly: OwinStartup("MyFriendlyNameForProject", typeof(Startup))]

namespace LTech
{
    public class Startup
    {
        /// <summary>
        ///     Configurations the specified application.
        /// </summary>
        /// <param name="app">The application.</param>
        public void Configuration(IAppBuilder app)
        {
            var option = new CorsOptions
             {
                 PolicyProvider = new CorsPolicyProvider
                 {
                     PolicyResolver = context =>
                     {
                        // provide appropriate origin 
                         var policy = new CorsPolicy();
                         policy.Origins.Add("*");
                         policy.AllowAnyMethod = true;
                         policy.AllowAnyHeader = true;
                         policy.SupportsCredentials = true;
                         return Task.FromResult(policy);
                     }
                 }
             };
            app.UseCors(option);
            UmlStartUp<ApplicationUser>.ConfigureUmlOAuthSettings(app);
        }
    }
}