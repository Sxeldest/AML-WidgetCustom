; =========================================================
; Game Engine Function: sub_95C50
; Address            : 0x95C50 - 0x95E00
; =========================================================

95C50:  PUSH            {R4-R7,LR}
95C52:  ADD             R7, SP, #0xC
95C54:  PUSH.W          {R8-R11}
95C58:  SUB             SP, SP, #4
95C5A:  LDR             R4, =(dword_1ACF68 - 0x95C68)
95C5C:  MOV             R9, R0
95C5E:  MOV             R8, R1
95C60:  MOVW            R0, #0x1634
95C64:  ADD             R4, PC; dword_1ACF68
95C66:  MOV             R10, R2
95C68:  LDR             R5, [R4]
95C6A:  ADDS            R1, R5, R0
95C6C:  MOVS            R0, #3
95C6E:  BL              sub_95E08
95C72:  MOVW            R6, #0x1558
95C76:  MOVS            R0, #6
95C78:  LDR             R1, [R5,R6]
95C7A:  BL              sub_95F20
95C7E:  ADDS            R0, R5, R6
95C80:  LDR             R1, [R0,#4]
95C82:  MOVS            R0, #7
95C84:  BL              sub_95F20
95C88:  MOVW            R0, #0x1550
95C8C:  ADDS            R1, R5, R0
95C8E:  MOVS            R0, #1
95C90:  BL              sub_96058
95C94:  ORR.W           R0, R10, #0x10000
95C98:  MOV             R1, R9
95C9A:  ORR.W           R0, R0, #4
95C9E:  STR             R0, [SP,#0x20+var_20]
95CA0:  MOVS            R0, #0
95CA2:  MOV             R2, R8
95CA4:  MOVS            R3, #1
95CA6:  BL              sub_95710
95CAA:  LDR.W           R11, [R4]
95CAE:  MOVW            R1, #0x1A84
95CB2:  MOV             LR, R0
95CB4:  LDR.W           R8, [R11,R1]
95CB8:  MOVW            R1, #0x1A8C
95CBC:  LDR.W           R3, [R11,R1]
95CC0:  SUB.W           R6, R8, #1
95CC4:  ADD.W           R4, R6, R6,LSL#1
95CC8:  LDR.W           R5, [R3,R4,LSL#2]
95CCC:  LDR             R2, =(unk_536AC - 0x95CD2)
95CCE:  ADD             R2, PC; unk_536AC
95CD0:  ADD.W           R1, R5, R5,LSL#1
95CD4:  MOV             R9, R2
95CD6:  ADD.W           R1, R2, R1,LSL#2
95CDA:  MOVW            R2, #0x1518
95CDE:  ADD.W           R10, R11, R2
95CE2:  LDR             R1, [R1,#8]
95CE4:  ADD.W           R12, R10, R1
95CE8:  MOV             R1, #0x1F9BCD
95CF0:  LSRS            R1, R5
95CF2:  LSLS            R1, R1, #0x1F
95CF4:  MOVW            R1, #0x1A78
95CF8:  ADD.W           R2, R11, R1
95CFC:  MOV             R1, #0x606432
95D04:  BNE             loc_95D1C
95D06:  LSRS            R1, R5
95D08:  LSLS            R1, R1, #0x1F
95D0A:  BEQ             loc_95D28
95D0C:  ADD.W           R5, R3, R4,LSL#2
95D10:  LDR             R1, [R5,#4]
95D12:  STR.W           R1, [R12],#4
95D16:  ADD.W           R1, R5, #8
95D1A:  B               loc_95D22
95D1C:  ADD.W           R1, R3, R4,LSL#2
95D20:  ADDS            R1, #4
95D22:  LDR             R1, [R1]
95D24:  STR.W           R1, [R12]
95D28:  SUB.W           R4, R8, #2
95D2C:  STR             R6, [R2,#0xC]
95D2E:  MOV             R12, R9
95D30:  ADD.W           R0, R4, R4,LSL#1
95D34:  LDR.W           R5, [R3,R0,LSL#2]
95D38:  ADD.W           R1, R5, R5,LSL#1
95D3C:  ADD.W           R1, R9, R1,LSL#2
95D40:  LDR             R1, [R1,#8]
95D42:  ADD.W           R6, R10, R1
95D46:  MOV             R1, #0x1F9BCD
95D4E:  LSRS            R1, R5
95D50:  LSLS            R1, R1, #0x1F
95D52:  BNE             loc_95D70
95D54:  MOV             R1, #0x606432
95D5C:  LSRS            R1, R5
95D5E:  LSLS            R1, R1, #0x1F
95D60:  BEQ             loc_95D7A
95D62:  ADD.W           R0, R3, R0,LSL#2
95D66:  LDR             R1, [R0,#4]
95D68:  ADDS            R0, #8
95D6A:  STR.W           R1, [R6],#4
95D6E:  B               loc_95D76
95D70:  ADD.W           R0, R3, R0,LSL#2
95D74:  ADDS            R0, #4
95D76:  LDR             R0, [R0]
95D78:  STR             R0, [R6]
95D7A:  SUB.W           R6, R8, #3
95D7E:  STR             R4, [R2,#0xC]
95D80:  MOVW            R4, #0x9BCD
95D84:  ADD.W           R5, R6, R6,LSL#1
95D88:  MOVT            R4, #0x1F
95D8C:  LDR.W           R1, [R3,R5,LSL#2]
95D90:  ADD.W           R0, R1, R1,LSL#1
95D94:  LSRS            R4, R1
95D96:  LSLS            R4, R4, #0x1F
95D98:  ADD.W           R0, R9, R0,LSL#2
95D9C:  LDR             R0, [R0,#8]
95D9E:  ADD             R0, R10
95DA0:  BNE             loc_95DC0
95DA2:  MOV             R4, #0x606432
95DAA:  LSR.W           R1, R4, R1
95DAE:  LSLS            R1, R1, #0x1F
95DB0:  BEQ             loc_95DCA
95DB2:  ADD.W           R1, R3, R5,LSL#2
95DB6:  LDR             R3, [R1,#4]
95DB8:  ADDS            R1, #8
95DBA:  STR.W           R3, [R0],#4
95DBE:  B               loc_95DC6
95DC0:  ADD.W           R1, R3, R5,LSL#2
95DC4:  ADDS            R1, #4
95DC6:  LDR             R1, [R1]
95DC8:  STR             R1, [R0]
95DCA:  LDR             R0, [R2]
95DCC:  LDR             R1, [R2,#8]
95DCE:  STR             R6, [R2,#0xC]
95DD0:  ADD.W           R0, R0, R0,LSL#2
95DD4:  ADD.W           R0, R1, R0,LSL#2
95DD8:  LDR.W           R1, [R0,#-0x14]
95DDC:  SUBS            R0, #0x10
95DDE:  VLD1.32         {D16-D17}, [R0]
95DE2:  ADD.W           R0, R11, R1,LSL#4
95DE6:  MOVW            R1, #0x15C4
95DEA:  ADD             R0, R1
95DEC:  VST1.32         {D16-D17}, [R0]
95DF0:  LDR             R0, [R2]
95DF2:  SUBS            R0, #1
95DF4:  STR             R0, [R2]
95DF6:  MOV             R0, LR
95DF8:  ADD             SP, SP, #4
95DFA:  POP.W           {R8-R11}
95DFE:  POP             {R4-R7,PC}
