; =========================================================
; Game Engine Function: sub_27194C
; Address            : 0x27194C - 0x2727B8
; =========================================================

27194C:  PUSH            {R4-R7,LR}
27194E:  ADD             R7, SP, #0xC
271950:  PUSH.W          {R8-R11}
271954:  SUB             SP, SP, #0x24
271956:  MOV             R4, R0
271958:  LDR.W           R0, =(dword_6D81DC - 0x271962)
27195C:  STR             R2, [SP,#0x40+var_3C]
27195E:  ADD             R0, PC; dword_6D81DC
271960:  LDR             R0, [R0]
271962:  CBNZ            R0, loc_2719A2
271964:  LDR             R0, [R4]
271966:  LDR             R2, [R0,#0x54]
271968:  MOV             R0, R4
27196A:  BLX             R2
27196C:  MOV             R3, R0
27196E:  LDR.W           R0, =(dword_6D81DC - 0x271978)
271972:  CMP             R3, #0
271974:  ADD             R0, PC; dword_6D81DC
271976:  STR             R3, [R0]
271978:  BNE             loc_271992
27197A:  LDR.W           R1, =(aNvevent - 0x271988); "NVEvent"
27197E:  ADR.W           R2, sub_2727C4; fmt
271982:  MOVS            R0, #3; prio
271984:  ADD             R1, PC; "NVEvent"
271986:  BLX             __android_log_print
27198A:  LDR.W           R0, =(dword_6D81DC - 0x271992)
27198E:  ADD             R0, PC; dword_6D81DC
271990:  LDR             R3, [R0]
271992:  LDR.W           R1, =(aNvevent - 0x2719A0); "NVEvent"
271996:  ADR.W           R2, aThizNewglobalr; "Thiz NewGlobalRef: 0x%p"
27199A:  MOVS            R0, #3; prio
27199C:  ADD             R1, PC; "NVEvent"
27199E:  BLX             __android_log_print
2719A2:  LDR.W           R1, =(aNvevent - 0x2719B0); "NVEvent"
2719A6:  ADR.W           R2, aInitmap; "initMap"
2719AA:  MOVS            R0, #3; prio
2719AC:  ADD             R1, PC; "NVEvent"
2719AE:  BLX             __android_log_print
2719B2:  LDR             R0, [R4]
2719B4:  LDR.W           R1, =(aAndroidViewKey - 0x2719BE); "android/view/KeyEvent"
2719B8:  LDR             R2, [R0,#0x18]
2719BA:  ADD             R1, PC; "android/view/KeyEvent"
2719BC:  MOV             R0, R4
2719BE:  BLX             R2
2719C0:  MOV             R6, R0
2719C2:  LDR.W           R0, =(unk_6DF880 - 0x2719CE)
2719C6:  MOV.W           R1, #0x400
2719CA:  ADD             R0, PC; unk_6DF880
2719CC:  BLX             j___aeabi_memclr8
2719D0:  LDR             R0, [R4]
2719D2:  ADR.W           R2, aKeycodeBack; "KEYCODE_BACK"
2719D6:  ADR.W           R3, aI; "I"
2719DA:  MOV             R1, R6
2719DC:  LDR.W           R5, [R0,#0x240]
2719E0:  MOV             R0, R4
2719E2:  BLX             R5
2719E4:  MOV             R2, R0
2719E6:  LDR             R0, [R4]
2719E8:  CMP             R2, #0
2719EA:  BEQ             loc_271A08
2719EC:  LDR.W           R3, [R0,#0x258]
2719F0:  MOV             R0, R4
2719F2:  MOV             R1, R6
2719F4:  BLX             R3
2719F6:  CMP             R0, #0xFF
2719F8:  BGT             loc_271A0E
2719FA:  LDR.W           R1, =(unk_6DF880 - 0x271A04)
2719FE:  MOVS            R2, #1
271A00:  ADD             R1, PC; unk_6DF880
271A02:  STR.W           R2, [R1,R0,LSL#2]
271A06:  B               loc_271A0E
271A08:  LDR             R1, [R0,#0x44]
271A0A:  MOV             R0, R4
271A0C:  BLX             R1
271A0E:  LDR             R0, [R4]
271A10:  ADR.W           R2, aKeycodeTab; "KEYCODE_TAB"
271A14:  ADR.W           R3, aI; "I"
271A18:  MOV             R1, R6
271A1A:  LDR.W           R5, [R0,#0x240]
271A1E:  MOV             R0, R4
271A20:  BLX             R5
271A22:  MOV             R2, R0
271A24:  LDR             R0, [R4]
271A26:  CBZ             R2, loc_271A44
271A28:  LDR.W           R3, [R0,#0x258]
271A2C:  MOV             R0, R4
271A2E:  MOV             R1, R6
271A30:  BLX             R3
271A32:  CMP             R0, #0xFF
271A34:  BGT             loc_271A4A
271A36:  LDR.W           R1, =(unk_6DF880 - 0x271A40)
271A3A:  MOVS            R2, #2
271A3C:  ADD             R1, PC; unk_6DF880
271A3E:  STR.W           R2, [R1,R0,LSL#2]
271A42:  B               loc_271A4A
271A44:  LDR             R1, [R0,#0x44]
271A46:  MOV             R0, R4
271A48:  BLX             R1
271A4A:  LDR             R0, [R4]
271A4C:  ADR.W           R2, aKeycodeEnter; "KEYCODE_ENTER"
271A50:  ADR.W           R3, aI; "I"
271A54:  MOV             R1, R6
271A56:  LDR.W           R5, [R0,#0x240]
271A5A:  MOV             R0, R4
271A5C:  BLX             R5
271A5E:  MOV             R2, R0
271A60:  LDR             R0, [R4]
271A62:  CBZ             R2, loc_271A80
271A64:  LDR.W           R3, [R0,#0x258]
271A68:  MOV             R0, R4
271A6A:  MOV             R1, R6
271A6C:  BLX             R3
271A6E:  CMP             R0, #0xFF
271A70:  BGT             loc_271A86
271A72:  LDR.W           R1, =(unk_6DF880 - 0x271A7C)
271A76:  MOVS            R2, #3
271A78:  ADD             R1, PC; unk_6DF880
271A7A:  STR.W           R2, [R1,R0,LSL#2]
271A7E:  B               loc_271A86
271A80:  LDR             R1, [R0,#0x44]
271A82:  MOV             R0, R4
271A84:  BLX             R1
271A86:  LDR             R0, [R4]
271A88:  ADR.W           R2, aKeycodeMenu; "KEYCODE_MENU"
271A8C:  ADR.W           R3, aI; "I"
271A90:  MOV             R1, R6
271A92:  LDR.W           R5, [R0,#0x240]
271A96:  MOV             R0, R4
271A98:  BLX             R5
271A9A:  MOV             R2, R0
271A9C:  LDR             R0, [R4]
271A9E:  CBZ             R2, loc_271ABC
271AA0:  LDR.W           R3, [R0,#0x258]
271AA4:  MOV             R0, R4
271AA6:  MOV             R1, R6
271AA8:  BLX             R3
271AAA:  CMP             R0, #0xFF
271AAC:  BGT             loc_271AC2
271AAE:  LDR.W           R1, =(unk_6DF880 - 0x271AB8)
271AB2:  MOVS            R2, #8
271AB4:  ADD             R1, PC; unk_6DF880
271AB6:  STR.W           R2, [R1,R0,LSL#2]
271ABA:  B               loc_271AC2
271ABC:  LDR             R1, [R0,#0x44]
271ABE:  MOV             R0, R4
271AC0:  BLX             R1
271AC2:  LDR             R0, [R4]
271AC4:  ADR.W           R2, aKeycodeSpace; "KEYCODE_SPACE"
271AC8:  ADR.W           R3, aI; "I"
271ACC:  MOV             R1, R6
271ACE:  LDR.W           R5, [R0,#0x240]
271AD2:  MOV             R0, R4
271AD4:  BLX             R5
271AD6:  MOV             R2, R0
271AD8:  LDR             R0, [R4]
271ADA:  CBZ             R2, loc_271AF8
271ADC:  LDR.W           R3, [R0,#0x258]
271AE0:  MOV             R0, R4
271AE2:  MOV             R1, R6
271AE4:  BLX             R3
271AE6:  CMP             R0, #0xFF
271AE8:  BGT             loc_271AFE
271AEA:  LDR.W           R1, =(unk_6DF880 - 0x271AF4)
271AEE:  MOVS            R2, #5
271AF0:  ADD             R1, PC; unk_6DF880
271AF2:  STR.W           R2, [R1,R0,LSL#2]
271AF6:  B               loc_271AFE
271AF8:  LDR             R1, [R0,#0x44]
271AFA:  MOV             R0, R4
271AFC:  BLX             R1
271AFE:  LDR             R0, [R4]
271B00:  ADR.W           R2, aKeycodeEndcall; "KEYCODE_ENDCALL"
271B04:  ADR.W           R3, aI; "I"
271B08:  MOV             R1, R6
271B0A:  LDR.W           R5, [R0,#0x240]
271B0E:  MOV             R0, R4
271B10:  BLX             R5
271B12:  MOV             R2, R0
271B14:  LDR             R0, [R4]
271B16:  CBZ             R2, loc_271B34
271B18:  LDR.W           R3, [R0,#0x258]
271B1C:  MOV             R0, R4
271B1E:  MOV             R1, R6
271B20:  BLX             R3
271B22:  CMP             R0, #0xFF
271B24:  BGT             loc_271B3A
271B26:  LDR.W           R1, =(unk_6DF880 - 0x271B30)
271B2A:  MOVS            R2, #6
271B2C:  ADD             R1, PC; unk_6DF880
271B2E:  STR.W           R2, [R1,R0,LSL#2]
271B32:  B               loc_271B3A
271B34:  LDR             R1, [R0,#0x44]
271B36:  MOV             R0, R4
271B38:  BLX             R1
271B3A:  LDR             R0, [R4]
271B3C:  ADR.W           R3, aI; "I"
271B40:  LDR.W           R2, =(aKeycodeHome - 0x271B4E); "KEYCODE_HOME"
271B44:  MOV             R1, R6
271B46:  LDR.W           R5, [R0,#0x240]
271B4A:  ADD             R2, PC; "KEYCODE_HOME"
271B4C:  MOV             R0, R4
271B4E:  BLX             R5
271B50:  MOV             R2, R0
271B52:  LDR             R0, [R4]
271B54:  CMP             R2, #0
271B56:  BEQ             loc_271B74
271B58:  LDR.W           R3, [R0,#0x258]
271B5C:  MOV             R0, R4
271B5E:  MOV             R1, R6
271B60:  BLX             R3
271B62:  CMP             R0, #0xFF
271B64:  BGT             loc_271B7A
271B66:  LDR.W           R1, =(unk_6DF880 - 0x271B70)
271B6A:  MOVS            R2, #7
271B6C:  ADD             R1, PC; unk_6DF880
271B6E:  STR.W           R2, [R1,R0,LSL#2]
271B72:  B               loc_271B7A
271B74:  LDR             R1, [R0,#0x44]
271B76:  MOV             R0, R4
271B78:  BLX             R1
271B7A:  LDR             R0, [R4]
271B7C:  ADR.W           R3, aI; "I"
271B80:  LDR.W           R2, =(aKeycodeDpadLef - 0x271B8E); "KEYCODE_DPAD_LEFT"
271B84:  MOV             R1, R6
271B86:  LDR.W           R5, [R0,#0x240]
271B8A:  ADD             R2, PC; "KEYCODE_DPAD_LEFT"
271B8C:  MOV             R0, R4
271B8E:  BLX             R5
271B90:  MOV             R2, R0
271B92:  LDR             R0, [R4]
271B94:  CMP             R2, #0
271B96:  BEQ             loc_271BB4
271B98:  LDR.W           R3, [R0,#0x258]
271B9C:  MOV             R0, R4
271B9E:  MOV             R1, R6
271BA0:  BLX             R3
271BA2:  CMP             R0, #0xFF
271BA4:  BGT             loc_271BBA
271BA6:  LDR.W           R1, =(unk_6DF880 - 0x271BB0)
271BAA:  MOVS            R2, #0xD
271BAC:  ADD             R1, PC; unk_6DF880
271BAE:  STR.W           R2, [R1,R0,LSL#2]
271BB2:  B               loc_271BBA
271BB4:  LDR             R1, [R0,#0x44]
271BB6:  MOV             R0, R4
271BB8:  BLX             R1
271BBA:  LDR             R0, [R4]
271BBC:  ADR.W           R3, aI; "I"
271BC0:  LDR.W           R2, =(aKeycodeDpadUp - 0x271BCE); "KEYCODE_DPAD_UP"
271BC4:  MOV             R1, R6
271BC6:  LDR.W           R5, [R0,#0x240]
271BCA:  ADD             R2, PC; "KEYCODE_DPAD_UP"
271BCC:  MOV             R0, R4
271BCE:  BLX             R5
271BD0:  MOV             R2, R0
271BD2:  LDR             R0, [R4]
271BD4:  CMP             R2, #0
271BD6:  BEQ             loc_271BF4
271BD8:  LDR.W           R3, [R0,#0x258]
271BDC:  MOV             R0, R4
271BDE:  MOV             R1, R6
271BE0:  BLX             R3
271BE2:  CMP             R0, #0xFF
271BE4:  BGT             loc_271BFA
271BE6:  LDR.W           R1, =(unk_6DF880 - 0x271BF0)
271BEA:  MOVS            R2, #0xE
271BEC:  ADD             R1, PC; unk_6DF880
271BEE:  STR.W           R2, [R1,R0,LSL#2]
271BF2:  B               loc_271BFA
271BF4:  LDR             R1, [R0,#0x44]
271BF6:  MOV             R0, R4
271BF8:  BLX             R1
271BFA:  LDR             R0, [R4]
271BFC:  ADR.W           R3, aI; "I"
271C00:  LDR.W           R2, =(aKeycodeDpadRig - 0x271C0E); "KEYCODE_DPAD_RIGHT"
271C04:  MOV             R1, R6
271C06:  LDR.W           R5, [R0,#0x240]
271C0A:  ADD             R2, PC; "KEYCODE_DPAD_RIGHT"
271C0C:  MOV             R0, R4
271C0E:  BLX             R5
271C10:  MOV             R2, R0
271C12:  LDR             R0, [R4]
271C14:  CMP             R2, #0
271C16:  BEQ             loc_271C34
271C18:  LDR.W           R3, [R0,#0x258]
271C1C:  MOV             R0, R4
271C1E:  MOV             R1, R6
271C20:  BLX             R3
271C22:  CMP             R0, #0xFF
271C24:  BGT             loc_271C3A
271C26:  LDR.W           R1, =(unk_6DF880 - 0x271C30)
271C2A:  MOVS            R2, #0xF
271C2C:  ADD             R1, PC; unk_6DF880
271C2E:  STR.W           R2, [R1,R0,LSL#2]
271C32:  B               loc_271C3A
271C34:  LDR             R1, [R0,#0x44]
271C36:  MOV             R0, R4
271C38:  BLX             R1
271C3A:  LDR             R0, [R4]
271C3C:  ADR.W           R3, aI; "I"
271C40:  LDR.W           R2, =(aKeycodeDpadDow - 0x271C4E); "KEYCODE_DPAD_DOWN"
271C44:  MOV             R1, R6
271C46:  LDR.W           R5, [R0,#0x240]
271C4A:  ADD             R2, PC; "KEYCODE_DPAD_DOWN"
271C4C:  MOV             R0, R4
271C4E:  BLX             R5
271C50:  MOV             R2, R0
271C52:  LDR             R0, [R4]
271C54:  CMP             R2, #0
271C56:  BEQ             loc_271C74
271C58:  LDR.W           R3, [R0,#0x258]
271C5C:  MOV             R0, R4
271C5E:  MOV             R1, R6
271C60:  BLX             R3
271C62:  CMP             R0, #0xFF
271C64:  BGT             loc_271C7A
271C66:  LDR.W           R1, =(unk_6DF880 - 0x271C70)
271C6A:  MOVS            R2, #0x10
271C6C:  ADD             R1, PC; unk_6DF880
271C6E:  STR.W           R2, [R1,R0,LSL#2]
271C72:  B               loc_271C7A
271C74:  LDR             R1, [R0,#0x44]
271C76:  MOV             R0, R4
271C78:  BLX             R1
271C7A:  LDR             R0, [R4]
271C7C:  ADR.W           R3, aI; "I"
271C80:  LDR.W           R2, =(aKeycodeDpadCen - 0x271C8E); "KEYCODE_DPAD_CENTER"
271C84:  MOV             R1, R6
271C86:  LDR.W           R5, [R0,#0x240]
271C8A:  ADD             R2, PC; "KEYCODE_DPAD_CENTER"
271C8C:  MOV             R0, R4
271C8E:  BLX             R5
271C90:  MOV             R2, R0
271C92:  LDR             R0, [R4]
271C94:  CMP             R2, #0
271C96:  BEQ             loc_271CB4
271C98:  LDR.W           R3, [R0,#0x258]
271C9C:  MOV             R0, R4
271C9E:  MOV             R1, R6
271CA0:  BLX             R3
271CA2:  CMP             R0, #0xFF
271CA4:  BGT             loc_271CBA
271CA6:  LDR.W           R1, =(unk_6DF880 - 0x271CB0)
271CAA:  MOVS            R2, #3
271CAC:  ADD             R1, PC; unk_6DF880
271CAE:  STR.W           R2, [R1,R0,LSL#2]
271CB2:  B               loc_271CBA
271CB4:  LDR             R1, [R0,#0x44]
271CB6:  MOV             R0, R4
271CB8:  BLX             R1
271CBA:  LDR             R0, [R4]
271CBC:  ADR.W           R3, aI; "I"
271CC0:  LDR.W           R2, =(aKeycodeDel - 0x271CCE); "KEYCODE_DEL"
271CC4:  MOV             R1, R6
271CC6:  LDR.W           R5, [R0,#0x240]
271CCA:  ADD             R2, PC; "KEYCODE_DEL"
271CCC:  MOV             R0, R4
271CCE:  BLX             R5
271CD0:  MOV             R2, R0
271CD2:  LDR             R0, [R4]
271CD4:  CMP             R2, #0
271CD6:  BEQ             loc_271CF4
271CD8:  LDR.W           R3, [R0,#0x258]
271CDC:  MOV             R0, R4
271CDE:  MOV             R1, R6
271CE0:  BLX             R3
271CE2:  CMP             R0, #0xFF
271CE4:  BGT             loc_271CFA
271CE6:  LDR.W           R1, =(unk_6DF880 - 0x271CF0)
271CEA:  MOVS            R2, #4
271CEC:  ADD             R1, PC; unk_6DF880
271CEE:  STR.W           R2, [R1,R0,LSL#2]
271CF2:  B               loc_271CFA
271CF4:  LDR             R1, [R0,#0x44]
271CF6:  MOV             R0, R4
271CF8:  BLX             R1
271CFA:  LDR             R0, [R4]
271CFC:  ADR.W           R3, aI; "I"
271D00:  LDR.W           R2, =(aKeycode0 - 0x271D0E); "KEYCODE_0"
271D04:  MOV             R1, R6
271D06:  LDR.W           R5, [R0,#0x240]
271D0A:  ADD             R2, PC; "KEYCODE_0"
271D0C:  MOV             R0, R4
271D0E:  BLX             R5
271D10:  MOV             R2, R0
271D12:  LDR             R0, [R4]
271D14:  CMP             R2, #0
271D16:  BEQ             loc_271D34
271D18:  LDR.W           R3, [R0,#0x258]
271D1C:  MOV             R0, R4
271D1E:  MOV             R1, R6
271D20:  BLX             R3
271D22:  CMP             R0, #0xFF
271D24:  BGT             loc_271D3A
271D26:  LDR.W           R1, =(unk_6DF880 - 0x271D30)
271D2A:  MOVS            R2, #0x11
271D2C:  ADD             R1, PC; unk_6DF880
271D2E:  STR.W           R2, [R1,R0,LSL#2]
271D32:  B               loc_271D3A
271D34:  LDR             R1, [R0,#0x44]
271D36:  MOV             R0, R4
271D38:  BLX             R1
271D3A:  LDR             R0, [R4]
271D3C:  ADR.W           R3, aI; "I"
271D40:  LDR.W           R2, =(aKeycode1 - 0x271D4E); "KEYCODE_1"
271D44:  MOV             R1, R6
271D46:  LDR.W           R5, [R0,#0x240]
271D4A:  ADD             R2, PC; "KEYCODE_1"
271D4C:  MOV             R0, R4
271D4E:  BLX             R5
271D50:  MOV             R2, R0
271D52:  LDR             R0, [R4]
271D54:  CMP             R2, #0
271D56:  BEQ             loc_271D74
271D58:  LDR.W           R3, [R0,#0x258]
271D5C:  MOV             R0, R4
271D5E:  MOV             R1, R6
271D60:  BLX             R3
271D62:  CMP             R0, #0xFF
271D64:  BGT             loc_271D7A
271D66:  LDR.W           R1, =(unk_6DF880 - 0x271D70)
271D6A:  MOVS            R2, #0x12
271D6C:  ADD             R1, PC; unk_6DF880
271D6E:  STR.W           R2, [R1,R0,LSL#2]
271D72:  B               loc_271D7A
271D74:  LDR             R1, [R0,#0x44]
271D76:  MOV             R0, R4
271D78:  BLX             R1
271D7A:  LDR             R0, [R4]
271D7C:  ADR.W           R3, aI; "I"
271D80:  LDR.W           R2, =(aKeycode2 - 0x271D8E); "KEYCODE_2"
271D84:  MOV             R1, R6
271D86:  LDR.W           R5, [R0,#0x240]
271D8A:  ADD             R2, PC; "KEYCODE_2"
271D8C:  MOV             R0, R4
271D8E:  BLX             R5
271D90:  MOV             R2, R0
271D92:  LDR             R0, [R4]
271D94:  CMP             R2, #0
271D96:  BEQ             loc_271DB4
271D98:  LDR.W           R3, [R0,#0x258]
271D9C:  MOV             R0, R4
271D9E:  MOV             R1, R6
271DA0:  BLX             R3
271DA2:  CMP             R0, #0xFF
271DA4:  BGT             loc_271DBA
271DA6:  LDR.W           R1, =(unk_6DF880 - 0x271DB0)
271DAA:  MOVS            R2, #0x13
271DAC:  ADD             R1, PC; unk_6DF880
271DAE:  STR.W           R2, [R1,R0,LSL#2]
271DB2:  B               loc_271DBA
271DB4:  LDR             R1, [R0,#0x44]
271DB6:  MOV             R0, R4
271DB8:  BLX             R1
271DBA:  LDR             R0, [R4]
271DBC:  ADR.W           R3, aI; "I"
271DC0:  LDR.W           R2, =(aKeycode3 - 0x271DCE); "KEYCODE_3"
271DC4:  MOV             R1, R6
271DC6:  LDR.W           R5, [R0,#0x240]
271DCA:  ADD             R2, PC; "KEYCODE_3"
271DCC:  MOV             R0, R4
271DCE:  BLX             R5
271DD0:  MOV             R2, R0
271DD2:  LDR             R0, [R4]
271DD4:  CMP             R2, #0
271DD6:  BEQ             loc_271DF4
271DD8:  LDR.W           R3, [R0,#0x258]
271DDC:  MOV             R0, R4
271DDE:  MOV             R1, R6
271DE0:  BLX             R3
271DE2:  CMP             R0, #0xFF
271DE4:  BGT             loc_271DFA
271DE6:  LDR.W           R1, =(unk_6DF880 - 0x271DF0)
271DEA:  MOVS            R2, #0x14
271DEC:  ADD             R1, PC; unk_6DF880
271DEE:  STR.W           R2, [R1,R0,LSL#2]
271DF2:  B               loc_271DFA
271DF4:  LDR             R1, [R0,#0x44]
271DF6:  MOV             R0, R4
271DF8:  BLX             R1
271DFA:  LDR             R0, [R4]
271DFC:  ADR.W           R3, aI; "I"
271E00:  LDR.W           R2, =(aKeycode4 - 0x271E0E); "KEYCODE_4"
271E04:  MOV             R1, R6
271E06:  LDR.W           R5, [R0,#0x240]
271E0A:  ADD             R2, PC; "KEYCODE_4"
271E0C:  MOV             R0, R4
271E0E:  BLX             R5
271E10:  MOV             R2, R0
271E12:  LDR             R0, [R4]
271E14:  CMP             R2, #0
271E16:  BEQ             loc_271E34
271E18:  LDR.W           R3, [R0,#0x258]
271E1C:  MOV             R0, R4
271E1E:  MOV             R1, R6
271E20:  BLX             R3
271E22:  CMP             R0, #0xFF
271E24:  BGT             loc_271E3A
271E26:  LDR.W           R1, =(unk_6DF880 - 0x271E30)
271E2A:  MOVS            R2, #0x15
271E2C:  ADD             R1, PC; unk_6DF880
271E2E:  STR.W           R2, [R1,R0,LSL#2]
271E32:  B               loc_271E3A
271E34:  LDR             R1, [R0,#0x44]
271E36:  MOV             R0, R4
271E38:  BLX             R1
271E3A:  LDR             R0, [R4]
271E3C:  ADR.W           R3, aI; "I"
271E40:  LDR.W           R2, =(aKeycode5 - 0x271E4E); "KEYCODE_5"
271E44:  MOV             R1, R6
271E46:  LDR.W           R5, [R0,#0x240]
271E4A:  ADD             R2, PC; "KEYCODE_5"
271E4C:  MOV             R0, R4
271E4E:  BLX             R5
271E50:  MOV             R2, R0
271E52:  LDR             R0, [R4]
271E54:  CMP             R2, #0
271E56:  BEQ             loc_271E74
271E58:  LDR.W           R3, [R0,#0x258]
271E5C:  MOV             R0, R4
271E5E:  MOV             R1, R6
271E60:  BLX             R3
271E62:  CMP             R0, #0xFF
271E64:  BGT             loc_271E7A
271E66:  LDR.W           R1, =(unk_6DF880 - 0x271E70)
271E6A:  MOVS            R2, #0x16
271E6C:  ADD             R1, PC; unk_6DF880
271E6E:  STR.W           R2, [R1,R0,LSL#2]
271E72:  B               loc_271E7A
271E74:  LDR             R1, [R0,#0x44]
271E76:  MOV             R0, R4
271E78:  BLX             R1
271E7A:  LDR             R0, [R4]
271E7C:  ADR.W           R3, aI; "I"
271E80:  LDR.W           R2, =(aKeycode6 - 0x271E8E); "KEYCODE_6"
271E84:  MOV             R1, R6
271E86:  LDR.W           R5, [R0,#0x240]
271E8A:  ADD             R2, PC; "KEYCODE_6"
271E8C:  MOV             R0, R4
271E8E:  BLX             R5
271E90:  MOV             R2, R0
271E92:  LDR             R0, [R4]
271E94:  CMP             R2, #0
271E96:  BEQ             loc_271EB4
271E98:  LDR.W           R3, [R0,#0x258]
271E9C:  MOV             R0, R4
271E9E:  MOV             R1, R6
271EA0:  BLX             R3
271EA2:  CMP             R0, #0xFF
271EA4:  BGT             loc_271EBA
271EA6:  LDR.W           R1, =(unk_6DF880 - 0x271EB0)
271EAA:  MOVS            R2, #0x17
271EAC:  ADD             R1, PC; unk_6DF880
271EAE:  STR.W           R2, [R1,R0,LSL#2]
271EB2:  B               loc_271EBA
271EB4:  LDR             R1, [R0,#0x44]
271EB6:  MOV             R0, R4
271EB8:  BLX             R1
271EBA:  LDR             R0, [R4]
271EBC:  ADR.W           R3, aI; "I"
271EC0:  LDR.W           R2, =(aKeycode7 - 0x271ECE); "KEYCODE_7"
271EC4:  MOV             R1, R6
271EC6:  LDR.W           R5, [R0,#0x240]
271ECA:  ADD             R2, PC; "KEYCODE_7"
271ECC:  MOV             R0, R4
271ECE:  BLX             R5
271ED0:  MOV             R2, R0
271ED2:  LDR             R0, [R4]
271ED4:  CMP             R2, #0
271ED6:  BEQ             loc_271EF4
271ED8:  LDR.W           R3, [R0,#0x258]
271EDC:  MOV             R0, R4
271EDE:  MOV             R1, R6
271EE0:  BLX             R3
271EE2:  CMP             R0, #0xFF
271EE4:  BGT             loc_271EFA
271EE6:  LDR.W           R1, =(unk_6DF880 - 0x271EF0)
271EEA:  MOVS            R2, #0x18
271EEC:  ADD             R1, PC; unk_6DF880
271EEE:  STR.W           R2, [R1,R0,LSL#2]
271EF2:  B               loc_271EFA
271EF4:  LDR             R1, [R0,#0x44]
271EF6:  MOV             R0, R4
271EF8:  BLX             R1
271EFA:  LDR             R0, [R4]
271EFC:  ADR.W           R3, aI; "I"
271F00:  LDR.W           R2, =(aKeycode8 - 0x271F0E); "KEYCODE_8"
271F04:  MOV             R1, R6
271F06:  LDR.W           R5, [R0,#0x240]
271F0A:  ADD             R2, PC; "KEYCODE_8"
271F0C:  MOV             R0, R4
271F0E:  BLX             R5
271F10:  MOV             R2, R0
271F12:  LDR             R0, [R4]
271F14:  CMP             R2, #0
271F16:  BEQ             loc_271F34
271F18:  LDR.W           R3, [R0,#0x258]
271F1C:  MOV             R0, R4
271F1E:  MOV             R1, R6
271F20:  BLX             R3
271F22:  CMP             R0, #0xFF
271F24:  BGT             loc_271F3A
271F26:  LDR.W           R1, =(unk_6DF880 - 0x271F30)
271F2A:  MOVS            R2, #0x19
271F2C:  ADD             R1, PC; unk_6DF880
271F2E:  STR.W           R2, [R1,R0,LSL#2]
271F32:  B               loc_271F3A
271F34:  LDR             R1, [R0,#0x44]
271F36:  MOV             R0, R4
271F38:  BLX             R1
271F3A:  LDR             R0, [R4]
271F3C:  ADR.W           R3, aI; "I"
271F40:  LDR.W           R2, =(aKeycode9 - 0x271F4E); "KEYCODE_9"
271F44:  MOV             R1, R6
271F46:  LDR.W           R5, [R0,#0x240]
271F4A:  ADD             R2, PC; "KEYCODE_9"
271F4C:  MOV             R0, R4
271F4E:  BLX             R5
271F50:  MOV             R2, R0
271F52:  LDR             R0, [R4]
271F54:  CMP             R2, #0
271F56:  BEQ             loc_271F74
271F58:  LDR.W           R3, [R0,#0x258]
271F5C:  MOV             R0, R4
271F5E:  MOV             R1, R6
271F60:  BLX             R3
271F62:  CMP             R0, #0xFF
271F64:  BGT             loc_271F7A
271F66:  LDR.W           R1, =(unk_6DF880 - 0x271F70)
271F6A:  MOVS            R2, #0x1A
271F6C:  ADD             R1, PC; unk_6DF880
271F6E:  STR.W           R2, [R1,R0,LSL#2]
271F72:  B               loc_271F7A
271F74:  LDR             R1, [R0,#0x44]
271F76:  MOV             R0, R4
271F78:  BLX             R1
271F7A:  LDR             R0, [R4]
271F7C:  ADR.W           R3, aI; "I"
271F80:  LDR.W           R2, =(aKeycodeA - 0x271F8E); "KEYCODE_A"
271F84:  MOV             R1, R6
271F86:  LDR.W           R5, [R0,#0x240]
271F8A:  ADD             R2, PC; "KEYCODE_A"
271F8C:  MOV             R0, R4
271F8E:  BLX             R5
271F90:  MOV             R2, R0
271F92:  LDR             R0, [R4]
271F94:  CMP             R2, #0
271F96:  BEQ             loc_271FB4
271F98:  LDR.W           R3, [R0,#0x258]
271F9C:  MOV             R0, R4
271F9E:  MOV             R1, R6
271FA0:  BLX             R3
271FA2:  CMP             R0, #0xFF
271FA4:  BGT             loc_271FBA
271FA6:  LDR.W           R1, =(unk_6DF880 - 0x271FB0)
271FAA:  MOVS            R2, #0x1B
271FAC:  ADD             R1, PC; unk_6DF880
271FAE:  STR.W           R2, [R1,R0,LSL#2]
271FB2:  B               loc_271FBA
271FB4:  LDR             R1, [R0,#0x44]
271FB6:  MOV             R0, R4
271FB8:  BLX             R1
271FBA:  LDR             R0, [R4]
271FBC:  ADR.W           R3, aI; "I"
271FC0:  LDR.W           R2, =(aKeycodeB - 0x271FCE); "KEYCODE_B"
271FC4:  MOV             R1, R6
271FC6:  LDR.W           R5, [R0,#0x240]
271FCA:  ADD             R2, PC; "KEYCODE_B"
271FCC:  MOV             R0, R4
271FCE:  BLX             R5
271FD0:  MOV             R2, R0
271FD2:  LDR             R0, [R4]
271FD4:  CMP             R2, #0
271FD6:  BEQ             loc_271FF4
271FD8:  LDR.W           R3, [R0,#0x258]
271FDC:  MOV             R0, R4
271FDE:  MOV             R1, R6
271FE0:  BLX             R3
271FE2:  CMP             R0, #0xFF
271FE4:  BGT             loc_271FFA
271FE6:  LDR.W           R1, =(unk_6DF880 - 0x271FF0)
271FEA:  MOVS            R2, #0x1C
271FEC:  ADD             R1, PC; unk_6DF880
271FEE:  STR.W           R2, [R1,R0,LSL#2]
271FF2:  B               loc_271FFA
271FF4:  LDR             R1, [R0,#0x44]
271FF6:  MOV             R0, R4
271FF8:  BLX             R1
271FFA:  LDR             R0, [R4]
271FFC:  ADR.W           R3, aI; "I"
272000:  LDR.W           R2, =(aKeycodeC - 0x27200E); "KEYCODE_C"
272004:  MOV             R1, R6
272006:  LDR.W           R5, [R0,#0x240]
27200A:  ADD             R2, PC; "KEYCODE_C"
27200C:  MOV             R0, R4
27200E:  BLX             R5
272010:  MOV             R2, R0
272012:  LDR             R0, [R4]
272014:  CMP             R2, #0
272016:  BEQ             loc_272034
272018:  LDR.W           R3, [R0,#0x258]
27201C:  MOV             R0, R4
27201E:  MOV             R1, R6
272020:  BLX             R3
272022:  CMP             R0, #0xFF
272024:  BGT             loc_27203A
272026:  LDR.W           R1, =(unk_6DF880 - 0x272030)
27202A:  MOVS            R2, #0x1D
27202C:  ADD             R1, PC; unk_6DF880
27202E:  STR.W           R2, [R1,R0,LSL#2]
272032:  B               loc_27203A
272034:  LDR             R1, [R0,#0x44]
272036:  MOV             R0, R4
272038:  BLX             R1
27203A:  LDR             R0, [R4]
27203C:  ADR.W           R3, aI; "I"
272040:  LDR.W           R2, =(aKeycodeD - 0x27204E); "KEYCODE_D"
272044:  MOV             R1, R6
272046:  LDR.W           R5, [R0,#0x240]
27204A:  ADD             R2, PC; "KEYCODE_D"
27204C:  MOV             R0, R4
27204E:  BLX             R5
272050:  MOV             R2, R0
272052:  LDR             R0, [R4]
272054:  CMP             R2, #0
272056:  BEQ             loc_272074
272058:  LDR.W           R3, [R0,#0x258]
27205C:  MOV             R0, R4
27205E:  MOV             R1, R6
272060:  BLX             R3
272062:  CMP             R0, #0xFF
272064:  BGT             loc_27207A
272066:  LDR.W           R1, =(unk_6DF880 - 0x272070)
27206A:  MOVS            R2, #0x1E
27206C:  ADD             R1, PC; unk_6DF880
27206E:  STR.W           R2, [R1,R0,LSL#2]
272072:  B               loc_27207A
272074:  LDR             R1, [R0,#0x44]
272076:  MOV             R0, R4
272078:  BLX             R1
27207A:  LDR             R0, [R4]
27207C:  ADR.W           R3, aI; "I"
272080:  LDR.W           R2, =(aKeycodeE - 0x27208E); "KEYCODE_E"
272084:  MOV             R1, R6
272086:  LDR.W           R5, [R0,#0x240]
27208A:  ADD             R2, PC; "KEYCODE_E"
27208C:  MOV             R0, R4
27208E:  BLX             R5
272090:  MOV             R2, R0
272092:  LDR             R0, [R4]
272094:  CMP             R2, #0
272096:  BEQ             loc_2720B4
272098:  LDR.W           R3, [R0,#0x258]
27209C:  MOV             R0, R4
27209E:  MOV             R1, R6
2720A0:  BLX             R3
2720A2:  CMP             R0, #0xFF
2720A4:  BGT             loc_2720BA
2720A6:  LDR.W           R1, =(unk_6DF880 - 0x2720B0)
2720AA:  MOVS            R2, #0x1F
2720AC:  ADD             R1, PC; unk_6DF880
2720AE:  STR.W           R2, [R1,R0,LSL#2]
2720B2:  B               loc_2720BA
2720B4:  LDR             R1, [R0,#0x44]
2720B6:  MOV             R0, R4
2720B8:  BLX             R1
2720BA:  LDR             R0, [R4]
2720BC:  ADR.W           R3, aI; "I"
2720C0:  LDR.W           R2, =(aKeycodeF - 0x2720CE); "KEYCODE_F"
2720C4:  MOV             R1, R6
2720C6:  LDR.W           R5, [R0,#0x240]
2720CA:  ADD             R2, PC; "KEYCODE_F"
2720CC:  MOV             R0, R4
2720CE:  BLX             R5
2720D0:  MOV             R2, R0
2720D2:  LDR             R0, [R4]
2720D4:  CMP             R2, #0
2720D6:  BEQ             loc_2720F4
2720D8:  LDR.W           R3, [R0,#0x258]
2720DC:  MOV             R0, R4
2720DE:  MOV             R1, R6
2720E0:  BLX             R3
2720E2:  CMP             R0, #0xFF
2720E4:  BGT             loc_2720FA
2720E6:  LDR.W           R1, =(unk_6DF880 - 0x2720F0)
2720EA:  MOVS            R2, #0x20 ; ' '
2720EC:  ADD             R1, PC; unk_6DF880
2720EE:  STR.W           R2, [R1,R0,LSL#2]
2720F2:  B               loc_2720FA
2720F4:  LDR             R1, [R0,#0x44]
2720F6:  MOV             R0, R4
2720F8:  BLX             R1
2720FA:  LDR             R0, [R4]
2720FC:  ADR.W           R3, aI; "I"
272100:  LDR.W           R2, =(aKeycodeG - 0x27210E); "KEYCODE_G"
272104:  MOV             R1, R6
272106:  LDR.W           R5, [R0,#0x240]
27210A:  ADD             R2, PC; "KEYCODE_G"
27210C:  MOV             R0, R4
27210E:  BLX             R5
272110:  MOV             R2, R0
272112:  LDR             R0, [R4]
272114:  CMP             R2, #0
272116:  BEQ             loc_272134
272118:  LDR.W           R3, [R0,#0x258]
27211C:  MOV             R0, R4
27211E:  MOV             R1, R6
272120:  BLX             R3
272122:  CMP             R0, #0xFF
272124:  BGT             loc_27213A
272126:  LDR.W           R1, =(unk_6DF880 - 0x272130)
27212A:  MOVS            R2, #0x21 ; '!'
27212C:  ADD             R1, PC; unk_6DF880
27212E:  STR.W           R2, [R1,R0,LSL#2]
272132:  B               loc_27213A
272134:  LDR             R1, [R0,#0x44]
272136:  MOV             R0, R4
272138:  BLX             R1
27213A:  LDR             R0, [R4]
27213C:  ADR.W           R3, aI; "I"
272140:  LDR.W           R2, =(aKeycodeH - 0x27214E); "KEYCODE_H"
272144:  MOV             R1, R6
272146:  LDR.W           R5, [R0,#0x240]
27214A:  ADD             R2, PC; "KEYCODE_H"
27214C:  MOV             R0, R4
27214E:  BLX             R5
272150:  MOV             R2, R0
272152:  LDR             R0, [R4]
272154:  CMP             R2, #0
272156:  BEQ             loc_272174
272158:  LDR.W           R3, [R0,#0x258]
27215C:  MOV             R0, R4
27215E:  MOV             R1, R6
272160:  BLX             R3
272162:  CMP             R0, #0xFF
272164:  BGT             loc_27217A
272166:  LDR.W           R1, =(unk_6DF880 - 0x272170)
27216A:  MOVS            R2, #0x22 ; '"'
27216C:  ADD             R1, PC; unk_6DF880
27216E:  STR.W           R2, [R1,R0,LSL#2]
272172:  B               loc_27217A
272174:  LDR             R1, [R0,#0x44]
272176:  MOV             R0, R4
272178:  BLX             R1
27217A:  LDR             R0, [R4]
27217C:  ADR.W           R3, aI; "I"
272180:  LDR.W           R2, =(aKeycodeI - 0x27218E); "KEYCODE_I"
272184:  MOV             R1, R6
272186:  LDR.W           R5, [R0,#0x240]
27218A:  ADD             R2, PC; "KEYCODE_I"
27218C:  MOV             R0, R4
27218E:  BLX             R5
272190:  MOV             R2, R0
272192:  LDR             R0, [R4]
272194:  CMP             R2, #0
272196:  BEQ             loc_2721B4
272198:  LDR.W           R3, [R0,#0x258]
27219C:  MOV             R0, R4
27219E:  MOV             R1, R6
2721A0:  BLX             R3
2721A2:  CMP             R0, #0xFF
2721A4:  BGT             loc_2721BA
2721A6:  LDR.W           R1, =(unk_6DF880 - 0x2721B0)
2721AA:  MOVS            R2, #0x23 ; '#'
2721AC:  ADD             R1, PC; unk_6DF880
2721AE:  STR.W           R2, [R1,R0,LSL#2]
2721B2:  B               loc_2721BA
2721B4:  LDR             R1, [R0,#0x44]
2721B6:  MOV             R0, R4
2721B8:  BLX             R1
2721BA:  LDR             R0, [R4]
2721BC:  ADR.W           R3, aI; "I"
2721C0:  LDR.W           R2, =(aKeycodeJ - 0x2721CE); "KEYCODE_J"
2721C4:  MOV             R1, R6
2721C6:  LDR.W           R5, [R0,#0x240]
2721CA:  ADD             R2, PC; "KEYCODE_J"
2721CC:  MOV             R0, R4
2721CE:  BLX             R5
2721D0:  MOV             R2, R0
2721D2:  LDR             R0, [R4]
2721D4:  CMP             R2, #0
2721D6:  BEQ             loc_2721F4
2721D8:  LDR.W           R3, [R0,#0x258]
2721DC:  MOV             R0, R4
2721DE:  MOV             R1, R6
2721E0:  BLX             R3
2721E2:  CMP             R0, #0xFF
2721E4:  BGT             loc_2721FA
2721E6:  LDR.W           R1, =(unk_6DF880 - 0x2721F0)
2721EA:  MOVS            R2, #0x24 ; '$'
2721EC:  ADD             R1, PC; unk_6DF880
2721EE:  STR.W           R2, [R1,R0,LSL#2]
2721F2:  B               loc_2721FA
2721F4:  LDR             R1, [R0,#0x44]
2721F6:  MOV             R0, R4
2721F8:  BLX             R1
2721FA:  LDR             R0, [R4]
2721FC:  ADR.W           R3, aI; "I"
272200:  LDR.W           R2, =(aKeycodeK - 0x27220E); "KEYCODE_K"
272204:  MOV             R1, R6
272206:  LDR.W           R5, [R0,#0x240]
27220A:  ADD             R2, PC; "KEYCODE_K"
27220C:  MOV             R0, R4
27220E:  BLX             R5
272210:  MOV             R2, R0
272212:  LDR             R0, [R4]
272214:  CMP             R2, #0
272216:  BEQ             loc_272234
272218:  LDR.W           R3, [R0,#0x258]
27221C:  MOV             R0, R4
27221E:  MOV             R1, R6
272220:  BLX             R3
272222:  CMP             R0, #0xFF
272224:  BGT             loc_27223A
272226:  LDR.W           R1, =(unk_6DF880 - 0x272230)
27222A:  MOVS            R2, #0x25 ; '%'
27222C:  ADD             R1, PC; unk_6DF880
27222E:  STR.W           R2, [R1,R0,LSL#2]
272232:  B               loc_27223A
272234:  LDR             R1, [R0,#0x44]
272236:  MOV             R0, R4
272238:  BLX             R1
27223A:  LDR             R0, [R4]
27223C:  ADR.W           R3, aI; "I"
272240:  LDR.W           R2, =(aKeycodeL - 0x27224E); "KEYCODE_L"
272244:  MOV             R1, R6
272246:  LDR.W           R5, [R0,#0x240]
27224A:  ADD             R2, PC; "KEYCODE_L"
27224C:  MOV             R0, R4
27224E:  BLX             R5
272250:  MOV             R2, R0
272252:  LDR             R0, [R4]
272254:  CMP             R2, #0
272256:  BEQ             loc_272274
272258:  LDR.W           R3, [R0,#0x258]
27225C:  MOV             R0, R4
27225E:  MOV             R1, R6
272260:  BLX             R3
272262:  CMP             R0, #0xFF
272264:  BGT             loc_27227A
272266:  LDR.W           R1, =(unk_6DF880 - 0x272270)
27226A:  MOVS            R2, #0x26 ; '&'
27226C:  ADD             R1, PC; unk_6DF880
27226E:  STR.W           R2, [R1,R0,LSL#2]
272272:  B               loc_27227A
272274:  LDR             R1, [R0,#0x44]
272276:  MOV             R0, R4
272278:  BLX             R1
27227A:  LDR             R0, [R4]
27227C:  ADR.W           R3, aI; "I"
272280:  LDR.W           R2, =(aKeycodeM - 0x27228E); "KEYCODE_M"
272284:  MOV             R1, R6
272286:  LDR.W           R5, [R0,#0x240]
27228A:  ADD             R2, PC; "KEYCODE_M"
27228C:  MOV             R0, R4
27228E:  BLX             R5
272290:  MOV             R2, R0
272292:  LDR             R0, [R4]
272294:  CMP             R2, #0
272296:  BEQ             loc_2722B4
272298:  LDR.W           R3, [R0,#0x258]
27229C:  MOV             R0, R4
27229E:  MOV             R1, R6
2722A0:  BLX             R3
2722A2:  CMP             R0, #0xFF
2722A4:  BGT             loc_2722BA
2722A6:  LDR.W           R1, =(unk_6DF880 - 0x2722B0)
2722AA:  MOVS            R2, #0x27 ; '''
2722AC:  ADD             R1, PC; unk_6DF880
2722AE:  STR.W           R2, [R1,R0,LSL#2]
2722B2:  B               loc_2722BA
2722B4:  LDR             R1, [R0,#0x44]
2722B6:  MOV             R0, R4
2722B8:  BLX             R1
2722BA:  LDR             R0, [R4]
2722BC:  ADR.W           R3, aI; "I"
2722C0:  LDR.W           R2, =(aKeycodeN - 0x2722CE); "KEYCODE_N"
2722C4:  MOV             R1, R6
2722C6:  LDR.W           R5, [R0,#0x240]
2722CA:  ADD             R2, PC; "KEYCODE_N"
2722CC:  MOV             R0, R4
2722CE:  BLX             R5
2722D0:  MOV             R2, R0
2722D2:  LDR             R0, [R4]
2722D4:  CMP             R2, #0
2722D6:  BEQ             loc_2722F4
2722D8:  LDR.W           R3, [R0,#0x258]
2722DC:  MOV             R0, R4
2722DE:  MOV             R1, R6
2722E0:  BLX             R3
2722E2:  CMP             R0, #0xFF
2722E4:  BGT             loc_2722FA
2722E6:  LDR.W           R1, =(unk_6DF880 - 0x2722F0)
2722EA:  MOVS            R2, #0x28 ; '('
2722EC:  ADD             R1, PC; unk_6DF880
2722EE:  STR.W           R2, [R1,R0,LSL#2]
2722F2:  B               loc_2722FA
2722F4:  LDR             R1, [R0,#0x44]
2722F6:  MOV             R0, R4
2722F8:  BLX             R1
2722FA:  LDR             R0, [R4]
2722FC:  ADR.W           R3, aI; "I"
272300:  LDR.W           R2, =(aKeycodeO - 0x27230E); "KEYCODE_O"
272304:  MOV             R1, R6
272306:  LDR.W           R5, [R0,#0x240]
27230A:  ADD             R2, PC; "KEYCODE_O"
27230C:  MOV             R0, R4
27230E:  BLX             R5
272310:  MOV             R2, R0
272312:  LDR             R0, [R4]
272314:  CMP             R2, #0
272316:  BEQ             loc_272334
272318:  LDR.W           R3, [R0,#0x258]
27231C:  MOV             R0, R4
27231E:  MOV             R1, R6
272320:  BLX             R3
272322:  CMP             R0, #0xFF
272324:  BGT             loc_27233A
272326:  LDR.W           R1, =(unk_6DF880 - 0x272330)
27232A:  MOVS            R2, #0x29 ; ')'
27232C:  ADD             R1, PC; unk_6DF880
27232E:  STR.W           R2, [R1,R0,LSL#2]
272332:  B               loc_27233A
272334:  LDR             R1, [R0,#0x44]
272336:  MOV             R0, R4
272338:  BLX             R1
27233A:  LDR             R0, [R4]
27233C:  ADR.W           R3, aI; "I"
272340:  LDR.W           R2, =(aKeycodeP - 0x27234E); "KEYCODE_P"
272344:  MOV             R1, R6
272346:  LDR.W           R5, [R0,#0x240]
27234A:  ADD             R2, PC; "KEYCODE_P"
27234C:  MOV             R0, R4
27234E:  BLX             R5
272350:  MOV             R2, R0
272352:  LDR             R0, [R4]
272354:  CMP             R2, #0
272356:  BEQ             loc_272374
272358:  LDR.W           R3, [R0,#0x258]
27235C:  MOV             R0, R4
27235E:  MOV             R1, R6
272360:  BLX             R3
272362:  CMP             R0, #0xFF
272364:  BGT             loc_27237A
272366:  LDR.W           R1, =(unk_6DF880 - 0x272370)
27236A:  MOVS            R2, #0x2A ; '*'
27236C:  ADD             R1, PC; unk_6DF880
27236E:  STR.W           R2, [R1,R0,LSL#2]
272372:  B               loc_27237A
272374:  LDR             R1, [R0,#0x44]
272376:  MOV             R0, R4
272378:  BLX             R1
27237A:  LDR             R0, [R4]
27237C:  ADR.W           R3, dword_273270
272380:  LDR.W           R2, =(aKeycodeQ - 0x27238E); "KEYCODE_Q"
272384:  MOV             R1, R6
272386:  LDR.W           R5, [R0,#0x240]
27238A:  ADD             R2, PC; "KEYCODE_Q"
27238C:  MOV             R0, R4
27238E:  BLX             R5
272390:  MOV             R2, R0
272392:  LDR             R0, [R4]
272394:  CMP             R2, #0
272396:  BEQ             loc_2723B4
272398:  LDR.W           R3, [R0,#0x258]
27239C:  MOV             R0, R4
27239E:  MOV             R1, R6
2723A0:  BLX             R3
2723A2:  CMP             R0, #0xFF
2723A4:  BGT             loc_2723BA
2723A6:  LDR.W           R1, =(unk_6DF880 - 0x2723B0)
2723AA:  MOVS            R2, #0x2B ; '+'
2723AC:  ADD             R1, PC; unk_6DF880
2723AE:  STR.W           R2, [R1,R0,LSL#2]
2723B2:  B               loc_2723BA
2723B4:  LDR             R1, [R0,#0x44]
2723B6:  MOV             R0, R4
2723B8:  BLX             R1
2723BA:  LDR             R0, [R4]
2723BC:  ADR.W           R3, dword_273270
2723C0:  LDR.W           R2, =(aKeycodeR - 0x2723CE); "KEYCODE_R"
2723C4:  MOV             R1, R6
2723C6:  LDR.W           R5, [R0,#0x240]
2723CA:  ADD             R2, PC; "KEYCODE_R"
2723CC:  MOV             R0, R4
2723CE:  BLX             R5
2723D0:  MOV             R2, R0
2723D2:  LDR             R0, [R4]
2723D4:  CMP             R2, #0
2723D6:  BEQ             loc_2723F4
2723D8:  LDR.W           R3, [R0,#0x258]
2723DC:  MOV             R0, R4
2723DE:  MOV             R1, R6
2723E0:  BLX             R3
2723E2:  CMP             R0, #0xFF
2723E4:  BGT             loc_2723FA
2723E6:  LDR.W           R1, =(unk_6DF880 - 0x2723F0)
2723EA:  MOVS            R2, #0x2C ; ','
2723EC:  ADD             R1, PC; unk_6DF880
2723EE:  STR.W           R2, [R1,R0,LSL#2]
2723F2:  B               loc_2723FA
2723F4:  LDR             R1, [R0,#0x44]
2723F6:  MOV             R0, R4
2723F8:  BLX             R1
2723FA:  LDR             R0, [R4]
2723FC:  ADR.W           R3, dword_273270
272400:  LDR.W           R2, =(aKeycodeS - 0x27240E); "KEYCODE_S"
272404:  MOV             R1, R6
272406:  LDR.W           R5, [R0,#0x240]
27240A:  ADD             R2, PC; "KEYCODE_S"
27240C:  MOV             R0, R4
27240E:  BLX             R5
272410:  MOV             R2, R0
272412:  LDR             R0, [R4]
272414:  CMP             R2, #0
272416:  BEQ             loc_272434
272418:  LDR.W           R3, [R0,#0x258]
27241C:  MOV             R0, R4
27241E:  MOV             R1, R6
272420:  BLX             R3
272422:  CMP             R0, #0xFF
272424:  BGT             loc_27243A
272426:  LDR.W           R1, =(unk_6DF880 - 0x272430)
27242A:  MOVS            R2, #0x2D ; '-'
27242C:  ADD             R1, PC; unk_6DF880
27242E:  STR.W           R2, [R1,R0,LSL#2]
272432:  B               loc_27243A
272434:  LDR             R1, [R0,#0x44]
272436:  MOV             R0, R4
272438:  BLX             R1
27243A:  LDR             R0, [R4]
27243C:  ADR.W           R3, dword_273270
272440:  LDR.W           R2, =(aKeycodeT - 0x27244E); "KEYCODE_T"
272444:  MOV             R1, R6
272446:  LDR.W           R5, [R0,#0x240]
27244A:  ADD             R2, PC; "KEYCODE_T"
27244C:  MOV             R0, R4
27244E:  BLX             R5
272450:  MOV             R2, R0
272452:  LDR             R0, [R4]
272454:  CMP             R2, #0
272456:  BEQ             loc_272474
272458:  LDR.W           R3, [R0,#0x258]
27245C:  MOV             R0, R4
27245E:  MOV             R1, R6
272460:  BLX             R3
272462:  CMP             R0, #0xFF
272464:  BGT             loc_27247A
272466:  LDR.W           R1, =(unk_6DF880 - 0x272470)
27246A:  MOVS            R2, #0x2E ; '.'
27246C:  ADD             R1, PC; unk_6DF880
27246E:  STR.W           R2, [R1,R0,LSL#2]
272472:  B               loc_27247A
272474:  LDR             R1, [R0,#0x44]
272476:  MOV             R0, R4
272478:  BLX             R1
27247A:  LDR             R0, [R4]
27247C:  ADR.W           R3, dword_273270
272480:  LDR.W           R2, =(aKeycodeU - 0x27248E); "KEYCODE_U"
272484:  MOV             R1, R6
272486:  LDR.W           R5, [R0,#0x240]
27248A:  ADD             R2, PC; "KEYCODE_U"
27248C:  MOV             R0, R4
27248E:  BLX             R5
272490:  MOV             R2, R0
272492:  LDR             R0, [R4]
272494:  CMP             R2, #0
272496:  BEQ             loc_2724B4
272498:  LDR.W           R3, [R0,#0x258]
27249C:  MOV             R0, R4
27249E:  MOV             R1, R6
2724A0:  BLX             R3
2724A2:  CMP             R0, #0xFF
2724A4:  BGT             loc_2724BA
2724A6:  LDR.W           R1, =(unk_6DF880 - 0x2724B0)
2724AA:  MOVS            R2, #0x2F ; '/'
2724AC:  ADD             R1, PC; unk_6DF880
2724AE:  STR.W           R2, [R1,R0,LSL#2]
2724B2:  B               loc_2724BA
2724B4:  LDR             R1, [R0,#0x44]
2724B6:  MOV             R0, R4
2724B8:  BLX             R1
2724BA:  LDR             R0, [R4]
2724BC:  ADR.W           R3, dword_273270
2724C0:  LDR.W           R2, =(aKeycodeV - 0x2724CE); "KEYCODE_V"
2724C4:  MOV             R1, R6
2724C6:  LDR.W           R5, [R0,#0x240]
2724CA:  ADD             R2, PC; "KEYCODE_V"
2724CC:  MOV             R0, R4
2724CE:  BLX             R5
2724D0:  MOV             R2, R0
2724D2:  LDR             R0, [R4]
2724D4:  CMP             R2, #0
2724D6:  BEQ             loc_2724F4
2724D8:  LDR.W           R3, [R0,#0x258]
2724DC:  MOV             R0, R4
2724DE:  MOV             R1, R6
2724E0:  BLX             R3
2724E2:  CMP             R0, #0xFF
2724E4:  BGT             loc_2724FA
2724E6:  LDR.W           R1, =(unk_6DF880 - 0x2724F0)
2724EA:  MOVS            R2, #0x30 ; '0'
2724EC:  ADD             R1, PC; unk_6DF880
2724EE:  STR.W           R2, [R1,R0,LSL#2]
2724F2:  B               loc_2724FA
2724F4:  LDR             R1, [R0,#0x44]
2724F6:  MOV             R0, R4
2724F8:  BLX             R1
2724FA:  LDR             R0, [R4]
2724FC:  ADR.W           R3, dword_273270
272500:  LDR.W           R2, =(aKeycodeW - 0x27250E); "KEYCODE_W"
272504:  MOV             R1, R6
272506:  LDR.W           R5, [R0,#0x240]
27250A:  ADD             R2, PC; "KEYCODE_W"
27250C:  MOV             R0, R4
27250E:  BLX             R5
272510:  MOV             R2, R0
272512:  LDR             R0, [R4]
272514:  CMP             R2, #0
272516:  BEQ             loc_272534
272518:  LDR.W           R3, [R0,#0x258]
27251C:  MOV             R0, R4
27251E:  MOV             R1, R6
272520:  BLX             R3
272522:  CMP             R0, #0xFF
272524:  BGT             loc_27253A
272526:  LDR.W           R1, =(unk_6DF880 - 0x272530)
27252A:  MOVS            R2, #0x31 ; '1'
27252C:  ADD             R1, PC; unk_6DF880
27252E:  STR.W           R2, [R1,R0,LSL#2]
272532:  B               loc_27253A
272534:  LDR             R1, [R0,#0x44]
272536:  MOV             R0, R4
272538:  BLX             R1
27253A:  LDR             R0, [R4]
27253C:  ADR.W           R3, dword_273270
272540:  LDR.W           R2, =(aKeycodeX - 0x27254E); "KEYCODE_X"
272544:  MOV             R1, R6
272546:  LDR.W           R5, [R0,#0x240]
27254A:  ADD             R2, PC; "KEYCODE_X"
27254C:  MOV             R0, R4
27254E:  BLX             R5
272550:  MOV             R2, R0
272552:  LDR             R0, [R4]
272554:  CMP             R2, #0
272556:  BEQ             loc_272574
272558:  LDR.W           R3, [R0,#0x258]
27255C:  MOV             R0, R4
27255E:  MOV             R1, R6
272560:  BLX             R3
272562:  CMP             R0, #0xFF
272564:  BGT             loc_27257A
272566:  LDR.W           R1, =(unk_6DF880 - 0x272570)
27256A:  MOVS            R2, #0x32 ; '2'
27256C:  ADD             R1, PC; unk_6DF880
27256E:  STR.W           R2, [R1,R0,LSL#2]
272572:  B               loc_27257A
272574:  LDR             R1, [R0,#0x44]
272576:  MOV             R0, R4
272578:  BLX             R1
27257A:  LDR             R0, [R4]
27257C:  ADR.W           R3, dword_273270
272580:  LDR.W           R2, =(aKeycodeY - 0x27258E); "KEYCODE_Y"
272584:  MOV             R1, R6
272586:  LDR.W           R5, [R0,#0x240]
27258A:  ADD             R2, PC; "KEYCODE_Y"
27258C:  MOV             R0, R4
27258E:  BLX             R5
272590:  MOV             R2, R0
272592:  LDR             R0, [R4]
272594:  CMP             R2, #0
272596:  BEQ             loc_2725B4
272598:  LDR.W           R3, [R0,#0x258]
27259C:  MOV             R0, R4
27259E:  MOV             R1, R6
2725A0:  BLX             R3
2725A2:  CMP             R0, #0xFF
2725A4:  BGT             loc_2725BA
2725A6:  LDR.W           R1, =(unk_6DF880 - 0x2725B0)
2725AA:  MOVS            R2, #0x33 ; '3'
2725AC:  ADD             R1, PC; unk_6DF880
2725AE:  STR.W           R2, [R1,R0,LSL#2]
2725B2:  B               loc_2725BA
2725B4:  LDR             R1, [R0,#0x44]
2725B6:  MOV             R0, R4
2725B8:  BLX             R1
2725BA:  LDR             R0, [R4]
2725BC:  ADR.W           R3, dword_273270
2725C0:  LDR.W           R2, =(aKeycodeZ - 0x2725CE); "KEYCODE_Z"
2725C4:  MOV             R1, R6
2725C6:  LDR.W           R5, [R0,#0x240]
2725CA:  ADD             R2, PC; "KEYCODE_Z"
2725CC:  MOV             R0, R4
2725CE:  BLX             R5
2725D0:  MOV             R2, R0
2725D2:  LDR             R0, [R4]
2725D4:  CMP             R2, #0
2725D6:  BEQ             loc_2725F4
2725D8:  LDR.W           R3, [R0,#0x258]
2725DC:  MOV             R0, R4
2725DE:  MOV             R1, R6
2725E0:  BLX             R3
2725E2:  CMP             R0, #0xFF
2725E4:  BGT             loc_2725FA
2725E6:  LDR.W           R1, =(unk_6DF880 - 0x2725F0)
2725EA:  MOVS            R2, #0x34 ; '4'
2725EC:  ADD             R1, PC; unk_6DF880
2725EE:  STR.W           R2, [R1,R0,LSL#2]
2725F2:  B               loc_2725FA
2725F4:  LDR             R1, [R0,#0x44]
2725F6:  MOV             R0, R4
2725F8:  BLX             R1
2725FA:  LDR             R0, [R4]
2725FC:  ADR.W           R3, dword_273270
272600:  LDR.W           R2, =(aKeycodeStar - 0x27260E); "KEYCODE_STAR"
272604:  MOV             R1, R6
272606:  LDR.W           R5, [R0,#0x240]
27260A:  ADD             R2, PC; "KEYCODE_STAR"
27260C:  MOV             R0, R4
27260E:  BLX             R5
272610:  MOV             R2, R0
272612:  LDR             R0, [R4]
272614:  CMP             R2, #0
272616:  BEQ             loc_272634
272618:  LDR.W           R3, [R0,#0x258]
27261C:  MOV             R0, R4
27261E:  MOV             R1, R6
272620:  BLX             R3
272622:  CMP             R0, #0xFF
272624:  BGT             loc_27263A
272626:  LDR.W           R1, =(unk_6DF880 - 0x272630)
27262A:  MOVS            R2, #9
27262C:  ADD             R1, PC; unk_6DF880
27262E:  STR.W           R2, [R1,R0,LSL#2]
272632:  B               loc_27263A
272634:  LDR             R1, [R0,#0x44]
272636:  MOV             R0, R4
272638:  BLX             R1
27263A:  LDR             R0, [R4]
27263C:  ADR.W           R3, dword_273270
272640:  LDR.W           R2, =(aKeycodePlus - 0x27264E); "KEYCODE_PLUS"
272644:  MOV             R1, R6
272646:  LDR.W           R5, [R0,#0x240]
27264A:  ADD             R2, PC; "KEYCODE_PLUS"
27264C:  MOV             R0, R4
27264E:  BLX             R5
272650:  MOV             R2, R0
272652:  LDR             R0, [R4]
272654:  CMP             R2, #0
272656:  BEQ             loc_272674
272658:  LDR.W           R3, [R0,#0x258]
27265C:  MOV             R0, R4
27265E:  MOV             R1, R6
272660:  BLX             R3
272662:  CMP             R0, #0xFF
272664:  BGT             loc_27267A
272666:  LDR.W           R1, =(unk_6DF880 - 0x272670)
27266A:  MOVS            R2, #0xA
27266C:  ADD             R1, PC; unk_6DF880
27266E:  STR.W           R2, [R1,R0,LSL#2]
272672:  B               loc_27267A
272674:  LDR             R1, [R0,#0x44]
272676:  MOV             R0, R4
272678:  BLX             R1
27267A:  LDR             R0, [R4]
27267C:  ADR.W           R3, dword_273270
272680:  LDR.W           R2, =(aKeycodeMinus - 0x27268E); "KEYCODE_MINUS"
272684:  MOV             R1, R6
272686:  LDR.W           R5, [R0,#0x240]
27268A:  ADD             R2, PC; "KEYCODE_MINUS"
27268C:  MOV             R0, R4
27268E:  BLX             R5
272690:  MOV             R2, R0
272692:  LDR             R0, [R4]
272694:  CMP             R2, #0
272696:  BEQ             loc_2726B4
272698:  LDR.W           R3, [R0,#0x258]
27269C:  MOV             R0, R4
27269E:  MOV             R1, R6
2726A0:  BLX             R3
2726A2:  CMP             R0, #0xFF
2726A4:  BGT             loc_2726BA
2726A6:  LDR.W           R1, =(unk_6DF880 - 0x2726B0)
2726AA:  MOVS            R2, #0xB
2726AC:  ADD             R1, PC; unk_6DF880
2726AE:  STR.W           R2, [R1,R0,LSL#2]
2726B2:  B               loc_2726BA
2726B4:  LDR             R1, [R0,#0x44]
2726B6:  MOV             R0, R4
2726B8:  BLX             R1
2726BA:  LDR             R0, [R4]
2726BC:  ADR.W           R3, dword_273270
2726C0:  LDR.W           R2, =(aKeycodeNum - 0x2726CE); "KEYCODE_NUM"
2726C4:  MOV             R1, R6
2726C6:  LDR.W           R5, [R0,#0x240]
2726CA:  ADD             R2, PC; "KEYCODE_NUM"
2726CC:  MOV             R0, R4
2726CE:  BLX             R5
2726D0:  MOV             R2, R0
2726D2:  LDR             R0, [R4]
2726D4:  CMP             R2, #0
2726D6:  BEQ             loc_2726F4
2726D8:  LDR.W           R3, [R0,#0x258]
2726DC:  MOV             R0, R4
2726DE:  MOV             R1, R6
2726E0:  BLX             R3
2726E2:  CMP             R0, #0xFF
2726E4:  BGT             loc_2726FA
2726E6:  LDR.W           R1, =(unk_6DF880 - 0x2726F0)
2726EA:  MOVS            R2, #0xC
2726EC:  ADD             R1, PC; unk_6DF880
2726EE:  STR.W           R2, [R1,R0,LSL#2]
2726F2:  B               loc_2726FA
2726F4:  LDR             R1, [R0,#0x44]
2726F6:  MOV             R0, R4
2726F8:  BLX             R1
2726FA:  LDR             R0, [R4]
2726FC:  ADR.W           R3, dword_273270
272700:  LDR.W           R2, =(aKeycodeAltLeft - 0x27270E); "KEYCODE_ALT_LEFT"
272704:  MOV             R1, R6
272706:  LDR.W           R5, [R0,#0x240]
27270A:  ADD             R2, PC; "KEYCODE_ALT_LEFT"
27270C:  MOV             R0, R4
27270E:  BLX             R5
272710:  MOV             R2, R0
272712:  LDR             R0, [R4]
272714:  CMP             R2, #0
272716:  BEQ             loc_272734
272718:  LDR.W           R3, [R0,#0x258]
27271C:  MOV             R0, R4
27271E:  MOV             R1, R6
272720:  BLX             R3
272722:  CMP             R0, #0xFF
272724:  BGT             loc_27273A
272726:  LDR.W           R1, =(unk_6DF880 - 0x272730)
27272A:  MOVS            R2, #0x35 ; '5'
27272C:  ADD             R1, PC; unk_6DF880
27272E:  STR.W           R2, [R1,R0,LSL#2]
272732:  B               loc_27273A
272734:  LDR             R1, [R0,#0x44]
272736:  MOV             R0, R4
272738:  BLX             R1
27273A:  LDR             R0, [R4]
27273C:  ADR.W           R3, dword_273270
272740:  LDR.W           R2, =(aKeycodeAltRigh - 0x27274E); "KEYCODE_ALT_RIGHT"
272744:  MOV             R1, R6
272746:  LDR.W           R5, [R0,#0x240]
27274A:  ADD             R2, PC; "KEYCODE_ALT_RIGHT"
27274C:  MOV             R0, R4
27274E:  BLX             R5
272750:  MOV             R2, R0
272752:  LDR             R0, [R4]
272754:  CMP             R2, #0
272756:  BEQ             loc_272774
272758:  LDR.W           R3, [R0,#0x258]
27275C:  MOV             R0, R4
27275E:  MOV             R1, R6
272760:  BLX             R3
272762:  CMP             R0, #0xFF
272764:  BGT             loc_27277A
272766:  LDR.W           R1, =(unk_6DF880 - 0x272770)
27276A:  MOVS            R2, #0x36 ; '6'
27276C:  ADD             R1, PC; unk_6DF880
27276E:  STR.W           R2, [R1,R0,LSL#2]
272772:  B               loc_27277A
272774:  LDR             R1, [R0,#0x44]
272776:  MOV             R0, R4
272778:  BLX             R1
27277A:  LDR             R0, [R4]
27277C:  ADR.W           R3, dword_273270
272780:  LDR.W           R2, =(aKeycodeShiftLe - 0x27278E); "KEYCODE_SHIFT_LEFT"
272784:  MOV             R1, R6
272786:  LDR.W           R5, [R0,#0x240]
27278A:  ADD             R2, PC; "KEYCODE_SHIFT_LEFT"
27278C:  MOV             R0, R4
27278E:  BLX             R5
272790:  MOV             R2, R0
272792:  LDR             R0, [R4]
272794:  CMP             R2, #0
272796:  BEQ.W           loc_27299C
27279A:  LDR.W           R3, [R0,#0x258]
27279E:  MOV             R0, R4
2727A0:  MOV             R1, R6
2727A2:  BLX             R3
2727A4:  CMP             R0, #0xFF
2727A6:  BGT.W           loc_2729A2
2727AA:  LDR.W           R1, =(unk_6DF880 - 0x2727B4)
2727AE:  MOVS            R2, #0x37 ; '7'
2727B0:  ADD             R1, PC; unk_6DF880
2727B2:  STR.W           R2, [R1,R0,LSL#2]
2727B6:  B               loc_2729A2
