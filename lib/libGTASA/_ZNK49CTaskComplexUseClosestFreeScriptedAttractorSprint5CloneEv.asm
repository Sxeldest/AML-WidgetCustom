; =========================================================
; Game Engine Function: _ZNK49CTaskComplexUseClosestFreeScriptedAttractorSprint5CloneEv
; Address            : 0x384634 - 0x384654
; =========================================================

384634:  PUSH            {R7,LR}
384636:  MOV             R7, SP
384638:  MOVS            R0, #word_10; this
38463A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38463E:  MOVS            R1, #0; bool
384640:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
384644:  LDR             R1, =(_ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr - 0x38464E)
384646:  MOVS            R2, #7
384648:  STR             R2, [R0,#0xC]
38464A:  ADD             R1, PC; _ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr
38464C:  LDR             R1, [R1]; `vtable for'CTaskComplexUseClosestFreeScriptedAttractorSprint ...
38464E:  ADDS            R1, #8
384650:  STR             R1, [R0]
384652:  POP             {R7,PC}
