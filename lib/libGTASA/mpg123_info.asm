; =========================================================
; Game Engine Function: mpg123_info
; Address            : 0x225F68 - 0x22609A
; =========================================================

225F68:  PUSH            {R4-R7,LR}
225F6A:  ADD             R7, SP, #0xC
225F6C:  PUSH.W          {R11}
225F70:  MOV             R4, R0
225F72:  MOV             R5, R1
225F74:  CBZ             R4, loc_225F8C
225F76:  CBZ             R5, loc_225F84
225F78:  MOVW            R0, #0x92CC
225F7C:  LDR             R0, [R4,R0]
225F7E:  CBZ             R0, loc_225F96
225F80:  MOVS            R0, #2
225F82:  B               loc_225FA2
225F84:  MOVW            R0, #0xB468
225F88:  MOVS            R1, #0x11
225F8A:  STR             R1, [R4,R0]
225F8C:  MOV.W           R0, #0xFFFFFFFF
225F90:  POP.W           {R11}
225F94:  POP             {R4-R7,PC}
225F96:  MOVW            R0, #0x92C8
225F9A:  LDR             R0, [R4,R0]
225F9C:  CMP             R0, #0
225F9E:  IT NE
225FA0:  MOVNE           R0, #1
225FA2:  STR             R0, [R5]
225FA4:  MOVW            R6, #0x92D8
225FA8:  LDR             R0, [R4,R6]
225FAA:  LDR             R1, =(unk_5F11C0 - 0x225FB8)
225FAC:  STR             R0, [R5,#4]
225FAE:  MOVW            R0, #0x92E8
225FB2:  LDR             R0, [R4,R0]
225FB4:  ADD             R1, PC; unk_5F11C0
225FB6:  LDR.W           R0, [R1,R0,LSL#2]
225FBA:  STR             R0, [R5,#8]
225FBC:  MOVW            R0, #0x92F4
225FC0:  LDR             R0, [R4,R0]
225FC2:  CMP             R0, #3; switch 4 cases
225FC4:  BHI             def_225FC6; jumptable 00225FC6 default case
225FC6:  TBB.W           [PC,R0]; switch jump
225FCA:  DCB 2; jump table for switch statement
225FCB:  DCB 5
225FCC:  DCB 8
225FCD:  DCB 0xB
225FCE:  MOVS            R0, #0; jumptable 00225FC6 case 0
225FD0:  STR             R0, [R5,#0xC]
225FD2:  B               loc_225FFA
225FD4:  MOVS            R0, #1; jumptable 00225FC6 case 1
225FD6:  STR             R0, [R5,#0xC]
225FD8:  B               loc_225FFA
225FDA:  MOVS            R0, #2; jumptable 00225FC6 case 2
225FDC:  STR             R0, [R5,#0xC]
225FDE:  B               loc_225FFA
225FE0:  MOVS            R0, #3; jumptable 00225FC6 case 3
225FE2:  STR             R0, [R5,#0xC]
225FE4:  B               loc_225FFA
225FE6:  LDR             R0, =(off_677664 - 0x225FF2); jumptable 00225FC6 default case
225FE8:  MOVW            R2, #0x24F
225FEC:  LDR             R1, =(aCProjectsOswra_4 - 0x225FF4); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
225FEE:  ADD             R0, PC; off_677664
225FF0:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
225FF2:  LDR             R0, [R0]
225FF4:  LDR             R0, [R0]; stream
225FF6:  BLX             fprintf
225FFA:  MOVW            R0, #0x92F8
225FFE:  MOVS            R1, #0
226000:  LDR             R0, [R4,R0]
226002:  MOVW            R2, #0x92F0
226006:  STR             R0, [R5,#0x10]
226008:  MOVW            R0, #0x9308
22600C:  MOVW            R3, #0x92E4
226010:  LDR             R0, [R4,R0]
226012:  STR             R1, [R5,#0x18]
226014:  ADDS            R0, #4
226016:  STR             R0, [R5,#0x14]
226018:  MOVW            R0, #0x92E0
22601C:  MOVW            R1, #0x92FC
226020:  LDR             R0, [R4,R0]
226022:  CMP             R0, #0
226024:  IT NE
226026:  MOVNE           R0, #1
226028:  STR             R0, [R5,#0x18]
22602A:  LDR             R1, [R4,R1]
22602C:  CMP             R1, #0
22602E:  ADD.W           R1, R4, R6
226032:  ITT NE
226034:  ORRNE.W         R0, R0, #2
226038:  STRNE           R0, [R5,#0x18]
22603A:  LDR             R2, [R4,R2]
22603C:  CMP             R2, #0
22603E:  MOV.W           R2, #0x9300
226042:  ITT NE
226044:  ORRNE.W         R0, R0, #4
226048:  STRNE           R0, [R5,#0x18]
22604A:  LDR             R2, [R4,R2]
22604C:  CMP             R2, #0
22604E:  LDR             R2, =(unk_5F1040 - 0x226060)
226050:  ITT NE
226052:  ORRNE.W         R0, R0, #8
226056:  STRNE           R0, [R5,#0x18]
226058:  MOVW            R0, #0x9304
22605C:  ADD             R2, PC; unk_5F1040
22605E:  LDR             R0, [R4,R0]
226060:  STR             R0, [R5,#0x1C]
226062:  MOVW            R0, #0x92C8
226066:  LDR             R1, [R1]
226068:  LDR             R0, [R4,R0]
22606A:  LDR             R3, [R4,R3]
22606C:  ADD.W           R0, R0, R0,LSL#1
226070:  ADD.W           R0, R2, R0,LSL#6
226074:  ADD.W           R0, R0, R1,LSL#6
226078:  ADD.W           R0, R0, R3,LSL#2
22607C:  LDR.W           R0, [R0,#-0x40]
226080:  STR             R0, [R5,#0x20]
226082:  MOVW            R0, #0xB29C
226086:  LDR             R0, [R4,R0]
226088:  STR             R0, [R5,#0x24]
22608A:  MOVW            R0, #0x9310
22608E:  LDR             R0, [R4,R0]
226090:  STR             R0, [R5,#0x28]
226092:  MOVS            R0, #0
226094:  POP.W           {R11}
226098:  POP             {R4-R7,PC}
