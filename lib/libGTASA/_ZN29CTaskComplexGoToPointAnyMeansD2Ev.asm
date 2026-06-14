; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointAnyMeansD2Ev
; Address            : 0x524820 - 0x524848
; =========================================================

524820:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexGoToPointAnyMeans::~CTaskComplexGoToPointAnyMeans()'
524822:  ADD             R7, SP, #8
524824:  MOV             R4, R0
524826:  LDR             R0, =(_ZTV29CTaskComplexGoToPointAnyMeans_ptr - 0x52482E)
524828:  MOV             R1, R4
52482A:  ADD             R0, PC; _ZTV29CTaskComplexGoToPointAnyMeans_ptr
52482C:  LDR             R2, [R0]; `vtable for'CTaskComplexGoToPointAnyMeans ...
52482E:  LDR.W           R0, [R1,#0x20]!; CEntity **
524832:  ADDS            R2, #8
524834:  STR             R2, [R4]
524836:  CMP             R0, #0
524838:  IT NE
52483A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52483E:  MOV             R0, R4; this
524840:  POP.W           {R4,R6,R7,LR}
524844:  B.W             sub_18EDE8
