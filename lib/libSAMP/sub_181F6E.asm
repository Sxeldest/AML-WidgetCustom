; =========================================================
; Game Engine Function: sub_181F6E
; Address            : 0x181F6E - 0x181FAA
; =========================================================

181F6E:  PUSH            {R4-R7,LR}
181F70:  ADD             R7, SP, #0xC
181F72:  PUSH.W          {R11}
181F76:  MOV             R5, R0
181F78:  LDR             R0, [R0]
181F7A:  MOV             R4, R1
181F7C:  LDR             R1, [R0,#0x2C]
181F7E:  MOV             R0, R5
181F80:  BLX             R1
181F82:  LDRB.W          R1, [R5,#0x7E4]
181F86:  CLZ.W           R1, R1
181F8A:  LSRS            R1, R1, #5
181F8C:  ORRS.W          R6, R0, R1
181F90:  BNE             loc_181FA0
181F92:  ADD.W           R1, R5, #0x3A4; src
181F96:  MOV             R0, R4; dest
181F98:  MOV.W           R2, #0x400; n
181F9C:  BLX             j_memcpy
181FA0:  EOR.W           R0, R6, #1
181FA4:  POP.W           {R11}
181FA8:  POP             {R4-R7,PC}
