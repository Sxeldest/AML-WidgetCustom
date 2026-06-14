; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRouteD2Ev
; Address            : 0x51E4AC - 0x51E4D0
; =========================================================

51E4AC:  PUSH            {R4,R6,R7,LR}
51E4AE:  ADD             R7, SP, #8
51E4B0:  MOV             R4, R0
51E4B2:  LDR             R0, =(_ZTV28CTaskComplexFollowPointRoute_ptr - 0x51E4B8)
51E4B4:  ADD             R0, PC; _ZTV28CTaskComplexFollowPointRoute_ptr
51E4B6:  LDR             R1, [R0]; `vtable for'CTaskComplexFollowPointRoute ...
51E4B8:  LDR             R0, [R4,#0x20]; void *
51E4BA:  ADDS            R1, #8
51E4BC:  STR             R1, [R4]
51E4BE:  CMP             R0, #0
51E4C0:  IT NE
51E4C2:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
51E4C6:  MOV             R0, R4; this
51E4C8:  POP.W           {R4,R6,R7,LR}
51E4CC:  B.W             sub_18EDE8
