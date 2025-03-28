Public Class Form1

    Private Sub Clock_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Clock.Tick
        Dim h As Integer = TimeOfDay.Hour
        Dim m As String = TimeOfDay.Minute
        If m.Length = 1 Then m = "0" & m
        TimeLabel.Text = h & ":" & m
        Dim mnth As String = DateTime.Today.Month
        If mnth = 1 Then
            mnth = "jaanuar"
            GoTo fd
        End If
        If mnth = 2 Then
            mnth = "veebruar"
            GoTo fd
        End If
        If mnth = 3 Then
            mnth = "märts"
            GoTo fd
        End If
        If mnth = 4 Then
            mnth = "aprill"
            GoTo fd
        End If
        If mnth = 5 Then
            mnth = "mai"
            GoTo fd
        End If
        If mnth = 6 Then
            mnth = "juuni"
            GoTo fd
        End If
        If mnth = 7 Then
            mnth = "juuli"
            GoTo fd
        End If
        If mnth = 8 Then
            mnth = "august"
            GoTo fd
        End If
        If mnth = 9 Then
            mnth = "september"
            GoTo fd
        End If
        If mnth = 10 Then
            mnth = "oktoober"
            GoTo fd
        End If
        If mnth = 11 Then
            mnth = "november"
            GoTo fd
        End If
        If mnth = 12 Then
            mnth = "detsember"
            GoTo fd
        End If
