; =========================================================
; Game Engine Function: sub_9AD48
; Address            : 0x9AD48 - 0x9ADAA
; =========================================================

9AD48:  PUSH            {R4-R7,LR}
9AD4A:  ADD             R7, SP, #0xC
9AD4C:  PUSH.W          {R11}
9AD50:  MOV             R5, R0
9AD52:  LDR             R0, =(dword_1ACF68 - 0x9AD5E)
9AD54:  MOV             R4, R1
9AD56:  LDR.W           R1, [R1,#0x27C]
9AD5A:  ADD             R0, PC; dword_1ACF68
9AD5C:  LDR             R0, [R0]
9AD5E:  LDR.W           R2, [R0,#0x368]
9AD62:  ADDS            R2, #1
9AD64:  STR.W           R2, [R0,#0x368]
9AD68:  MOV             R0, R5
9AD6A:  BL              sub_95344
9AD6E:  LDR.W           R0, [R4,#0x14C]
9AD72:  CMP             R0, #1
9AD74:  BLT             loc_9ADA4
9AD76:  MOVS            R6, #0
9AD78:  B               loc_9AD80
9AD7A:  ADDS            R6, #1
9AD7C:  CMP             R6, R0
9AD7E:  BGE             loc_9ADA4
9AD80:  LDR.W           R1, [R4,#0x154]
9AD84:  LDR.W           R1, [R1,R6,LSL#2]
9AD88:  LDRB.W          R2, [R1,#0x7A]
9AD8C:  CMP             R2, #0
9AD8E:  BEQ             loc_9AD7A
9AD90:  LDRB.W          R2, [R1,#0x81]
9AD94:  CMP             R2, #0
9AD96:  BNE             loc_9AD7A
9AD98:  MOV             R0, R5
9AD9A:  BL              sub_9AD48
9AD9E:  LDR.W           R0, [R4,#0x14C]
9ADA2:  B               loc_9AD7A
9ADA4:  POP.W           {R11}
9ADA8:  POP             {R4-R7,PC}
