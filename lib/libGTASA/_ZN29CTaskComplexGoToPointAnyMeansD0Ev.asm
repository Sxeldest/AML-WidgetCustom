; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointAnyMeansD0Ev
; Address            : 0x52484C - 0x524878
; =========================================================

52484C:  PUSH            {R4,R6,R7,LR}
52484E:  ADD             R7, SP, #8
524850:  MOV             R4, R0
524852:  LDR             R0, =(_ZTV29CTaskComplexGoToPointAnyMeans_ptr - 0x52485A)
524854:  MOV             R1, R4
524856:  ADD             R0, PC; _ZTV29CTaskComplexGoToPointAnyMeans_ptr
524858:  LDR             R2, [R0]; `vtable for'CTaskComplexGoToPointAnyMeans ...
52485A:  LDR.W           R0, [R1,#0x20]!; CEntity **
52485E:  ADDS            R2, #8
524860:  STR             R2, [R4]
524862:  CMP             R0, #0
524864:  IT NE
524866:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52486A:  MOV             R0, R4; this
52486C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
524870:  POP.W           {R4,R6,R7,LR}
524874:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
