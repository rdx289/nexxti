$TenantID = "5a60d899-28b4-48b9-a5a9-eec8372021de"
$ApplicationID = "841a726e-f777-4178-a6fd-be3ab50f0624"
$AppSecret = 'P.e8Q~9gO8y4kYiJeHlwTLA5kFGhX-ZtYuCrca-C'

$PasswordExpirationDays = 90

If (($TimeSpan.Days -le 10) -and ($TimeSpan.Days -ge -5)) {
    Write-Output "Password Expires after $($TimeSpan.Days) days"
    Exit 1
}

$TitleText = "Password about to Expire"
$BodyText1 = "Your Password is about to expire"
$BodyText2 = "If you do not reset your password within ten days from when this message is displayed the first time your account will be locked. If you are unable to reset your password or your password has already been reset, please contact the support."
$HeaderText = "EMS"


#Remove this if you want to use an URL and your own image instead
$HeroImagePath = "C:\Windows\Web\Wallpaper\Theme1\img1.jpg"


#If you want to you use your own URL use theese variables instead, also uncomment line 100 & 101
#$HeroImageFile = "Paste URL here if you want to download your own image from e.g an Azure Storage Account"
#$HeroImageName = "img1.jpg"

$Action = "https://account.activedirectory.windowsazure.com/ChangePassword.aspx"