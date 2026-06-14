; =========================================================
; Game Engine Function: sub_148B60
; Address            : 0x148B60 - 0x148BAC
; =========================================================

148B60:  PUSH            {R4-R7,LR}
148B62:  ADD             R7, SP, #0xC
148B64:  PUSH.W          {R11}
148B68:  MOV             R4, R0
148B6A:  MOVS            R0, #0
148B6C:  CMP.W           R0, R1,LSR#12
148B70:  BNE             loc_148BA6
148B72:  LDR             R0, [R4]
148B74:  CMP             R0, #1
148B76:  BLT             loc_148BA6
148B78:  ADD.W           R6, R4, R1,LSL#2
148B7C:  MOV             R5, R6
148B7E:  LDR.W           R1, [R5,#4]!
148B82:  CBZ             R1, loc_148BA6
148B84:  LDR             R0, =(unk_B953C - 0x148B8A)
148B86:  ADD             R0, PC; unk_B953C
148B88:  BL              sub_107188
148B8C:  MOVS            R1, #0
148B8E:  MOVW            R0, #0x8004
148B92:  STR             R1, [R6,R0]
148B94:  MOVW            R0, #0x4004
148B98:  MOV.W           R2, #0xFFFFFFFF
148B9C:  STR             R2, [R6,R0]
148B9E:  STR             R1, [R5]
148BA0:  LDR             R0, [R4]
148BA2:  SUBS            R0, #1
148BA4:  STR             R0, [R4]
148BA6:  POP.W           {R11}
148BAA:  POP             {R4-R7,PC}
