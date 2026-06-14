; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo14SetEnvMapCoeffEf
; Address            : 0x387D84 - 0x387DC0
; =========================================================

387D84:  PUSH            {R4,R6,R7,LR}
387D86:  ADD             R7, SP, #8
387D88:  LDR             R4, [R0,#0x34]
387D8A:  CMP             R4, #0
387D8C:  IT EQ
387D8E:  POPEQ           {R4,R6,R7,PC}
387D90:  VMOV            S0, R1
387D94:  VLDR            S2, =1000.0
387D98:  VMUL.F32        S0, S0, S2
387D9C:  VMOV            R0, S0; x
387DA0:  BLX             floorf
387DA4:  VMOV            S0, R0
387DA8:  LDR             R1, =(_ZN17CVehicleModelInfo22SetEnvMapCoeffAtomicCBEP8RpAtomicPv_ptr - 0x387DB4)
387DAA:  MOV             R0, R4
387DAC:  VCVT.U32.F32    S0, S0
387DB0:  ADD             R1, PC; _ZN17CVehicleModelInfo22SetEnvMapCoeffAtomicCBEP8RpAtomicPv_ptr
387DB2:  LDR             R1, [R1]; CVehicleModelInfo::SetEnvMapCoeffAtomicCB(RpAtomic *,void *)
387DB4:  VMOV            R2, S0
387DB8:  POP.W           {R4,R6,R7,LR}
387DBC:  B.W             sub_18E45C
