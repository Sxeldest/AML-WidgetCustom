; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowNodeRouteShootingD0Ev
; Address            : 0x527070 - 0x5270BA
; =========================================================

527070:  PUSH            {R4,R6,R7,LR}
527072:  ADD             R7, SP, #8
527074:  MOV             R4, R0
527076:  LDR             R0, =(_ZTV35CTaskComplexFollowNodeRouteShooting_ptr - 0x52707E)
527078:  MOV             R1, R4
52707A:  ADD             R0, PC; _ZTV35CTaskComplexFollowNodeRouteShooting_ptr
52707C:  LDR             R2, [R0]; `vtable for'CTaskComplexFollowNodeRouteShooting ...
52707E:  LDR.W           R0, [R1,#0x60]!; CEntity **
527082:  ADDS            R2, #8
527084:  STR             R2, [R4]
527086:  CMP             R0, #0
527088:  IT NE
52708A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52708E:  LDR             R0, =(_ZTV27CTaskComplexFollowNodeRoute_ptr - 0x527094)
527090:  ADD             R0, PC; _ZTV27CTaskComplexFollowNodeRoute_ptr
527092:  LDR             R1, [R0]; `vtable for'CTaskComplexFollowNodeRoute ...
527094:  LDR             R0, [R4,#0x30]; void *
527096:  ADDS            R1, #8
527098:  STR             R1, [R4]
52709A:  CMP             R0, #0
52709C:  IT NE
52709E:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
5270A2:  LDR             R0, [R4,#0x2C]; void *
5270A4:  CMP             R0, #0
5270A6:  IT NE
5270A8:  BLXNE           j__ZN10CNodeRoutedlEPv; CNodeRoute::operator delete(void *)
5270AC:  MOV             R0, R4; this
5270AE:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5270B2:  POP.W           {R4,R6,R7,LR}
5270B6:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
