; =========================================================
; Game Engine Function: sub_87F98
; Address            : 0x87F98 - 0x8800C
; =========================================================

87F98:  PUSH            {R4,R6,R7,LR}
87F9A:  ADD             R7, SP, #8
87F9C:  MOV.W           R12, #0
87FA0:  CMP             R12, R2
87FA2:  MOV.W           R3, #0
87FA6:  MOV             R4, R2
87FA8:  IT CS
87FAA:  MOVCS           R3, #1
87FAC:  CMP             R2, #0
87FAE:  IT NE
87FB0:  MOVNE           R4, #1
87FB2:  AND.W           LR, R4, R3
87FB6:  ADDS            R4, R1, #1
87FB8:  LDRB.W          R3, [R4,#-1]
87FBC:  MOV             R1, R4
87FBE:  CLZ.W           R4, R3
87FC2:  LSRS            R4, R4, #5
87FC4:  ORRS.W          R4, R4, LR
87FC8:  BNE             loc_88006
87FCA:  LSLS            R4, R3, #0x18
87FCC:  BPL             loc_87FF4
87FCE:  AND.W           R3, R3, #0x7F
87FD2:  ADDS            R4, R1, #1
87FD4:  CMP             R3, #0x18
87FD6:  BEQ             loc_87FB8
87FD8:  LDR             R4, =(unk_52B88 - 0x87FDE)
87FDA:  ADD             R4, PC; unk_52B88
87FDC:  LDR.W           R4, [R4,R3,LSL#2]
87FE0:  MOV             R3, R0
87FE2:  STRH.W          R4, [R3],#2
87FE6:  LSRS            R4, R4, #0x10
87FE8:  BEQ             loc_87FFE
87FEA:  STRB            R4, [R0,#2]
87FEC:  ADDS            R0, #3
87FEE:  ADD.W           R12, R12, #1
87FF2:  B               loc_87FA0
87FF4:  STRB.W          R3, [R0],#1
87FF8:  ADD.W           R12, R12, #1
87FFC:  B               loc_87FA0
87FFE:  MOV             R0, R3
88000:  ADD.W           R12, R12, #1
88004:  B               loc_87FA0
88006:  MOVS            R1, #0
88008:  STRB            R1, [R0]
8800A:  POP             {R4,R6,R7,PC}