fd:
        DateText.Text = DateTime.Today.Day & ". " & mnth & " " & DateTime.Today.Year
    End Sub

    Private Sub Form1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Click
        Button1.Visible = True
        Button2.Visible = True
        Button3.Visible = True
        Button4.Visible = True
        Button5.Visible = True
        TimeLabel.Visible = True
        DateText.Visible = True
        Notelabel.Visible = True
        Windows.Forms.Cursor.Show()
        Button6.Visible = True
        If WmpForm.AxWindowsMediaPlayer1.playState = WMPLib.WMPPlayState.wmppsPlaying Then
            PlayButton.Visible = True
            ForwardButton.Visible = True
            BackwardButton.Visible = True
            StopButton.Visible = True
            Button3.Visible = False
        End If
    End Sub

    Private Sub Form1_Enter(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Enter
        Me.TopMost = True
    End Sub

    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        If Form2.Visible = False Then
            e.Cancel = True
        ElseIf Form2.Visible = True Then
            e.Cancel = False
        End If
    End Sub

    Private Sub Form1_GotFocus(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.GotFocus
        Me.TopMost = True
    End Sub

    Private Sub Form1_Leave(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Leave
        Me.TopMost = False
    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim rnd As New Random
        Dim randomindex As Integer = rnd.Next(0, ListBox1.Items.Count - 1)
        ListBox1.SelectedIndex = randomindex
            If ListBox1.SelectedIndex = 0 Then
                Me.BackgroundImage = My.Resources.tropical_1651423_1280
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 1 Then
                Me.BackgroundImage = My.Resources._2015_10_02_14_13_09
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 2 Then
                Me.BackgroundImage = My.Resources._2015_10_02_14_21_31
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 3 Then
                Me.BackgroundImage = My.Resources.sky_383823_1280
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 4 Then
                Me.BackgroundImage = My.Resources.straw_bales_726976_1280
                'ListBox1.SelectedIndex = 5
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 5 Then
                Me.BackgroundImage = My.Resources.strawberry_1180048_1280
                'ListBox1.SelectedIndex = 6
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 6 Then
                Me.BackgroundImage = My.Resources.summer_2391348_1280
                ' ListBox1.SelectedIndex = 7
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 7 Then
                Me.BackgroundImage = My.Resources.summer_wp
                ' ListBox1.SelectedIndex = 8
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 8 Then
                Me.BackgroundImage = My.Resources.summer_368224_1280
                'ListBox1.SelectedIndex = 9
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 9 Then
                Me.BackgroundImage = My.Resources.summer_789974_1280
                'ListBox1.SelectedIndex = 10
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 10 Then
                Me.BackgroundImage = My.Resources.tree_2435269_1280
                'ListBox1.SelectedIndex = 11
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 11 Then
                Me.BackgroundImage = My.Resources.summer_2391348_1280
                ' ListBox1.SelectedIndex = 12
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 12 Then
                Me.BackgroundImage = My.Resources.cornfield_195642_1280
                'ListBox1.SelectedIndex = 0
                GoTo esdif
            End If
esdif:
            Dim h As String = TimeOfDay.Hour
            Dim m As String = TimeOfDay.Minute
            If m.Length = 1 Then m = "0" & m
            TimeLabel.Text = h & ":" & m
            Dim mnth As String = DateTime.Today.Month
            If mnth = 1 Then
                mnth = "jaanuar"
                GoTo fd
            End If
            If mnth = 2 Then
                mnth = "veebruar"
                GoTo fd
            End If
            If mnth = 3 Then
                mnth = "märts"
                GoTo fd
            End If
            If mnth = 4 Then
                mnth = "aprill"
                GoTo fd
            End If
            If mnth = 5 Then
                mnth = "mai"
                GoTo fd
            End If
            If mnth = 6 Then
                mnth = "juuni"
                GoTo fd
            End If
            If mnth = 7 Then
                mnth = "juuli"
                GoTo fd
            End If
            If mnth = 8 Then
                mnth = "august"
                GoTo fd
            End If
            If mnth = 9 Then
                mnth = "september"
                GoTo fd
            End If
            If mnth = 10 Then
                mnth = "oktoober"
                GoTo fd
            End If
            If mnth = 11 Then
                mnth = "november"
                GoTo fd
            End If
            If mnth = 12 Then
                mnth = "detsember"
                GoTo fd
            End If
fd:
            DateText.Text = DateTime.Today.Day & ". " & mnth & " " & DateTime.Today.Year
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        If TextBox1.Visible = True Then
            Notelabel.Visible = True
            Notelabel.Text = TextBox1.Text
            TextBox1.Visible = False
            TextBox1.Text = ""
            Exit Sub
        ElseIf TextBox1.Visible = False Then
            Notelabel.Visible = False
            TextBox1.Visible = True
            Exit Sub
        End If
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Try
            If MessageBox.Show("Kas soovite valida muusikapalad failisüsteemist (nõuab parooli)?", "Muusika esitamine", MessageBoxButtons.YesNo, MessageBoxIcon.Question) = MsgBoxResult.Yes Then
                If Dialog.ShowDialog = Windows.Forms.DialogResult.OK Then
                    If Dialog.TextBox1.Text = "majakass123" Then
                        Me.TopMost = False
                        Process.Start("C:\Users\Markus Maal\Documents\Visual Studio 2015\Projects\Pidu!\Pidu!\bin\Debug\Pidu!.exe")
                    Else
                        Dialog.TextBox1.Text = ""
                        GoTo nopass
                    End If
                Else
                    Exit Sub
                End If
            Else
nopass:
                Dim AllowedExtension As String = ".mp3 .wma .ogg .aiff .flac"
                For Each file As String In IO.Directory.GetFiles("C:\Users\Public\Music", "*.*")
                    If AllowedExtension.Contains(IO.Path.GetExtension(file).ToLower) Then
                        ListBox2.Items.Add(file)
                        WmpForm.AxWindowsMediaPlayer1.Visible = True
                        WmpForm.Show()
                        Button3.Visible = False
                        PlayButton.Visible = True
                        ForwardButton.Visible = True
                        BackwardButton.Visible = True
                        StopButton.Visible = True
                        Dim rnd As New Random
                        Dim randomindex As Integer = rnd.Next(0, ListBox2.Items.Count - 1)
                        ListBox2.SelectedIndex = randomindex
                    End If
                Next
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Tõrge", MessageBoxButtons.OK, MessageBoxIcon.Stop)
        End Try
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Dialog.ShowDialog = Windows.Forms.DialogResult.OK Then
            If Dialog.TextBox1.Text = "majakass123" Then
                Form2.Show()
            Else
                Dialog.TextBox1.Text = ""
                MessageBox.Show("Vale parool", "Ei saa töölauda käivitada", MessageBoxButtons.OK, MessageBoxIcon.Stop)
            End If
        Else
            Exit Sub
        End If
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Process.Start("cmd.exe", "/k shutdown /s /t 0")
    End Sub

    Private Sub Wallpaper_Timer_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Wallpaper_Timer.Tick
        Dim rnd As New Random
        Dim randomindex As Integer = rnd.Next(0, ListBox1.Items.Count - 1)
        ListBox1.SelectedIndex = randomindex
        If PaperBar.Value = PaperBar.Maximum Then
            If ListBox1.SelectedIndex = 0 Then
                Me.BackgroundImage = My.Resources.tropical_1651423_1280
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 1 Then
                Me.BackgroundImage = My.Resources._2015_10_02_14_13_09
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 2 Then
                Me.BackgroundImage = My.Resources._2015_10_02_14_21_31
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 3 Then
                Me.BackgroundImage = My.Resources.sky_383823_1280
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 4 Then
                Me.BackgroundImage = My.Resources.straw_bales_726976_1280
                'ListBox1.SelectedIndex = 5
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 5 Then
                Me.BackgroundImage = My.Resources.strawberry_1180048_1280
                'ListBox1.SelectedIndex = 6
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 6 Then
                Me.BackgroundImage = My.Resources.summer_2391348_1280
                ' ListBox1.SelectedIndex = 7
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 7 Then
                Me.BackgroundImage = My.Resources.summer_wp
                ' ListBox1.SelectedIndex = 8
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 8 Then
                Me.BackgroundImage = My.Resources.summer_368224_1280
                'ListBox1.SelectedIndex = 9
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 9 Then
                Me.BackgroundImage = My.Resources.summer_789974_1280
                'ListBox1.SelectedIndex = 10
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 10 Then
                Me.BackgroundImage = My.Resources.tree_2435269_1280
                'ListBox1.SelectedIndex = 11
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 11 Then
                Me.BackgroundImage = My.Resources.summer_2391348_1280
                ' ListBox1.SelectedIndex = 12
                GoTo esdif
            ElseIf ListBox1.SelectedIndex = 12 Then
                Me.BackgroundImage = My.Resources.cornfield_195642_1280
                'ListBox1.SelectedIndex = 0
                GoTo esdif
            End If
EsdIf:
            PaperBar.Value = PaperBar.Minimum
        Else
            PaperBar.Increment(1)
        End If
    End Sub

    Private Sub Form1_LostFocus(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LostFocus
        Me.TopMost = False
    End Sub

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged

    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Button1.Visible = False
        Button2.Visible = False
        Button3.Visible = False
        Button4.Visible = False
        Button5.Visible = False
        TimeLabel.Visible = False
        DateText.Visible = False
        TextBox1.Visible = False
        Notelabel.Visible = False
        Button6.Visible = False
        PlayButton.Visible = False
        ForwardButton.Visible = False
        BackwardButton.Visible = False
        StopButton.Visible = False
        Windows.Forms.Cursor.Hide()
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        Process.Start("C:\Users\Markus Maal\Documents\Visual Studio 2010\Projects\kontroller\kontroller\Bin\Debug\kontroller.exe")
    End Sub

    Private Sub StopButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles StopButton.Click
        ListBox2.Items.Clear()
        StopButton.Visible = False
        PlayButton.Visible = False
        ForwardButton.Visible = False
        BackwardButton.Visible = False
        Notelabel.Text = ""
        WmpForm.AxWindowsMediaPlayer1.Ctlcontrols.stop()
        Button3.Visible = True
    End Sub

    Private Sub AxWindowsMediaPlayer1_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub ListBox2_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListBox2.SelectedIndexChanged
        WmpForm.AxWindowsMediaPlayer1.URL = ListBox2.SelectedItem.ToString
        WmpForm.AxWindowsMediaPlayer1.Ctlcontrols.play()
    End Sub

    Private Sub AxWindowsMediaPlayer1_PlayStateChange(ByVal sender As Object, ByVal e As AxWMPLib._WMPOCXEvents_PlayStateChangeEvent)
    End Sub

    Private Sub PlayButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PlayButton.Click
        If PlayButton.Text = "||" Then
            WmpForm.AxWindowsMediaPlayer1.Ctlcontrols.pause()
            PlayButton.BackColor = Color.LimeGreen
            PlayButton.Text = "►"
            Exit Sub
        ElseIf PlayButton.Text = "►" Then
            WmpForm.AxWindowsMediaPlayer1.Ctlcontrols.play()
            PlayButton.Text = "||"
            PlayButton.BackColor = Color.DodgerBlue
        End If
    End Sub

    Private Sub BackwardButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If Not ListBox2.SelectedIndex = 0 Then ListBox2.SelectedIndex = ListBox2.SelectedIndex - 1
        If ListBox2.SelectedIndex = 0 Then ListBox2.SelectedIndex = ListBox2.Items.Count
    End Sub
    Private Sub ForwardButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ForwardButton.Click
        If ForwardButton.Visible = False Then Exit Sub
        LastIndex.Text = ListBox2.SelectedIndex
        Dim rnd As New Random
        Dim randomindex As Integer = rnd.Next(0, ListBox2.Items.Count - 1)
        ListBox2.SelectedIndex = randomindex
    End Sub

    Private Sub ListBox1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged

    End Sub

    Private Sub InfoButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles InfoButton.Click
        Notelabel.Text = WmpForm.AxWindowsMediaPlayer1.playState
    End Sub

    Private Sub BackwardButton_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BackwardButton.Click
        ListBox2.SelectedIndex = LastIndex.Text
    End Sub
End Class
