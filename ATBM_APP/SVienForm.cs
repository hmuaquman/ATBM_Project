﻿using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ATBM_APP
{
    public partial class SVienForm : Form
    {
        private LoginForm loginForm;
        public SVienForm(LoginForm loginForm)
        {
            InitializeComponent();
            this.loginForm = loginForm;
            Account.connectString = @"Data Source=(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = "
                + Account.host + ")(PORT = " + Account.port + "))(CONNECT_DATA = (SERVER = DEDICATED)(SERVICE_NAME = "
                + Account.service + ")));Password=" + Account.password + ";User ID=" + Account.username;

            logo.Image = Image.FromFile(@"..\\..\\icon\\hcmus.png");
            icon.Image = Image.FromFile(@"..\\..\\icon\\stu_avatar.png");
            logo.SizeMode = PictureBoxSizeMode.Zoom;
            icon.SizeMode = PictureBoxSizeMode.Zoom;
            khmoGridView.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            khmoGridView.ReadOnly = true;
            hpGridView.ReadOnly = true;

            magvTextBox.Enabled = false;
 
            mhpTextBox.Enabled = false;
            thpTextBox.Enabled = false;
            hkTextBox.Enabled = false;
            nhTextBox.Enabled = false;
            mctTextBox.Enabled = false;
            dgkTextBox.Enabled = false;
            dqtTextBox.Enabled = false;
            dckTextBox.Enabled = false;
            dtkTextBox.Enabled = false;
            dkGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dkGridView.ReadOnly = true;
            bellButton.Image = Image.FromFile(@"..\\..\\icon\\notice.png");
            bellButton.ImageAlign = ContentAlignment.MiddleCenter;
            InitializeNotificationPanel();
            LoadNotifications();
        }
        private void InitializeNotificationPanel()
        {
            notificationPanel = new FlowLayoutPanel();
            notificationPanel.WrapContents = true; // Cho phép xuống dòng
            notificationPanel.AutoScroll = true;
            notificationPanel.FlowDirection = FlowDirection.TopDown;
            notificationPanel.BorderStyle = BorderStyle.FixedSingle;
            notificationPanel.Visible = false; // Ẩn panel ban đầu
            notificationPanel.Size = new Size(250, 300);
            this.Controls.Add(notificationPanel);
            notificationPanel.BringToFront(); // Đưa panel lên phía trước các control khác
        }
        private void LoadNotifications()
        {
            notificationPanel.Controls.Clear();

            string query = "SELECT NOIDUNG FROM ADMIN_OLS.OLS_THONGBAO"; // Thay đổi tên bảng và cột theo cơ sở dữ liệu của bạn

            try
            {
                using (OracleConnection connection = new OracleConnection(Account.connectString))
                {
                    OracleCommand command = new OracleCommand(query, connection);
                    connection.Open();
                    OracleDataReader reader = command.ExecuteReader();
                    int totalHeight = 0;
                    while (reader.Read())
                    {
                        string notificationText = reader["NOIDUNG"].ToString();
                        Label label = new Label();
                        label.Text = notificationText;

                        label.Width = 220; // Chiều rộng cố định của label
                        label.AutoSize = true;
                        label.MaximumSize = new Size(notificationPanel.Width - 50, 0);
                        label.BorderStyle = BorderStyle.FixedSingle; // Thêm khung cho mỗi label
                        label.Padding = new Padding(5); // Thêm khoảng cách bên trong khung
                        label.Margin = new Padding(4); // Thêm khoảng cách giữa các label
                        label.BackColor = Color.White;
                        notificationPanel.Controls.Add(label);
                        totalHeight += label.PreferredSize.Height + label.Margin.Vertical;
                    }

                    reader.Close();
                    totalHeight += notificationPanel.Padding.Vertical;
                    int panelHeight = Math.Min(totalHeight, 292); // Giới hạn chiều cao tối đa của panel
                    notificationPanel.Size = new Size(notificationPanel.Width - 20, panelHeight + 8);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void bellButton_Click(object sender, EventArgs e)
        {
            //Point menuLocation = new Point(icon.Left - 82, icon.Bottom);
            //menu.Show(this, menuLocation);
            notificationPanel.Location = new Point(bellButton.Left - 192, bellButton.Bottom);
            notificationPanel.Visible = !notificationPanel.Visible;
        }
        private void icon_Click(object sender, EventArgs e)
        {
            Point menuLocation = new Point(icon.Left - 82, icon.Bottom);
            menu.Show(this, menuLocation);
        }

        private void SVienForm_Load(object sender, EventArgs e)
        {
            gvTabControl.SelectedTab = hpTabPage;
            using (OracleConnection conn = new OracleConnection(Account.connectString))
            {//Khai báo câu lệnh SQL sử dụng
                using (OracleCommand cmd = new OracleCommand("SELECT HOTEN FROM ADMIN.SINHVIEN WHERE MASV = :MASV", conn))
                {
                    cmd.Parameters.Add(new OracleParameter("MASV", Account.username));
                    try
                    {
                        //Mở kết nối
                        conn.Open();
                        using (OracleDataReader reader = cmd.ExecuteReader())
                        {
                            // Kiểm tra nếu có dòng dữ liệu trả về
                            if (reader.Read())
                            {
                                helloLabel.Text = "Xin chào " + reader["HOTEN"].ToString() + " !";
                            }
                        }
                        conn.Close();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
        }

        private void hpTabPage_Enter(object sender, EventArgs e)
        {
            using (OracleConnection conn = new OracleConnection(Account.connectString))
            {//Khai báo câu lệnh SQL sử dụng
                using (OracleCommand cmd = new OracleCommand("SELECT * FROM ADMIN.HOCPHAN", conn))
                {
                    try
                    {
                        //Mở kết nối
                        conn.Open();
                        using (OracleDataAdapter da = new OracleDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                            hpGridView.DataSource = dt;
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
        }

        private void khmoTabPage_Enter(object sender, EventArgs e)
        {
            using (OracleConnection conn = new OracleConnection(Account.connectString))
            {//Khai báo câu lệnh SQL sử dụng
                using (OracleCommand cmd = new OracleCommand("SELECT * FROM ADMIN.KHMO", conn))
                {
                    try
                    {
                        //Mở kết nối
                        conn.Open();
                        using (OracleDataAdapter da = new OracleDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                            khmoGridView.DataSource = dt;
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
        }

        private void dkGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = dkGridView.Rows[e.RowIndex];
                magvTextBox.Text = row.Cells["MASV"].Value.ToString();
                mhpTextBox.Text = row.Cells["MAHP"].Value.ToString();
                hkTextBox.Text = row.Cells["HK"].Value.ToString();
                nhTextBox.Text = row.Cells["NAM"].Value.ToString();
                mctTextBox.Text = row.Cells["MACT"].Value.ToString();
                temp1.Text = magvTextBox.Text;
                temp2.Text = mhpTextBox.Text;
                temp3.Text = hkTextBox.Text;
                temp4.Text = nhTextBox.Text;
                temp5.Text = mctTextBox.Text;
                dgkTextBox.Text = row.Cells["DIEMTHI"].Value.ToString();
                dckTextBox.Text = row.Cells["DIEMCK"].Value.ToString();
                dqtTextBox.Text = row.Cells["DIEMQT"].Value.ToString();
                dtkTextBox.Text = row.Cells["DIEMTK"].Value.ToString();
            }
        }



        private void savedkButton_Click(object sender, EventArgs e)
        {
            if (dgkTextBox.Enabled == true)
            {
                
                using (OracleConnection conn = new OracleConnection(Account.connectString))
                {//Khai báo câu lệnh SQL sử dụng
                    using (OracleCommand cmd = new OracleCommand("UPDATE ADMIN.DANGKY SET MAGV = :MAGV,  MAHP = :MAHP,  HK = :HK, NAM = :NAM, MACT = :MACT WHERE MAGV = :MAGIANGVIEN AND MASV = :MASINHVIEN AND MAHP = :MAHOCPHAN AND HK = :HKY AND NAM = :NAMHOC AND MACT = :MACTR ", conn))
                    {

                        cmd.Parameters.Add(new OracleParameter("MAGV", magvTextBox.Text));
                        cmd.Parameters.Add(new OracleParameter("MAHP", mhpTextBox.Text));
                        cmd.Parameters.Add(new OracleParameter("HK",hkTextBox.Text));
                        cmd.Parameters.Add(new OracleParameter("NAM", nhTextBox.Text));
                        cmd.Parameters.Add(new OracleParameter("MACT", mctTextBox.Text));
                        cmd.Parameters.Add(new OracleParameter("MAGIANGVIEN", temp1.Text));
                        cmd.Parameters.Add(new OracleParameter("MASINHVIEN", Account.username));
                        cmd.Parameters.Add(new OracleParameter("MAHOCPHAN", temp2.Text));
                        cmd.Parameters.Add(new OracleParameter("HKY", temp3.Text));
                        cmd.Parameters.Add(new OracleParameter("NAMHOC", temp4.Text));
                        cmd.Parameters.Add(new OracleParameter("MACTR", temp5.Text));
                        try
                        {
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            MessageBox.Show("Cập nhật thành công");
                            LoadDataDK();

                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message);
                        }
                    }
                }
                magvTextBox.Enabled = false;
                mhpTextBox.Enabled = false;
                hkTextBox.Enabled = false;
                nhTextBox.Enabled = false;
                mctTextBox.Enabled = false;
                dkGridView.Enabled = true;
            }
        }

        private void editdkButton_Click(object sender, EventArgs e)
        {
            magvTextBox.Enabled = true;
            mhpTextBox.Enabled = true;
            hkTextBox.Enabled = true;
            nhTextBox.Enabled = true;
            mctTextBox.Enabled = true;
            dkGridView.Enabled = false;
        }

        private void mhpTextBox_TextChanged(object sender, EventArgs e)
        {
            string maHP = mhpTextBox.Text;
            using (OracleConnection conn = new OracleConnection(Account.connectString))
            {//Khai báo câu lệnh SQL sử dụng
                using (OracleCommand cmd = new OracleCommand("SELECT TENHP FROM ADMIN.HOCPHAN WHERE MAHP = :MAHOCPHAN", conn))
                {

                    cmd.Parameters.Add(new OracleParameter("MAHOCPHAN", maHP));
                    try
                    {
                        conn.Open();
                        using (OracleDataReader reader = cmd.ExecuteReader())
                        {
                            // Kiểm tra nếu có dòng dữ liệu trả về
                            if (reader.Read())
                            {
                                thpTextBox.Text = reader["TENHP"].ToString();
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
        }

        private void LoadDataDK()
        {
            using (OracleConnection conn = new OracleConnection(Account.connectString))
            {//Khai báo câu lệnh SQL sử dụng
                using (OracleCommand cmd = new OracleCommand("SELECT * FROM ADMIN.DANGKY", conn))
                {
                    try
                    {
                        //Mở kết nối
                        conn.Open();
                        using (OracleDataAdapter da = new OracleDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                            dkGridView.DataSource = dt;
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
        }

        private void dkTabPage_Enter(object sender, EventArgs e)
        {
            LoadDataDK();
        }

        private void logoutItem_Click(object sender, EventArgs e)
        {
            this.Close();
            loginForm.Show();
        }

        private void infoItem_Click(object sender, EventArgs e)
        {
            TTSVForm tTSVForm = new TTSVForm();
            tTSVForm.Show();
        }

        private void noticeItem_Click(object sender, EventArgs e)
        {

        }

        private void adddkDKButton_Click(object sender, EventArgs e)
        {
            ThemDKForm themDKForm = new ThemDKForm();
            themDKForm.ShowDialog();
            themDKForm.Close();
            LoadDataDK();
        }
    }
}
