namespace ProyectoAdministradores
{
    partial class FacturacionModulos
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label7 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.pictureBoxLogo = new System.Windows.Forms.PictureBox();
            this.panelContenedorNoFactura = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.labelFactura = new System.Windows.Forms.Label();
            this.groupBoxFacturacionModulos = new System.Windows.Forms.GroupBox();
            this.comboBoxProveedores = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).BeginInit();
            this.panelContenedorNoFactura.SuspendLayout();
            this.groupBoxFacturacionModulos.SuspendLayout();
            this.SuspendLayout();
            // 
            // label7
            // 
            this.label7.AutoEllipsis = true;
            this.label7.Font = new System.Drawing.Font("Georgia", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(166, 76);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(304, 39);
            this.label7.TabIndex = 27;
            this.label7.Text = "Del Convento San Francisco 1 cuadra al norte Avenida Miguel de Cervantes, Granada" +
    "";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Georgia", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(248)))), ((int)(((byte)(75)))), ((int)(((byte)(6)))));
            this.label3.Location = new System.Drawing.Point(163, 35);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(307, 31);
            this.label3.TabIndex = 26;
            this.label3.Text = "il Padrino Concept Store\r\n";
            // 
            // pictureBoxLogo
            // 
            this.pictureBoxLogo.Image = global::ProyectoAdministradores.Properties.Resources.padrino1;
            this.pictureBoxLogo.Location = new System.Drawing.Point(12, 12);
            this.pictureBoxLogo.Name = "pictureBoxLogo";
            this.pictureBoxLogo.Size = new System.Drawing.Size(148, 138);
            this.pictureBoxLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBoxLogo.TabIndex = 25;
            this.pictureBoxLogo.TabStop = false;
            // 
            // panelContenedorNoFactura
            // 
            this.panelContenedorNoFactura.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelContenedorNoFactura.Controls.Add(this.label1);
            this.panelContenedorNoFactura.Controls.Add(this.labelFactura);
            this.panelContenedorNoFactura.Location = new System.Drawing.Point(12, 156);
            this.panelContenedorNoFactura.Name = "panelContenedorNoFactura";
            this.panelContenedorNoFactura.Size = new System.Drawing.Size(200, 42);
            this.panelContenedorNoFactura.TabIndex = 28;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(3, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(124, 20);
            this.label1.TabIndex = 22;
            this.label1.Text = "N° de Factura:";
            // 
            // labelFactura
            // 
            this.labelFactura.AutoSize = true;
            this.labelFactura.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelFactura.Location = new System.Drawing.Point(133, 9);
            this.labelFactura.Name = "labelFactura";
            this.labelFactura.Size = new System.Drawing.Size(27, 20);
            this.labelFactura.TabIndex = 2;
            this.labelFactura.Text = "N°";
            // 
            // groupBoxFacturacionModulos
            // 
            this.groupBoxFacturacionModulos.Controls.Add(this.comboBoxProveedores);
            this.groupBoxFacturacionModulos.Location = new System.Drawing.Point(12, 205);
            this.groupBoxFacturacionModulos.Name = "groupBoxFacturacionModulos";
            this.groupBoxFacturacionModulos.Size = new System.Drawing.Size(336, 194);
            this.groupBoxFacturacionModulos.TabIndex = 29;
            this.groupBoxFacturacionModulos.TabStop = false;
            this.groupBoxFacturacionModulos.Text = "Facturación";
            // 
            // comboBoxProveedores
            // 
            this.comboBoxProveedores.FormattingEnabled = true;
            this.comboBoxProveedores.Location = new System.Drawing.Point(6, 53);
            this.comboBoxProveedores.Name = "comboBoxProveedores";
            this.comboBoxProveedores.Size = new System.Drawing.Size(184, 21);
            this.comboBoxProveedores.TabIndex = 0;
            this.comboBoxProveedores.SelectedIndexChanged += new System.EventHandler(this.comboBoxProveedores_SelectedIndexChanged);
            // 
            // FacturacionModulos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.groupBoxFacturacionModulos);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.pictureBoxLogo);
            this.Controls.Add(this.panelContenedorNoFactura);
            this.Name = "FacturacionModulos";
            this.Text = "FacturacionModulos";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxLogo)).EndInit();
            this.panelContenedorNoFactura.ResumeLayout(false);
            this.panelContenedorNoFactura.PerformLayout();
            this.groupBoxFacturacionModulos.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.PictureBox pictureBoxLogo;
        private System.Windows.Forms.Panel panelContenedorNoFactura;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label labelFactura;
        private System.Windows.Forms.GroupBox groupBoxFacturacionModulos;
        private System.Windows.Forms.ComboBox comboBoxProveedores;
    }
}