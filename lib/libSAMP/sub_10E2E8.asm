; =========================================================
; Game Engine Function: sub_10E2E8
; Address            : 0x10E2E8 - 0x10E304
; =========================================================

10E2E8:  PUSH            {R4,R5,R7,LR}
10E2EA:  ADD             R7, SP, #8
10E2EC:  MOV             R4, R0
10E2EE:  LDR             R0, [R0,#4]
10E2F0:  CBZ             R0, loc_10E2F4
10E2F2:  POP             {R4,R5,R7,PC}
10E2F4:  MOVS            R0, #0x10; unsigned int
10E2F6:  BLX             j__Znwj; operator new(uint)
10E2FA:  MOV             R5, R0
10E2FC:  BL              sub_10D8F4
10E300:  STR             R5, [R4,#4]
10E302:  POP             {R4,R5,R7,PC}
