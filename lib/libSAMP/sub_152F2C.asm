; =========================================================
; Game Engine Function: sub_152F2C
; Address            : 0x152F2C - 0x152F4E
; =========================================================

152F2C:  PUSH            {R4,R5,R7,LR}
152F2E:  ADD             R7, SP, #8
152F30:  CBZ             R1, locret_152F4C
152F32:  MOV             R4, R1
152F34:  MOV             R0, R4
152F36:  MOVS            R1, #0
152F38:  LDR.W           R5, [R0],#0xC
152F3C:  BL              sub_153336
152F40:  MOV             R0, R4; void *
152F42:  BLX             j__ZdlPv; operator delete(void *)
152F46:  CMP             R5, #0
152F48:  MOV             R4, R5
152F4A:  BNE             loc_152F34
152F4C:  POP             {R4,R5,R7,PC}
