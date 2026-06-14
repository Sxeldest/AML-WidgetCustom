; =========================================================
; Game Engine Function: sub_13C0B6
; Address            : 0x13C0B6 - 0x13C0E6
; =========================================================

13C0B6:  PUSH            {R4-R7,LR}
13C0B8:  ADD             R7, SP, #0xC
13C0BA:  PUSH.W          {R11}
13C0BE:  LDRD.W          R5, R1, [R0]
13C0C2:  MOV             R4, R0
13C0C4:  CMP             R1, R5
13C0C6:  BEQ             loc_13C0DE
13C0C8:  MOV             R6, R1
13C0CA:  LDR.W           R0, [R6,#-0xC]!; void *
13C0CE:  CBZ             R0, loc_13C0D8
13C0D0:  STR.W           R0, [R1,#-8]
13C0D4:  BLX             j__ZdlPv; operator delete(void *)
13C0D8:  CMP             R6, R5
13C0DA:  MOV             R1, R6
13C0DC:  BNE             loc_13C0CA
13C0DE:  STR             R5, [R4,#4]
13C0E0:  POP.W           {R11}
13C0E4:  POP             {R4-R7,PC}
