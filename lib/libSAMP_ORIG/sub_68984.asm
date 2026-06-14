; =========================================================
; Game Engine Function: sub_68984
; Address            : 0x68984 - 0x68D22
; =========================================================

68984:  PUSH            {R4-R7,LR}
68986:  ADD             R7, SP, #0xC
68988:  PUSH.W          {R8-R11}
6898C:  SUB             SP, SP, #0x24
6898E:  MOV             R9, R0
68990:  LDR             R0, =(unk_50DA0 - 0x6899E)
68992:  MOV             R5, R1
68994:  LDR             R1, =(byte_1A41FC - 0x689AA)
68996:  MOV             R4, R2
68998:  LDR             R2, =(__stack_chk_guard_ptr - 0x689A4)
6899A:  ADD             R0, PC; unk_50DA0
6899C:  ADD.W           R11, SP, #0x40+var_38
689A0:  ADD             R2, PC; __stack_chk_guard_ptr
689A2:  VLD1.64         {D16-D17}, [R0]!
689A6:  ADD             R1, PC; byte_1A41FC
689A8:  MOV             R10, R3
689AA:  LDR             R2, [R2]; __stack_chk_guard
689AC:  LDR             R0, [R0]
689AE:  LDR             R2, [R2]
689B0:  STR             R2, [SP,#0x40+var_20]
689B2:  MOV             R2, R11
689B4:  VST1.64         {D16-D17}, [R2]!
689B8:  STR             R0, [R2]
689BA:  LDRB            R0, [R1]
689BC:  DMB.W           ISH
689C0:  LSLS            R0, R0, #0x1F
689C2:  BEQ.W           loc_68C90
689C6:  LDR             R6, =(unk_1A41E5 - 0x689CC)
689C8:  ADD             R6, PC; unk_1A41E5
689CA:  MOV             R0, R6
689CC:  BL              sub_60BF6
689D0:  LDR             R1, =(aSampOrig - 0x689DA); "SAMP_ORIG" ...
689D2:  MOVS            R0, #4; prio
689D4:  MOV             R2, R6; fmt
689D6:  ADD             R1, PC; "SAMP_ORIG"
689D8:  BLX             __android_log_print
689DC:  CBZ             R4, loc_689EA
689DE:  CMP.W           R10, #0
689E2:  ITT NE
689E4:  LDRNE           R6, [R7,#arg_0]
689E6:  CMPNE           R6, #0
689E8:  BNE             loc_68A08
689EA:  LDR             R0, [SP,#0x40+var_20]
689EC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x689F4)
689F0:  ADD             R1, PC; __stack_chk_guard_ptr
689F2:  LDR             R1, [R1]; __stack_chk_guard
689F4:  LDR             R1, [R1]
689F6:  CMP             R1, R0
689F8:  ITTTT EQ
689FA:  MOVEQ           R0, R9
689FC:  ADDEQ           SP, SP, #0x24 ; '$'
689FE:  POPEQ.W         {R8-R11}
68A02:  POPEQ           {R4-R7,PC}
68A04:  BLX             __stack_chk_fail
68A08:  LDR             R0, [R5]
68A0A:  MOV             R1, R4
68A0C:  LDR             R2, [R0,#0x54]
68A0E:  MOV             R0, R5
68A10:  BLX             R2
68A12:  LDR             R1, [R5]
68A14:  LDR             R2, [R1,#0x54]
68A16:  MOV             R1, R10
68A18:  STR.W           R0, [R9]
68A1C:  MOV             R0, R5
68A1E:  BLX             R2
68A20:  LDR             R1, [R5]
68A22:  LDR             R2, [R1,#0x54]
68A24:  MOV             R1, R6
68A26:  STR.W           R0, [R9,#4]
68A2A:  MOV             R0, R5
68A2C:  BLX             R2
68A2E:  LDR             R1, [R5]
68A30:  LDR             R2, [R1,#0x7C]
68A32:  MOV             R1, R4
68A34:  STR.W           R0, [R9,#8]
68A38:  MOV             R0, R5
68A3A:  BLX             R2
68A3C:  CMP             R0, #0
68A3E:  BEQ.W           loc_68C26
68A42:  MOV             R8, R0
68A44:  LDR             R0, [R5]
68A46:  MOV             R1, R10
68A48:  LDR             R2, [R0,#0x7C]
68A4A:  MOV             R0, R5
68A4C:  BLX             R2
68A4E:  CMP             R0, #0
68A50:  BEQ.W           loc_68C56
68A54:  MOV             R6, R0
68A56:  LDR             R0, [R5]
68A58:  LDR             R2, =(aShowvoice - 0x68A66); "showVoice" ...
68A5A:  MOV             R1, R6
68A5C:  LDR             R3, =(aZV - 0x68A68); "(Z)V" ...
68A5E:  LDR.W           R4, [R0,#0x84]
68A62:  ADD             R2, PC; "showVoice"
68A64:  ADD             R3, PC; "(Z)V"
68A66:  MOV             R0, R5
68A68:  MOV             R10, R3
68A6A:  BLX             R4
68A6C:  LDR             R1, [R5]
68A6E:  MOV             R3, R10
68A70:  LDR             R2, =(aShowbuttonpane - 0x68A7A); "showButtonPanel" ...
68A72:  LDR.W           R4, [R1,#0x84]
68A76:  ADD             R2, PC; "showButtonPanel"
68A78:  STR.W           R0, [R9,#0x10]
68A7C:  MOV             R0, R5
68A7E:  MOV             R1, R6
68A80:  BLX             R4
68A82:  LDR             R1, [R5]
68A84:  MOV             R3, R10
68A86:  LDR             R2, =(aShowkeyboard - 0x68A90); "showKeyboard" ...
68A88:  LDR.W           R4, [R1,#0x84]
68A8C:  ADD             R2, PC; "showKeyboard"
68A8E:  STR.W           R0, [R9,#0xC]
68A92:  MOV             R0, R5
68A94:  MOV             R1, R6
68A96:  BLX             R4
68A98:  LDR             R1, [R5]
68A9A:  MOV             R3, R10
68A9C:  LDR             R2, =(aShowwantedleve - 0x68AA6); "showWantedLevel" ...
68A9E:  LDR.W           R4, [R1,#0x84]
68AA2:  ADD             R2, PC; "showWantedLevel"
68AA4:  STR.W           R0, [R9,#0x14]
68AA8:  MOV             R0, R5
68AAA:  MOV             R1, R6
68AAC:  BLX             R4
68AAE:  LDR             R1, [R5]
68AB0:  LDR             R2, =(aSetwantedlevel - 0x68ABA); "setWantedLevel" ...
68AB2:  LDR.W           R4, [R1,#0x84]
68AB6:  ADD             R2, PC; "setWantedLevel"
68AB8:  LDR             R3, =(aIV - 0x68AC6); "(I)V" ...
68ABA:  MOV             R1, R6
68ABC:  STR.W           R0, [R9,#0x18]
68AC0:  MOV             R0, R5
68AC2:  ADD             R3, PC; "(I)V"
68AC4:  STR             R3, [SP,#0x40+var_3C]
68AC6:  BLX             R4
68AC8:  LDR             R1, [R5]
68ACA:  LDR.W           R4, [R1,#0x84]
68ACE:  MOV             R1, R6
68AD0:  LDR             R2, =(aShowdialog - 0x68ADE); "showDialog" ...
68AD2:  STR.W           R0, [R9,#0x1C]
68AD6:  MOV             R0, R5
68AD8:  LDR             R3, =(aIiljavaLangStr - 0x68AE0); "(IILjava/lang/String;Ljava/lang/String;"... ...
68ADA:  ADD             R2, PC; "showDialog"
68ADC:  ADD             R3, PC; "(IILjava/lang/String;Ljava/lang/String;"...
68ADE:  BLX             R4
68AE0:  LDR             R1, [R5]
68AE2:  MOV             R3, R10
68AE4:  LDR.W           R4, [R1,#0x84]
68AE8:  MOV             R1, R6
68AEA:  LDR             R2, =(aShowdialogwith - 0x68AF6); "showDialogWithoutReset" ...
68AEC:  STR.W           R0, [R9,#0x20]
68AF0:  MOV             R0, R5
68AF2:  ADD             R2, PC; "showDialogWithoutReset"
68AF4:  BLX             R4
68AF6:  LDR             R1, [R5]
68AF8:  LDR.W           R4, [R1,#0x84]
68AFC:  MOV             R1, R6
68AFE:  LDR             R2, =(aHideloadingscr - 0x68B0C); "hideLoadingScreen" ...
68B00:  STR.W           R0, [R9,#0x24]
68B04:  MOV             R0, R5
68B06:  LDR             R3, =(aV - 0x68B0E); "()V" ...
68B08:  ADD             R2, PC; "hideLoadingScreen"
68B0A:  ADD             R3, PC; "()V"
68B0C:  MOV             R11, R3
68B0E:  BLX             R4
68B10:  LDR             R1, [R5]
68B12:  MOV             R3, R10
68B14:  LDR.W           R4, [R1,#0x84]
68B18:  MOV             R1, R6
68B1A:  STR.W           R0, [R9,#0x28]
68B1E:  MOV             R0, R5
68B20:  LDR             R2, =(aShowscoreboard - 0x68B26); "showScoreboard" ...
68B22:  ADD             R2, PC; "showScoreboard"
68B24:  BLX             R4
68B26:  LDR             R1, [R5]
68B28:  LDR.W           R4, [R1,#0x84]
68B2C:  MOV             R1, R6
68B2E:  STR.W           R0, [R9,#0x2C]
68B32:  MOV             R0, R5
68B34:  LDR             R2, =(aSetscoreboards - 0x68B3C); "setScoreboardStats" ...
68B36:  LDR             R3, =(aLjavaLangStrin - 0x68B3E); "(Ljava/lang/String;I)V" ...
68B38:  ADD             R2, PC; "setScoreboardStats"
68B3A:  ADD             R3, PC; "(Ljava/lang/String;I)V"
68B3C:  BLX             R4
68B3E:  LDR             R1, [R5]
68B40:  LDR.W           R4, [R1,#0x84]
68B44:  MOV             R1, R6
68B46:  STR.W           R0, [R9,#0x30]
68B4A:  MOV             R0, R5
68B4C:  LDR             R2, =(aAddscoreboardp - 0x68B54); "addScoreboardPlayer" ...
68B4E:  LDR             R3, =(aIljavaLangStri - 0x68B56); "(ILjava/lang/String;IILjava/lang/String"... ...
68B50:  ADD             R2, PC; "addScoreboardPlayer"
68B52:  ADD             R3, PC; "(ILjava/lang/String;IILjava/lang/String"...
68B54:  BLX             R4
68B56:  LDR             R1, [R5]
68B58:  MOV             R3, R11
68B5A:  LDR.W           R4, [R1,#0x84]
68B5E:  MOV             R1, R6
68B60:  STR.W           R0, [R9,#0x34]
68B64:  MOV             R0, R5
68B66:  LDR             R2, =(aClearscoreboar - 0x68B6C); "clearScoreboardStats" ...
68B68:  ADD             R2, PC; "clearScoreboardStats"
68B6A:  BLX             R4
68B6C:  LDR             R1, [R5]
68B6E:  LDR.W           R4, [R1,#0x84]
68B72:  MOV             R1, R6
68B74:  LDR             R2, =(aSaveaspectrati - 0x68B7C); "saveAspectRatioToPrefsFromNative" ...
68B76:  LDR             R3, [SP,#0x40+var_3C]
68B78:  ADD             R2, PC; "saveAspectRatioToPrefsFromNative"
68B7A:  STR.W           R0, [R9,#0x38]
68B7E:  MOV             R0, R5
68B80:  BLX             R4
68B82:  LDR             R1, [R5]
68B84:  LDR             R2, =(aUpdatevoicebut - 0x68B8E); "updateVoiceButtonPosition" ...
68B86:  LDR.W           R12, [R1,#0x84]
68B8A:  ADD             R2, PC; "updateVoiceButtonPosition"
68B8C:  LDR             R4, =(aIiV - 0x68B9A); "(II)V" ...
68B8E:  MOV             R1, R6
68B90:  STR.W           R0, [R9,#0x3C]
68B94:  MOV             R0, R5
68B96:  ADD             R4, PC; "(II)V"
68B98:  MOV             R3, R4
68B9A:  BLX             R12
68B9C:  LDR             R1, [R5]
68B9E:  MOV             R3, R4
68BA0:  LDR.W           R12, [R1,#0x84]
68BA4:  MOV             R1, R6
68BA6:  LDR             R2, =(aSetvoicebutton - 0x68BB2); "setVoiceButtonSize" ...
68BA8:  STR.W           R0, [R9,#0x40]
68BAC:  MOV             R0, R5
68BAE:  ADD             R2, PC; "setVoiceButtonSize"
68BB0:  BLX             R12
68BB2:  LDR             R1, [R5]
68BB4:  MOV             R3, R10
68BB6:  LDR             R2, =(aShowsettingsme - 0x68BC0); "showSettingsMenu" ...
68BB8:  LDR.W           R12, [R1,#0x84]
68BBC:  ADD             R2, PC; "showSettingsMenu"
68BBE:  STR.W           R0, [R9,#0x44]
68BC2:  MOV             R0, R5
68BC4:  MOV             R1, R6
68BC6:  BLX             R12
68BC8:  LDR             R1, [R5]
68BCA:  MOV             R3, R10
68BCC:  LDR             R2, =(aShowcustommenu - 0x68BD6); "showCustomMenu" ...
68BCE:  LDR.W           R12, [R1,#0x84]
68BD2:  ADD             R2, PC; "showCustomMenu"
68BD4:  STR.W           R0, [R9,#0x4C]
68BD8:  MOV             R0, R5
68BDA:  MOV             R1, R6
68BDC:  BLX             R12
68BDE:  LDR             R1, [R5]
68BE0:  LDR             R2, =(aSetbuttonpanel - 0x68BEA); "setButtonPanelColor" ...
68BE2:  LDR.W           R4, [R1,#0x84]
68BE6:  ADD             R2, PC; "setButtonPanelColor"
68BE8:  LDR             R3, =(aLjavaLangStrin_0 - 0x68BF6); "(Ljava/lang/String;)V" ...
68BEA:  MOV             R1, R6
68BEC:  STR.W           R0, [R9,#0x50]
68BF0:  MOV             R0, R5
68BF2:  ADD             R3, PC; "(Ljava/lang/String;)V"
68BF4:  BLX             R4
68BF6:  LDR             R1, [R5]
68BF8:  MOV             R3, R10
68BFA:  LDR             R2, =(aShoweditobject - 0x68C04); "showeditobject" ...
68BFC:  LDR.W           R4, [R1,#0x84]
68C00:  ADD             R2, PC; "showeditobject"
68C02:  STR.W           R0, [R9,#0x60]
68C06:  MOV             R0, R5
68C08:  MOV             R1, R6
68C0A:  BLX             R4
68C0C:  LDR             R1, [R5]
68C0E:  LDR             R2, [R1,#0x5C]
68C10:  MOV             R1, R8
68C12:  STR.W           R0, [R9,#0x58]
68C16:  MOV             R0, R5
68C18:  BLX             R2
68C1A:  LDR             R0, [R5]
68C1C:  MOV             R1, R6
68C1E:  LDR             R2, [R0,#0x5C]
68C20:  MOV             R0, R5
68C22:  BLX             R2
68C24:  B               loc_689EA
68C26:  LDR             R0, =(unk_50DB8 - 0x68C2E)
68C28:  MOVS            R1, #0xD
68C2A:  ADD             R0, PC; unk_50DB8
68C2C:  VLD1.64         {D16-D17}, [R0],R1
68C30:  VLD1.8          {D18}, [R0]
68C34:  LDR             R0, =(byte_1A4218 - 0x68C3E)
68C36:  VST1.64         {D16-D17}, [R11],R1
68C3A:  ADD             R0, PC; byte_1A4218
68C3C:  VST1.8          {D18}, [R11]
68C40:  LDRB            R0, [R0]
68C42:  DMB.W           ISH
68C46:  LSLS            R0, R0, #0x1F
68C48:  BEQ             loc_68CC2
68C4A:  LDR             R4, =(unk_1A4200 - 0x68C50)
68C4C:  ADD             R4, PC; unk_1A4200
68C4E:  MOV             R0, R4
68C50:  BL              sub_6AE46
68C54:  B               loc_68C82
68C56:  LDR             R0, =(unk_50DD0 - 0x68C60)
68C58:  MOVS            R1, #0xF
68C5A:  LDR             R2, =(byte_1A4230 - 0x68C66)
68C5C:  ADD             R0, PC; unk_50DD0
68C5E:  VLD1.64         {D16-D17}, [R0],R1
68C62:  ADD             R2, PC; byte_1A4230
68C64:  VST1.64         {D16-D17}, [R11],R1
68C68:  LDR             R0, [R0]
68C6A:  STR.W           R0, [R11]
68C6E:  LDRB            R0, [R2]
68C70:  DMB.W           ISH
68C74:  LSLS            R0, R0, #0x1F
68C76:  BEQ             loc_68CF2
68C78:  LDR             R4, =(unk_1A421C - 0x68C7E)
68C7A:  ADD             R4, PC; unk_1A421C
68C7C:  MOV             R0, R4
68C7E:  BL              sub_6AE8C
68C82:  LDR             R1, =(aSampOrig - 0x68C8C); "SAMP_ORIG" ...
68C84:  MOVS            R0, #4; prio
68C86:  MOV             R2, R4; fmt
68C88:  ADD             R1, PC; "SAMP_ORIG"
68C8A:  BLX             __android_log_print
68C8E:  B               loc_689EA
68C90:  LDR             R0, =(byte_1A41FC - 0x68C96)
68C92:  ADD             R0, PC; byte_1A41FC ; __guard *
68C94:  BLX             j___cxa_guard_acquire
68C98:  CMP             R0, #0
68C9A:  BEQ.W           loc_689C6
68C9E:  LDR             R0, =(unk_1A41E5 - 0x68CA4)
68CA0:  ADD             R0, PC; unk_1A41E5
68CA2:  ADD             R1, SP, #0x40+var_38
68CA4:  BL              sub_6ABD4
68CA8:  LDR             R0, =(sub_60BE6+1 - 0x68CB2)
68CAA:  LDR             R1, =(unk_1A41E5 - 0x68CB4)
68CAC:  LDR             R2, =(off_110560 - 0x68CB6)
68CAE:  ADD             R0, PC; sub_60BE6 ; lpfunc
68CB0:  ADD             R1, PC; unk_1A41E5 ; obj
68CB2:  ADD             R2, PC; off_110560 ; lpdso_handle
68CB4:  BLX             __cxa_atexit
68CB8:  LDR             R0, =(byte_1A41FC - 0x68CBE)
68CBA:  ADD             R0, PC; byte_1A41FC ; __guard *
68CBC:  BLX             j___cxa_guard_release
68CC0:  B               loc_689C6
68CC2:  LDR             R0, =(byte_1A4218 - 0x68CC8)
68CC4:  ADD             R0, PC; byte_1A4218 ; __guard *
68CC6:  BLX             j___cxa_guard_acquire
68CCA:  CMP             R0, #0
68CCC:  BEQ             loc_68C4A
68CCE:  LDR             R0, =(unk_1A4200 - 0x68CD4)
68CD0:  ADD             R0, PC; unk_1A4200
68CD2:  ADD             R1, SP, #0x40+var_38
68CD4:  BL              sub_6AC26
68CD8:  LDR             R0, =(sub_6AC7C+1 - 0x68CE2)
68CDA:  LDR             R1, =(unk_1A4200 - 0x68CE4)
68CDC:  LDR             R2, =(off_110560 - 0x68CE6)
68CDE:  ADD             R0, PC; sub_6AC7C ; lpfunc
68CE0:  ADD             R1, PC; unk_1A4200 ; obj
68CE2:  ADD             R2, PC; off_110560 ; lpdso_handle
68CE4:  BLX             __cxa_atexit
68CE8:  LDR             R0, =(byte_1A4218 - 0x68CEE)
68CEA:  ADD             R0, PC; byte_1A4218 ; __guard *
68CEC:  BLX             j___cxa_guard_release
68CF0:  B               loc_68C4A
68CF2:  LDR             R0, =(byte_1A4230 - 0x68CF8)
68CF4:  ADD             R0, PC; byte_1A4230 ; __guard *
68CF6:  BLX             j___cxa_guard_acquire
68CFA:  CMP             R0, #0
68CFC:  BEQ             loc_68C78
68CFE:  LDR             R0, =(unk_1A421C - 0x68D04)
68D00:  ADD             R0, PC; unk_1A421C
68D02:  ADD             R1, SP, #0x40+var_38
68D04:  BL              sub_6AC92
68D08:  LDR             R0, =(sub_6ACE0+1 - 0x68D12)
68D0A:  LDR             R1, =(unk_1A421C - 0x68D14)
68D0C:  LDR             R2, =(off_110560 - 0x68D16)
68D0E:  ADD             R0, PC; sub_6ACE0 ; lpfunc
68D10:  ADD             R1, PC; unk_1A421C ; obj
68D12:  ADD             R2, PC; off_110560 ; lpdso_handle
68D14:  BLX             __cxa_atexit
68D18:  LDR             R0, =(byte_1A4230 - 0x68D1E)
68D1A:  ADD             R0, PC; byte_1A4230 ; __guard *
68D1C:  BLX             j___cxa_guard_release
68D20:  B               loc_68C78
