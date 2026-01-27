!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Numbers" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-numbers" "" "URL:iCloud Numbers"
  WriteRegStr HKCU "Software\Classes\icloud-numbers" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-numbers\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Numbers"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-numbers"
!macroend
