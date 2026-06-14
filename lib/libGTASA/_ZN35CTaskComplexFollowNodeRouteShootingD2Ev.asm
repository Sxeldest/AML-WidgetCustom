; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowNodeRouteShootingD2Ev
; Address            : 0x527020 - 0x527066
; =========================================================

527020:  PUSH            {R4,R6,R7,LR}
527022:  ADD             R7, SP, #8
527024:  MOV             R4, R0
527026:  LDR             R0, =(_ZTV35CTaskComplexFollowNodeRouteShooting_ptr - 0x52702E)
527028:  MOV             R1, R4
52702A:  ADD             R0, PC; _ZTV35CTaskComplexFollowNodeRouteShooting_ptr
52702C:  LDR             R2, [R0]; `vtable for'CTaskComplexFollowNodeRouteShooting ...
52702E:  LDR.W           R0, [R1,#0x60]!; CEntity **
527032:  ADDS            R2, #8
527034:  STR             R2, [R4]
527036:  CMP             R0, #0
527038:  IT NE
52703A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52703E:  LDR             R0, =(_ZTV27CTaskComplexFollowNodeRoute_ptr - 0x527044)
527040:  ADD             R0, PC; _ZTV27CTaskComplexFollowNodeRoute_ptr
527042:  LDR             R1, [R0]; `vtable for'CTaskComplexFollowNodeRoute ...
527044:  LDR             R0, [R4,#0x30]; void *
527046:  ADDS            R1, #8
527048:  STR             R1, [R4]
52704A:  CMP             R0, #0
52704C:  IT NE
52704E:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
527052:  LDR             R0, [R4,#0x2C]; void *
527054:  CMP             R0, #0
527056:  IT NE
527058:  BLXNE           j__ZN10CNodeRoutedlEPv; CNodeRoute::operator delete(void *)
52705C:  MOV             R0, R4; this
52705E:  POP.W           {R4,R6,R7,LR}
527062:  B.W             sub_18EDE8
