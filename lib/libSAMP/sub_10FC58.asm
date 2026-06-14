; =========================================================
; Game Engine Function: sub_10FC58
; Address            : 0x10FC58 - 0x10FC70
; =========================================================

10FC58:  PUSH            {R4,R6,R7,LR}
10FC5A:  ADD             R7, SP, #8
10FC5C:  LDR             R1, [R0,#4]
10FC5E:  MOV             R4, R0
10FC60:  BL              sub_10FC70
10FC64:  LDR             R0, [R4]; void *
10FC66:  CBZ             R0, loc_10FC6C
10FC68:  BLX             j__ZdlPv; operator delete(void *)
10FC6C:  MOV             R0, R4
10FC6E:  POP             {R4,R6,R7,PC}
