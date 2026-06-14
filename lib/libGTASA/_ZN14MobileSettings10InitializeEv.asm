; =========================================================
; Game Engine Function: _ZN14MobileSettings10InitializeEv
; Address            : 0x2ABE34 - 0x2AC038
; =========================================================

2ABE34:  PUSH            {R4,R5,R7,LR}
2ABE36:  ADD             R7, SP, #8
2ABE38:  LDR             R0, =(defaultName_ptr - 0x2ABE44)
2ABE3A:  MOV.W           LR, #1
2ABE3E:  LDR             R1, =(setupValues_ptr - 0x2ABE48)
2ABE40:  ADD             R0, PC; defaultName_ptr
2ABE42:  LDR             R3, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABE50)
2ABE44:  ADD             R1, PC; setupValues_ptr
2ABE46:  LDR.W           R12, =(defaultValues_ptr - 0x2ABE54)
2ABE4A:  LDR             R2, [R0]; defaultName
2ABE4C:  ADD             R3, PC; _ZN14MobileSettings8settingsE_ptr
2ABE4E:  LDR             R0, [R1]; setupValues
2ABE50:  ADD             R12, PC; defaultValues_ptr
2ABE52:  LDR             R3, [R3]; MobileSettings::settings ...
2ABE54:  LDR             R1, [R2]; "FM_MC10" ...
2ABE56:  ADDS            R0, #0xC
2ABE58:  MOVS            R2, #0
2ABE5A:  ADDS            R5, R3, R2
2ABE5C:  LDR.W           R4, [R0,#-0xC]
2ABE60:  STR             R4, [R5,#8]
2ABE62:  LDR.W           R4, [R0,#-8]
2ABE66:  STR             R4, [R5,#0x10]
2ABE68:  LDR.W           R4, [R0,#-4]
2ABE6C:  STR             R4, [R5,#0x14]
2ABE6E:  LDR             R4, [R0]
2ABE70:  STR             R4, [R5,#0x1C]
2ABE72:  LDR             R4, [R0,#4]; "MOB_VS" ...
2ABE74:  CMP             R4, #0
2ABE76:  IT EQ
2ABE78:  MOVEQ           R4, R1
2ABE7A:  STR             R4, [R3,R2]
2ABE7C:  ADDS            R2, #0x20 ; ' '
2ABE7E:  LDR             R4, [R0,#8]; "MOB_VS0" ...
2ABE80:  ADDS            R0, #0x1C
2ABE82:  STRB.W          LR, [R5,#0x18]
2ABE86:  CMP             R4, #0
2ABE88:  IT EQ
2ABE8A:  LDREQ.W         R4, [R12]; defaultValues
2ABE8E:  CMP.W           R2, #0x4A0
2ABE92:  STR             R4, [R5,#4]
2ABE94:  BNE             loc_2ABE5A
2ABE96:  BLX             j__Z13OS_SystemChipv; OS_SystemChip(void)
2ABE9A:  CMP             R0, #0x13; switch 20 cases
2ABE9C:  BHI.W           def_2ABEA0; jumptable 002ABEA0 default case
2ABEA0:  TBB.W           [PC,R0]; switch jump
2ABEA4:  DCB 0x30; jump table for switch statement
2ABEA5:  DCB 0x30
2ABEA6:  DCB 0x37
2ABEA7:  DCB 0x4A
2ABEA8:  DCB 0x55
2ABEA9:  DCB 0x70
2ABEAA:  DCB 0xA
2ABEAB:  DCB 0xA
2ABEAC:  DCB 0xA
2ABEAD:  DCB 0xA
2ABEAE:  DCB 0xA
2ABEAF:  DCB 0xA
2ABEB0:  DCB 0x7B
2ABEB1:  DCB 0x81
2ABEB2:  DCB 0x1F
2ABEB3:  DCB 0x1F
2ABEB4:  DCB 0x1F
2ABEB5:  DCB 0x91
2ABEB6:  DCB 0xA
2ABEB7:  DCB 0x9F
2ABEB8:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABEC0); jumptable 002ABEA0 cases 6-11,18
2ABEBA:  MOVS            R5, #3
2ABEBC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABEBE:  LDR             R4, [R0]; MobileSettings::settings ...
2ABEC0:  STR             R5, [R4,#(dword_6E03FC - 0x6E03F4)]
2ABEC2:  BLX             j__Z13OS_SystemFormv; OS_SystemForm(void)
2ABEC6:  MOVS            R1, #0x64 ; 'd'
2ABEC8:  CMP             R0, #1
2ABECA:  STR             R1, [R4,#(dword_6E043C - 0x6E03F4)]
2ABECC:  MOV.W           R1, #0x50 ; 'P'
2ABED0:  IT EQ
2ABED2:  MOVEQ           R1, #0x64 ; 'd'
2ABED4:  MOVS            R0, #2
2ABED6:  STR             R1, [R4,#(dword_6E041C - 0x6E03F4)]
2ABED8:  STR.W           R0, [R4,#(dword_6E049C - 0x6E03F4)]
2ABEDC:  STR.W           R5, [R4,#(dword_6E04DC - 0x6E03F4)]
2ABEE0:  B               def_2ABEA0; jumptable 002ABEA0 default case
2ABEE2:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABEF0); jumptable 002ABEA0 cases 14-16
2ABEE4:  MOVS            R1, #0x64 ; 'd'
2ABEE6:  MOVS            R2, #0x3C ; '<'
2ABEE8:  MOV.W           R4, #0xFA00
2ABEEC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABEEE:  LDR             R0, [R0]; MobileSettings::settings ...
2ABEF0:  STR             R1, [R0,#(dword_6E041C - 0x6E03F4)]
2ABEF2:  MOVS            R1, #2
2ABEF4:  STR             R1, [R0,#(dword_6E03FC - 0x6E03F4)]
2ABEF6:  STR             R2, [R0,#(dword_6E043C - 0x6E03F4)]
2ABEF8:  STR.W           R1, [R0,#(dword_6E049C - 0x6E03F4)]
2ABEFC:  MOVS            R1, #3
2ABEFE:  STR.W           R1, [R0,#(dword_6E04DC - 0x6E03F4)]
2ABF02:  B               loc_2ABFFE
2ABF04:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABF0E); jumptable 002ABEA0 cases 0,1
2ABF06:  MOVS            R1, #0
2ABF08:  MOVS            R2, #0x14
2ABF0A:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABF0C:  LDR             R0, [R0]; MobileSettings::settings ...
2ABF0E:  STR             R1, [R0,#(dword_6E041C - 0x6E03F4)]
2ABF10:  B               loc_2ABFD4
2ABF12:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABF18); jumptable 002ABEA0 case 2
2ABF14:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABF16:  LDR             R4, [R0]; MobileSettings::settings ...
2ABF18:  BLX             j__Z13OS_SystemFormv; OS_SystemForm(void)
2ABF1C:  MOVS            R1, #0x4B ; 'K'
2ABF1E:  MOVS            R2, #0x50 ; 'P'
2ABF20:  STR             R1, [R4,#(dword_6E041C - 0x6E03F4)]
2ABF22:  MOVS            R1, #1
2ABF24:  CMP             R0, #1
2ABF26:  STR             R1, [R4,#(dword_6E03FC - 0x6E03F4)]
2ABF28:  IT EQ
2ABF2A:  MOVEQ           R2, #0x41 ; 'A'
2ABF2C:  STR             R2, [R4,#(dword_6E043C - 0x6E03F4)]
2ABF2E:  STR.W           R1, [R4,#(dword_6E049C - 0x6E03F4)]
2ABF32:  STR.W           R1, [R4,#(dword_6E04DC - 0x6E03F4)]
2ABF36:  B               def_2ABEA0; jumptable 002ABEA0 default case
2ABF38:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABF40); jumptable 002ABEA0 case 3
2ABF3A:  MOVS            R1, #0x3C ; '<'
2ABF3C:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABF3E:  LDR             R0, [R0]; MobileSettings::settings ...
2ABF40:  STR             R1, [R0,#(dword_6E041C - 0x6E03F4)]
2ABF42:  MOVS            R1, #2
2ABF44:  STR             R1, [R0,#(dword_6E03FC - 0x6E03F4)]
2ABF46:  MOVS            R1, #0x64 ; 'd'
2ABF48:  STR             R1, [R0,#(dword_6E043C - 0x6E03F4)]
2ABF4A:  MOVS            R1, #1
2ABF4C:  B               loc_2ABFD8
2ABF4E:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABF54); jumptable 002ABEA0 case 4
2ABF50:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABF52:  LDR             R4, [R0]; MobileSettings::settings ...
2ABF54:  BLX             j__Z15OS_SystemDevicev; OS_SystemDevice(void)
2ABF58:  CMP             R0, #9
2ABF5A:  MOV.W           R2, #0x64 ; 'd'
2ABF5E:  IT EQ
2ABF60:  MOVEQ           R2, #0x4B ; 'K'
2ABF62:  MOV.W           R1, #0x64 ; 'd'
2ABF66:  STR             R2, [R4,#(dword_6E041C - 0x6E03F4)]
2ABF68:  MOV.W           R2, #2
2ABF6C:  IT EQ
2ABF6E:  MOVEQ           R2, #1
2ABF70:  CMP             R0, #9
2ABF72:  STR             R2, [R4,#(dword_6E03FC - 0x6E03F4)]
2ABF74:  IT EQ
2ABF76:  MOVEQ           R1, #0x41 ; 'A'
2ABF78:  STR             R1, [R4,#(dword_6E043C - 0x6E03F4)]
2ABF7A:  STR.W           R2, [R4,#(dword_6E049C - 0x6E03F4)]
2ABF7E:  STR.W           R2, [R4,#(dword_6E04DC - 0x6E03F4)]
2ABF82:  B               def_2ABEA0; jumptable 002ABEA0 default case
2ABF84:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABF8C); jumptable 002ABEA0 case 5
2ABF86:  MOVS            R1, #0x50 ; 'P'
2ABF88:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABF8A:  LDR             R0, [R0]; MobileSettings::settings ...
2ABF8C:  STR             R1, [R0,#(dword_6E041C - 0x6E03F4)]
2ABF8E:  MOVS            R1, #3
2ABF90:  STR             R1, [R0,#(dword_6E03FC - 0x6E03F4)]
2ABF92:  MOVS            R1, #0x64 ; 'd'
2ABF94:  STR             R1, [R0,#(dword_6E043C - 0x6E03F4)]
2ABF96:  MOVS            R1, #2
2ABF98:  B               loc_2ABFD8
2ABF9A:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABFA6); jumptable 002ABEA0 case 12
2ABF9C:  MOVS            R1, #0x46 ; 'F'
2ABF9E:  MOV.W           R4, #0x3E80
2ABFA2:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABFA4:  B               loc_2ABFEC
2ABFA6:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABFB4); jumptable 002ABEA0 case 13
2ABFA8:  MOVS            R1, #0x50 ; 'P'
2ABFAA:  MOVS            R2, #2
2ABFAC:  MOVW            R4, #0xBB80
2ABFB0:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABFB2:  LDR             R0, [R0]; MobileSettings::settings ...
2ABFB4:  STR             R1, [R0,#(dword_6E041C - 0x6E03F4)]
2ABFB6:  STR             R2, [R0,#(dword_6E03FC - 0x6E03F4)]
2ABFB8:  STR             R1, [R0,#(dword_6E043C - 0x6E03F4)]
2ABFBA:  MOVS            R1, #1
2ABFBC:  STR.W           R1, [R0,#(dword_6E049C - 0x6E03F4)]
2ABFC0:  STR.W           R2, [R0,#(dword_6E04DC - 0x6E03F4)]
2ABFC4:  B               loc_2ABFFE
2ABFC6:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABFD0); jumptable 002ABEA0 case 17
2ABFC8:  MOVS            R1, #0x32 ; '2'
2ABFCA:  MOVS            R2, #0x37 ; '7'
2ABFCC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABFCE:  LDR             R0, [R0]; MobileSettings::settings ...
2ABFD0:  STR             R1, [R0,#(dword_6E041C - 0x6E03F4)]
2ABFD2:  MOVS            R1, #1
2ABFD4:  STR             R1, [R0,#(dword_6E03FC - 0x6E03F4)]
2ABFD6:  STR             R2, [R0,#(dword_6E043C - 0x6E03F4)]
2ABFD8:  STR.W           R1, [R0,#(dword_6E049C - 0x6E03F4)]
2ABFDC:  STR.W           R1, [R0,#(dword_6E04DC - 0x6E03F4)]
2ABFE0:  B               def_2ABEA0; jumptable 002ABEA0 default case
2ABFE2:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2ABFEE); jumptable 002ABEA0 case 19
2ABFE4:  MOVS            R1, #0x46 ; 'F'
2ABFE6:  MOV.W           R4, #0x7D00
2ABFEA:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2ABFEC:  LDR             R0, [R0]; MobileSettings::settings ...
2ABFEE:  STR             R1, [R0,#(dword_6E041C - 0x6E03F4)]
2ABFF0:  MOVS            R1, #2
2ABFF2:  STR             R1, [R0,#(dword_6E03FC - 0x6E03F4)]
2ABFF4:  MOVS            R1, #0x37 ; '7'
2ABFF6:  STR             R1, [R0,#(dword_6E043C - 0x6E03F4)]
2ABFF8:  MOVS            R1, #1
2ABFFA:  STR.W           R1, [R0,#(dword_6E049C - 0x6E03F4)]
2ABFFE:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2AC002:  SUB.W           R1, R0, #0x280
2AC006:  MOV             R0, R4
2AC008:  BLX             __aeabi_idiv
2AC00C:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2AC018)
2AC00E:  CMP             R0, #0
2AC010:  IT LE
2AC012:  MOVLE           R0, #0
2AC014:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2AC016:  CMP             R0, #0x64 ; 'd'
2AC018:  IT GE
2AC01A:  MOVGE           R0, #0x64 ; 'd'
2AC01C:  LDR             R1, [R1]; MobileSettings::settings ...
2AC01E:  STR             R0, [R1,#(dword_6E041C - 0x6E03F4)]
2AC020:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2AC028); jumptable 002ABEA0 default case
2AC022:  MOVS            R0, #0
2AC024:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2AC026:  LDR             R1, [R1]; MobileSettings::settings ...
2AC028:  ADDS            R2, R1, R0
2AC02A:  ADDS            R0, #0x20 ; ' '
2AC02C:  CMP.W           R0, #0x4A0
2AC030:  LDR             R3, [R2,#8]
2AC032:  STR             R3, [R2,#0xC]
2AC034:  BNE             loc_2AC028
2AC036:  POP             {R4,R5,R7,PC}
