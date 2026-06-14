; =========================================================
; Game Engine Function: sub_E5108
; Address            : 0xE5108 - 0xE514C
; =========================================================

E5108:  PUSH            {R4-R7,LR}
E510A:  ADD             R7, SP, #0xC
E510C:  PUSH.W          {R8}
E5110:  LDR             R5, [R0,#0x40]
E5112:  CBZ             R5, loc_E5142
E5114:  MOV             R4, R0
E5116:  LDR             R0, [R0]
E5118:  LDR             R1, [R0,#0x18]
E511A:  MOV             R0, R4
E511C:  BLX             R1
E511E:  MOV             R8, R0
E5120:  MOV             R0, R5; stream
E5122:  BLX             fclose
E5126:  MOV             R6, R0
E5128:  LDR             R0, [R4]
E512A:  MOVS            R5, #0
E512C:  MOVS            R1, #0
E512E:  STR             R5, [R4,#0x40]
E5130:  MOVS            R2, #0
E5132:  LDR             R3, [R0,#0xC]
E5134:  MOV             R0, R4
E5136:  BLX             R3
E5138:  ORRS.W          R0, R6, R8
E513C:  IT EQ
E513E:  MOVEQ           R5, R4
E5140:  B               loc_E5144
E5142:  MOVS            R5, #0
E5144:  MOV             R0, R5
E5146:  POP.W           {R8}
E514A:  POP             {R4-R7,PC}
