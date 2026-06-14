; =========================================================
; Game Engine Function: sub_152EE2
; Address            : 0x152EE2 - 0x152F10
; =========================================================

152EE2:  PUSH            {R4-R7,LR}
152EE4:  ADD             R7, SP, #0xC
152EE6:  PUSH.W          {R11}
152EEA:  CBZ             R1, loc_152F0A
152EEC:  MOV             R4, R1
152EEE:  MOVS            R5, #0
152EF0:  LDR             R0, [R4,#0xC]
152EF2:  LDR             R6, [R4]
152EF4:  STR             R5, [R4,#0xC]
152EF6:  CBZ             R0, loc_152EFE
152EF8:  LDR             R1, [R0]
152EFA:  LDR             R1, [R1,#4]
152EFC:  BLX             R1
152EFE:  MOV             R0, R4; void *
152F00:  BLX             j__ZdlPv; operator delete(void *)
152F04:  CMP             R6, #0
152F06:  MOV             R4, R6
152F08:  BNE             loc_152EF0
152F0A:  POP.W           {R11}
152F0E:  POP             {R4-R7,PC}
