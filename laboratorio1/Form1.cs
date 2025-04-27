namespace laboratorio1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            {
                if (textBox1.Text == "1954")
                {
                    
                    crud Form1 = new crud();
                    Form1.Show();
                    this.Hide(); 
                }
                else
                {
                    MessageBox.Show("Contraseña incorrecta. Inténtalo de nuevo.");
                }
            }
        }
    }
}



