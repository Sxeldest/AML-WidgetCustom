; =========================================================
; Game Engine Function: _ZNK25CTaskSimpleKillPedWithCar15DamageCarBonnetEPK4CPed
; Address            : 0x50BF10 - 0x50C020
; =========================================================

50BF10:  PUSH            {R4-R7,LR}
50BF12:  ADD             R7, SP, #0xC
50BF14:  PUSH.W          {R11}
50BF18:  SUB             SP, SP, #0x10
50BF1A:  MOV             R5, R0
50BF1C:  MOV             R6, R1
50BF1E:  LDR             R0, [R5,#8]; this
50BF20:  LDR.W           R1, [R0,#0x5A4]
50BF24:  CMP             R1, #0
50BF26:  BNE             loc_50C018
50BF28:  BLX             j__ZN11CAutomobile26RemoveBonnetInPedCollisionEv; CAutomobile::RemoveBonnetInPedCollision(void)
50BF2C:  MOV             R4, R0
50BF2E:  CMP             R4, #0
50BF30:  BEQ             loc_50C018
50BF32:  BLX             rand
50BF36:  VMOV            S0, R0
50BF3A:  VLDR            S2, =4.6566e-10
50BF3E:  VLDR            S4, =0.0
50BF42:  VCVT.F32.S32    S0, S0
50BF46:  LDR             R0, [R5,#8]
50BF48:  VLDR            S8, =0.1
50BF4C:  LDR             R0, [R0,#0x14]
50BF4E:  VLDR            S6, [R0,#4]
50BF52:  VMUL.F32        S2, S0, S2
50BF56:  VLDR            S10, [R0]
50BF5A:  VLDR            S12, [R0,#8]
50BF5E:  VMOV.F32        S0, #0.5
50BF62:  VMUL.F32        S6, S6, S8
50BF66:  VADD.F32        S14, S2, S4
50BF6A:  VMUL.F32        S4, S12, S8
50BF6E:  VMUL.F32        S2, S10, S8
50BF72:  VLDR            S8, [R6,#0x48]
50BF76:  VCMPE.F32       S14, S0
50BF7A:  VMRS            APSR_nzcv, FPSCR
50BF7E:  BLE             loc_50BF96
50BF80:  VLDR            S10, [R6,#0x4C]
50BF84:  VADD.F32        S2, S2, S8
50BF88:  VLDR            S12, [R6,#0x50]
50BF8C:  VADD.F32        S6, S6, S10
50BF90:  VADD.F32        S4, S4, S12
50BF94:  B               loc_50BFAA
50BF96:  VLDR            S10, [R6,#0x4C]
50BF9A:  VSUB.F32        S2, S8, S2
50BF9E:  VLDR            S12, [R6,#0x50]
50BFA2:  VSUB.F32        S6, S10, S6
50BFA6:  VSUB.F32        S4, S12, S4
50BFAA:  VLDR            S10, [R0,#0x24]
50BFAE:  VLDR            S12, [R0,#0x28]
50BFB2:  VLDR            S8, [R0,#0x20]
50BFB6:  VMUL.F32        S10, S10, S0
50BFBA:  VMUL.F32        S12, S12, S0
50BFBE:  VMUL.F32        S0, S8, S0
50BFC2:  VADD.F32        S6, S6, S10
50BFC6:  VADD.F32        S4, S4, S12
50BFCA:  VADD.F32        S0, S2, S0
50BFCE:  VSTR            S0, [R4,#0x48]
50BFD2:  VMOV.F32        S0, #10.0
50BFD6:  VSTR            S6, [R4,#0x4C]
50BFDA:  VSTR            S4, [R4,#0x50]
50BFDE:  LDR             R0, [R5,#8]
50BFE0:  LDR             R0, [R0,#0x14]
50BFE2:  VLDR            S2, [R0,#0x20]
50BFE6:  VLDR            S4, [R0,#0x24]
50BFEA:  VLDR            S6, [R0,#0x28]
50BFEE:  VMUL.F32        S2, S2, S0
50BFF2:  VMUL.F32        S4, S4, S0
50BFF6:  LDRD.W          R6, R5, [R0,#0x10]
50BFFA:  VMUL.F32        S0, S6, S0
50BFFE:  LDR             R0, [R0,#0x18]
50C000:  STRD.W          R6, R5, [SP,#0x20+var_20]
50C004:  STR             R0, [SP,#0x20+var_18]
50C006:  MOV             R0, R4
50C008:  VMOV            R1, S2
50C00C:  VMOV            R2, S4
50C010:  VMOV            R3, S0
50C014:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
50C018:  ADD             SP, SP, #0x10
50C01A:  POP.W           {R11}
50C01E:  POP             {R4-R7,PC}
