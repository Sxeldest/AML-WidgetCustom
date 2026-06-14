; =========================================================
; Game Engine Function: _ZN9OALSource9SetVolumeEf
; Address            : 0x27FEC0 - 0x27FF16
; =========================================================

27FEC0:  PUSH            {R4,R5,R7,LR}
27FEC2:  ADD             R7, SP, #8
27FEC4:  MOV             R5, R1
27FEC6:  MOV             R4, R0
27FEC8:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
27FECC:  VMOV.F32        S0, #-6.0
27FED0:  VMOV            S2, R5
27FED4:  VDIV.F32        S0, S2, S0
27FED8:  VMOV            R0, S0
27FEDC:  BLX             exp2f
27FEE0:  VMOV.F32        S0, #1.0
27FEE4:  VLDR            S4, [R4,#0x24]
27FEE8:  VMOV            S2, R0
27FEEC:  VDIV.F32        S2, S0, S2
27FEF0:  VMIN.F32        D0, D1, D0
27FEF4:  VCMP.F32        S4, S0
27FEF8:  VMRS            APSR_nzcv, FPSCR
27FEFC:  IT EQ
27FEFE:  POPEQ           {R4,R5,R7,PC}
27FF00:  VSTR            S0, [R4,#0x24]
27FF04:  VMOV            R2, S0
27FF08:  LDR             R0, [R4,#8]
27FF0A:  MOVW            R1, #0x100A
27FF0E:  POP.W           {R4,R5,R7,LR}
27FF12:  B.W             sub_198FC8
