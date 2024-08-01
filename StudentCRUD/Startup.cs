using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(StudentCRUD.Startup))]
namespace StudentCRUD
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
