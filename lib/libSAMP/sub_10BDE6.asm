; =========================================================
; Game Engine Function: sub_10BDE6
; Address            : 0x10BDE6 - 0x10BE0C
; =========================================================

10BDE6:  PUSH            {R4,R5,R7,LR}
10BDE8:  ADD             R7, SP, #8
10BDEA:  MOV             R4, R0
10BDEC:  LDR             R0, [R0,#8]; void *
10BDEE:  CBZ             R0, loc_10BDFC
10BDF0:  LDR             R5, [R0]
10BDF2:  BLX             j__ZdlPv; operator delete(void *)
10BDF6:  CMP             R5, #0
10BDF8:  MOV             R0, R5
10BDFA:  BNE             loc_10BDF0
10BDFC:  LDR             R0, [R4]; void *
10BDFE:  MOVS            R1, #0
10BE00:  STR             R1, [R4]
10BE02:  CBZ             R0, loc_10BE08
10BE04:  BLX             j__ZdlPv; operator delete(void *)
10BE08:  MOV             R0, R4
10BE0A:  POP             {R4,R5,R7,PC}
