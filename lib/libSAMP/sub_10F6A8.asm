; =========================================================
; Game Engine Function: sub_10F6A8
; Address            : 0x10F6A8 - 0x10F6C2
; =========================================================

10F6A8:  PUSH            {R4,R6,R7,LR}
10F6AA:  ADD             R7, SP, #8
10F6AC:  MOV             R4, R0
10F6AE:  LDR             R0, [R0]
10F6B0:  CBZ             R0, loc_10F6BE
10F6B2:  MOV             R0, R4
10F6B4:  BL              sub_10F6C2
10F6B8:  LDR             R0, [R4]; void *
10F6BA:  BLX             j__ZdlPv; operator delete(void *)
10F6BE:  MOV             R0, R4
10F6C0:  POP             {R4,R6,R7,PC}
