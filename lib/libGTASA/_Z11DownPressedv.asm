; =========================================================
; Game Engine Function: _Z11DownPressedv
; Address            : 0x297468 - 0x2974D2
; =========================================================

297468:  PUSH            {R7,LR}
29746A:  MOV             R7, SP
29746C:  MOVS            R0, #0x3C ; '<'
29746E:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297472:  CBNZ            R0, loc_29747E
297474:  MOVS            R0, #0x1F
297476:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
29747A:  CMP             R0, #1
29747C:  BNE             loc_2974CE
29747E:  MOVS            R0, #0x3C ; '<'
297480:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
297484:  CBNZ            R0, loc_2974CA
297486:  MOVS            R0, #0x1F
297488:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
29748C:  CMP             R0, #1
29748E:  BNE             loc_2974CE
297490:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
297494:  LDR             R2, =(unk_6E0124 - 0x29749E)
297496:  VMOV            D17, R0, R1
29749A:  ADD             R2, PC; unk_6E0124
29749C:  VLDR            S0, [R2]
2974A0:  VCVT.F64.F32    D16, S0
2974A4:  VSUB.F64        D16, D17, D16
2974A8:  VMOV.F64        D17, #0.25
2974AC:  VCMPE.F64       D16, D17
2974B0:  VMRS            APSR_nzcv, FPSCR
2974B4:  BLE             loc_2974CE
2974B6:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
2974BA:  VMOV            D16, R0, R1
2974BE:  LDR             R0, =(unk_6E0124 - 0x2974C8)
2974C0:  VCVT.F32.F64    S0, D16
2974C4:  ADD             R0, PC; unk_6E0124
2974C6:  VSTR            S0, [R0]
2974CA:  MOVS            R0, #1
2974CC:  POP             {R7,PC}
2974CE:  MOVS            R0, #0
2974D0:  POP             {R7,PC}
