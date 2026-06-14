; =========================================================
; Game Engine Function: _Z11LeftPressedv
; Address            : 0x2974DC - 0x297546
; =========================================================

2974DC:  PUSH            {R7,LR}
2974DE:  MOV             R7, SP
2974E0:  MOVS            R0, #0x3E ; '>'
2974E2:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2974E6:  CBNZ            R0, loc_2974F2
2974E8:  MOVS            R0, #0x1E
2974EA:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2974EE:  CMP             R0, #1
2974F0:  BNE             loc_297542
2974F2:  MOVS            R0, #0x3E ; '>'
2974F4:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2974F8:  CBNZ            R0, loc_29753E
2974FA:  MOVS            R0, #0x1E
2974FC:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
297500:  CMP             R0, #1
297502:  BNE             loc_297542
297504:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
297508:  LDR             R2, =(unk_6E0124 - 0x297512)
29750A:  VMOV            D17, R0, R1
29750E:  ADD             R2, PC; unk_6E0124
297510:  VLDR            S0, [R2]
297514:  VCVT.F64.F32    D16, S0
297518:  VSUB.F64        D16, D17, D16
29751C:  VMOV.F64        D17, #0.25
297520:  VCMPE.F64       D16, D17
297524:  VMRS            APSR_nzcv, FPSCR
297528:  BLE             loc_297542
29752A:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
29752E:  VMOV            D16, R0, R1
297532:  LDR             R0, =(unk_6E0124 - 0x29753C)
297534:  VCVT.F32.F64    S0, D16
297538:  ADD             R0, PC; unk_6E0124
29753A:  VSTR            S0, [R0]
29753E:  MOVS            R0, #1
297540:  POP             {R7,PC}
297542:  MOVS            R0, #0
297544:  POP             {R7,PC}
