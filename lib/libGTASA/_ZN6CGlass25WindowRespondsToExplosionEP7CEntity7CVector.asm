; =========================================================
; Game Engine Function: _ZN6CGlass25WindowRespondsToExplosionEP7CEntity7CVector
; Address            : 0x5AC9E8 - 0x5ACAB0
; =========================================================

5AC9E8:  LDRB.W          R12, [R0,#0x1C]
5AC9EC:  MOVS.W          R12, R12,LSL#31
5AC9F0:  IT EQ
5AC9F2:  BXEQ            LR
5AC9F4:  LDR.W           R12, [R0,#0x14]
5AC9F8:  VMOV            S6, R2
5AC9FC:  VMOV            S8, R1
5ACA00:  ADD.W           R2, R12, #0x30 ; '0'
5ACA04:  CMP.W           R12, #0
5ACA08:  IT EQ
5ACA0A:  ADDEQ           R2, R0, #4
5ACA0C:  VLDR            S0, [R2]
5ACA10:  VLDR            S2, [R2,#4]
5ACA14:  VSUB.F32        S10, S0, S8
5ACA18:  VLDR            S4, [R2,#8]
5ACA1C:  VSUB.F32        S6, S2, S6
5ACA20:  VMOV            S8, R3
5ACA24:  VSUB.F32        S8, S4, S8
5ACA28:  VMUL.F32        S14, S10, S10
5ACA2C:  VMUL.F32        S12, S6, S6
5ACA30:  VMUL.F32        S1, S8, S8
5ACA34:  VADD.F32        S12, S14, S12
5ACA38:  VMOV.F32        S14, #10.0
5ACA3C:  VADD.F32        S12, S12, S1
5ACA40:  VSQRT.F32       S12, S12
5ACA44:  VCMPE.F32       S12, S14
5ACA48:  VMRS            APSR_nzcv, FPSCR
5ACA4C:  BGE             loc_5ACA94
5ACA4E:  PUSH            {R7,LR}
5ACA50:  MOV             R7, SP
5ACA52:  SUB             SP, SP, #0x18
5ACA54:  VLDR            S14, =0.3
5ACA58:  MOVS            R1, #1
5ACA5A:  STR             R1, [SP,#0x20+var_10]
5ACA5C:  MOVW            R1, #0x4000
5ACA60:  VDIV.F32        S12, S14, S12
5ACA64:  MOVT            R1, #0x461C
5ACA68:  VMUL.F32        S10, S10, S12
5ACA6C:  VMUL.F32        S6, S6, S12
5ACA70:  VMOV            R2, S10
5ACA74:  VMOV            R3, S6
5ACA78:  VMUL.F32        S6, S8, S12
5ACA7C:  VSTR            S6, [SP,#0x20+var_20]
5ACA80:  VSTR            S0, [SP,#0x20+var_1C]
5ACA84:  VSTR            S2, [SP,#0x20+var_18]
5ACA88:  VSTR            S4, [SP,#0x20+var_14]
5ACA8C:  BLX.W           j__ZN6CGlass25WindowRespondsToCollisionEP7CEntityf7CVectorS2_b; CGlass::WindowRespondsToCollision(CEntity *,float,CVector,CVector,bool)
5ACA90:  ADD             SP, SP, #0x18
5ACA92:  POP             {R7,PC}
5ACA94:  VMOV.F32        S0, #30.0
5ACA98:  VCMPE.F32       S12, S0
5ACA9C:  VMRS            APSR_nzcv, FPSCR
5ACAA0:  ITTT LT
5ACAA2:  LDRLT.W         R1, [R0,#0x144]
5ACAA6:  ORRLT.W         R1, R1, #0x10
5ACAAA:  STRLT.W         R1, [R0,#0x144]
5ACAAE:  BX              LR
