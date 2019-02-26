#
# DotNetSample.ps1
#

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$mywindow = New-Object System.Windows.Forms.Form
$mywindow.Text = "ImgViewer"
$mywindow.Width = 800
$mywindow.Height = 600
$mywindow.FormBorderStyle = 'FixedDialog'
$mywindow.MaximizeBox = $false
$mywindow.StartPosition = 'CenterScreen'
$mybtn = New-Object System.Windows.Forms.Button
$mybtn.Text = "Browse"
$mybtn.Width = 100
$mybtn.Height = 28
$mybtn.Location = New-Object System.Drawing.Point(650,520)
$pictureBox = New-Object System.Windows.Forms.PictureBox
$pictureBox.Width = 800
$pictureBox.Height = 500
$pictureBox.SizeMode ='StretchImage'
$pictureBox.Location = New-Object System.Drawing.Point(0,0)
$mywindow.Controls.Add($pictureBox)
$mybtn.Add_Click(
   {
       $fileDialog = New-Object System.Windows.Forms.OpenFileDialog
	   $fileDialog.Filter = 'Jpg Image|*.jpg'
	   $fileDialog.InitialDirectory = [System.Environment]::GetFolderPath('MyPictures')
	   $dialogResult = $fileDialog.ShowDialog()
	   if($dialogResult -eq 'OK')
	   {
		   $imageFile = $fileDialog.FileName
		   $image = [System.Drawing.Image]::FromFile($imageFile)
		   $pictureBox.Image = $image
	   }

   })
$mywindow.Controls.Add($mybtn)
$mywindow.ShowDialog()