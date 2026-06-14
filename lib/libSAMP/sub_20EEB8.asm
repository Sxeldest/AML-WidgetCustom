; =========================================================
; Game Engine Function: sub_20EEB8
; Address            : 0x20EEB8 - 0x20EF20
; =========================================================

20EEB8:  PUSH            {R4,R5,R7,LR}
20EEBA:  ADD             R7, SP, #8
20EEBC:  VPUSH           {D8-D9}
20EEC0:  MOV             R4, R1
20EEC2:  MOV             R5, R0
20EEC4:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20EEC8:  MOV             R0, R5; nptr
20EECA:  MOV             R1, R4; endptr
20EECC:  BLX             strtod
20EED0:  MOV             R2, R1
20EED2:  VLDR            D9, =+Inf
20EED6:  BFC.W           R2, #0x1F, #1
20EEDA:  VMOV            D8, R0, R1
20EEDE:  VMOV            D16, R0, R2
20EEE2:  VCMP.F64        D16, D9
20EEE6:  VMRS            APSR_nzcv, FPSCR
20EEEA:  BEQ             loc_20EF12
20EEEC:  BVS             loc_20EF12
20EEEE:  B               loc_20EEF0
20EEF0:  VLDR            D17, =3.40282347e38
20EEF4:  VCMP.F64        D16, D17
20EEF8:  VMRS            APSR_nzcv, FPSCR
20EEFC:  BLE             loc_20EF12
20EEFE:  BLX             __errno
20EF02:  VMOV.I32        D16, #0x80000000
20EF06:  MOVS            R1, #0x22 ; '"'
20EF08:  STR             R1, [R0]
20EF0A:  VSHL.I64        D16, D16, #0x20 ; ' '
20EF0E:  VBIF            D8, D9, D16
20EF12:  VCVT.F32.F64    S0, D8
20EF16:  VMOV            R0, S0
20EF1A:  VPOP            {D8-D9}
20EF1E:  POP             {R4,R5,R7,PC}
