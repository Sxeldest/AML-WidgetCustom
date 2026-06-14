; =========================================================
; Game Engine Function: sub_184D2E
; Address            : 0x184D2E - 0x184D9C
; =========================================================

184D2E:  PUSH            {R4-R7,LR}
184D30:  ADD             R7, SP, #0xC
184D32:  PUSH.W          {R8-R10}
184D36:  SUB             SP, SP, #0x20
184D38:  VLD1.32         {D16-D17}, [R0]
184D3C:  MOV             R9, SP
184D3E:  MOV             R0, R9
184D40:  VMOV.I32        Q9, #0
184D44:  VST1.64         {D16-D17}, [R0]!
184D48:  MOV             R8, R1
184D4A:  MOV             R4, R2
184D4C:  MOV.W           R10, #0
184D50:  VST1.64         {D18-D19}, [R0]
184D54:  MOV             R0, R2
184D56:  MOVS            R1, #0
184D58:  VST1.32         {D18-D19}, [R0]!
184D5C:  VST1.32         {D18-D19}, [R0]
184D60:  LDR.W           R5, [R8,R10,LSL#2]
184D64:  MOVS            R6, #0x20 ; ' '
184D66:  CBZ             R5, loc_184D86
184D68:  LSLS            R0, R5, #0x1F
184D6A:  BEQ             loc_184D7E
184D6C:  CBZ             R1, loc_184D74
184D6E:  MOV             R0, R9; int
184D70:  BL              sub_1850D2
184D74:  MOV             R0, R4
184D76:  MOV             R1, R9
184D78:  BL              sub_185136
184D7C:  MOVS            R1, #0
184D7E:  SUBS            R6, #1
184D80:  ADDS            R1, #1
184D82:  LSRS            R5, R5, #1
184D84:  BNE             loc_184D68
184D86:  ADD.W           R10, R10, #1
184D8A:  UXTAH.W         R1, R1, R6
184D8E:  CMP.W           R10, #4
184D92:  BNE             loc_184D60
184D94:  ADD             SP, SP, #0x20 ; ' '
184D96:  POP.W           {R8-R10}
184D9A:  POP             {R4-R7,PC}
