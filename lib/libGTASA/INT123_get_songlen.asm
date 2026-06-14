; =========================================================
; Game Engine Function: INT123_get_songlen
; Address            : 0x2345B8 - 0x2346D2
; =========================================================

2345B8:  PUSH            {R4,R5,R7,LR}
2345BA:  ADD             R7, SP, #8
2345BC:  CMP             R0, #0
2345BE:  BEQ             loc_234666
2345C0:  CMP             R1, #0
2345C2:  BLT             loc_234614
2345C4:  MOVW            R2, #0x92D8
2345C8:  LDR             R5, [R0,R2]
2345CA:  LDR             R3, =(unk_5F58EC - 0x2345D6)
2345CC:  MOVW            R4, #0x92E8
2345D0:  LDR             R2, =(unk_5F11C0 - 0x2345DE)
2345D2:  ADD             R3, PC; unk_5F58EC
2345D4:  LDR             R4, [R0,R4]
2345D6:  ADD.W           R3, R3, R5,LSL#2
2345DA:  ADD             R2, PC; unk_5F11C0
2345DC:  VLDR            S0, [R3]
2345E0:  MOVW            R3, #0x92C8
2345E4:  LDR             R0, [R0,R3]
2345E6:  LDR.W           R2, [R2,R4,LSL#2]
2345EA:  VCVT.F64.S32    D16, S0
2345EE:  LSL.W           R0, R2, R0
2345F2:  VMOV            S0, R0
2345F6:  VCVT.F64.S32    D17, S0
2345FA:  VDIV.F64        D16, D16, D17
2345FE:  VMOV            S0, R1
234602:  VCVT.F64.S32    D17, S0
234606:  VMUL.F64        D16, D16, D17
23460A:  VCVT.S32.F64    S0, D16
23460E:  VMOV            R0, S0
234612:  POP             {R4,R5,R7,PC}
234614:  MOVW            R1, #0xB2E0
234618:  LDR             R1, [R0,R1]
23461A:  CBZ             R1, loc_234666
23461C:  MOVW            R1, #0xB2E4
234620:  LDR             R1, [R0,R1]
234622:  CMP             R1, #0
234624:  BLT             loc_234666
234626:  VMOV            S0, R1
23462A:  MOVW            R1, #0x92D8
23462E:  VCVT.F64.S32    D16, S0
234632:  LDR             R5, [R0,R1]
234634:  SUBS            R1, R5, #2
234636:  CMP             R1, #2
234638:  BCS             loc_23466A
23463A:  MOVW            R1, #0x92C8
23463E:  LDR.W           R12, =(unk_5F1040 - 0x234650)
234642:  LDR             R1, [R0,R1]
234644:  MOVW            R3, #0x92E4
234648:  LDR.W           LR, [R0,R3]
23464C:  ADD             R12, PC; unk_5F1040
23464E:  ADD.W           R3, R1, R1,LSL#1
234652:  VLDR            D17, =144000.0
234656:  ADD.W           R3, R12, R3,LSL#6
23465A:  ADD.W           R3, R3, R5,LSL#6
23465E:  ADD.W           R3, R3, LR,LSL#2
234662:  SUBS            R3, #0x40 ; '@'
234664:  B               loc_234692
234666:  MOVS            R0, #0
234668:  POP             {R4,R5,R7,PC}
23466A:  CMP             R5, #1
23466C:  BNE             loc_2346C0
23466E:  MOVW            R1, #0x92C8
234672:  LDR.W           R12, =(unk_5F1040 - 0x234684)
234676:  LDR             R1, [R0,R1]
234678:  MOVW            R3, #0x92E4
23467C:  LDR.W           LR, [R0,R3]
234680:  ADD             R12, PC; unk_5F1040
234682:  ADD.W           R3, R1, R1,LSL#1
234686:  VLDR            D17, =48000.0
23468A:  ADD.W           R3, R12, R3,LSL#6
23468E:  ADD.W           R3, R3, LR,LSL#2
234692:  VLDR            S0, [R3]
234696:  MOVW            R3, #0x92E8
23469A:  LDR.W           R12, =(unk_5F11C0 - 0x2346A8)
23469E:  VCVT.F64.S32    D18, S0
2346A2:  LDR             R3, [R0,R3]
2346A4:  ADD             R12, PC; unk_5F11C0
2346A6:  LDR.W           R3, [R12,R3,LSL#2]
2346AA:  LSL.W           R1, R3, R1
2346AE:  VMUL.F64        D17, D17, D18
2346B2:  VMOV            S0, R1
2346B6:  VCVT.F64.S32    D18, S0
2346BA:  VDIV.F64        D17, D17, D18
2346BE:  B               loc_2346C4
2346C0:  VMOV.F64        D17, #1.0
2346C4:  VDIV.F64        D16, D16, D17
2346C8:  VCVT.S32.F64    S0, D16
2346CC:  VMOV            R1, S0
2346D0:  B               loc_2345CA
