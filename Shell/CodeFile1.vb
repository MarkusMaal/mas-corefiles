Imports System.IO
Public Class codefile

    Public Sub Load()
        Try
            Process.Start("C:\mas\StartupLoader.exe")
            File.WriteAllText("C:\mas\service.log", "hello")
            Form1.Close()
            Exit Sub
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Tõrge", MessageBoxButtons.OK, MessageBoxIcon.Stop)
        End Try
    End Sub

End Class