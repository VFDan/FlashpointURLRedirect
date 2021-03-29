' Based on Flashpoint Shortcut Maker by nosamu and oblivioncth

scriptDir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
clifp = scriptdir & "\CLIFp.exe"
If Not FileExists(clifp) Then 
	msgbox "Please move this script into your Flashpoint folder. Also make sure that CLIFp.exe is in your Flashpoint folder."
	WScript.Quit
End If

gameID = LCase(SanitizeURL(WScript.Arguments(0)))
clifpLaunch = """" & clifp & """" & " --quiet --auto " & gameID

If IsUUID(gameID) Then 
CreateObject("WScript.Shell").Run(clifpLaunch)
	WScript.Quit
ElseIf Not IsUUID(gameID) Then
	msgbox "Invalid GUID", vbExclamation, "FlashpointURLRedirect"
	WScript.Quit
End If

Function FileExists(FilePath)
	Set fso = CreateObject("Scripting.FileSystemObject")
	If fso.FileExists(FilePath) Then
		FileExists=CBool(1)
	Else
		FileExists=CBool(0)
	End If
End Function

Function SanitizeURL(strURL)
	strURL = Replace(strURL, "flashpoint:", "")
	Dim regEx
	Set regEx = New RegExp
	regEx.Global = true
	regEx.Pattern = "[^A-Fa-f0-9-]"
	SanitizeURL = regEx.Replace(strURL, "")
	Set RegEx = Nothing
End Function

Function IsUUID(strUUID)
	If isnull(strUUID) Then
		IsUUID = False
		Exit Function
	End If
	Dim regEx
	Set regEx = New RegExp
	regEx.Pattern = "^({|\()?[A-Fa-f0-9]{8}-([A-Fa-f0-9]{4}-){3}[A-Fa-f0-9]{12}(}|\))?$"
	IsUUID = regEx.Test(strUUID)
	Set RegEx = Nothing
End Function
