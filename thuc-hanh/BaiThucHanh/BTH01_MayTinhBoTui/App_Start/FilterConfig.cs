using System.Web;
using System.Web.Mvc;

namespace BTH01_MayTinhBoTui
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
