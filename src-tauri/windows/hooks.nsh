; Startup + icloud-numbers:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Numbers" '"$INSTDIR\iCloud Numbers.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-numbers" "" "URL:iCloud Numbers"
  WriteRegStr HKCU "Software\Classes\icloud-numbers" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-numbers\shell\open\command" "" '"$INSTDIR\iCloud Numbers.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Numbers"
  DeleteRegKey HKCU "Software\Classes\icloud-numbers"
!macroend
