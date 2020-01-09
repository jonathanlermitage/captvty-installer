Name "Captvty"
OutFile "Captvty Setup.exe"
InstallDir "$LOCALAPPDATA\Captvty"
InstallDirRegKey HKLM "Software\Captvty" "Install_Dir"
RequestExecutionLevel admin

Page Directory
Page InstFiles
UninstPage uninstConfirm
UninstPage instfiles

Section "install"
    setOutPath $INSTDIR
    delete "$INSTDIR\Captvty.exe"
    delete "$INSTDIR\Captvty.exe.config"
    rmDir /r "$INSTDIR\tools"
    file Captvty.exe
    file Captvty.exe.config
    file /r tools
    createDirectory "$SMPROGRAMS\Captvty"
    createShortCut "$SMPROGRAMS\Captvty\Captvty.lnk" "$INSTDIR\Captvty.exe" "" "$INSTDIR\Captvty.exe"
    WriteRegStr HKLM "Software\Captvty" "Install_Dir" "$\"$INSTDIR\uninstall.exe$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Captvty" "DisplayName" "Captvty"
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Captvty" "UninstallString" "$\"$INSTDIR\uninstall.exe$\""
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Captvty" "Publisher" "Guillaume"
    WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Captvty" "NoModify" 1
    WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Captvty" "NoRepair" 1
    WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Captvty" "QuietUninstallString" "$\"$INSTDIR\uninstall.exe$\" /S"
    writeUninstaller "$INSTDIR\uninstall.exe"
    createShortCut "$SMPROGRAMS\Captvty\Uninstall.lnk" "$INSTDIR\uninstall.exe"
SectionEnd

Section "uninstall"
    DeleteRegKey HKLM "SOFTWARE\Captvty"
    DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Captvty"
    delete "$INSTDIR\Captvty.exe"
    delete "$INSTDIR\Captvty.exe.config"
    rmDir /r "$INSTDIR\tools"
    delete "$SMPROGRAMS\Captvty\Captvty.lnk"
    delete "$SMPROGRAMS\Captvty\Uninstall.lnk"
    rmDir "$SMPROGRAMS\Captvty"
    delete "$INSTDIR\uninstall.exe"
SectionEnd
