; =========================================================
; Game Engine Function: sub_999D8
; Address            : 0x999D8 - 0x99A96
; =========================================================

999D8:  PUSH            {R4-R7,LR}
999DA:  ADD             R7, SP, #0xC
999DC:  PUSH.W          {R8,R9,R11}
999E0:  MOV             R4, R0
999E2:  LDR             R0, =(dword_1ACF68 - 0x999EE)
999E4:  MOVW            R8, #0x19AC
999E8:  CMP             R4, #0
999EA:  ADD             R0, PC; dword_1ACF68
999EC:  MOV             R9, R0
999EE:  LDR             R0, [R0]
999F0:  LDR.W           R6, [R0,R8]
999F4:  MOV.W           R0, #1
999F8:  STRB.W          R0, [R6,#0x7C]
999FC:  MOV             R0, #0x11223347
99A04:  IT EQ
99A06:  ADDEQ           R0, R1
99A08:  BL              sub_97C90
99A0C:  LDR.W           R0, [R6,#0x1C4]
99A10:  CMP             R4, #0
99A12:  LDR.W           R2, [R6,#0x1CC]
99A16:  LDR             R1, =(aColumns - 0x99A20); "columns" ...
99A18:  ADD.W           R0, R2, R0,LSL#2
99A1C:  ADD             R1, PC; "columns"
99A1E:  LDR.W           R0, [R0,#-4]
99A22:  IT NE
99A24:  MOVNE           R1, R4
99A26:  LDRB            R3, [R1]
99A28:  MVNS            R0, R0
99A2A:  CBZ             R3, loc_99A60
99A2C:  LDR             R4, =(unk_52D88 - 0x99A36)
99A2E:  ADDS            R2, R1, #1
99A30:  MOV             R1, R0
99A32:  ADD             R4, PC; unk_52D88
99A34:  B               loc_99A46
99A36:  UXTB            R5, R1
99A38:  EORS            R6, R5
99A3A:  ADDS            R2, #1
99A3C:  LDR.W           R6, [R4,R6,LSL#2]
99A40:  EOR.W           R1, R6, R1,LSR#8
99A44:  CBZ             R3, loc_99A62
99A46:  MOV             R6, R3
99A48:  LDRB            R3, [R2]
99A4A:  CMP             R6, #0x23 ; '#'
99A4C:  IT EQ
99A4E:  CMPEQ           R3, #0x23 ; '#'
99A50:  BNE             loc_99A36
99A52:  LDRB            R3, [R2,#1]
99A54:  CMP             R3, #0x23 ; '#'
99A56:  MOV.W           R3, #0x23 ; '#'
99A5A:  IT EQ
99A5C:  MOVEQ           R1, R0
99A5E:  B               loc_99A36
99A60:  MOV             R1, R0
99A62:  LDR.W           R0, [R9]
99A66:  MOVW            R3, #0x19D0
99A6A:  ADD.W           R2, R0, R8
99A6E:  LDR             R3, [R0,R3]
99A70:  MVNS            R0, R1
99A72:  CMP             R3, R0
99A74:  IT EQ
99A76:  STREQ           R0, [R2,#0x28]
99A78:  LDR             R1, [R2,#0x50]
99A7A:  CMP             R1, R0
99A7C:  ITT EQ
99A7E:  MOVEQ           R1, #1
99A80:  STRBEQ.W        R1, [R2,#0x54]
99A84:  LDR             R1, [R2]
99A86:  LDR.W           R2, [R1,#0x1C4]
99A8A:  SUBS            R2, #1
99A8C:  STR.W           R2, [R1,#0x1C4]
99A90:  POP.W           {R8,R9,R11}
99A94:  POP             {R4-R7,PC}
