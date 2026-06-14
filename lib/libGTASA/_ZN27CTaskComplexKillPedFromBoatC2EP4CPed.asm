; =========================================================
; Game Engine Function: _ZN27CTaskComplexKillPedFromBoatC2EP4CPed
; Address            : 0x4E8A2C - 0x4E8A58
; =========================================================

4E8A2C:  PUSH            {R4,R5,R7,LR}
4E8A2E:  ADD             R7, SP, #8
4E8A30:  MOV             R5, R1
4E8A32:  MOV             R4, R0
4E8A34:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E8A38:  LDR             R0, =(_ZTV27CTaskComplexKillPedFromBoat_ptr - 0x4E8A42)
4E8A3A:  MOV             R1, R4
4E8A3C:  CMP             R5, #0
4E8A3E:  ADD             R0, PC; _ZTV27CTaskComplexKillPedFromBoat_ptr
4E8A40:  LDR             R0, [R0]; `vtable for'CTaskComplexKillPedFromBoat ...
4E8A42:  ADD.W           R0, R0, #8
4E8A46:  STR.W           R0, [R1],#0xC; CEntity **
4E8A4A:  STR             R5, [R1]
4E8A4C:  ITT NE
4E8A4E:  MOVNE           R0, R5; this
4E8A50:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E8A54:  MOV             R0, R4
4E8A56:  POP             {R4,R5,R7,PC}
