using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

namespace StudentCRUD
{
    public partial class HomePage : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Seth"].ConnectionString);

        protected void displayBtn_Click(object sender, EventArgs e)
        {

        }

        protected void insertBTN_Click(object sender, EventArgs e)
        {
            string sql = "insert_student ";
            //insert into Student(student_id, fullname, faculty, coursename, coursecode, marks, date_of_birth) values(@student_id, @fullname, @faculty, @coursename, @coursecode, @marks, @date_of_birth)
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@student_id", idBox.Text);
            cmd.Parameters.AddWithValue("@fullname", fullNameBox.Text);
            cmd.Parameters.AddWithValue("@faculty", facultyBox.Text);
            cmd.Parameters.AddWithValue("@coursename", courseNameBox.Text);
            cmd.Parameters.AddWithValue("@coursecode", courseCodeBox.Text);
            cmd.Parameters.AddWithValue("@marks", marksBox.Text);
            cmd.Parameters.AddWithValue("@date_of_birth", dateBox.Text);

            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            // Clear the TextBox controls after successful insertion
            idBox.Text = string.Empty;
            fullNameBox.Text = string.Empty;
            facultyBox.Text = string.Empty;
            courseNameBox.Text = string.Empty;
            courseCodeBox.Text = string.Empty;
            marksBox.Text = string.Empty;
            dateBox.Text = string.Empty;
        }

        protected void deleteBTN_Click(object sender, EventArgs e)
        {
            string sql = "delete_student";
            //DELETE from  Student WHERE student_id = @student_id
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@student_id", idBox.Text);



            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }


        }

        protected void updateBTN_Click(object sender, EventArgs e)
        {
            string sql = "update_student";
            //UPDATE Student SET marks = marks + 2 WHERE marks BETWEEN 9 AND 11
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;



            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }



        }

        void viewData()
        {
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("retrieve_all_students", con);
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }


        protected void displayBTN_Click1(object sender, EventArgs e)
        {
            viewData();
        }

        protected void searchBTN_Click(object sender, EventArgs e)
        {
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("search_student", con);
                //SELECT * FROM Student WHERE student_id = @student_id;
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@student_id", idBox.Text));

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    
    }
}
