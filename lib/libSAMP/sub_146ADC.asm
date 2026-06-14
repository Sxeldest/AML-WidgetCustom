; =========================================================
; Game Engine Function: sub_146ADC
; Address            : 0x146ADC - 0x146B7C
; =========================================================

146ADC:  PUSH            {R4-R7,LR}
146ADE:  ADD             R7, SP, #0xC
146AE0:  PUSH.W          {R8-R10}
146AE4:  SUB             SP, SP, #0x120
146AE6:  LDRD.W          R1, R4, [R0]; src
146AEA:  MOVS            R2, #1
146AEC:  ASRS            R0, R4, #0x1F
146AEE:  MOVS            R3, #0
146AF0:  ADD.W           R0, R4, R0,LSR#29
146AF4:  ADD.W           R2, R2, R0,ASR#3; size
146AF8:  ADD             R0, SP, #0x138+var_12C; int
146AFA:  BL              sub_17D4F2
146AFE:  CMP             R4, #0x50 ; 'P'
146B00:  BLT             loc_146B6E
146B02:  LDR             R0, =(off_23496C - 0x146B12)
146B04:  MOV             R1, #0x66666667
146B0C:  ADD             R5, SP, #0x138+var_12C
146B0E:  ADD             R0, PC; off_23496C
146B10:  SMMUL.W         R1, R4, R1
146B14:  ADD.W           R8, SP, #0x138+var_12E
146B18:  LDR             R0, [R0]; dword_23DEF4
146B1A:  ADD.W           R9, SP, #0x138+var_134
146B1E:  MOV             R10, SP
146B20:  LDR             R0, [R0]
146B22:  LDR.W           R0, [R0,#0x3B0]
146B26:  LDR             R4, [R0]
146B28:  ASRS            R0, R1, #5
146B2A:  ADD.W           R6, R0, R1,LSR#31
146B2E:  MOV             R0, R5; int
146B30:  MOV             R1, R8; int
146B32:  MOVS            R2, #0x10
146B34:  MOVS            R3, #1
146B36:  BL              sub_17D786
146B3A:  MOV             R0, R5; int
146B3C:  MOV             R1, R9; int
146B3E:  MOVS            R2, #0x20 ; ' '
146B40:  MOVS            R3, #1
146B42:  BL              sub_17D786
146B46:  MOV             R0, R5; int
146B48:  MOV             R1, R10; int
146B4A:  MOVS            R2, #0x20 ; ' '
146B4C:  MOVS            R3, #1
146B4E:  BL              sub_17D786
146B52:  LDRH.W          R1, [SP,#0x138+var_12E]
146B56:  LDR             R2, [SP,#0x138+var_134]
146B58:  MOV             R0, R4
146B5A:  BL              sub_148F20
146B5E:  LDRH.W          R1, [SP,#0x138+var_12E]
146B62:  LDR             R2, [SP,#0x138+var_138]
146B64:  MOV             R0, R4
146B66:  BL              sub_148F4A
146B6A:  SUBS            R6, #1
146B6C:  BNE             loc_146B2E
146B6E:  ADD             R0, SP, #0x138+var_12C
146B70:  BL              sub_17D542
146B74:  ADD             SP, SP, #0x120
146B76:  POP.W           {R8-R10}
146B7A:  POP             {R4-R7,PC}
