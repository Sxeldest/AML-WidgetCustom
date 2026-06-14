; =========================================================
; Game Engine Function: _ZN25CTaskComplexPolicePursuitD2Ev
; Address            : 0x53D748 - 0x53D790
; =========================================================

53D748:  PUSH            {R4,R5,R7,LR}
53D74A:  ADD             R7, SP, #8
53D74C:  MOV             R4, R0
53D74E:  LDR             R0, =(_ZTV25CTaskComplexPolicePursuit_ptr - 0x53D756)
53D750:  LDR             R5, [R4,#0x10]
53D752:  ADD             R0, PC; _ZTV25CTaskComplexPolicePursuit_ptr
53D754:  CMP             R5, #0
53D756:  LDR             R0, [R0]; `vtable for'CTaskComplexPolicePursuit ...
53D758:  ADD.W           R0, R0, #8
53D75C:  STR             R0, [R4]
53D75E:  BEQ             loc_53D778
53D760:  MOV.W           R0, #0xFFFFFFFF; int
53D764:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
53D768:  CBZ             R0, loc_53D778
53D76A:  MOV.W           R0, #0xFFFFFFFF; int
53D76E:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53D772:  MOV             R1, R5
53D774:  BLX             j__ZN7CWanted16RemovePursuitCopEP7CCopPed; CWanted::RemovePursuitCop(CCopPed *)
53D778:  MOV             R1, R4
53D77A:  LDR.W           R0, [R1,#0x14]!; CEntity **
53D77E:  CMP             R0, #0
53D780:  IT NE
53D782:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53D786:  MOV             R0, R4; this
53D788:  POP.W           {R4,R5,R7,LR}
53D78C:  B.W             sub_18EDE8
