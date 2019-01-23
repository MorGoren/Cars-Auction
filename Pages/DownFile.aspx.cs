using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_DownFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Document doc = new Document(iTextSharp.text.PageSize.LETTER, 10, 10, 42, 35);
        string name = Server.MapPath("PDF/") + Session["carId"].ToString() + "Details.pdf";
        PdfWriter wri = PdfWriter.GetInstance(doc, new FileStream(name, FileMode.Create));
        doc.Open();
        Paragraph par = new Paragraph(Session["PDF"].ToString()); 
        doc.Add(par);
        par= new Paragraph(Session["PDF"].ToString());
        iTextSharp.text.Image image = iTextSharp.text.Image.GetInstance(Server.MapPath(Session["PDFIM"].ToString()));
        image.ScalePercent(100f);
        doc.Add(image);  
        doc.Add(par);
        doc.Close();
        PDFLable.Text= "The PDF file is located in the PDF folder inside the 'Pages' in the project."; 
    }
}