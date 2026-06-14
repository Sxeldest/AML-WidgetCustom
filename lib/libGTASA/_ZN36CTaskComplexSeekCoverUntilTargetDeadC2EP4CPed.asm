; =========================================================
; Game Engine Function: _ZN36CTaskComplexSeekCoverUntilTargetDeadC2EP4CPed
; Address            : 0x4E8D0C - 0x4E8D42
; =========================================================

4E8D0C:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexSeekCoverUntilTargetDead::CTaskComplexSeekCoverUntilTargetDead(CPed *)'
4E8D0E:  ADD             R7, SP, #8
4E8D10:  MOV             R5, R1
4E8D12:  MOV             R4, R0
4E8D14:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E8D18:  LDR             R0, =(_ZTV36CTaskComplexSeekCoverUntilTargetDead_ptr - 0x4E8D26)
4E8D1A:  MOV.W           R1, #0xFFFFFFFF
4E8D1E:  STR             R1, [R4,#0xC]
4E8D20:  MOVS            R1, #0
4E8D22:  ADD             R0, PC; _ZTV36CTaskComplexSeekCoverUntilTargetDead_ptr
4E8D24:  STR             R1, [R4,#0x14]
4E8D26:  MOV             R1, R4
4E8D28:  CMP             R5, #0
4E8D2A:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekCoverUntilTargetDead ...
4E8D2C:  ADD.W           R0, R0, #8
4E8D30:  STR             R0, [R4]
4E8D32:  STR.W           R5, [R1,#0x10]!; CEntity **
4E8D36:  ITT NE
4E8D38:  MOVNE           R0, R5; this
4E8D3A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E8D3E:  MOV             R0, R4
4E8D40:  POP             {R4,R5,R7,PC}
