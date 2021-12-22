using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Text;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage(); //yeni bir mail nesnesi Oluşturuldu.
        mail.IsBodyHtml = true; //mail içeriğinde html etiketleri kullanılsın mı?
        mail.To.Add("serdar65narinc@gmail.com"); //Kime mail gönderilecek.

        //mail kimden geliyor, hangi ifade görünsün?
        mail.From = new MailAddress(TextBox2.Text, TextBox1.Text, System.Text.Encoding.UTF8);
        mail.Subject = "Narin Tente Randevu Bilgi Erişimi";//mailin konusu

        //mailin içeriği.. Bu alan isteğe göre genişletilip daraltılabilir.
        mail.Body = "İsim ve Soyisim:<br>" + TextBox1.Text + "<br>Email Adresi:<br>" + TextBox2.Text + "<br> Telefon Numarası :<br>" + TextBox3.Text + "<br> Gönderilen Mesaj :<br>" + TextBox4.Text;
        mail.IsBodyHtml = true;
        SmtpClient smp = new SmtpClient();

        //mailin gönderileceği adres ve şifresi
        smp.Credentials = new NetworkCredential("serdar65narinc@gmail.com", "Cengizhan35");
        smp.Port = 587;
        smp.Host = "smtp.gmail.com";//gmail üzerinden gönderiliyor.
        smp.EnableSsl = true;
        smp.Send(mail);//mail isimli mail gönderiliyor.

        Label1.Text = "<br> Gönderim Sağlandı";
    }
}
