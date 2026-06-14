; =========================================================
; Game Engine Function: _ZN7CObject20AddToControlCodeListEv
; Address            : 0x453758 - 0x453788
; =========================================================

453758:  PUSH            {R4,R6,R7,LR}
45375A:  ADD             R7, SP, #8
45375C:  MOV             R4, R0
45375E:  MOVS            R0, #(byte_9+3); this
453760:  BLX             j__ZN18CPtrNodeDoubleLinknwEj; CPtrNodeDoubleLink::operator new(uint)
453764:  LDR             R1, =(_ZN6CWorld29ms_listObjectsWithControlCodeE_ptr - 0x45376E)
453766:  MOVS            R2, #0
453768:  STR             R4, [R0]
45376A:  ADD             R1, PC; _ZN6CWorld29ms_listObjectsWithControlCodeE_ptr
45376C:  STR.W           R0, [R4,#0x13C]
453770:  STR             R2, [R0,#8]
453772:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode ...
453774:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode
453776:  STR             R1, [R0,#4]
453778:  CMP             R1, #0
45377A:  IT NE
45377C:  STRNE           R0, [R1,#8]
45377E:  LDR             R1, =(_ZN6CWorld29ms_listObjectsWithControlCodeE_ptr - 0x453784)
453780:  ADD             R1, PC; _ZN6CWorld29ms_listObjectsWithControlCodeE_ptr
453782:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode ...
453784:  STR             R0, [R1]; CWorld::ms_listObjectsWithControlCode
453786:  POP             {R4,R6,R7,PC}
