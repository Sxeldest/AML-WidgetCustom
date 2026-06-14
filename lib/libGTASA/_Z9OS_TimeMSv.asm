; =========================================================
; Game Engine Function: _Z9OS_TimeMSv
; Address            : 0x26C250 - 0x26C2F8
; =========================================================

26C250:  PUSH            {R7,LR}
26C252:  MOV             R7, SP
26C254:  SUB             SP, SP, #8
26C256:  MOV             R0, SP; tv
26C258:  MOVS            R1, #0; tz
26C25A:  BLX             gettimeofday
26C25E:  VLDR            S0, [SP,#0x10+var_10]
26C262:  MOV             R1, #0xF4240
26C26A:  VCVT.F64.S32    D16, S0
26C26E:  LDR             R0, [SP,#0x10+var_C]
26C270:  CMP             R0, R1
26C272:  BGT             loc_26C28C
26C274:  VMOV            S0, R0
26C278:  CMP.W           R0, #0xFFFFFFFF
26C27C:  VCVT.F64.S32    D17, S0
26C280:  BLE             loc_26C28C
26C282:  VLDR            D18, =1000000.0
26C286:  VDIV.F64        D17, D17, D18
26C28A:  B               loc_26C2A8
26C28C:  LDR             R0, =(unk_6D70D8 - 0x26C292)
26C28E:  ADD             R0, PC; unk_6D70D8
26C290:  VLDR            D17, [R0]
26C294:  VCVT.U32.F64    S0, D17
26C298:  VCVT.F64.U32    D18, S0
26C29C:  VSUB.F64        D17, D17, D18
26C2A0:  VLDR            D18, =0.00033
26C2A4:  VADD.F64        D17, D17, D18
26C2A8:  VADD.F64        D16, D17, D16
26C2AC:  LDR             R0, =(unk_6D70E0 - 0x26C2B2)
26C2AE:  ADD             R0, PC; unk_6D70E0
26C2B0:  VLDR            D17, [R0]
26C2B4:  VMOV.F64        D18, #5.0
26C2B8:  LDR             R0, =(unk_6D70D8 - 0x26C2BE)
26C2BA:  ADD             R0, PC; unk_6D70D8
26C2BC:  VSUB.F64        D17, D16, D17
26C2C0:  VCMPE.F64       D17, D18
26C2C4:  VMRS            APSR_nzcv, FPSCR
26C2C8:  VSTR            D16, [R0]
26C2CC:  BLE             loc_26C2D6
26C2CE:  LDR             R0, =(unk_6D70E0 - 0x26C2D4)
26C2D0:  ADD             R0, PC; unk_6D70E0
26C2D2:  VSTR            D16, [R0]
26C2D6:  LDR             R0, =(base_time_ptr - 0x26C2DC)
26C2D8:  ADD             R0, PC; base_time_ptr
26C2DA:  LDR             R0, [R0]; base_time
26C2DC:  VLDR            D17, [R0]
26C2E0:  VSUB.F64        D16, D16, D17
26C2E4:  VLDR            D17, =1000.0
26C2E8:  VMUL.F64        D16, D16, D17
26C2EC:  VCVT.U32.F64    S0, D16
26C2F0:  VMOV            R0, S0
26C2F4:  ADD             SP, SP, #8
26C2F6:  POP             {R7,PC}
