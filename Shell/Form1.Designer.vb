<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.TimeLabel = New System.Windows.Forms.Label()
        Me.Clock = New System.Windows.Forms.Timer(Me.components)
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.DateText = New System.Windows.Forms.Label()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.Wallpaper_Timer = New System.Windows.Forms.Timer(Me.components)
        Me.PaperBar = New System.Windows.Forms.ProgressBar()
        Me.ListBox1 = New System.Windows.Forms.ListBox()
        Me.Notelabel = New System.Windows.Forms.Label()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.ListBox2 = New System.Windows.Forms.ListBox()
        Me.PlayButton = New System.Windows.Forms.Button()
        Me.ForwardButton = New System.Windows.Forms.Button()
        Me.StopButton = New System.Windows.Forms.Button()
        Me.ListBox3 = New System.Windows.Forms.ListBox()
        Me.InfoButton = New System.Windows.Forms.Button()
        Me.LastIndex = New System.Windows.Forms.Label()
        Me.BackwardButton = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Button1.BackColor = System.Drawing.Color.DodgerBlue
        Me.Button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button1.ForeColor = System.Drawing.Color.White
        Me.Button1.Location = New System.Drawing.Point(12, 445)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(93, 23)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "Käivita töölaud"
        Me.Button1.UseVisualStyleBackColor = False
        '
        'Button2
        '
        Me.Button2.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Button2.BackColor = System.Drawing.Color.Goldenrod
        Me.Button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button2.ForeColor = System.Drawing.Color.White
        Me.Button2.Location = New System.Drawing.Point(250, 445)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(58, 23)
        Me.Button2.TabIndex = 1
        Me.Button2.Text = "Märkmik"
        Me.Button2.UseVisualStyleBackColor = False
        '
        'Button3
        '
        Me.Button3.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Button3.BackColor = System.Drawing.Color.OrangeRed
        Me.Button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button3.ForeColor = System.Drawing.Color.White
        Me.Button3.Location = New System.Drawing.Point(111, 445)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(133, 23)
        Me.Button3.TabIndex = 2
        Me.Button3.Text = "Pidu (muusika esitamine)"
        Me.Button3.UseVisualStyleBackColor = False
        '
        'TimeLabel
        '
        Me.TimeLabel.BackColor = System.Drawing.Color.Transparent
        Me.TimeLabel.Font = New System.Drawing.Font("Tahoma", 45.0!)
        Me.TimeLabel.ForeColor = System.Drawing.Color.White
        Me.TimeLabel.Location = New System.Drawing.Point(4, 9)
        Me.TimeLabel.Name = "TimeLabel"
        Me.TimeLabel.Size = New System.Drawing.Size(184, 72)
        Me.TimeLabel.TabIndex = 3
        Me.TimeLabel.Text = "0:00"
        '
        'Clock
        '
        Me.Clock.Enabled = True
        Me.Clock.Interval = 5000
        '
        'TextBox1
        '
        Me.TextBox1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TextBox1.BackColor = System.Drawing.Color.Black
        Me.TextBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.0!)
        Me.TextBox1.ForeColor = System.Drawing.Color.White
        Me.TextBox1.Location = New System.Drawing.Point(12, 109)
        Me.TextBox1.Multiline = True
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.TextBox1.Size = New System.Drawing.Size(616, 330)
        Me.TextBox1.TabIndex = 5
        Me.TextBox1.Visible = False
        Me.TextBox1.WordWrap = False
        '
        'DateText
        '
        Me.DateText.BackColor = System.Drawing.Color.Transparent
        Me.DateText.Font = New System.Drawing.Font("Tahoma", 10.25!)
        Me.DateText.ForeColor = System.Drawing.Color.White
        Me.DateText.Location = New System.Drawing.Point(12, 81)
        Me.DateText.Name = "DateText"
        Me.DateText.Size = New System.Drawing.Size(433, 25)
        Me.DateText.TabIndex = 6
        '
        'Button5
        '
        Me.Button5.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button5.BackColor = System.Drawing.Color.DarkRed
        Me.Button5.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button5.ForeColor = System.Drawing.Color.White
        Me.Button5.Location = New System.Drawing.Point(557, 445)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(71, 23)
        Me.Button5.TabIndex = 7
        Me.Button5.Text = "Lülita välja"
        Me.Button5.UseVisualStyleBackColor = False
        '
        'Wallpaper_Timer
        '
        Me.Wallpaper_Timer.Enabled = True
        Me.Wallpaper_Timer.Interval = 8000
        '
        'PaperBar
        '
        Me.PaperBar.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.PaperBar.Location = New System.Drawing.Point(5, 469)
        Me.PaperBar.Maximum = 15
        Me.PaperBar.Name = "PaperBar"
        Me.PaperBar.Size = New System.Drawing.Size(631, 10)
        Me.PaperBar.TabIndex = 8
        Me.PaperBar.Visible = False
        '
        'ListBox1
        '
        Me.ListBox1.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Items.AddRange(New Object() {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"})
        Me.ListBox1.Location = New System.Drawing.Point(507, 9)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(120, 95)
        Me.ListBox1.TabIndex = 1
        Me.ListBox1.Visible = False
        '
        'Notelabel
        '
        Me.Notelabel.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Notelabel.BackColor = System.Drawing.Color.Transparent
        Me.Notelabel.ForeColor = System.Drawing.Color.White
        Me.Notelabel.Location = New System.Drawing.Point(12, 106)
        Me.Notelabel.Name = "Notelabel"
        Me.Notelabel.Size = New System.Drawing.Size(615, 281)
        Me.Notelabel.TabIndex = 9
        '
        'Button4
        '
        Me.Button4.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Button4.BackColor = System.Drawing.Color.Black
        Me.Button4.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button4.ForeColor = System.Drawing.Color.White
        Me.Button4.Location = New System.Drawing.Point(314, 445)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(103, 23)
        Me.Button4.TabIndex = 10
        Me.Button4.Text = "Ekraani säästmine"
        Me.Button4.UseVisualStyleBackColor = False
        '
        'Button6
        '
        Me.Button6.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Button6.BackColor = System.Drawing.Color.Green
        Me.Button6.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button6.ForeColor = System.Drawing.Color.White
        Me.Button6.Location = New System.Drawing.Point(423, 445)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(75, 23)
        Me.Button6.TabIndex = 11
        Me.Button6.Text = "Arvuti teave"
        Me.Button6.UseVisualStyleBackColor = False
        '
        'ListBox2
        '
        Me.ListBox2.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ListBox2.FormattingEnabled = True
        Me.ListBox2.Location = New System.Drawing.Point(215, 11)
        Me.ListBox2.Name = "ListBox2"
        Me.ListBox2.Size = New System.Drawing.Size(286, 95)
        Me.ListBox2.TabIndex = 12
        Me.ListBox2.Visible = False
        '
        'PlayButton
        '
        Me.PlayButton.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.PlayButton.BackColor = System.Drawing.Color.DodgerBlue
        Me.PlayButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.PlayButton.ForeColor = System.Drawing.Color.White
        Me.PlayButton.Location = New System.Drawing.Point(111, 445)
        Me.PlayButton.Name = "PlayButton"
        Me.PlayButton.Size = New System.Drawing.Size(30, 23)
        Me.PlayButton.TabIndex = 13
        Me.PlayButton.Text = "||"
        Me.PlayButton.UseVisualStyleBackColor = False
        Me.PlayButton.Visible = False
        '
        'ForwardButton
        '
        Me.ForwardButton.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.ForwardButton.BackColor = System.Drawing.Color.Black
        Me.ForwardButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.ForwardButton.ForeColor = System.Drawing.Color.White
        Me.ForwardButton.Location = New System.Drawing.Point(173, 445)
        Me.ForwardButton.Name = "ForwardButton"
        Me.ForwardButton.Size = New System.Drawing.Size(45, 23)
        Me.ForwardButton.TabIndex = 15
        Me.ForwardButton.Text = "►►|"
        Me.ForwardButton.UseVisualStyleBackColor = False
        Me.ForwardButton.Visible = False
        '
        'StopButton
        '
        Me.StopButton.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.StopButton.BackColor = System.Drawing.Color.Red
        Me.StopButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.StopButton.ForeColor = System.Drawing.Color.White
        Me.StopButton.Location = New System.Drawing.Point(215, 445)
        Me.StopButton.Name = "StopButton"
        Me.StopButton.Size = New System.Drawing.Size(29, 23)
        Me.StopButton.TabIndex = 16
        Me.StopButton.Text = "■"
        Me.StopButton.UseVisualStyleBackColor = False
        Me.StopButton.Visible = False
        '
        'ListBox3
        '
        Me.ListBox3.FormattingEnabled = True
        Me.ListBox3.Location = New System.Drawing.Point(435, 143)
        Me.ListBox3.Name = "ListBox3"
        Me.ListBox3.Size = New System.Drawing.Size(120, 95)
        Me.ListBox3.TabIndex = 17
        Me.ListBox3.Visible = False
        '
        'InfoButton
        '
        Me.InfoButton.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.InfoButton.BackColor = System.Drawing.Color.DarkBlue
        Me.InfoButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.InfoButton.ForeColor = System.Drawing.Color.White
        Me.InfoButton.Location = New System.Drawing.Point(173, 445)
        Me.InfoButton.Name = "InfoButton"
        Me.InfoButton.Size = New System.Drawing.Size(36, 23)
        Me.InfoButton.TabIndex = 18
        Me.InfoButton.Text = "♫"
        Me.InfoButton.UseVisualStyleBackColor = False
        Me.InfoButton.Visible = False
        '
        'LastIndex
        '
        Me.LastIndex.AutoSize = True
        Me.LastIndex.Location = New System.Drawing.Point(504, 455)
        Me.LastIndex.Name = "LastIndex"
        Me.LastIndex.Size = New System.Drawing.Size(39, 13)
        Me.LastIndex.TabIndex = 19
        Me.LastIndex.Text = "Label1"
        Me.LastIndex.Visible = False
        '
        'BackwardButton
        '
        Me.BackwardButton.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.BackwardButton.BackColor = System.Drawing.Color.Black
        Me.BackwardButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.BackwardButton.ForeColor = System.Drawing.Color.White
        Me.BackwardButton.Location = New System.Drawing.Point(140, 445)
        Me.BackwardButton.Name = "BackwardButton"
        Me.BackwardButton.Size = New System.Drawing.Size(36, 23)
        Me.BackwardButton.TabIndex = 20
        Me.BackwardButton.Text = "|◄◄"
        Me.BackwardButton.UseVisualStyleBackColor = False
        Me.BackwardButton.Visible = False
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.Black
        Me.BackgroundImage = Global.Mas_Shell.My.Resources.Resources.cornfield_195642_1280
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(640, 480)
        Me.Controls.Add(Me.ForwardButton)
        Me.Controls.Add(Me.BackwardButton)
        Me.Controls.Add(Me.LastIndex)
        Me.Controls.Add(Me.InfoButton)
        Me.Controls.Add(Me.ListBox3)
        Me.Controls.Add(Me.ListBox2)
        Me.Controls.Add(Me.Button6)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Notelabel)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.PaperBar)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.DateText)
        Me.Controls.Add(Me.TimeLabel)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.StopButton)
        Me.Controls.Add(Me.PlayButton)
        Me.Controls.Add(Me.Button3)
        Me.DoubleBuffered = True
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "Form1"
        Me.ShowIcon = False
        Me.ShowInTaskbar = False
        Me.Text = "Login mode"
        Me.TopMost = True
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents TimeLabel As System.Windows.Forms.Label
    Friend WithEvents Clock As System.Windows.Forms.Timer
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents DateText As System.Windows.Forms.Label
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents Wallpaper_Timer As System.Windows.Forms.Timer
    Friend WithEvents PaperBar As System.Windows.Forms.ProgressBar
    Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
    Friend WithEvents Notelabel As System.Windows.Forms.Label
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Button6 As System.Windows.Forms.Button
    Friend WithEvents ListBox2 As System.Windows.Forms.ListBox
    Friend WithEvents PlayButton As System.Windows.Forms.Button
    Friend WithEvents ForwardButton As System.Windows.Forms.Button
    Friend WithEvents StopButton As System.Windows.Forms.Button
    Friend WithEvents ListBox3 As System.Windows.Forms.ListBox
    Friend WithEvents InfoButton As System.Windows.Forms.Button
    Friend WithEvents LastIndex As System.Windows.Forms.Label
    Friend WithEvents BackwardButton As System.Windows.Forms.Button

End Class
