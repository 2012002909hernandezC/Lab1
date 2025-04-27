using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace laboratorio1
{
    public partial class crud : Form
    {
        public crud()
        {
            InitializeComponent();
        }

        private void crud_Load(object sender, EventArgs e)
        {

        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            creditos crud = new creditos();
            crud.Show();
            this.Hide();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.Add(
               textBox1.Text,
               textBox2.Text,
               textBox3.Text,
               textBox4.Text,
               textBox5.Text,
               textBox6.Text,
               textBox7.Text,
               textBox8.Text,
               decimal.Parse(textBox9.Text),
               int.Parse(textBox10.Text),
               textBox11.Text
               );

            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
            textBox6.Text = "";
            textBox7.Text = "";
            textBox8.Text = "";
            textBox9.Text = "";
            textBox10.Text = "";
            textBox11.Text = "";

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (dataGridView1.CurrentRow != null)
            {
                DataGridViewRow fila = dataGridView1.CurrentRow;
                fila.Cells["nombre"].Value = textBox1.Text;
                fila.Cells["grado"].Value = textBox2.Text;
                fila.Cells["seccion"].Value = textBox3.Text;
                fila.Cells["numtelefono"].Value = textBox4.Text;
                fila.Cells["nummatricula"].Value = textBox5.Text;
                fila.Cells["cicloacademico"].Value = textBox6.Text;
                fila.Cells["maestroguia"].Value = textBox7.Text;
                fila.Cells["clasefav"].Value = textBox8.Text;
                fila.Cells["promedio"].Value = decimal.Parse(textBox9.Text);
                fila.Cells["añodeingreso"].Value = int.Parse(textBox10.Text);
                fila.Cells["clubescolar"].Value = textBox11.Text;


            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            {
                if (dataGridView1.CurrentRow != null)
                {
                    dataGridView1.Rows.Remove(dataGridView1.CurrentRow);
                }
            }
        }
    }
}

