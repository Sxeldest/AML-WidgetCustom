; =========================================================
; Game Engine Function: _ZN14CWeaponEffects14ClearCrossHairEi
; Address            : 0x5E32A8 - 0x5E32C4
; =========================================================

5E32A8:  LDR             R1, =(gCrossHair_ptr - 0x5E32B2)
5E32AA:  MOVS            R3, #0x2C ; ','
5E32AC:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E32B4)
5E32AE:  ADD             R1, PC; gCrossHair_ptr
5E32B0:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E32B2:  LDR             R1, [R1]; gCrossHair
5E32B4:  MLA.W           R0, R0, R3, R1
5E32B8:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds ...
5E32BA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5E32BC:  ADD.W           R1, R1, #0x190
5E32C0:  STR             R1, [R0,#4]
5E32C2:  BX              LR
