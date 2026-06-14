; =========================================================
; Game Engine Function: _ZN16CTaskComplexChatD2Ev
; Address            : 0x5357D0 - 0x5357F8
; =========================================================

5357D0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexChat::~CTaskComplexChat()'
5357D2:  ADD             R7, SP, #8
5357D4:  MOV             R4, R0
5357D6:  LDR             R0, =(_ZTV16CTaskComplexChat_ptr - 0x5357DE)
5357D8:  MOV             R1, R4
5357DA:  ADD             R0, PC; _ZTV16CTaskComplexChat_ptr
5357DC:  LDR             R2, [R0]; `vtable for'CTaskComplexChat ...
5357DE:  LDR.W           R0, [R1,#0x10]!; CEntity **
5357E2:  ADDS            R2, #8
5357E4:  STR             R2, [R4]
5357E6:  CMP             R0, #0
5357E8:  IT NE
5357EA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5357EE:  MOV             R0, R4; this
5357F0:  POP.W           {R4,R6,R7,LR}
5357F4:  B.W             sub_18EDE8
