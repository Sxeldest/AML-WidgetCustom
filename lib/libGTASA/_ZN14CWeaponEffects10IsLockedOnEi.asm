; =========================================================
; Game Engine Function: _ZN14CWeaponEffects10IsLockedOnEi
; Address            : 0x5E3224 - 0x5E323E
; =========================================================

5E3224:  LDR             R1, =(gCrossHair_ptr - 0x5E322C)
5E3226:  MOVS            R2, #0x2C ; ','
5E3228:  ADD             R1, PC; gCrossHair_ptr
5E322A:  LDR             R1, [R1]; gCrossHair
5E322C:  MLA.W           R0, R0, R2, R1
5E3230:  VLDR            S0, [R0,#0x24]
5E3234:  VCVT.U32.F32    S0, S0
5E3238:  VMOV            R0, S0
5E323C:  BX              LR
