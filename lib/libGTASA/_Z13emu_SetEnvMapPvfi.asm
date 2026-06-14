; =========================================================
; Game Engine Function: _Z13emu_SetEnvMapPvfi
; Address            : 0x1C052C - 0x1C059E
; =========================================================

1C052C:  PUSH            {R4,R6,R7,LR}
1C052E:  ADD             R7, SP, #8
1C0530:  VPUSH           {D8}
1C0534:  VMOV            S16, R1
1C0538:  MOV             R4, R0
1C053A:  CBZ             R2, loc_1C056A
1C053C:  CMP             R2, #1
1C053E:  BNE             loc_1C0578
1C0540:  VCMP.F32        S16, #0.0
1C0544:  MOV.W           R0, #0x1000000
1C0548:  VMRS            APSR_nzcv, FPSCR
1C054C:  ITTTT NE
1C054E:  VLDRNE          S0, =1.4
1C0552:  VLDRNE          S2, =0.32
1C0556:  VLDRNE          S4, =0.01
1C055A:  VMINNE.F32      D16, D8, D1
1C055E:  ITT NE
1C0560:  VMAXNE.F32      D1, D16, D2
1C0564:  VMULNE.F32      S16, S2, S0
1C0568:  B               loc_1C056C
1C056A:  MOVS            R0, #0x40 ; '@'
1C056C:  LDR             R1, =(curShaderStateFlags_ptr - 0x1C0572)
1C056E:  ADD             R1, PC; curShaderStateFlags_ptr
1C0570:  LDR             R1, [R1]; curShaderStateFlags
1C0572:  LDR             R2, [R1]
1C0574:  ORRS            R0, R2
1C0576:  STR             R0, [R1]
1C0578:  LDR             R0, [R4]
1C057A:  MOVS            R1, #1
1C057C:  LDR             R2, [R0,#0x18]
1C057E:  MOV             R0, R4
1C0580:  BLX             R2
1C0582:  LDR             R0, [R4]
1C0584:  MOVS            R1, #0
1C0586:  MOVS            R2, #0
1C0588:  LDR             R3, [R0,#0xC]
1C058A:  MOV             R0, R4
1C058C:  BLX             R3
1C058E:  LDR             R0, =(envMapCoefficient_ptr - 0x1C0594)
1C0590:  ADD             R0, PC; envMapCoefficient_ptr
1C0592:  LDR             R0, [R0]; envMapCoefficient
1C0594:  VSTR            S16, [R0]
1C0598:  VPOP            {D8}
1C059C:  POP             {R4,R6,R7,PC}
