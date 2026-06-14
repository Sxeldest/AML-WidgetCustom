; =========================================================
; Game Engine Function: sub_62C74
; Address            : 0x62C74 - 0x631C0
; =========================================================

62C74:  PUSH            {R4-R7,LR}
62C76:  ADD             R7, SP, #0xC
62C78:  PUSH.W          {R8-R11}
62C7C:  SUB             SP, SP, #4
62C7E:  VPUSH           {D8-D9}
62C82:  SUB.W           SP, SP, #0x290
62C86:  STR             R0, [SP,#0x2C0+var_29C]
62C88:  MOV             R8, R1
62C8A:  LDR             R0, =(unk_509F0 - 0x62C92)
62C8C:  MOVS            R1, #0xB
62C8E:  ADD             R0, PC; unk_509F0
62C90:  VLD1.64         {D16-D17}, [R0]!
62C94:  VLD1.64         {D18-D19}, [R0],R1
62C98:  VLD1.8          {D20-D21}, [R0]
62C9C:  LDR             R0, =(byte_1A3B5C - 0x62CA6)
62C9E:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x62CA8)
62CA2:  ADD             R0, PC; byte_1A3B5C
62CA4:  ADD             R2, PC; __stack_chk_guard_ptr
62CA6:  LDR             R2, [R2]; __stack_chk_guard
62CA8:  LDR             R2, [R2]
62CAA:  STR             R2, [SP,#0x2C0+var_34]
62CAC:  ADD             R2, SP, #0x2C0+var_178
62CAE:  VST1.64         {D16-D17}, [R2]!
62CB2:  VST1.64         {D18-D19}, [R2],R1
62CB6:  VST1.8          {D20-D21}, [R2]
62CBA:  LDRB            R0, [R0]
62CBC:  DMB.W           ISH
62CC0:  LSLS            R0, R0, #0x1F
62CC2:  BEQ.W           loc_63106
62CC6:  B               loc_62CD0
62CC8:  DCD unk_509F0 - 0x62C92
62CCC:  DCD byte_1A3B5C - 0x62CA6
62CD0:  LDR             R0, =(unk_1A3B30 - 0x62CD6)
62CD2:  ADD             R0, PC; unk_1A3B30
62CD4:  LDRB.W          R1, [R0,#(byte_1A3B5A - 0x1A3B30)]
62CD8:  CMP             R1, #0
62CDA:  BEQ             loc_62D86
62CDC:  B               loc_62CE4
62CDE:  ALIGN 0x10
62CE0:  DCD unk_1A3B30 - 0x62CD6
62CE4:  VMOV.I8         Q8, #0x5A ; 'Z'
62CE8:  MOVS            R1, #0x22 ; '"'
62CEA:  MOV             R2, R0
62CEC:  LDRB.W          R3, [R0,#(byte_1A3B54 - 0x1A3B30)]
62CF0:  VLD1.8          {D18-D19}, [R2@128],R1
62CF4:  MOV.W           R12, #0x11
62CF8:  VEOR            Q9, Q9, Q8
62CFC:  EOR.W           R3, R3, #0x5A ; 'Z'
62D00:  LDRB.W          R1, [R0,#(byte_1A3B53 - 0x1A3B30)]
62D04:  LDRB.W          R6, [R0,#(byte_1A3B55 - 0x1A3B30)]
62D08:  EOR.W           R1, R1, #0x5A ; 'Z'
62D0C:  STRB.W          R1, [R0,#(byte_1A3B53 - 0x1A3B30)]
62D10:  MOV             R1, R0
62D12:  LDRB.W          R5, [R0,#(byte_1A3B56 - 0x1A3B30)]
62D16:  VST1.8          {D18-D19}, [R1@128]!
62D1A:  MOV             R4, R1
62D1C:  STRB.W          R3, [R0,#(byte_1A3B54 - 0x1A3B30)]
62D20:  EOR.W           R3, R6, #0x5A ; 'Z'
62D24:  VLD1.8          {D18-D19}, [R4@128],R12
62D28:  VEOR            Q8, Q9, Q8
62D2C:  STRB.W          R3, [R0,#(byte_1A3B55 - 0x1A3B30)]
62D30:  EOR.W           R3, R5, #0x5A ; 'Z'
62D34:  LDRB.W          LR, [R2]
62D38:  STRB.W          R3, [R0,#(byte_1A3B56 - 0x1A3B30)]
62D3C:  LDRB            R3, [R4]
62D3E:  EOR.W           R5, LR, #0x5A ; 'Z'
62D42:  LDRB.W          R6, [R0,#(byte_1A3B57 - 0x1A3B30)]
62D46:  STRB            R5, [R2]
62D48:  EOR.W           R2, R3, #0x5A ; 'Z'
62D4C:  VST1.8          {D16-D17}, [R1@128]!
62D50:  EOR.W           R3, R6, #0x5A ; 'Z'
62D54:  STRB            R2, [R4]
62D56:  LDRB.W          R2, [R0,#(byte_1A3B58 - 0x1A3B30)]
62D5A:  STRB.W          R3, [R0,#(byte_1A3B57 - 0x1A3B30)]
62D5E:  LDRB            R3, [R1]
62D60:  EOR.W           R2, R2, #0x5A ; 'Z'
62D64:  STRB.W          R2, [R0,#(byte_1A3B58 - 0x1A3B30)]
62D68:  EOR.W           R2, R3, #0x5A ; 'Z'
62D6C:  STRB            R2, [R1]
62D6E:  LDRB.W          R1, [R0,#(byte_1A3B59 - 0x1A3B30)]
62D72:  EOR.W           R1, R1, #0x5A ; 'Z'
62D76:  STRB.W          R1, [R0,#(byte_1A3B59 - 0x1A3B30)]
62D7A:  LDRB.W          R1, [R0,#(byte_1A3B5A - 0x1A3B30)]
62D7E:  EOR.W           R1, R1, #0x5A ; 'Z'
62D82:  STRB.W          R1, [R0,#(byte_1A3B5A - 0x1A3B30)]
62D86:  LDR             R1, =(aSampOrig - 0x62D90); "SAMP_ORIG" ...
62D88:  MOVS            R0, #4; prio
62D8A:  LDR             R2, =(unk_1A3B30 - 0x62D92)
62D8C:  ADD             R1, PC; "SAMP_ORIG"
62D8E:  ADD             R2, PC; unk_1A3B30 ; fmt
62D90:  BLX             __android_log_print
62D94:  LDR.W           R2, [R8,#0xC]; size
62D98:  ADD             R0, SP, #0x2C0+var_178; int
62D9A:  LDR.W           R1, [R8,#0x14]; src
62D9E:  MOVS            R3, #1
62DA0:  BL              sub_86BA8
62DA4:  MOVS            R1, #8
62DA6:  BL              sub_8713E
62DAA:  ADD             R0, SP, #0x2C0+var_178
62DAC:  MOVS            R1, #0x20 ; ' '
62DAE:  BL              sub_8713E
62DB2:  ADD             R0, SP, #0x2C0+var_178
62DB4:  MOVS            R1, #0x10
62DB6:  BL              sub_8713E
62DBA:  ADD             R0, SP, #0x2C0+var_178; int
62DBC:  ADD.W           R1, SP, #0x2C0+var_292; int
62DC0:  MOVS            R2, #0x10
62DC2:  MOVS            R3, #1
62DC4:  BL              sub_86E30
62DC8:  ADD             R0, SP, #0x2C0+var_178; int
62DCA:  ADD             R1, SP, #0x2C0+var_298; int
62DCC:  MOVS            R2, #0x20 ; ' '
62DCE:  MOVS            R3, #1
62DD0:  BL              sub_86E30
62DD4:  LDR             R0, =(aConnectedJoini - 0x62DDA); "Connected. Joining the game..." ...
62DD6:  ADD             R0, PC; "Connected. Joining the game..."
62DD8:  BL              sub_6C73C
62DDC:  LDR             R2, =(unk_50A20 - 0x62DE8)
62DDE:  MOVS            R1, #0xC
62DE0:  LDR             R0, =(off_114B38 - 0x62DEE)
62DE2:  ADD             R6, SP, #0x2C0+var_290
62DE4:  ADD             R2, PC; unk_50A20
62DE6:  LDR.W           R11, [SP,#0x2C0+var_298]
62DEA:  ADD             R0, PC; off_114B38
62DEC:  VLD1.64         {D8-D9}, [R2]!
62DF0:  LDR             R0, [R0]; dword_1A447C
62DF2:  STR             R2, [SP,#0x2C0+var_2A4]
62DF4:  VLD1.64         {D16-D17}, [R2],R1
62DF8:  VLD1.32         {D18-D19}, [R2]
62DFC:  LDR             R2, =(a037 - 0x62E06); "0.3.7" ...
62DFE:  LDR             R0, [R0]
62E00:  LDR             R3, =(byte_1A3B8C - 0x62E0E)
62E02:  ADD             R2, PC; "0.3.7"
62E04:  VST1.64         {D8-D9}, [R6]!
62E08:  CMP             R0, #1
62E0A:  ADD             R3, PC; byte_1A3B8C
62E0C:  LDR             R5, =(a037R4 - 0x62E16); "0.3.7-R4" ...
62E0E:  VST1.64         {D16-D17}, [R6],R1
62E12:  ADD             R5, PC; "0.3.7-R4"
62E14:  VST1.32         {D18-D19}, [R6]
62E18:  LDRB            R1, [R3]
62E1A:  IT NE
62E1C:  MOVNE           R5, R2
62E1E:  DMB.W           ISH
62E22:  STR             R5, [SP,#0x2C0+var_2A0]
62E24:  LSLS            R0, R1, #0x1F
62E26:  BEQ.W           loc_63138
62E2A:  LDR             R0, =(unk_1A3B60 - 0x62E30)
62E2C:  ADD             R0, PC; unk_1A3B60
62E2E:  LDRB.W          R1, [R0,#(byte_1A3B8B - 0x1A3B60)]
62E32:  CMP             R1, #0
62E34:  BEQ             loc_62EE6
62E36:  VMOV.I8         Q8, #0x5A ; 'Z'
62E3A:  MOVS            R1, #0x22 ; '"'
62E3C:  MOV             R2, R0
62E3E:  LDRB.W          R3, [R0,#(byte_1A3B84 - 0x1A3B60)]
62E42:  VLD1.8          {D18-D19}, [R2@128],R1
62E46:  MOV.W           R12, #0x11
62E4A:  VEOR            Q9, Q9, Q8
62E4E:  EOR.W           R3, R3, #0x5A ; 'Z'
62E52:  LDRB.W          R1, [R0,#(byte_1A3B83 - 0x1A3B60)]
62E56:  LDRB.W          R6, [R0,#(byte_1A3B85 - 0x1A3B60)]
62E5A:  EOR.W           R1, R1, #0x5A ; 'Z'
62E5E:  STRB.W          R1, [R0,#(byte_1A3B83 - 0x1A3B60)]
62E62:  MOV             R1, R0
62E64:  LDRB.W          R4, [R0,#(byte_1A3B86 - 0x1A3B60)]
62E68:  VST1.8          {D18-D19}, [R1@128]!
62E6C:  MOV             R5, R1
62E6E:  STRB.W          R3, [R0,#(byte_1A3B84 - 0x1A3B60)]
62E72:  EOR.W           R3, R6, #0x5A ; 'Z'
62E76:  VLD1.8          {D18-D19}, [R5@128],R12
62E7A:  VEOR            Q8, Q9, Q8
62E7E:  STRB.W          R3, [R0,#(byte_1A3B85 - 0x1A3B60)]
62E82:  EOR.W           R3, R4, #0x5A ; 'Z'
62E86:  LDRB.W          LR, [R2]
62E8A:  STRB.W          R3, [R0,#(byte_1A3B86 - 0x1A3B60)]
62E8E:  LDRB            R3, [R5]
62E90:  EOR.W           R4, LR, #0x5A ; 'Z'
62E94:  LDRB.W          R6, [R0,#(byte_1A3B87 - 0x1A3B60)]
62E98:  STRB            R4, [R2]
62E9A:  EOR.W           R2, R3, #0x5A ; 'Z'
62E9E:  VST1.8          {D16-D17}, [R1@128]!
62EA2:  EOR.W           R3, R6, #0x5A ; 'Z'
62EA6:  STRB            R2, [R5]
62EA8:  LDRB.W          R2, [R0,#(byte_1A3B88 - 0x1A3B60)]
62EAC:  STRB.W          R3, [R0,#(byte_1A3B87 - 0x1A3B60)]
62EB0:  LDRB            R3, [R1]
62EB2:  EOR.W           R2, R2, #0x5A ; 'Z'
62EB6:  STRB.W          R2, [R0,#(byte_1A3B88 - 0x1A3B60)]
62EBA:  EOR.W           R2, R3, #0x5A ; 'Z'
62EBE:  STRB            R2, [R1]
62EC0:  LDRB.W          R1, [R0,#(byte_1A3B89 - 0x1A3B60)]
62EC4:  LDR             R5, [SP,#0x2C0+var_2A0]
62EC6:  EOR.W           R1, R1, #0x5A ; 'Z'
62ECA:  STRB.W          R1, [R0,#(byte_1A3B89 - 0x1A3B60)]
62ECE:  LDRB.W          R1, [R0,#(byte_1A3B8A - 0x1A3B60)]
62ED2:  EOR.W           R1, R1, #0x5A ; 'Z'
62ED6:  STRB.W          R1, [R0,#(byte_1A3B8A - 0x1A3B60)]
62EDA:  LDRB.W          R1, [R0,#(byte_1A3B8B - 0x1A3B60)]
62EDE:  EOR.W           R1, R1, #0x5A ; 'Z'
62EE2:  STRB.W          R1, [R0,#(byte_1A3B8B - 0x1A3B60)]
62EE6:  LDR             R0, =(unk_1A3B60 - 0x62EEC)
62EE8:  ADD             R0, PC; unk_1A3B60 ; char *
62EEA:  MOVS            R1, #0x2C ; ','; size_t
62EEC:  BLX             __strlen_chk
62EF0:  MOV             R10, R0
62EF2:  LDR             R0, =(off_114B3C - 0x62EF8); "samp_player" ...
62EF4:  ADD             R0, PC; off_114B3C
62EF6:  LDR             R6, [R0]; "samp_player"
62EF8:  MOV.W           R1, #0xFFFFFFFF; size_t
62EFC:  MOV             R0, R6; char *
62EFE:  BLX             __strlen_chk
62F02:  MOV             R4, R0
62F04:  MOV             R0, R5; char *
62F06:  MOVS            R1, #9; size_t
62F08:  BLX             __strlen_chk
62F0C:  LDR             R1, [SP,#0x2C0+var_29C]
62F0E:  MOV             R9, R0
62F10:  MOVS            R0, #6
62F12:  STR.W           R0, [R1,#0x218]
62F16:  ADD             R0, SP, #0x2C0+var_290
62F18:  BL              sub_86B90
62F1C:  MOVW            R0, #0xFD9
62F20:  STR             R0, [SP,#0x2C0+var_60]
62F22:  ADD             R0, SP, #0x2C0+var_290
62F24:  ADD             R1, SP, #0x2C0+var_60
62F26:  MOVS            R2, #0x20 ; ' '
62F28:  MOVS            R3, #1
62F2A:  MOV.W           R8, #1
62F2E:  BL              sub_86D52
62F32:  STRB.W          R8, [SP,#0x2C0+var_60]
62F36:  ADD             R0, SP, #0x2C0+var_290
62F38:  ADD             R1, SP, #0x2C0+var_60
62F3A:  MOVS            R2, #8
62F3C:  MOVS            R3, #1
62F3E:  BL              sub_86D52
62F42:  STRB.W          R4, [SP,#0x2C0+var_60]
62F46:  ADD             R0, SP, #0x2C0+var_290
62F48:  ADD             R1, SP, #0x2C0+var_60
62F4A:  MOVS            R2, #8
62F4C:  MOVS            R3, #1
62F4E:  BL              sub_86D52
62F52:  ADD             R0, SP, #0x2C0+var_290
62F54:  UXTB            R2, R4
62F56:  MOV             R1, R6
62F58:  BL              sub_86C1C
62F5C:  MOVW            R0, #0xFD9
62F60:  EOR.W           R0, R0, R11
62F64:  STR             R0, [SP,#0x2C0+var_60]
62F66:  ADD             R0, SP, #0x2C0+var_290
62F68:  ADD             R1, SP, #0x2C0+var_60
62F6A:  MOVS            R2, #0x20 ; ' '
62F6C:  MOVS            R3, #1
62F6E:  BL              sub_86D52
62F72:  STRB.W          R10, [SP,#0x2C0+var_60]
62F76:  ADD             R4, SP, #0x2C0+var_60
62F78:  ADD             R0, SP, #0x2C0+var_290
62F7A:  MOVS            R2, #8
62F7C:  MOVS            R3, #1
62F7E:  MOV             R1, R4
62F80:  BL              sub_86D52
62F84:  LDR             R2, [SP,#0x2C0+var_2A4]
62F86:  MOVS            R0, #0xC
62F88:  LDR             R1, =(byte_1A3BBC - 0x62F92)
62F8A:  VLD1.64         {D16-D17}, [R2],R0
62F8E:  ADD             R1, PC; byte_1A3BBC
62F90:  VST1.64         {D8-D9}, [R4]!
62F94:  VLD1.32         {D18-D19}, [R2]
62F98:  VST1.64         {D16-D17}, [R4],R0
62F9C:  VST1.32         {D18-D19}, [R4]
62FA0:  LDRB            R0, [R1]
62FA2:  DMB.W           ISH
62FA6:  LSLS            R0, R0, #0x1F
62FA8:  BEQ.W           loc_6318C
62FAC:  LDR             R0, =(unk_1A3B90 - 0x62FB2)
62FAE:  ADD             R0, PC; unk_1A3B90
62FB0:  LDRB.W          R1, [R0,#(byte_1A3BBB - 0x1A3B90)]
62FB4:  CMP             R1, #0
62FB6:  BEQ             loc_63068
62FB8:  VMOV.I8         Q8, #0x5A ; 'Z'
62FBC:  MOVS            R1, #0x22 ; '"'
62FBE:  MOV             R2, R0
62FC0:  LDRB.W          R3, [R0,#(byte_1A3BB4 - 0x1A3B90)]
62FC4:  VLD1.8          {D18-D19}, [R2@128],R1
62FC8:  MOV.W           R12, #0x11
62FCC:  VEOR            Q9, Q9, Q8
62FD0:  EOR.W           R3, R3, #0x5A ; 'Z'
62FD4:  LDRB.W          R1, [R0,#(byte_1A3BB3 - 0x1A3B90)]
62FD8:  LDRB.W          R6, [R0,#(byte_1A3BB5 - 0x1A3B90)]
62FDC:  EOR.W           R1, R1, #0x5A ; 'Z'
62FE0:  STRB.W          R1, [R0,#(byte_1A3BB3 - 0x1A3B90)]
62FE4:  MOV             R1, R0
62FE6:  LDRB.W          R5, [R0,#(byte_1A3BB6 - 0x1A3B90)]
62FEA:  VST1.8          {D18-D19}, [R1@128]!
62FEE:  MOV             R4, R1
62FF0:  STRB.W          R3, [R0,#(byte_1A3BB4 - 0x1A3B90)]
62FF4:  EOR.W           R3, R6, #0x5A ; 'Z'
62FF8:  VLD1.8          {D18-D19}, [R4@128],R12
62FFC:  VEOR            Q8, Q9, Q8
63000:  STRB.W          R3, [R0,#(byte_1A3BB5 - 0x1A3B90)]
63004:  EOR.W           R3, R5, #0x5A ; 'Z'
63008:  LDRB.W          LR, [R2]
6300C:  STRB.W          R3, [R0,#(byte_1A3BB6 - 0x1A3B90)]
63010:  LDRB            R3, [R4]
63012:  EOR.W           R5, LR, #0x5A ; 'Z'
63016:  LDRB.W          R6, [R0,#(byte_1A3BB7 - 0x1A3B90)]
6301A:  STRB            R5, [R2]
6301C:  EOR.W           R2, R3, #0x5A ; 'Z'
63020:  VST1.8          {D16-D17}, [R1@128]!
63024:  EOR.W           R3, R6, #0x5A ; 'Z'
63028:  STRB            R2, [R4]
6302A:  LDRB.W          R2, [R0,#(byte_1A3BB8 - 0x1A3B90)]
6302E:  STRB.W          R3, [R0,#(byte_1A3BB7 - 0x1A3B90)]
63032:  LDRB            R3, [R1]
63034:  EOR.W           R2, R2, #0x5A ; 'Z'
63038:  STRB.W          R2, [R0,#(byte_1A3BB8 - 0x1A3B90)]
6303C:  EOR.W           R2, R3, #0x5A ; 'Z'
63040:  STRB            R2, [R1]
63042:  LDRB.W          R1, [R0,#(byte_1A3BB9 - 0x1A3B90)]
63046:  LDR             R5, [SP,#0x2C0+var_2A0]
63048:  EOR.W           R1, R1, #0x5A ; 'Z'
6304C:  STRB.W          R1, [R0,#(byte_1A3BB9 - 0x1A3B90)]
63050:  LDRB.W          R1, [R0,#(byte_1A3BBA - 0x1A3B90)]
63054:  EOR.W           R1, R1, #0x5A ; 'Z'
63058:  STRB.W          R1, [R0,#(byte_1A3BBA - 0x1A3B90)]
6305C:  LDRB.W          R1, [R0,#(byte_1A3BBB - 0x1A3B90)]
63060:  EOR.W           R1, R1, #0x5A ; 'Z'
63064:  STRB.W          R1, [R0,#(byte_1A3BBB - 0x1A3B90)]
63068:  LDR             R1, =(unk_1A3B90 - 0x6306E)
6306A:  ADD             R1, PC; unk_1A3B90
6306C:  ADD             R0, SP, #0x2C0+var_290
6306E:  UXTB.W          R2, R10
63072:  BL              sub_86C1C
63076:  STRB.W          R9, [SP,#0x2C0+var_60]
6307A:  ADD             R0, SP, #0x2C0+var_290
6307C:  ADD             R1, SP, #0x2C0+var_60
6307E:  MOVS            R2, #8
63080:  MOVS            R3, #1
63082:  BL              sub_86D52
63086:  ADD             R0, SP, #0x2C0+var_290
63088:  UXTB.W          R2, R9
6308C:  MOV             R1, R5
6308E:  BL              sub_86C1C
63092:  LDR             R0, =(off_114B1C - 0x63098)
63094:  ADD             R0, PC; off_114B1C
63096:  LDR             R0, [R0]; byte_1A4484
63098:  LDRB            R0, [R0]
6309A:  LDR             R4, =(off_114B40 - 0x630A0)
6309C:  ADD             R4, PC; off_114B40
6309E:  CBZ             R0, loc_630AA
630A0:  LDR             R0, [R4]; dword_116E1C
630A2:  ADD             R1, SP, #0x2C0+var_290
630A4:  LDR             R0, [R0]
630A6:  BL              sub_7EFE8
630AA:  LDR             R0, [SP,#0x2C0+var_29C]
630AC:  MOVS            R3, #0
630AE:  LDR.W           R0, [R0,#0x210]
630B2:  LDR             R1, [R0]
630B4:  LDR             R6, [R1,#0x6C]
630B6:  LDR             R1, [R4]; dword_116E1C
630B8:  MOV.W           R12, #0xFFFFFFFF
630BC:  MOVS            R4, #8
630BE:  ADD             R2, SP, #0x2C0+var_290
630C0:  MOVW            R5, #0xFFFF
630C4:  STRD.W          R4, R3, [SP,#0x2C0+var_2C0]
630C8:  STRD.W          R3, R12, [SP,#0x2C0+var_2B8]
630CC:  STR             R3, [SP,#0x2C0+var_2A8]
630CE:  MOVS            R3, #1
630D0:  STRD.W          R5, R5, [SP,#0x2C0+var_2B0]
630D4:  BLX             R6
630D6:  ADD             R0, SP, #0x2C0+var_290
630D8:  BL              sub_86BF8
630DC:  ADD             R0, SP, #0x2C0+var_178
630DE:  BL              sub_86BF8
630E2:  LDR             R0, [SP,#0x2C0+var_34]
630E4:  LDR             R1, =(__stack_chk_guard_ptr - 0x630EA)
630E6:  ADD             R1, PC; __stack_chk_guard_ptr
630E8:  LDR             R1, [R1]; __stack_chk_guard
630EA:  LDR             R1, [R1]
630EC:  CMP             R1, R0
630EE:  ITTTT EQ
630F0:  ADDEQ.W         SP, SP, #0x290
630F4:  VPOPEQ          {D8-D9}
630F8:  ADDEQ           SP, SP, #4
630FA:  POPEQ.W         {R8-R11}
630FE:  IT EQ
63100:  POPEQ           {R4-R7,PC}
63102:  BLX             __stack_chk_fail
63106:  LDR             R0, =(byte_1A3B5C - 0x6310C)
63108:  ADD             R0, PC; byte_1A3B5C ; __guard *
6310A:  BLX             j___cxa_guard_acquire
6310E:  CMP             R0, #0
63110:  BEQ.W           loc_62CD0
63114:  LDR             R0, =(unk_1A3B30 - 0x6311A)
63116:  ADD             R0, PC; unk_1A3B30
63118:  ADD             R1, SP, #0x2C0+var_178
6311A:  BL              sub_66C94
6311E:  LDR             R0, =(sub_66D6E+1 - 0x63128)
63120:  LDR             R1, =(unk_1A3B30 - 0x6312A)
63122:  LDR             R2, =(off_110560 - 0x6312C)
63124:  ADD             R0, PC; sub_66D6E ; lpfunc
63126:  ADD             R1, PC; unk_1A3B30 ; obj
63128:  ADD             R2, PC; off_110560 ; lpdso_handle
6312A:  BLX             __cxa_atexit
6312E:  LDR             R0, =(byte_1A3B5C - 0x63134)
63130:  ADD             R0, PC; byte_1A3B5C ; __guard *
63132:  BLX             j___cxa_guard_release
63136:  B               loc_62CD0
63138:  LDR             R0, =(byte_1A3B8C - 0x6313E)
6313A:  ADD             R0, PC; byte_1A3B8C ; __guard *
6313C:  BLX             j___cxa_guard_acquire
63140:  CMP             R0, #0
63142:  BEQ.W           loc_62E2A
63146:  LDR             R0, =(unk_1A3B60 - 0x6314C)
63148:  ADD             R0, PC; unk_1A3B60
6314A:  ADD             R1, SP, #0x2C0+var_290
6314C:  BL              sub_66D84
63150:  LDR             R0, =(sub_66E66+1 - 0x6315A)
63152:  LDR             R1, =(unk_1A3B60 - 0x6315C)
63154:  LDR             R2, =(off_110560 - 0x6315E)
63156:  ADD             R0, PC; sub_66E66 ; lpfunc
63158:  ADD             R1, PC; unk_1A3B60 ; obj
6315A:  ADD             R2, PC; off_110560 ; lpdso_handle
6315C:  BLX             __cxa_atexit
63160:  LDR             R0, =(byte_1A3B8C - 0x63166)
63162:  ADD             R0, PC; byte_1A3B8C ; __guard *
63164:  BLX             j___cxa_guard_release
63168:  LDR             R5, [SP,#0x2C0+var_2A0]
6316A:  B               loc_62E2A
6316C:  DCD aSampOrig - 0x62D90
63170:  DCD unk_1A3B30 - 0x62D92
63174:  DCD aConnectedJoini - 0x62DDA
63178:  DCD unk_50A20 - 0x62DE8
6317C:  DCD off_114B38 - 0x62DEE
63180:  DCD a037 - 0x62E06
63184:  DCD byte_1A3B8C - 0x62E0E
63188:  DCD a037R4 - 0x62E16
6318C:  LDR             R0, =(byte_1A3BBC - 0x63192)
6318E:  ADD             R0, PC; byte_1A3BBC ; __guard *
63190:  BLX             j___cxa_guard_acquire
63194:  CMP             R0, #0
63196:  BEQ.W           loc_62FAC
6319A:  LDR             R0, =(unk_1A3B90 - 0x631A0)
6319C:  ADD             R0, PC; unk_1A3B90
6319E:  ADD             R1, SP, #0x2C0+var_60
631A0:  BL              sub_66D84
631A4:  LDR             R0, =(sub_66E66+1 - 0x631AE)
631A6:  LDR             R1, =(unk_1A3B90 - 0x631B0)
631A8:  LDR             R2, =(off_110560 - 0x631B2)
631AA:  ADD             R0, PC; sub_66E66 ; lpfunc
631AC:  ADD             R1, PC; unk_1A3B90 ; obj
631AE:  ADD             R2, PC; off_110560 ; lpdso_handle
631B0:  BLX             __cxa_atexit
631B4:  LDR             R0, =(byte_1A3BBC - 0x631BA)
631B6:  ADD             R0, PC; byte_1A3BBC ; __guard *
631B8:  BLX             j___cxa_guard_release
631BC:  LDR             R5, [SP,#0x2C0+var_2A0]
631BE:  B               loc_62FAC
