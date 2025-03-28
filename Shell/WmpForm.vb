Public Class WmpForm

    Private Sub WmpForm_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.Hide()
    End Sub

    Private Sub AxWindowsMediaPlayer1_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AxWindowsMediaPlayer1.Enter

    End Sub

    Private Sub AxWindowsMediaPlayer1_PlayStateChange(ByVal sender As Object, ByVal e As AxWMPLib._WMPOCXEvents_PlayStateChangeEvent) Handles AxWindowsMediaPlayer1.PlayStateChange
        Try
            If AxWindowsMediaPlayer1.playState = 1 Then
                If Form1.StopButton.Visible = False Then Exit Sub
                AxWindowsMediaPlayer1.Ctlcontrols.stop()
            End If
            If Form1.PlayButton.Text = "||" Then
                Form1.PlayButton.BackColor = Color.LimeGreen
                Form1.PlayButton.Text = "►"
                GoTo ntwar
            ElseIf Form1.PlayButton.Text = "►" Then
                Form1.PlayButton.Text = "||"
                Form1.PlayButton.BackColor = Color.DodgerBlue
            End If
ntwar:
            If AxWindowsMediaPlayer1.playState = WMPLib.WMPPlayState.wmppsStopped Then AxWindowsMediaPlayer1.Ctlcontrols.play()
            If AxWindowsMediaPlayer1.playState = WMPLib.WMPPlayState.wmppsPaused Then AxWindowsMediaPlayer1.Ctlcontrols.play()
            If AxWindowsMediaPlayer1.currentMedia.getItemInfo("author") = "" Then
                If AxWindowsMediaPlayer1.currentMedia.name = "" Then Form1.Notelabel.Text = "Esitamine on peatatud"
                Form1.Notelabel.Text = AxWindowsMediaPlayer1.currentMedia.name
            Else
                Form1.Notelabel.Text = AxWindowsMediaPlayer1.currentMedia.name & " - " & AxWindowsMediaPlayer1.currentMedia.getItemInfo("author")
            End If
        Catch ex As Exception
            Exit Sub
        End Try
    End Sub
End Class