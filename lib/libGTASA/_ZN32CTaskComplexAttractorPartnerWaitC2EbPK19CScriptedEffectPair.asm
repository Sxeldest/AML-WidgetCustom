; =========================================================
; Game Engine Function: _ZN32CTaskComplexAttractorPartnerWaitC2EbPK19CScriptedEffectPair
; Address            : 0x4EF3BC - 0x4EF3D8
; =========================================================

4EF3BC:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexAttractorPartnerWait::CTaskComplexAttractorPartnerWait(bool, CScriptedEffectPair const*)'
4EF3BE:  ADD             R7, SP, #8
4EF3C0:  MOV             R4, R2
4EF3C2:  MOV             R5, R1
4EF3C4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF3C8:  LDR             R1, =(_ZTV32CTaskComplexAttractorPartnerWait_ptr - 0x4EF3D0)
4EF3CA:  STRB            R5, [R0,#0xC]
4EF3CC:  ADD             R1, PC; _ZTV32CTaskComplexAttractorPartnerWait_ptr
4EF3CE:  STR             R4, [R0,#0x10]
4EF3D0:  LDR             R1, [R1]; `vtable for'CTaskComplexAttractorPartnerWait ...
4EF3D2:  ADDS            R1, #8
4EF3D4:  STR             R1, [R0]
4EF3D6:  POP             {R4,R5,R7,PC}
