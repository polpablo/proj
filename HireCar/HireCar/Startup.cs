using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HireCar.Startup))]
namespace HireCar
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
