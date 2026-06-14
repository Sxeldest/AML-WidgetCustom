; =========================================================
; Game Engine Function: _Z12RightPressedv
; Address            : 0x297550 - 0x2975BA
; =========================================================

297550:  PUSH            {R7,LR}
297552:  MOV             R7, SP
297554:  MOVS            R0, #0x3F ; '?'
297556:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
29755A:  CBNZ            R0, loc_297566
29755C:  MOVS            R0, #0x1E
29755E:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297562:  CMP             R0, #1
297564:  BNE             loc_2975B6
297566:  MOVS            R0, #0x3F ; '?'
297568:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
29756C:  CBNZ            R0, loc_2975B2
29756E:  MOVS            R0, #0x1E
297570:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
297574:  CMP             R0, #1
297576:  BNE             loc_2975B6
297578:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
29757C:  LDR             R2, =(unk_6E0124 - 0x297586)
29757E:  VMOV            D17, R0, R1
297582:  ADD             R2, PC; unk_6E0124
297584:  VLDR            S0, [R2]
297588:  VCVT.F64.F32    D16, S0
29758C:  VSUB.F64        D16, D17, D16
297590:  VMOV.F64        D17, #0.25
297594:  VCMPE.F64       D16, D17
297598:  VMRS            APSR_nzcv, FPSCR
29759C:  BLE             loc_2975B6
29759E:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
2975A2:  VMOV            D16, R0, R1
2975A6:  LDR             R0, =(unk_6E0124 - 0x2975B0)
2975A8:  VCVT.F32.F64    S0, D16
2975AC:  ADD             R0, PC; unk_6E0124
2975AE:  VSTR            S0, [R0]
2975B2:  MOVS            R0, #1
2975B4:  POP             {R7,PC}
2975B6:  MOVS            R0, #0
2975B8:  POP             {R7,PC}
