; =========================================================
; Game Engine Function: sub_5FE2C
; Address            : 0x5FE2C - 0x5FFBA
; =========================================================

5FE2C:  PUSH            {R4-R7,LR}
5FE2E:  ADD             R7, SP, #0xC
5FE30:  PUSH.W          {R8-R11}
5FE34:  SUB             SP, SP, #0xC
5FE36:  LDR             R0, =(aDataDataComSam - 0x5FE3C); "/data/data/com.sampmobilerp.game/lib" ...
5FE38:  ADD             R0, PC; "/data/data/com.sampmobilerp.game/lib"
5FE3A:  BLX             opendir
5FE3E:  CMP             R0, #0
5FE40:  BEQ.W           loc_5FFA0
5FE44:  MOV             R4, R0
5FE46:  BLX             readdir
5FE4A:  CMP             R0, #0
5FE4C:  BEQ.W           loc_5FF96
5FE50:  LDR             R5, =(asc_4AD34 - 0x5FE58); "." ...
5FE52:  LDR             R1, =(asc_4FDB9 - 0x5FE5A); ".." ...
5FE54:  ADD             R5, PC; "."
5FE56:  ADD             R1, PC; ".."
5FE58:  MOV             R8, R1
5FE5A:  LDR             R1, =(aSo - 0x5FE60); ".so" ...
5FE5C:  ADD             R1, PC; ".so"
5FE5E:  MOV             R9, R1
5FE60:  LDR             R1, =(aLibgtasaSo - 0x5FE66); "libGTASA.so" ...
5FE62:  ADD             R1, PC; "libGTASA.so"
5FE64:  MOV             R10, R1
5FE66:  LDR             R1, =(aLibamlSo - 0x5FE6C); "libAML.so" ...
5FE68:  ADD             R1, PC; "libAML.so"
5FE6A:  MOV             R11, R1
5FE6C:  LDR             R1, =(aLibbassSo - 0x5FE72); "libBASS.so" ...
5FE6E:  ADD             R1, PC; "libBASS.so"
5FE70:  STR             R1, [SP,#0x28+s2]
5FE72:  LDR             R1, =(aLibcleoSo - 0x5FE78); "libCLEO.so" ...
5FE74:  ADD             R1, PC; "libCLEO.so"
5FE76:  STR             R1, [SP,#0x28+var_24]
5FE78:  LDR             R1, =(aLibdobbySo_0 - 0x5FE7E); "libdobby.so" ...
5FE7A:  ADD             R1, PC; "libdobby.so"
5FE7C:  STR             R1, [SP,#0x28+var_28]
5FE7E:  B               loc_5FE8C
5FE80:  MOV             R0, R4; dirp
5FE82:  BLX             readdir
5FE86:  CMP             R0, #0
5FE88:  BEQ.W           loc_5FF96
5FE8C:  ADD.W           R6, R0, #0x13
5FE90:  MOV             R1, R5; s2
5FE92:  MOV             R0, R6; s1
5FE94:  BLX             strcmp
5FE98:  CMP             R0, #0
5FE9A:  BEQ             loc_5FE80
5FE9C:  MOV             R0, R6; s1
5FE9E:  MOV             R1, R8; s2
5FEA0:  BLX             strcmp
5FEA4:  CMP             R0, #0
5FEA6:  BEQ             loc_5FE80
5FEA8:  MOV             R0, R6; haystack
5FEAA:  MOV             R1, R9; needle
5FEAC:  BLX             strstr
5FEB0:  CMP             R0, #0
5FEB2:  BEQ             loc_5FE80
5FEB4:  MOV             R0, R6; s1
5FEB6:  MOV             R1, R10; s2
5FEB8:  BLX             strcmp
5FEBC:  CMP             R0, #0
5FEBE:  BEQ             loc_5FE80
5FEC0:  MOV             R0, R6; s1
5FEC2:  MOV             R1, R11; s2
5FEC4:  BLX             strcmp
5FEC8:  CMP             R0, #0
5FECA:  BEQ             loc_5FE80
5FECC:  LDR             R1, [SP,#0x28+s2]; s2
5FECE:  MOV             R0, R6; s1
5FED0:  BLX             strcmp
5FED4:  CMP             R0, #0
5FED6:  BEQ             loc_5FE80
5FED8:  LDR             R1, [SP,#0x28+var_24]; s2
5FEDA:  MOV             R0, R6; s1
5FEDC:  BLX             strcmp
5FEE0:  CMP             R0, #0
5FEE2:  BEQ             loc_5FE80
5FEE4:  LDR             R1, [SP,#0x28+var_28]; s2
5FEE6:  MOV             R0, R6; s1
5FEE8:  BLX             strcmp
5FEEC:  CMP             R0, #0
5FEEE:  BEQ             loc_5FE80
5FEF0:  LDR             R1, =(aLibimmemulator - 0x5FEF8); "libImmEmulatorJ.so" ...
5FEF2:  MOV             R0, R6; s1
5FEF4:  ADD             R1, PC; "libImmEmulatorJ.so"
5FEF6:  BLX             strcmp
5FEFA:  CMP             R0, #0
5FEFC:  BEQ             loc_5FE80
5FEFE:  LDR             R1, =(aLibluajit51So - 0x5FF06); "libluajit-5.1.so" ...
5FF00:  MOV             R0, R6; s1
5FF02:  ADD             R1, PC; "libluajit-5.1.so"
5FF04:  BLX             strcmp
5FF08:  CMP             R0, #0
5FF0A:  BEQ             loc_5FE80
5FF0C:  LDR             R1, =(aLibmonetloader - 0x5FF14); "libmonetloader.so" ...
5FF0E:  MOV             R0, R6; s1
5FF10:  ADD             R1, PC; "libmonetloader.so"
5FF12:  BLX             strcmp
5FF16:  CMP             R0, #0
5FF18:  BEQ             loc_5FE80
5FF1A:  LDR             R1, =(aLibsampSo - 0x5FF22); "libsamp.so" ...
5FF1C:  MOV             R0, R6; s1
5FF1E:  ADD             R1, PC; "libsamp.so"
5FF20:  BLX             strcmp
5FF24:  CMP             R0, #0
5FF26:  BEQ             loc_5FE80
5FF28:  LDR             R1, =(aLibsampOrigSo_0 - 0x5FF30); "libSAMP_ORIG.so" ...
5FF2A:  MOV             R0, R6; s1
5FF2C:  ADD             R1, PC; "libSAMP_ORIG.so"
5FF2E:  BLX             strcmp
5FF32:  CMP             R0, #0
5FF34:  BEQ             loc_5FE80
5FF36:  LDR             R1, =(aLibscandSo - 0x5FF3E); "libSCAnd.so" ...
5FF38:  MOV             R0, R6; s1
5FF3A:  ADD             R1, PC; "libSCAnd.so"
5FF3C:  BLX             strcmp
5FF40:  CMP             R0, #0
5FF42:  BEQ             loc_5FE80
5FF44:  LDR             R1, =(aLibplugincleoe - 0x5FF4C); "libpluginCleoExtender.so" ...
5FF46:  MOV             R0, R6; s1
5FF48:  ADD             R1, PC; "libpluginCleoExtender.so"
5FF4A:  BLX             strcmp
5FF4E:  CMP             R0, #0
5FF50:  BEQ             loc_5FE80
5FF52:  LDR             R1, =(aLibfastman92pl - 0x5FF5A); "libFastman92pluginLoader.so" ...
5FF54:  MOV             R0, R6; s1
5FF56:  ADD             R1, PC; "libFastman92pluginLoader.so"
5FF58:  BLX             strcmp
5FF5C:  CMP             R0, #0
5FF5E:  BEQ.W           loc_5FE80
5FF62:  LDR             R1, =(aLibpluginFastm - 0x5FF6A); "libplugin_fastman92limitAdjuster.so" ...
5FF64:  MOV             R0, R6; s1
5FF66:  ADD             R1, PC; "libplugin_fastman92limitAdjuster.so"
5FF68:  BLX             strcmp
5FF6C:  CMP             R0, #0
5FF6E:  BEQ.W           loc_5FE80
5FF72:  LDR             R1, =(aLibopenal32So - 0x5FF7A); "libOpenAL32.so" ...
5FF74:  MOV             R0, R6; s1
5FF76:  ADD             R1, PC; "libOpenAL32.so"
5FF78:  BLX             strcmp
5FF7C:  CMP             R0, #0
5FF7E:  BEQ.W           loc_5FE80
5FF82:  LDR             R1, =(aSampOrig - 0x5FF8E); "SAMP_ORIG" ...
5FF84:  MOVS            R0, #6; prio
5FF86:  LDR             R2, =(aNewSoFileDetec - 0x5FF90); "New .so file detected: %s" ...
5FF88:  MOV             R3, R6
5FF8A:  ADD             R1, PC; "SAMP_ORIG"
5FF8C:  ADD             R2, PC; "New .so file detected: %s"
5FF8E:  BLX             __android_log_print
5FF92:  MOVS            R5, #1
5FF94:  B               loc_5FF98
5FF96:  MOVS            R5, #0
5FF98:  MOV             R0, R4; dirp
5FF9A:  BLX             closedir
5FF9E:  B               loc_5FFB0
5FFA0:  LDR             R1, =(aSampOrig - 0x5FFAA); "SAMP_ORIG" ...
5FFA2:  MOVS            R0, #6; prio
5FFA4:  LDR             R2, =(aFailedToOpenTh - 0x5FFAC); "Failed to open the lib directory." ...
5FFA6:  ADD             R1, PC; "SAMP_ORIG"
5FFA8:  ADD             R2, PC; "Failed to open the lib directory."
5FFAA:  BLX             __android_log_print
5FFAE:  MOVS            R5, #0
5FFB0:  MOV             R0, R5
5FFB2:  ADD             SP, SP, #0xC
5FFB4:  POP.W           {R8-R11}
5FFB8:  POP             {R4-R7,PC}
