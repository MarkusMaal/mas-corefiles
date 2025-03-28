Imports System.IO
Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Hide()
    End Sub

    Private Sub Form1_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.DoubleClick

    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ProgressBar1.Increment(1)
        Me.TopMost = False
        Me.TopMost = True
        Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
        Label5.Text = "Praegune toiming: Teenuste käivitamine..."
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        If File.Exists("C:\mas\service.log") Then
            Dim p As New ProcessStartInfo("C:\mas\startup_optimize.bat")
            p.WindowStyle = ProcessWindowStyle.Hidden
            p.CreateNoWindow = True
            Process.Start(p)
            File.Delete("C:\mas\service.log")
            ProgressBar1.Increment(4)
            Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
            Label5.Text = "Praegune toiming: Viirusetõrje laadimine..."
            Me.TopMost = False
            Me.TopMost = True
            Timer3.Interval = 130
            ProgressBar2.Value = 0
        ElseIf File.Exists("C:\mas\start1.log") Then
            ProgressBar1.Increment(10)
            File.Delete("C:\mas\start1.log")
            Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
            Label5.Text = "Praegune toiming: CameraMonitor Application käivitamine"
            Timer3.Interval = 30
            Me.TopMost = False
            Me.TopMost = True
            ProgressBar2.Value = 0
        ElseIf File.Exists("C:\mas\start2.log") Then
            ProgressBar1.Increment(10)
            File.Delete("C:\mas\start2.log")
            Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
            Label5.Text = "Praegune toiming: Helidraiverite laadimine..."
            Timer3.Interval = 80
            Me.TopMost = False
            Me.TopMost = True
            ProgressBar2.Value = 0
        ElseIf File.Exists("C:\mas\start3.log") Then
            ProgressBar1.Increment(15)
            File.Delete("C:\mas\start3.log")
            Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
            Label5.Text = "Praegune toiming: ATI CCC käivitamine..."
            Timer3.Interval = 75
            Me.TopMost = False
            Me.TopMost = True
            ProgressBar2.Value = 0
        ElseIf File.Exists("C:\mas\start4.log") Then
            ProgressBar1.Increment(10)
            File.Delete("C:\mas\start4.log")
            Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
            Label5.Text = "Praegune toiming: Arvuti optimeerimine LiveTuner'i abiga... (võib natuke aega võtta)"
            ProgressBar2.Value = ProgressBar2.Minimum
            Me.TopMost = False
            Me.TopMost = True
            Timer3.Interval = 220
        ElseIf File.Exists("C:\mas\start5.log") Then
            ProgressBar1.Increment(20)
            File.Delete("C:\mas\start5.log")
            Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
            Label5.Text = "Praegune toiming: Markuse arvuti integratsiooni käivitamine..."
            Timer3.Interval = 100
            Me.TopMost = False
            Me.TopMost = True
            ProgressBar2.Value = 0
        ElseIf File.Exists("C:\mas\start6.log") Then
            ProgressBar1.Increment(20)
            File.Delete("C:\mas\start6.log")
            Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
            Label5.Text = "Praegune toiming: Markuse arvuti integratsiooni käivitamine..."
        ElseIf File.Exists("C:\mas\start7.log") Then
            ProgressBar1.Value = 95
            Me.TopMost = False
            Me.TopMost = True
            File.Delete("C:\mas\start7.log")
            Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
            Label5.Text = "Praegune toiming: Töölauakeskkonna laadimine"
            Timer3.Interval = 40
            ProgressBar2.Value = 0
            Me.TopMost = False
            Me.TopMost = True
        ElseIf File.Exists("C:\mas\finish.log") Then
            Label4.Text = "Kõik tomingud (" & ProgressBar1.Value & "%)"
            Label5.Text = "Praegune toiming: Valmis!"
            File.Delete("C:\mas\finish.log")
            Timer2.Enabled = True
            ProgressBar1.Value = ProgressBar1.Maximum
        End If
    End Sub

    Private Sub Timer2_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer2.Tick
        If ProgressBar1.Value = ProgressBar1.Maximum Then
            If CheckBox1.Checked = True Then
                Me.Close()
            Else
                Button1.Visible = False
                Button2.Visible = False
                Button3.Enabled = True
                ProgressBar1.Visible = False
                ProgressBar2.Visible = False
                CheckBox1.Visible = False
                Label1.Text = "Arvuti on kasutamiseks valmis"
                Label2.Text = "Noh, eemaldasid selle linnukese? Kas oled nüüd rahul? Programmide saladuste tegemine on vahel ka lõbus. Tegelikult pole sul nüüd selle programmiga enam midagi teha. Nii et olge rahulikud ja vajutage Valmis nupule, et väljuda"
                Label5.Visible = False
                Label4.Text = "Protsess on lõpule viidud. Palun vajutage 'Valmis', et jätkata."
                Timer2.Enabled = False

                Exit Sub
            End If
        Else
            Exit Sub
        End If
    End Sub

    Private Sub Timer3_Tick(sender As System.Object, e As System.EventArgs) Handles Timer3.Tick
        If ProgressBar2.Value = ProgressBar2.Maximum Then
            Exit Sub
        Else
            ProgressBar2.Increment(1)
        End If
    End Sub

    Private Sub ProgressBar2_Click(sender As System.Object, e As System.EventArgs) Handles ProgressBar2.Click

    End Sub

    Private Sub Button2_Click(sender As System.Object, e As System.EventArgs) Handles Button2.Click
        Timer1.Enabled = False
        Timer2.Enabled = False
        Timer3.Enabled = False
        If MsgBox("See võib laadimata jätta olulised programmid." & vbNewLine & "Kas olete kindel, et soovite jätkata?" & vbNewLine & vbNewLine & "Soovitatav ainult arendamiseks", MsgBoxStyle.YesNo, "HOIATUS") = MsgBoxResult.Yes Then
            Me.Close()
        Else
            Timer1.Enabled = True
            Timer2.Enabled = True
            Timer3.Enabled = True
        End If
    End Sub

    Private Sub Button3_Click(sender As System.Object, e As System.EventArgs) Handles Button3.Click
        Me.Close()
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then
            Button1.Enabled = True
        ElseIf CheckBox1.Checked = False Then
            Button1.Enabled = False
        End If
    End Sub

    Private Sub colortimer_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles colortimer.Tick
        If ProgressBar1.ForeColor = Color.DeepSkyBlue Then
            ProgressBar1.ForeColor = Color.Red
            ProgressBar2.ForeColor = Color.Red
            Exit Sub
        ElseIf ProgressBar1.ForeColor = Color.Red Then
            ProgressBar1.ForeColor = Color.Green
            ProgressBar2.ForeColor = Color.Green
            Exit Sub
        ElseIf ProgressBar1.ForeColor = Color.Green Then
            ProgressBar1.ForeColor = Color.Yellow
            ProgressBar2.ForeColor = Color.Yellow
            Exit Sub
        ElseIf ProgressBar1.ForeColor = Color.Yellow Then
            ProgressBar1.ForeColor = Color.Purple
            ProgressBar2.ForeColor = Color.Purple
            Exit Sub
        ElseIf ProgressBar1.ForeColor = Color.Purple Then
            ProgressBar1.ForeColor = Color.Orange
            ProgressBar2.ForeColor = Color.Orange
            Exit Sub
        ElseIf ProgressBar1.ForeColor = Color.Orange Then
            ProgressBar1.ForeColor = Color.DarkBlue
            ProgressBar2.ForeColor = Color.DarkBlue
            Exit Sub
        ElseIf ProgressBar1.ForeColor = Color.DarkBlue Then
            ProgressBar1.ForeColor = Color.DeepSkyBlue
            ProgressBar2.ForeColor = Color.DeepSkyBlue
            Exit Sub
        End If
    End Sub

    Private Sub ProgressBar1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ProgressBar1.Click

    End Sub

    Private Sub Label3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Label3.Click

    End Sub

    Private Sub Label3_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Label3.DoubleClick
        colortimer.Enabled = True
    End Sub
End Class
