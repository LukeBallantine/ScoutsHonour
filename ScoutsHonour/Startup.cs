using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ScoutsHonour.Startup))]
namespace ScoutsHonour
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
