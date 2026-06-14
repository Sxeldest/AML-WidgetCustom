; =========================================================
; Game Engine Function: _Z15OS_TimeAccuratev
; Address            : 0x26A568 - 0x26A604
; =========================================================

26A568:  PUSH            {R7,LR}
26A56A:  MOV             R7, SP
26A56C:  SUB             SP, SP, #8
26A56E:  MOV             R0, SP; tv
26A570:  MOVS            R1, #0; tz
26A572:  BLX             gettimeofday
26A576:  VLDR            S0, [SP,#0x10+var_10]
26A57A:  MOV             R1, #0xF4240
26A582:  VCVT.F64.S32    D16, S0
26A586:  LDR             R0, [SP,#0x10+var_C]
26A588:  CMP             R0, R1
26A58A:  BGT             loc_26A5A4
26A58C:  VMOV            S0, R0
26A590:  CMP.W           R0, #0xFFFFFFFF
26A594:  VCVT.F64.S32    D17, S0
26A598:  BLE             loc_26A5A4
26A59A:  VLDR            D18, =1000000.0
26A59E:  VDIV.F64        D17, D17, D18
26A5A2:  B               loc_26A5C0
26A5A4:  LDR             R0, =(unk_6D70D8 - 0x26A5AA)
26A5A6:  ADD             R0, PC; unk_6D70D8
26A5A8:  VLDR            D17, [R0]
26A5AC:  VCVT.U32.F64    S0, D17
26A5B0:  VCVT.F64.U32    D18, S0
26A5B4:  VSUB.F64        D17, D17, D18
26A5B8:  VLDR            D18, =0.00033
26A5BC:  VADD.F64        D17, D17, D18
26A5C0:  VADD.F64        D16, D17, D16
26A5C4:  LDR             R0, =(unk_6D70E0 - 0x26A5CA)
26A5C6:  ADD             R0, PC; unk_6D70E0
26A5C8:  VLDR            D17, [R0]
26A5CC:  VMOV.F64        D18, #5.0
26A5D0:  LDR             R0, =(unk_6D70D8 - 0x26A5D6)
26A5D2:  ADD             R0, PC; unk_6D70D8
26A5D4:  VSUB.F64        D17, D16, D17
26A5D8:  VCMPE.F64       D17, D18
26A5DC:  VMRS            APSR_nzcv, FPSCR
26A5E0:  VSTR            D16, [R0]
26A5E4:  BLE             loc_26A5EE
26A5E6:  LDR             R0, =(unk_6D70E0 - 0x26A5EC)
26A5E8:  ADD             R0, PC; unk_6D70E0
26A5EA:  VSTR            D16, [R0]
26A5EE:  LDR             R0, =(base_time_ptr - 0x26A5F4)
26A5F0:  ADD             R0, PC; base_time_ptr
26A5F2:  LDR             R0, [R0]; base_time
26A5F4:  VLDR            D17, [R0]
26A5F8:  VSUB.F64        D16, D16, D17
26A5FC:  VMOV            R0, R1, D16
26A600:  ADD             SP, SP, #8
26A602:  POP             {R7,PC}
