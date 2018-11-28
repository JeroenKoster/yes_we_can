using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Threading;
using System.IO.Ports;
using System.IO;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        string[] ports;
        SerialPort currentPort;
        bool listening = false;
        Thread serialThread;

        public Form1()
        {
            InitializeComponent();
        }

        public void refreshComPorts(object sender, EventArgs e)
        {
            ports = SerialPort.GetPortNames();
            listBox1.DataSource = ports;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            refreshComPorts(this, EventArgs.Empty);
        }

        public void readSerial()
        {
            while (listening)       //If listening = false, the thread reaches the end of its function, closing the thread.
            {
                if (currentPort.IsOpen)
                {
                    try
                    {
                        string returnMessage = currentPort.ReadLine();
                        string[] bytes = returnMessage.Split('\t');
                        TextBox target;
                        switch (bytes[0])
                        {
                            case "188":
                                returnMessage = returnMessage.Replace("188\t", "");
                                target = textBox1;
                                break;
                            case "288":
                                returnMessage = returnMessage.Replace("288\t", "");
                                target = textBox2;
                                break;
                            case "388":
                                returnMessage = returnMessage.Replace("388\t", "");
                                target = textBox3;
                                break;
                            case "488":
                                returnMessage = returnMessage.Replace("488\t", "");
                                target = textBox4;
                                break;
                            case "600":
                                returnMessage = returnMessage.Replace("600\t", "");
                                target = txtsendresponse;
                                break;
                            default:
                                target = textBox5;
                                Console.WriteLine(returnMessage);
                                break;
                        }
                        this.Invoke((MethodInvoker)delegate
                        {
                            target.Text = returnMessage; // runs on UI thread
                        });
                    }
                    catch (Exception ex)
                    {
                    }
                }
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (currentPort != null && currentPort.IsOpen)
            {
                listening = false;
                currentPort.Close();
            }

            currentPort = new SerialPort(((ListBox)sender).SelectedValue.ToString(), 115200);

            try
            {
                currentPort.Open();
                errorProvider1.Clear();
                button2_Click(this, EventArgs.Empty);
            }
            catch (UnauthorizedAccessException uaex)
            {
                errorProvider1.SetError(button1, "That port appears to be busy, please pick another or clear the port.");
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                //Start listening..
                listening = !listening;
                if (listening)
                {
                    serialThread = new System.Threading.Thread(new
                    System.Threading.ThreadStart(readSerial));
                    serialThread.Start();
                }
                else
                {
                    //serialThread.Abort();
                    Thread.Sleep(500);
                    serialThread = null;
                }
            }
            catch (Exception ex)
            {

            }
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            listening = false;  //Setting listening to false safely closes serialThread
            currentPort.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            byte[] buffer = new byte[7];
            if (comboBox1.SelectedIndex >= 0 &&
               comboBox2.SelectedIndex >= 0 &&
               comboBox3.SelectedIndex >= 0)
            {
                buffer[0] = Convert.ToByte(comboBox1.SelectedIndex);
                buffer[1] = Convert.ToByte(comboBox2.SelectedIndex);
                buffer[2] = Convert.ToByte(comboBox3.SelectedIndex);

                try
                {
                    buffer[3] = Convert.ToByte(Convert.ToInt32("0x" + txtd1.Text, 16));
                    buffer[4] = Convert.ToByte(Convert.ToInt32("0x" + txtd2.Text, 16));
                    buffer[5] = Convert.ToByte(Convert.ToInt32("0x" + txtd3.Text, 16));
                    buffer[6] = Convert.ToByte(Convert.ToInt32("0x" + txtd4.Text, 16));
                }
                catch (Exception ex)
                {

                }
                currentPort.Write(buffer, 0, 7);
            }

        }
    }
}
