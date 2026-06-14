; =========================================================
; Game Engine Function: _ZN18CTaskSimpleTurn180D0Ev
; Address            : 0x4ECE08 - 0x4ECE36
; =========================================================

4ECE08:  PUSH            {R4,R6,R7,LR}
4ECE0A:  ADD             R7, SP, #8
4ECE0C:  MOV             R4, R0
4ECE0E:  LDR             R0, =(_ZTV18CTaskSimpleTurn180_ptr - 0x4ECE14)
4ECE10:  ADD             R0, PC; _ZTV18CTaskSimpleTurn180_ptr
4ECE12:  LDR             R1, [R0]; `vtable for'CTaskSimpleTurn180 ...
4ECE14:  LDR             R0, [R4,#0xC]; this
4ECE16:  ADDS            R1, #8
4ECE18:  STR             R1, [R4]
4ECE1A:  CBZ             R0, loc_4ECE28
4ECE1C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4ECE24)
4ECE1E:  MOVS            R2, #0; void *
4ECE20:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4ECE22:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4ECE24:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4ECE28:  MOV             R0, R4; this
4ECE2A:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4ECE2E:  POP.W           {R4,R6,R7,LR}
4ECE32:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
