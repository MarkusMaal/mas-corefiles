Imports System.IO
Public Class Form1

    Private Sub Form1_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        Try
            Process.Start("D:\startup.exe")
            If File.Exists("D:\batch.txt") Then
                Me.Show()
batch_check:
                If File.Exists("D:\batch2.txt") Then
                    Label3.Text = "15%"
                    ProgressBarX1.Value = 15
                End If
                If File.Exists("D:\batch3.txt") Then
                    File.Delete("D:\batch3.txt")
                    Label3.Text = "25%"
                    ProgressBarX1.Value = 25
                    Label2.Text = "Töölaua ettevalmistamine..."
                End If
                If File.Exists("D:\desktop.txt") Then
                    Label3.Text = "50%"
                    ProgressBarX1.Value = 50
                End If
                If File.Exists("D:\desktop2.txt") Then
                    Label3.Text = "75%"
                    File.Delete("D:\desktop2.txt")
                    ProgressBarX1.Value = 75
                End If
                If File.Exists("D:\integrate.txt") Then
                    Label3.Text = "85%"
                    ProgressBarX1.Value = 85
                    Label2.Text = "Markuse asjade integratsiooni käivitamine"
                End If
                If File.Exists("D:\integrate2.txt") Then
                    File.Delete("D:\integrate2.txt")
                    Label3.Text = "95%"
                    ProgressBarX1.Value = 95
                    Label2.Text = "Arvuti soojenemise lõpule viimine..."
                End If
                If File.Exists("D:\finish.txt") Then
                    File.Delete("D:\finish.txt")
                    Label3.Text = "100%"
                    ProgressBarX1.Value = 100
                    Label2.Text = "Käivitusprogrammi sulgemine"
                    Me.Close()
                End If
                GoTo batch_check
            End If
        Catch ex As Exception
            ProgressBarX1.Value = 100
            Label2.Text = "Ilmnes tõrge: " & ex.Message
a:
            GoTo a
        End Try
    End Sub
End Class
