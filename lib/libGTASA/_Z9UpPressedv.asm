; =========================================================
; Game Engine Function: _Z9UpPressedv
; Address            : 0x2973F4 - 0x29745E
; =========================================================

2973F4:  PUSH            {R7,LR}
2973F6:  MOV             R7, SP
2973F8:  MOVS            R0, #0x3D ; '='
2973FA:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2973FE:  CBNZ            R0, loc_29740A
297400:  MOVS            R0, #0x1F
297402:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297406:  CMP             R0, #1
297408:  BNE             loc_29745A
29740A:  MOVS            R0, #0x3D ; '='
29740C:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
297410:  CBNZ            R0, loc_297456
297412:  MOVS            R0, #0x1F
297414:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
297418:  CMP             R0, #1
29741A:  BNE             loc_29745A
29741C:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
297420:  LDR             R2, =(unk_6E0124 - 0x29742A)
297422:  VMOV            D17, R0, R1
297426:  ADD             R2, PC; unk_6E0124
297428:  VLDR            S0, [R2]
29742C:  VCVT.F64.F32    D16, S0
297430:  VSUB.F64        D16, D17, D16
297434:  VMOV.F64        D17, #0.25
297438:  VCMPE.F64       D16, D17
29743C:  VMRS            APSR_nzcv, FPSCR
297440:  BLE             loc_29745A
297442:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
297446:  VMOV            D16, R0, R1
29744A:  LDR             R0, =(unk_6E0124 - 0x297454)
29744C:  VCVT.F32.F64    S0, D16
297450:  ADD             R0, PC; unk_6E0124
297452:  VSTR            S0, [R0]
297456:  MOVS            R0, #1
297458:  POP             {R7,PC}
29745A:  MOVS            R0, #0
29745C:  POP             {R7,PC}
