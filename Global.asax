<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);

    }

    static void RegisterRoutes(RouteCollection routes)
    {
        /*BÜTÜNLEŞMİŞ ANA SAYFA VE ORTAK SAYFALAR*/
        
        routes.MapPageRoute("index", "Ev", "~/index.aspx");
        routes.MapPageRoute("404", "Sayfa-Bulunamadı", "~/404.aspx");
        routes.MapPageRoute("about", "Biz-Kimiz", "~/about.aspx");
        routes.MapPageRoute("blog", "Blog", "~/blog.aspx");
        routes.MapPageRoute("gallery", "Foto-Galeri", "~/gallery.aspx");
        routes.MapPageRoute("contact", "İletisim", "~/contact.aspx");
        routes.MapPageRoute("project", "Projelerimiz", "~/project.aspx");
        
        /*BLOG VE BİLGİ SAYFALARI*/

        routes.MapPageRoute("aydin-tente", "Aydın-Tente-Pergola", "~/aydin-tente.aspx");
        routes.MapPageRoute("izmir-tente", "İzmir-Tente-Pergola", "~/izmir-tente.aspx");
        routes.MapPageRoute("kutahya-tente", "Kutahya-Tente-Pergola", "~/kutahya-tente.aspx");
        routes.MapPageRoute("manisa-tente", "Manisa-Tente-Pergola", "~/manisa-tente.aspx");
        routes.MapPageRoute("tente-pergola-neden-kullanilmalidir.aspx", "Tente-Pergola-Neden-Kullanılmalıdır-1", "~/tente-pergola-neden-kullanilmalidir.aspx.aspx");
        routes.MapPageRoute("tente-pergola-nedir", "Tente-Pergola-Nedir-2", "~/tente-pergola-nedir.aspx");
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
