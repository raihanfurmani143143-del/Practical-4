using System;

namespace program4
{
    public partial class _event : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            Label1.Text =
                "Registration Successful!<br/>" +
                "Name: " + Server.HtmlEncode(TextBox1.Text) + "<br/>" +
                "Email: " + Server.HtmlEncode(TextBox2.Text) + "<br/>" +
                "Gender: " + Server.HtmlEncode(RadioButtonList1.SelectedValue) + "<br/>" +
                "Phone: " + Server.HtmlEncode(TextBox3.Text) + "<br/>" +
                "Address: " + Server.HtmlEncode(TextBox4.Text).Replace("\r\n", "<br/>").Replace("\n", "<br/>") + "<br/>" +
                "Event: " + Server.HtmlEncode(DropDownList1.SelectedValue);
        }
    }
}
