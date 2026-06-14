; =========================================================
; Game Engine Function: sub_186D6A
; Address            : 0x186D6A - 0x186DDA
; =========================================================

186D6A:  PUSH            {R4-R7,LR}
186D6C:  ADD             R7, SP, #0xC
186D6E:  PUSH.W          {R8-R10}
186D72:  SUB             SP, SP, #0x20
186D74:  VMOV.I32        Q8, #0
186D78:  MOV             R5, R0
186D7A:  VLD1.32         {D18-D19}, [R0]
186D7E:  MOV             R9, SP
186D80:  MOV             R8, R1
186D82:  MOV.W           R10, #0
186D86:  VST1.32         {D16-D17}, [R0]!
186D8A:  MOVS            R1, #0
186D8C:  VLD1.32         {D20-D21}, [R0]
186D90:  VST1.32         {D16-D17}, [R0]
186D94:  MOV             R0, R9
186D96:  VST1.64         {D18-D19}, [R0]!
186D9A:  VST1.64         {D20-D21}, [R0]
186D9E:  LDR.W           R4, [R8,R10,LSL#2]
186DA2:  MOVS            R6, #0x20 ; ' '
186DA4:  CBZ             R4, loc_186DC4
186DA6:  LSLS            R0, R4, #0x1F
186DA8:  BEQ             loc_186DBC
186DAA:  CBZ             R1, loc_186DB2
186DAC:  MOV             R0, R9; int
186DAE:  BL              sub_1850D2
186DB2:  MOV             R0, R5
186DB4:  MOV             R1, R9
186DB6:  BL              sub_185136
186DBA:  MOVS            R1, #0
186DBC:  SUBS            R6, #1
186DBE:  ADDS            R1, #1
186DC0:  LSRS            R4, R4, #1
186DC2:  BNE             loc_186DA6
186DC4:  ADD.W           R10, R10, #1
186DC8:  UXTAH.W         R1, R1, R6
186DCC:  CMP.W           R10, #8
186DD0:  BNE             loc_186D9E
186DD2:  ADD             SP, SP, #0x20 ; ' '
186DD4:  POP.W           {R8-R10}
186DD8:  POP             {R4-R7,PC}
