; =========================================================
; Game Engine Function: sub_F4D00
; Address            : 0xF4D00 - 0xF4D2E
; =========================================================

F4D00:  PUSH            {R4,R5,R7,LR}
F4D02:  ADD             R7, SP, #8
F4D04:  MOV             R5, R0
F4D06:  LDR             R0, [R0,#8]
F4D08:  CMP             R0, R1
F4D0A:  BEQ             locret_F4D2C
F4D0C:  MOV             R4, R1
F4D0E:  SUB.W           R1, R0, #0xC
F4D12:  STR             R1, [R5,#8]
F4D14:  LDRB.W          R2, [R0,#-0xC]
F4D18:  LSLS            R2, R2, #0x1F
F4D1A:  BEQ             loc_F4D26
F4D1C:  LDR.W           R0, [R0,#-4]; void *
F4D20:  BLX             j__ZdlPv; operator delete(void *)
F4D24:  LDR             R1, [R5,#8]
F4D26:  CMP             R1, R4
F4D28:  MOV             R0, R1
F4D2A:  BNE             loc_F4D0E
F4D2C:  POP             {R4,R5,R7,PC}
