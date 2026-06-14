; =========================================================
; Game Engine Function: sub_445E9C
; Address            : 0x445E9C - 0x445EAE
; =========================================================

445E9C:  AND.W           R0, R1, R0,LSR#18
445EA0:  ADDS            R1, R2, R0
445EA2:  PUSH            {R0,R2,R3,LR}
445EA4:  MOV             R0, R9; this
445EA6:  BLX             j__ZN10Interior_c10AddPickupsEv; Interior_c::AddPickups(void)
445EAA:  MOV             R1, R0
445EAC:  POP             {R0,R2,R3,PC}
