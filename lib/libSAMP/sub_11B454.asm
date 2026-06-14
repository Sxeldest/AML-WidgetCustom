; =========================================================
; Game Engine Function: sub_11B454
; Address            : 0x11B454 - 0x11B494
; =========================================================

11B454:  PUSH            {R7,LR}
11B456:  MOV             R7, SP
11B458:  LDR             R0, =(byte_263668 - 0x11B45E)
11B45A:  ADD             R0, PC; byte_263668
11B45C:  LDRB            R0, [R0]
11B45E:  DMB.W           ISH
11B462:  LSLS            R0, R0, #0x1F
11B464:  IT NE
11B466:  POPNE           {R7,PC}
11B468:  LDR             R0, =(byte_263668 - 0x11B46E)
11B46A:  ADD             R0, PC; byte_263668 ; __guard *
11B46C:  BLX             j___cxa_guard_acquire
11B470:  CBZ             R0, locret_11B492
11B472:  LDR             R1, =(unk_263650 - 0x11B47E)
11B474:  MOVS            R3, #0
11B476:  LDR             R0, =(sub_11A808+1 - 0x11B480)
11B478:  LDR             R2, =(off_22A540 - 0x11B482)
11B47A:  ADD             R1, PC; unk_263650 ; obj
11B47C:  ADD             R0, PC; sub_11A808 ; lpfunc
11B47E:  ADD             R2, PC; off_22A540 ; lpdso_handle
11B480:  STR             R3, [R1,#(dword_263660 - 0x263650)]
11B482:  BLX             __cxa_atexit
11B486:  LDR             R0, =(byte_263668 - 0x11B48C)
11B488:  ADD             R0, PC; byte_263668
11B48A:  POP.W           {R7,LR}
11B48E:  B.W             sub_2242B0
11B492:  POP             {R7,PC}
