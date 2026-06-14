; =========================================================
; Game Engine Function: sub_60534
; Address            : 0x60534 - 0x60582
; =========================================================

60534:  PUSH            {R4,R6,R7,LR}
60536:  ADD             R7, SP, #8
60538:  VPUSH           {D8}
6053C:  LDR             R4, =(dword_1174C0 - 0x60544)
6053E:  LDR             R1, =(off_1174D0 - 0x60546)
60540:  ADD             R4, PC; dword_1174C0
60542:  ADD             R1, PC; off_1174D0
60544:  LDR             R2, [R4]
60546:  LDR             R1, [R1]
60548:  VLDR            S16, [R2]
6054C:  BLX             R1
6054E:  LDR             R0, [R4]
60550:  VLDR            S0, [R0]
60554:  VCMP.F32        S16, S0
60558:  VMRS            APSR_nzcv, FPSCR
6055C:  BEQ             loc_6057C
6055E:  LDR             R1, =(dword_1174B0 - 0x60568)
60560:  VLDR            S0, =1.6667
60564:  ADD             R1, PC; dword_1174B0
60566:  LDR             R1, [R1]
60568:  VLDR            S2, [R1]
6056C:  VDIV.F32        S0, S2, S0
60570:  VMOV.F32        S2, #5.0
60574:  VMLA.F32        S16, S0, S2
60578:  VSTR            S16, [R0]
6057C:  VPOP            {D8}
60580:  POP             {R4,R6,R7,PC}
