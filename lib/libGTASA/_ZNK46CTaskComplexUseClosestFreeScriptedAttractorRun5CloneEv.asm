; =========================================================
; Game Engine Function: _ZNK46CTaskComplexUseClosestFreeScriptedAttractorRun5CloneEv
; Address            : 0x384588 - 0x3845A8
; =========================================================

384588:  PUSH            {R7,LR}
38458A:  MOV             R7, SP
38458C:  MOVS            R0, #word_10; this
38458E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
384592:  MOVS            R1, #0; bool
384594:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
384598:  LDR             R1, =(_ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr - 0x3845A2)
38459A:  MOVS            R2, #6
38459C:  STR             R2, [R0,#0xC]
38459E:  ADD             R1, PC; _ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr
3845A0:  LDR             R1, [R1]; `vtable for'CTaskComplexUseClosestFreeScriptedAttractorRun ...
3845A2:  ADDS            R1, #8
3845A4:  STR             R1, [R0]
3845A6:  POP             {R7,PC}
