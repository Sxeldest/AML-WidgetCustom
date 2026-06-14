; =========================================================
; Game Engine Function: sub_67AC0
; Address            : 0x67AC0 - 0x6825C
; =========================================================

67AC0:  PUSH            {R4-R7,LR}
67AC2:  ADD             R7, SP, #0xC
67AC4:  PUSH.W          {R8-R11}
67AC8:  SUB             SP, SP, #4
67ACA:  LDR             R0, =(byte_1A4088 - 0x67AD0)
67ACC:  ADD             R0, PC; byte_1A4088
67ACE:  LDRB            R0, [R0]
67AD0:  DMB.W           ISH
67AD4:  LSLS            R0, R0, #0x1F
67AD6:  BEQ.W           loc_68214
67ADA:  B               loc_67AE0
67ADC:  DCD byte_1A4088 - 0x67AD0
67AE0:  LDR             R4, =(unk_1A4070 - 0x67AE6)
67AE2:  ADD             R4, PC; unk_1A4070
67AE4:  MOV             R0, R4
67AE6:  BL              sub_67814
67AEA:  LDR             R1, =(aSampOrig - 0x67AF4); "SAMP_ORIG" ...
67AEC:  MOVS            R0, #4; prio
67AEE:  MOV             R2, R4; fmt
67AF0:  ADD             R1, PC; "SAMP_ORIG"
67AF2:  BLX             __android_log_print
67AF6:  LDR             R0, =(off_114AB0 - 0x67B06)
67AF8:  MOV             R6, #0xF57A4
67B00:  MOVS            R2, #2
67B02:  ADD             R0, PC; off_114AB0
67B04:  MOVS            R3, #1
67B06:  LDR.W           R8, [R0]; dword_1A4408
67B0A:  LDR.W           R0, [R8]
67B0E:  LDR             R4, =(unk_50D92 - 0x67B16)
67B10:  ADDS            R5, R0, R6
67B12:  ADD             R4, PC; unk_50D92
67B14:  MOV             R0, R5
67B16:  MOV             R1, R4
67B18:  BL              sub_AFA08
67B1C:  ADDS            R0, R5, #2
67B1E:  MOV             R1, R4
67B20:  MOVS            R2, #2
67B22:  MOVS            R3, #1
67B24:  BL              sub_AFA08
67B28:  LDR.W           R0, [R8]
67B2C:  MOV             R10, #0xFFABE
67B34:  MOV             R1, R4
67B36:  ADD.W           R5, R0, R10
67B3A:  MOVS            R2, #2
67B3C:  MOVS            R3, #1
67B3E:  MOV             R0, R5
67B40:  BL              sub_AFA08
67B44:  ADDS            R0, R5, #2
67B46:  MOV             R1, R4
67B48:  MOVS            R2, #2
67B4A:  MOVS            R3, #1
67B4C:  BL              sub_AFA08
67B50:  LDR.W           R0, [R8]
67B54:  MOVS            R2, #4
67B56:  LDR             R5, =(unk_50D95 - 0x67B60)
67B58:  MOVS            R3, #1
67B5A:  ADD             R0, R6
67B5C:  ADD             R5, PC; unk_50D95
67B5E:  ADD.W           R0, R0, #0x32C
67B62:  MOV             R1, R5
67B64:  BL              sub_AFA08
67B68:  LDR.W           R0, [R8]
67B6C:  MOV             R1, #0x12D8B6
67B74:  MOVS            R2, #2
67B76:  ADDS            R6, R0, R1
67B78:  MOV             R1, R4
67B7A:  MOVS            R3, #1
67B7C:  MOV             R0, R6
67B7E:  BL              sub_AFA08
67B82:  ADDS            R0, R6, #2
67B84:  MOV             R1, R4
67B86:  MOVS            R2, #2
67B88:  MOVS            R3, #1
67B8A:  BL              sub_AFA08
67B8E:  LDR.W           R0, [R8]
67B92:  MOV             R1, #0xF352A
67B9A:  MOVS            R2, #2
67B9C:  ADDS            R6, R0, R1
67B9E:  MOV             R1, R4
67BA0:  MOVS            R3, #1
67BA2:  MOV             R0, R6
67BA4:  BL              sub_AFA08
67BA8:  ADDS            R0, R6, #2
67BAA:  MOV             R1, R4
67BAC:  MOVS            R2, #2
67BAE:  MOVS            R3, #1
67BB0:  BL              sub_AFA08
67BB4:  LDR.W           R0, [R8]
67BB8:  MOV             R1, #unk_16447C
67BC0:  MOVS            R2, #4
67BC2:  ADD             R0, R1
67BC4:  MOV             R1, R5
67BC6:  MOVS            R3, #1
67BC8:  BL              sub_AFA08
67BCC:  MOVW            R1, #:lower16:loc_FB9C2
67BD0:  LDR.W           R0, [R8]
67BD4:  MOVT            R1, #:upper16:loc_FB9C2
67BD8:  MOVS            R2, #2
67BDA:  ADD             R0, R1
67BDC:  LDR             R1, =(unk_4D348 - 0x67BE4)
67BDE:  MOVS            R3, #1
67BE0:  ADD             R1, PC; unk_4D348
67BE2:  BL              sub_AFA08
67BE6:  LDR.W           R0, [R8]
67BEA:  MOVS            R2, #2
67BEC:  LDR             R1, =(unk_4FB25 - 0x67BFC)
67BEE:  MOVS            R3, #1
67BF0:  ADD.W           R0, R0, #0xFE000
67BF4:  ADD.W           R0, R0, #0x210
67BF8:  ADD             R1, PC; unk_4FB25
67BFA:  BL              sub_AFA08
67BFE:  LDR.W           R0, [R8]
67C02:  MOVW            R1, #:lower16:(loc_F9F2A+2)
67C06:  LDR             R6, =(aT - 0x67C14); "T " ...
67C08:  MOVT            R1, #:upper16:(loc_F9F2A+2)
67C0C:  ADD             R0, R1
67C0E:  MOVS            R2, #2
67C10:  ADD             R6, PC; "T "
67C12:  MOVS            R3, #1
67C14:  MOV             R1, R6
67C16:  BL              sub_AFA08
67C1A:  LDR.W           R0, [R8]
67C1E:  MOV             R1, #0x107A36
67C26:  MOVS            R2, #2
67C28:  ADD             R0, R1
67C2A:  MOV             R1, R6
67C2C:  MOVS            R3, #1
67C2E:  BL              sub_AFA08
67C32:  LDR.W           R0, [R8]
67C36:  MOV             R1, R4
67C38:  MOVS            R2, #2
67C3A:  MOVS            R3, #1
67C3C:  ADD.W           R0, R0, #0x87000
67C40:  ADD.W           R6, R0, #0x73 ; 's'
67C44:  MOV             R0, R6
67C46:  BL              sub_AFA08
67C4A:  ADDS            R0, R6, #2
67C4C:  MOV             R1, R4
67C4E:  MOVS            R2, #2
67C50:  MOVS            R3, #1
67C52:  BL              sub_AFA08
67C56:  ADDS            R0, R6, #4
67C58:  MOV             R1, R4
67C5A:  MOVS            R2, #2
67C5C:  MOVS            R3, #1
67C5E:  BL              sub_AFA08
67C62:  ADDS            R0, R6, #6
67C64:  MOV             R1, R4
67C66:  MOVS            R2, #2
67C68:  MOVS            R3, #1
67C6A:  BL              sub_AFA08
67C6E:  ADD.W           R0, R6, #8
67C72:  MOV             R1, R4
67C74:  MOVS            R2, #2
67C76:  MOVS            R3, #1
67C78:  BL              sub_AFA08
67C7C:  ADD.W           R0, R6, #0xA
67C80:  MOV             R1, R4
67C82:  MOVS            R2, #2
67C84:  MOVS            R3, #1
67C86:  BL              sub_AFA08
67C8A:  LDR.W           R6, [R8]
67C8E:  MOV             R9, #0x8F469
67C96:  MOV             R1, R4
67C98:  ADD.W           R0, R6, R9
67C9C:  MOVS            R2, #2
67C9E:  ADD.W           R0, R0, #0x528
67CA2:  MOVS            R3, #1
67CA4:  BL              sub_AFA08
67CA8:  MOVW            R0, #:lower16:(loc_8F992+1)
67CAC:  MOV             R1, R4
67CAE:  MOVT            R0, #:upper16:(loc_8F992+1)
67CB2:  ADD             R6, R0
67CB4:  MOVS            R2, #2
67CB6:  MOVS            R3, #1
67CB8:  MOV             R0, R6
67CBA:  BL              sub_AFA08
67CBE:  ADDS            R0, R6, #2
67CC0:  MOV             R1, R4
67CC2:  MOVS            R2, #2
67CC4:  MOVS            R3, #1
67CC6:  BL              sub_AFA08
67CCA:  ADDS            R0, R6, #4
67CCC:  MOV             R1, R4
67CCE:  MOVS            R2, #2
67CD0:  MOVS            R3, #1
67CD2:  BL              sub_AFA08
67CD6:  ADDS            R0, R6, #6
67CD8:  MOV             R1, R4
67CDA:  MOVS            R2, #2
67CDC:  MOVS            R3, #1
67CDE:  BL              sub_AFA08
67CE2:  ADD.W           R0, R6, #8
67CE6:  MOV             R1, R4
67CE8:  MOVS            R2, #2
67CEA:  MOVS            R3, #1
67CEC:  BL              sub_AFA08
67CF0:  ADD.W           R0, R6, #0xA
67CF4:  MOV             R1, R4
67CF6:  MOVS            R2, #2
67CF8:  MOVS            R3, #1
67CFA:  BL              sub_AFA08
67CFE:  ADD.W           R0, R6, #0xC
67D02:  MOV             R1, R4
67D04:  MOVS            R2, #2
67D06:  MOVS            R3, #1
67D08:  BL              sub_AFA08
67D0C:  ADD.W           R0, R6, #0xE
67D10:  MOV             R1, R4
67D12:  MOVS            R2, #2
67D14:  MOVS            R3, #1
67D16:  BL              sub_AFA08
67D1A:  ADD.W           R0, R6, #0x10
67D1E:  MOV             R1, R4
67D20:  MOVS            R2, #2
67D22:  MOVS            R3, #1
67D24:  BL              sub_AFA08
67D28:  ADD.W           R0, R6, #0x12
67D2C:  MOV             R1, R4
67D2E:  MOVS            R2, #2
67D30:  MOVS            R3, #1
67D32:  BL              sub_AFA08
67D36:  ADD.W           R0, R6, #0x14
67D3A:  MOV             R1, R4
67D3C:  MOVS            R2, #2
67D3E:  MOVS            R3, #1
67D40:  BL              sub_AFA08
67D44:  ADD.W           R0, R6, #0x16
67D48:  MOV             R1, R4
67D4A:  MOVS            R2, #2
67D4C:  MOVS            R3, #1
67D4E:  BL              sub_AFA08
67D52:  LDR.W           R0, [R8]
67D56:  MOV             R1, R5
67D58:  MOVS            R2, #4
67D5A:  MOVS            R3, #1
67D5C:  ADD.W           R0, R0, #0x11E000
67D60:  ADD.W           R0, R0, #0x758
67D64:  BL              sub_AFA08
67D68:  LDR.W           R0, [R8]
67D6C:  MOV             R1, R4
67D6E:  MOVS            R2, #2
67D70:  MOVS            R3, #1
67D72:  ADD.W           R6, R0, R10
67D76:  ADD.W           R0, R6, #0xB6
67D7A:  BL              sub_AFA08
67D7E:  ADD.W           R0, R6, #0xB8
67D82:  MOV             R1, R4
67D84:  MOVS            R2, #2
67D86:  MOVS            R3, #1
67D88:  BL              sub_AFA08
67D8C:  LDR.W           R0, [R8]
67D90:  MOV             R1, #0xF4D7A
67D98:  MOVS            R2, #4
67D9A:  ADD             R0, R1
67D9C:  MOV             R1, R5
67D9E:  MOVS            R3, #1
67DA0:  BL              sub_AFA08
67DA4:  LDR.W           R0, [R8]
67DA8:  MOV             R6, #0xF3D06
67DB0:  MOV             R1, R5
67DB2:  ADD             R0, R6
67DB4:  MOVS            R2, #4
67DB6:  MOVS            R3, #1
67DB8:  BL              sub_AFA08
67DBC:  LDR.W           R0, [R8]
67DC0:  MOV             R1, R5
67DC2:  MOVS            R2, #4
67DC4:  MOVS            R3, #1
67DC6:  ADD             R0, R6
67DC8:  ADD.W           R0, R0, #0x244
67DCC:  BL              sub_AFA08
67DD0:  LDR.W           R0, [R8]
67DD4:  MOV             R1, #unk_13F270
67DDC:  MOVS            R2, #2
67DDE:  ADDS            R6, R0, R1
67DE0:  MOV             R1, R4
67DE2:  MOVS            R3, #1
67DE4:  MOV             R0, R6
67DE6:  BL              sub_AFA08
67DEA:  ADDS            R0, R6, #2
67DEC:  MOV             R1, R4
67DEE:  MOVS            R2, #2
67DF0:  MOVS            R3, #1
67DF2:  BL              sub_AFA08
67DF6:  ADDS            R0, R6, #4
67DF8:  MOV             R1, R4
67DFA:  MOVS            R2, #2
67DFC:  MOVS            R3, #1
67DFE:  BL              sub_AFA08
67E02:  ADDS            R0, R6, #6
67E04:  MOV             R1, R4
67E06:  MOVS            R2, #2
67E08:  MOVS            R3, #1
67E0A:  BL              sub_AFA08
67E0E:  ADD.W           R0, R6, #8
67E12:  MOV             R1, R4
67E14:  MOVS            R2, #2
67E16:  MOVS            R3, #1
67E18:  BL              sub_AFA08
67E1C:  ADD.W           R0, R6, #0xA
67E20:  MOV             R1, R4
67E22:  MOVS            R2, #2
67E24:  MOVS            R3, #1
67E26:  BL              sub_AFA08
67E2A:  LDR.W           R0, [R8]
67E2E:  MOV             R10, #0x141DCA
67E36:  MOV             R1, R4
67E38:  ADD.W           R6, R0, R10
67E3C:  MOVS            R2, #2
67E3E:  MOVS            R3, #1
67E40:  MOV             R0, R6
67E42:  BL              sub_AFA08
67E46:  ADDS            R0, R6, #2
67E48:  MOV             R1, R4
67E4A:  MOVS            R2, #2
67E4C:  MOVS            R3, #1
67E4E:  BL              sub_AFA08
67E52:  ADDS            R0, R6, #4
67E54:  MOV             R1, R4
67E56:  MOVS            R2, #2
67E58:  MOVS            R3, #1
67E5A:  BL              sub_AFA08
67E5E:  ADDS            R0, R6, #6
67E60:  MOV             R1, R4
67E62:  MOVS            R2, #2
67E64:  MOVS            R3, #1
67E66:  BL              sub_AFA08
67E6A:  ADD.W           R0, R6, #8
67E6E:  MOV             R1, R4
67E70:  MOVS            R2, #2
67E72:  MOVS            R3, #1
67E74:  BL              sub_AFA08
67E78:  ADD.W           R0, R6, #0xA
67E7C:  MOV             R1, R4
67E7E:  MOVS            R2, #2
67E80:  MOVS            R3, #1
67E82:  BL              sub_AFA08
67E86:  ADD.W           R0, R6, #0xC
67E8A:  MOV             R1, R4
67E8C:  MOVS            R2, #2
67E8E:  MOVS            R3, #1
67E90:  BL              sub_AFA08
67E94:  ADD.W           R0, R6, #0xE
67E98:  MOV             R1, R4
67E9A:  MOVS            R2, #2
67E9C:  MOVS            R3, #1
67E9E:  BL              sub_AFA08
67EA2:  ADD.W           R0, R6, #0x10
67EA6:  MOV             R1, R4
67EA8:  MOVS            R2, #2
67EAA:  MOVS            R3, #1
67EAC:  BL              sub_AFA08
67EB0:  ADD.W           R0, R6, #0x12
67EB4:  MOV             R1, R4
67EB6:  MOVS            R2, #2
67EB8:  MOVS            R3, #1
67EBA:  BL              sub_AFA08
67EBE:  LDR.W           R0, [R8]
67EC2:  MOV             R1, R4
67EC4:  B.W             loc_67EE8
67EC8:  DCD unk_1A4070 - 0x67AE6
67ECC:  DCD aSampOrig - 0x67AF4
67ED0:  DCD off_114AB0 - 0x67B06
67ED4:  DCD unk_50D92 - 0x67B16
67ED8:  DCD unk_50D95 - 0x67B60
67EDC:  DCD unk_4D348 - 0x67BE4
67EE0:  DCD unk_4FB25 - 0x67BFC
67EE4:  DCD aT - 0x67C14
67EE8:  MOVS            R2, #2
67EEA:  MOVS            R3, #1
67EEC:  ADD.W           R6, R0, R10
67EF0:  ADD.W           R0, R6, #0x16
67EF4:  BL              sub_AFA08
67EF8:  ADD.W           R0, R6, #0x18
67EFC:  MOV             R1, R4
67EFE:  MOVS            R2, #2
67F00:  MOVS            R3, #1
67F02:  BL              sub_AFA08
67F06:  LDR.W           R0, [R8]
67F0A:  MOV             R1, #0x10379E
67F12:  MOVS            R2, #2
67F14:  ADDS            R6, R0, R1
67F16:  MOV             R1, R4
67F18:  MOVS            R3, #1
67F1A:  MOV             R0, R6
67F1C:  BL              sub_AFA08
67F20:  ADDS            R0, R6, #2
67F22:  MOV             R1, R4
67F24:  MOVS            R2, #2
67F26:  MOVS            R3, #1
67F28:  BL              sub_AFA08
67F2C:  LDR.W           R0, [R8]
67F30:  MOV             R1, R5
67F32:  MOVS            R2, #4
67F34:  MOVS            R3, #1
67F36:  ADD.W           R0, R0, #0x140000
67F3A:  ADD.W           R0, R0, #0x1580
67F3E:  BL              sub_AFA08
67F42:  LDR.W           R0, [R8]
67F46:  MOVW            R6, #:lower16:(loc_8C76A+1)
67F4A:  LDR             R1, =(aSampSettingJso - 0x67F58); "/SAMP/setting_.json" ...
67F4C:  MOVT            R6, #:upper16:(loc_8C76A+1)
67F50:  ADD             R0, R6
67F52:  MOVS            R2, #0x14
67F54:  ADD             R1, PC; "/SAMP/setting_.json"
67F56:  MOVS            R3, #1
67F58:  BL              sub_AFA08
67F5C:  LDR.W           R0, [R8]
67F60:  MOVW            R2, #:lower16:loc_8BB34
67F64:  LDR             R1, =(aStorageEmulate - 0x67F72); "/storage/emulated/0/Android/data/com.sa"... ...
67F66:  MOVT            R2, #:upper16:loc_8BB34
67F6A:  ADD             R0, R2
67F6C:  MOVS            R2, #0x5C ; '\'
67F6E:  ADD             R1, PC; "/storage/emulated/0/Android/data/com.sa"...
67F70:  MOVS            R3, #1
67F72:  BL              sub_AFA08
67F76:  LDR.W           R0, [R8]
67F7A:  MOVW            R5, #:lower16:loc_90972
67F7E:  LDR             R4, =(aMylogo - 0x67F8C); "mylogo" ...
67F80:  MOVT            R5, #:upper16:loc_90972
67F84:  ADD             R0, R5
67F86:  MOVS            R2, #7
67F88:  ADD             R4, PC; "mylogo"
67F8A:  ADDS            R0, #0x18
67F8C:  MOVS            R3, #1
67F8E:  MOV             R1, R4
67F90:  BL              sub_AFA08
67F94:  MOVW            R1, #:lower16:(loc_84CA8+3)
67F98:  LDR.W           R0, [R8]
67F9C:  MOVT            R1, #:upper16:(loc_84CA8+3)
67FA0:  MOVS            R2, #9
67FA2:  ADD             R0, R1
67FA4:  LDR             R1, =(aGtexture - 0x67FAC); "gtexture" ...
67FA6:  MOVS            R3, #1
67FA8:  ADD             R1, PC; "gtexture"
67FAA:  BL              sub_AFA08
67FAE:  LDR.W           R0, [R8]
67FB2:  MOVS            R2, #6
67FB4:  LDR             R1, =(aShoot - 0x67FC0); "shoot" ...
67FB6:  MOVS            R3, #1
67FB8:  ADD             R0, R6
67FBA:  ADDS            R0, #0x14
67FBC:  ADD             R1, PC; "shoot"
67FBE:  BL              sub_AFA08
67FC2:  LDR.W           R0, [R8]
67FC6:  MOV             R10, #0x847AC
67FCE:  MOV             R1, R4
67FD0:  ADD             R0, R10
67FD2:  MOVS            R2, #7
67FD4:  ADDS            R0, #0x62 ; 'b'
67FD6:  MOVS            R3, #1
67FD8:  BL              sub_AFA08
67FDC:  LDR.W           R0, [R8]
67FE0:  MOV             R1, #0x8C9FE
67FE8:  MOVS            R2, #7
67FEA:  ADD             R0, R1
67FEC:  MOV             R1, R4
67FEE:  MOVS            R3, #1
67FF0:  BL              sub_AFA08
67FF4:  LDR.W           R0, [R8]
67FF8:  MOV             R1, #0x8ED12
68000:  MOVS            R2, #7
68002:  ADD             R0, R1
68004:  MOV             R1, R4
68006:  MOVS            R3, #1
68008:  BL              sub_AFA08
6800C:  LDR.W           R0, [R8]
68010:  MOV             R1, #0x898BE
68018:  MOVS            R2, #7
6801A:  ADD             R0, R1
6801C:  MOV             R1, R4
6801E:  MOVS            R3, #1
68020:  BL              sub_AFA08
68024:  LDR.W           R0, [R8]
68028:  MOVW            R11, #:lower16:(loc_88324+2)
6802C:  LDR             R1, =(aTogdw - 0x6803A); "togdw" ...
6802E:  MOVT            R11, #:upper16:(loc_88324+2)
68032:  ADD             R0, R11
68034:  MOVS            R2, #6
68036:  ADD             R1, PC; "togdw"
68038:  MOVS            R3, #1
6803A:  BL              sub_AFA08
6803E:  LDR.W           R0, [R8]
68042:  MOVS            R2, #9
68044:  LDR             R4, =(aGaysizee - 0x6804E); "gaysizee" ...
68046:  MOVS            R3, #1
68048:  ADD             R0, R5
6804A:  ADD             R4, PC; "gaysizee"
6804C:  MOV             R1, R4
6804E:  BL              sub_AFA08
68052:  LDR.W           R0, [R8]
68056:  MOV             R5, #0x87B88
6805E:  MOV             R1, R4
68060:  ADD             R0, R5
68062:  MOVS            R2, #9
68064:  MOVS            R3, #1
68066:  BL              sub_AFA08
6806A:  LDR.W           R0, [R8]
6806E:  MOVW            R6, #:lower16:(loc_874BC+1)
68072:  LDR             R1, =(aTab - 0x68080); "TAB" ...
68074:  MOVT            R6, #:upper16:(loc_874BC+1)
68078:  ADD             R0, R6
6807A:  MOVS            R2, #4
6807C:  ADD             R1, PC; "TAB"
6807E:  MOVS            R3, #1
68080:  BL              sub_AFA08
68084:  LDR.W           R0, [R8]
68088:  MOVS            R2, #0x26 ; '&'
6808A:  LDR             R1, =(aConnectingToSe - 0x68094); "Connecting to server | (attempts: %d)" ...
6808C:  MOVS            R3, #1
6808E:  ADD             R0, R9
68090:  ADD             R1, PC; "Connecting to server | (attempts: %d)"
68092:  BL              sub_AFA08
68096:  LDR.W           R0, [R8]
6809A:  MOVS            R2, #0x13
6809C:  LDR             R1, =(aConnectedTo64s - 0x680A8); "Connected to %.64s" ...
6809E:  MOVS            R3, #1
680A0:  ADD             R0, R9
680A2:  ADDS            R0, #0x50 ; 'P'
680A4:  ADD             R1, PC; "Connected to %.64s"
680A6:  BL              sub_AFA08
680AA:  LDR.W           R0, [R8]
680AE:  MOVW            R4, #:lower16:(loc_90186+2)
680B2:  LDR             R1, =(aTheServerDidnT - 0x680C2); "The server didn't respond. Retrying..." ...
680B4:  MOVT            R4, #:upper16:(loc_90186+2)
680B8:  ADD             R0, R4
680BA:  MOVS            R2, #0x27 ; '''
680BC:  ADDS            R0, #0x3B ; ';'
680BE:  ADD             R1, PC; "The server didn't respond. Retrying..."
680C0:  MOVS            R3, #1
680C2:  BL              sub_AFA08
680C6:  LDR.W           R0, [R8]
680CA:  MOVS            R2, #0x20 ; ' '
680CC:  LDR             R1, =(aTheServerIsFul - 0x680D8); "The server is full. Retrying..." ...
680CE:  MOVS            R3, #1
680D0:  ADD             R0, R5
680D2:  ADDS            R0, #0x34 ; '4'
680D4:  ADD             R1, PC; "The server is full. Retrying..."
680D6:  BL              sub_AFA08
680DA:  LDR.W           R0, [R8]
680DE:  MOVS            R2, #0x1E
680E0:  LDR             R1, =(aServerClosedTh - 0x680EC); "Server closed the connection." ...
680E2:  MOVS            R3, #1
680E4:  ADD             R0, R4
680E6:  ADDS            R0, #0x82
680E8:  ADD             R1, PC; "Server closed the connection."
680EA:  BL              sub_AFA08
680EE:  MOVW            R1, #:lower16:loc_8A5D2
680F2:  LDR.W           R0, [R8]
680F6:  MOVT            R1, #:upper16:loc_8A5D2
680FA:  MOVS            R2, #0x2F ; '/'
680FC:  ADD             R0, R1
680FE:  LDR             R1, =(aLostConnection - 0x68106); "Lost connection to the server. Reconnec"... ...
68100:  MOVS            R3, #1
68102:  ADD             R1, PC; "Lost connection to the server. Reconnec"...
68104:  BL              sub_AFA08
68108:  LDR.W           R0, [R8]
6810C:  MOVS            R2, #0x21 ; '!'
6810E:  LDR             R1, =(aYouAreBannedFr - 0x6811A); "You are banned from this server." ...
68110:  MOVS            R3, #1
68112:  ADD             R0, R6
68114:  ADDS            R0, #0x88
68116:  ADD             R1, PC; "You are banned from this server."
68118:  BL              sub_AFA08
6811C:  LDR.W           R0, [R8]
68120:  MOVS            R2, #0x17
68122:  LDR             R1, =(aWrongServerPas - 0x6812E); "Wrong server password." ...
68124:  MOVS            R3, #1
68126:  ADD             R0, R5
68128:  ADDS            R0, #0x78 ; 'x'
6812A:  ADD             R1, PC; "Wrong server password."
6812C:  BL              sub_AFA08
68130:  LDR.W           R0, [R8]
68134:  MOVS            R2, #0x1C
68136:  LDR             R1, =(aTheServerIsRes - 0x68142); "The server is restarting..." ...
68138:  MOVS            R3, #1
6813A:  ADD             R0, R11
6813C:  ADDS            R0, #0xC2
6813E:  ADD             R1, PC; "The server is restarting..."
68140:  BL              sub_AFA08
68144:  LDR.W           R0, [R8]
68148:  MOVS            R2, #0x18
6814A:  LDR             R1, =(aUsagePagesizeS - 0x68154); "Usage: /pagesize <size>" ...
6814C:  MOVS            R3, #1
6814E:  ADD             R0, R4
68150:  ADD             R1, PC; "Usage: /pagesize <size>"
68152:  BL              sub_AFA08
68156:  LDR.W           R0, [R8]
6815A:  MOVS            R2, #0x32 ; '2'
6815C:  LDR             R1, =(aErrorTheChatSi - 0x68166); "Error: the chat size must be between 5 "... ...
6815E:  MOVS            R3, #1
68160:  ADD             R0, R10
68162:  ADD             R1, PC; "Error: the chat size must be between 5 "...
68164:  BL              sub_AFA08
68168:  MOVW            R1, #:lower16:loc_8C2CA
6816C:  LDR.W           R0, [R8]
68170:  MOVT            R1, #:upper16:loc_8C2CA
68174:  MOVS            R2, #0x21 ; '!'
68176:  ADD             R0, R1
68178:  LDR             R1, =(aTheChatSizeIsS - 0x68180); "The chat size is set to %d lines." ...
6817A:  MOVS            R3, #1
6817C:  ADD             R1, PC; "The chat size is set to %d lines."
6817E:  BL              sub_AFA08
68182:  LDR.W           R0, [R8]
68186:  MOVW            R2, #:lower16:(loc_84F54+2)
6818A:  LDR             R1, =(aFontSizeSetTo1 - 0x68198); "Font size set to %.1f" ...
6818C:  MOVT            R2, #:upper16:(loc_84F54+2)
68190:  ADD             R0, R2
68192:  MOVS            R2, #0x16
68194:  ADD             R1, PC; "Font size set to %.1f"
68196:  MOVS            R3, #1
68198:  BL              sub_AFA08
6819C:  LDR.W           R0, [R8]
681A0:  MOVS            R2, #0x43 ; 'C'
681A2:  LDR             R1, =(aErrorFontSizeM - 0x681AC); "Error: font size must be between 0.1 an"... ...
681A4:  MOVS            R3, #1
681A6:  ADD             R0, R11
681A8:  ADD             R1, PC; "Error: font size must be between 0.1 an"...
681AA:  ADDS            R0, #0xA
681AC:  BL              sub_AFA08
681B0:  LDR.W           R0, [R8]
681B4:  MOVW            R2, #:lower16:(loc_8FCC0+1)
681B8:  LDR             R1, =(aUsageFontsizeS - 0x681C6); "Usage: /fontsize <size>" ...
681BA:  MOVT            R2, #:upper16:(loc_8FCC0+1)
681BE:  ADD             R0, R2
681C0:  MOVS            R2, #0x18
681C2:  ADD             R1, PC; "Usage: /fontsize <size>"
681C4:  MOVS            R3, #1
681C6:  BL              sub_AFA08
681CA:  LDR.W           R0, [R8]
681CE:  MOV             R5, #0x23DF1A
681D6:  MOV.W           R1, #0x1000
681DA:  ADDS            R4, R0, R5
681DC:  MOVS            R2, #7
681DE:  MOV             R0, R4
681E0:  BL              sub_AF9C0
681E4:  CBZ             R0, loc_681F4
681E6:  MOV             R0, R4
681E8:  MOV.W           R1, #0x1000
681EC:  MOVS            R2, #3
681EE:  BL              sub_AF9C0
681F2:  B               loc_68204
681F4:  LDR             R1, =(aMemory - 0x68200); "Memory" ...
681F6:  MOVS            R0, #4; prio
681F8:  LDR             R2, =(aProtectaddrPro - 0x68202); "protectAddr (_PROT_RWX_) failed: 0x%X -"... ...
681FA:  MOV             R3, R4
681FC:  ADD             R1, PC; "Memory"
681FE:  ADD             R2, PC; "protectAddr (_PROT_RWX_) failed: 0x%X -"...
68200:  BLX             __android_log_print
68204:  LDR.W           R0, [R8]
68208:  MOVS            R1, #1
6820A:  STRB            R1, [R0,R5]
6820C:  ADD             SP, SP, #4
6820E:  POP.W           {R8-R11}
68212:  POP             {R4-R7,PC}
68214:  LDR             R0, =(byte_1A4088 - 0x6821A)
68216:  ADD             R0, PC; byte_1A4088 ; __guard *
68218:  BLX             j___cxa_guard_acquire
6821C:  CMP             R0, #0
6821E:  BEQ.W           loc_67AE0
68222:  LDR             R1, =(unk_1A4070 - 0x68232)
68224:  MOVW            R3, #0x7229
68228:  ADR             R0, dword_68260
6822A:  MOVT            R3, #0x5A73
6822E:  ADD             R1, PC; unk_1A4070 ; obj
68230:  VLD1.64         {D16-D17}, [R0@128]
68234:  MOVW            R6, #0x392E
68238:  LDR             R0, =(sub_66E7C+1 - 0x6824C)
6823A:  MOVT            R6, #0x3F32
6823E:  LDR             R2, =(off_110560 - 0x6824E)
68240:  STR             R3, [R1,#(dword_1A4084 - 0x1A4070)]
68242:  MOV             R3, R1
68244:  VST1.8          {D16-D17}, [R3@128]!
68248:  ADD             R0, PC; sub_66E7C ; lpfunc
6824A:  ADD             R2, PC; off_110560 ; lpdso_handle
6824C:  STR             R6, [R3]
6824E:  BLX             __cxa_atexit
68252:  LDR             R0, =(byte_1A4088 - 0x68258)
68254:  ADD             R0, PC; byte_1A4088 ; __guard *
68256:  BLX             j___cxa_guard_release
6825A:  B               loc_67AE0
