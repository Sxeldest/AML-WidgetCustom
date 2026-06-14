; =========================================================
; Game Engine Function: _ZN27CTaskComplexGoToPointAimingC2EiRK7CVectorP7CEntityS0_ff
; Address            : 0x51DAA4 - 0x51DB66
; =========================================================

51DAA4:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexGoToPointAiming::CTaskComplexGoToPointAiming(int, CVector const&, CEntity *, CVector, float, float)'
51DAA6:  ADD             R7, SP, #0xC
51DAA8:  PUSH.W          {R8}
51DAAC:  MOV             R6, R3
51DAAE:  MOV             R8, R2
51DAB0:  MOV             R5, R1
51DAB2:  MOV             R4, R0
51DAB4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51DAB8:  LDR             R0, =(_ZTV27CTaskComplexGoToPointAiming_ptr - 0x51DAC4)
51DABA:  CMP             R6, #0
51DABC:  LDRD.W          R1, R3, [R7,#arg_0]
51DAC0:  ADD             R0, PC; _ZTV27CTaskComplexGoToPointAiming_ptr
51DAC2:  STR             R5, [R4,#0xC]
51DAC4:  STRD.W          R1, R3, [R4,#0x14]
51DAC8:  MOV             R1, R4
51DACA:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAiming ...
51DACC:  LDR             R2, [R7,#arg_8]
51DACE:  STR             R2, [R4,#0x1C]
51DAD0:  ADD.W           R0, R0, #8
51DAD4:  STR             R0, [R4]
51DAD6:  STR.W           R6, [R1,#0x10]!; CEntity **
51DADA:  ITT NE
51DADC:  MOVNE           R0, R6; this
51DADE:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51DAE2:  VLDR            S4, [R8]
51DAE6:  VLDR            S6, [R4,#0x20]
51DAEA:  VLDR            S0, [R7,#arg_10]
51DAEE:  VCMP.F32        S6, S4
51DAF2:  VLDR            S2, [R7,#arg_C]
51DAF6:  VMRS            APSR_nzcv, FPSCR
51DAFA:  BNE             loc_51DB3C
51DAFC:  VLDR            S4, [R8,#4]
51DB00:  VLDR            S6, [R4,#0x24]
51DB04:  VCMP.F32        S6, S4
51DB08:  VMRS            APSR_nzcv, FPSCR
51DB0C:  BNE             loc_51DB3C
51DB0E:  VLDR            S4, [R8,#8]
51DB12:  VLDR            S6, [R4,#0x28]
51DB16:  VCMP.F32        S6, S4
51DB1A:  VMRS            APSR_nzcv, FPSCR
51DB1E:  BNE             loc_51DB3C
51DB20:  VLDR            S4, [R4,#0x2C]
51DB24:  VCMP.F32        S4, S2
51DB28:  VMRS            APSR_nzcv, FPSCR
51DB2C:  BNE             loc_51DB3C
51DB2E:  VLDR            S4, [R4,#0x30]
51DB32:  VCMP.F32        S4, S0
51DB36:  VMRS            APSR_nzcv, FPSCR
51DB3A:  BEQ             loc_51DB5E
51DB3C:  VLDR            D16, [R8]
51DB40:  LDRB.W          R1, [R4,#0x34]
51DB44:  LDR.W           R0, [R8,#8]
51DB48:  STR             R0, [R4,#0x28]
51DB4A:  ORR.W           R0, R1, #1
51DB4E:  VSTR            S2, [R4,#0x2C]
51DB52:  VSTR            S0, [R4,#0x30]
51DB56:  STRB.W          R0, [R4,#0x34]
51DB5A:  VSTR            D16, [R4,#0x20]
51DB5E:  MOV             R0, R4
51DB60:  POP.W           {R8}
51DB64:  POP             {R4-R7,PC}
