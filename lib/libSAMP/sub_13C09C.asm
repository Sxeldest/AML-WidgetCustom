; =========================================================
; Game Engine Function: sub_13C09C
; Address            : 0x13C09C - 0x13C0B6
; =========================================================

13C09C:  PUSH            {R4,R6,R7,LR}
13C09E:  ADD             R7, SP, #8
13C0A0:  MOV             R4, R0
13C0A2:  LDR             R0, [R0]
13C0A4:  CBZ             R0, loc_13C0B2
13C0A6:  MOV             R0, R4
13C0A8:  BL              sub_13C0B6
13C0AC:  LDR             R0, [R4]; void *
13C0AE:  BLX             j__ZdlPv; operator delete(void *)
13C0B2:  MOV             R0, R4
13C0B4:  POP             {R4,R6,R7,PC}
