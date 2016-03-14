using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web1
{
    public partial class datedropdown : System.Web.UI.UserControl
    {
        private int Day
        {
            get
            {
                if (Request.Form[ddday.UniqueID] != null)
                {
                    return int.Parse(Request.Form[ddday.UniqueID]);
                }
                else
                {
                    return int.Parse(ddday.SelectedItem.Value);
                }
            }
            set
            {
                this.PopulateDay();
                ddday.ClearSelection();
                ddday.Items.FindByValue(value.ToString()).Selected = true;
            }
        }
        private int Month
        {
            get
            {
                return int.Parse(ddmonth.SelectedItem.Value);
            }
            set
            {
                this.PopulateMonth();
                ddmonth.ClearSelection();
                ddmonth.Items.FindByValue(value.ToString()).Selected = true;
            }
        }
        private int Year
        {
            get
            {
                return int.Parse(ddyear.SelectedItem.Value);
            }
            set
            {
                this.PopulateYear();
                ddyear.ClearSelection();
                ddyear.Items.FindByValue(value.ToString()).Selected = true;
            }
        }

        public DateTime SelectedDate
        {
            get
            {
                try
                {
                    return DateTime.Parse(this.Month + "/" + this.Day + "/" + this.Year);
                }
                catch
                {
                    return DateTime.MinValue;
                }
            }
            set
            {
                if (!value.Equals(DateTime.MinValue))
                {
                    this.Year = value.Year;
                    this.Month = value.Month;
                    this.Day = value.Day;
                }
            }
        }

        private void PopulateDay()
        {
            ddday.Items.Clear();
            ListItem lt = new ListItem();
            lt.Text = "DD";
            lt.Value = "0";
            ddday.Items.Add(lt);
            int days = DateTime.DaysInMonth(int.Parse(ddyear.SelectedValue.ToString()),int.Parse( ddmonth.SelectedValue.ToString()));
            for (int i = 1; i <= days; i++)
            {
                lt = new ListItem();
                lt.Text = i.ToString();
                lt.Value = i.ToString();
                ddday.Items.Add(lt);
            }
            ddday.Items.FindByValue(DateTime.Now.Day.ToString()).Selected = true;
        }

        private void PopulateMonth()
        {
            ddmonth.Items.Clear();
            ListItem lt = new ListItem();
          
            for (int i = 1; i <= 12; i++)
            {
                lt = new ListItem();
                lt.Text = Convert.ToDateTime(i.ToString() + "/1/1910").ToString("MMMM");
                lt.Value = i.ToString();
                ddmonth.Items.Add(lt);
            }
            ddmonth.Items.FindByValue(DateTime.Now.Month.ToString()).Selected = true;
        }
        private void PopulateYear()
        {
            ddyear.Items.Clear();
            ListItem lt = new ListItem();
            lt.Text = "YYYY";
            lt.Value = "0";
            ddyear.Items.Add(lt);
            for (int i = DateTime.Now.Year-14; i >= 1910; i--)
            {
                lt = new ListItem();
                lt.Text = i.ToString();
                lt.Value = i.ToString();
                ddyear.Items.Add(lt);
            }
            ddyear.Items.FindByValue((DateTime.Now.Year-14).ToString()).Selected = true;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (this.SelectedDate == DateTime.MinValue)
                {
                    try
                    {
                        this.PopulateYear();
                        this.PopulateMonth();
                        this.PopulateDay();
                    }
                    catch
                    {
                        }
                  
                }
            }
            else
            {
                if (Request.Form[ddday.UniqueID] != null)
                {
                    this.PopulateDay();
                    ddday.ClearSelection();
                    ddday.Items.FindByValue(Request.Form[ddday.UniqueID]).Selected = true;
                }
            }

        }

        
    }
}