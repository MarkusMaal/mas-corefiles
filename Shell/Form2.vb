Imports System.IO
Public Class Form2

    Private Sub Form2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            Process.Start("C:\mas\restore_explorer.exe")
            Process.Start("C:\mas\StartupLoader.exe")
            BarTimer.Enabled = True
            Exit Sub
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Tõrge", MessageBoxButtons.OK, MessageBoxIcon.Stop)
            Me.Close()
        End Try
    End Sub

    Private Sub TTimer_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TTimer.Tick
        If File.Exists("C:\mas\start1.log") Then
            Process.Start("explorer.exe")
            Form1.Close()
            Me.Close()
        Else
            Exit Sub
        End If
    End Sub

    Private Sub BarTimer_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BarTimer.Tick
        If ProgressBar1.Value = 100 Then
            File.WriteAllText("C:\mas\service.log", "hello")
            TTimer.Enabled = True
            BarTimer.Enabled = False
        Else
            ProgressBar1.Increment(10)
        End If
    End Sub
End Class