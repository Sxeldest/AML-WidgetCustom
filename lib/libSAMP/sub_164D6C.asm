; =========================================================
; Game Engine Function: sub_164D6C
; Address            : 0x164D6C - 0x164DB0
; =========================================================

164D6C:  PUSH            {R4,R6,R7,LR}
164D6E:  ADD             R7, SP, #8
164D70:  LDR             R4, =(unk_BAD58 - 0x164D76)
164D72:  ADD             R4, PC; unk_BAD58
164D74:  ADDS            R2, R1, #1
164D76:  MOV             R3, R0
164D78:  LDRB.W          R0, [R2,#-1]
164D7C:  CBZ             R0, loc_164DAA
164D7E:  MOV             R1, R2
164D80:  LSLS            R2, R0, #0x18
164D82:  BPL             loc_164DA2
164D84:  AND.W           R0, R0, #0x7F
164D88:  ADDS            R2, R1, #1
164D8A:  CMP             R0, #0x18
164D8C:  BEQ             loc_164D78
164D8E:  LDR.W           R2, [R4,R0,LSL#2]
164D92:  MOV             R0, R3
164D94:  STRH.W          R2, [R0],#2
164D98:  LSRS            R2, R2, #0x10
164D9A:  ITT NE
164D9C:  STRBNE          R2, [R3,#2]
164D9E:  ADDNE           R0, R3, #3
164DA0:  B               loc_164D74
164DA2:  STRB.W          R0, [R3],#1
164DA6:  MOV             R0, R3
164DA8:  B               loc_164D74
164DAA:  MOVS            R0, #0
164DAC:  STRB            R0, [R3]
164DAE:  POP             {R4,R6,R7,PC}
