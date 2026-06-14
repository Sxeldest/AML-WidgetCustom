; =========================================================
; Game Engine Function: _ZN13CEventSexyPedD2Ev
; Address            : 0x37480C - 0x37482E
; =========================================================

37480C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventSexyPed::~CEventSexyPed()'
37480E:  ADD             R7, SP, #8
374810:  MOV             R4, R0
374812:  LDR             R0, =(_ZTV13CEventSexyPed_ptr - 0x37481A)
374814:  MOV             R1, R4
374816:  ADD             R0, PC; _ZTV13CEventSexyPed_ptr
374818:  LDR             R2, [R0]; `vtable for'CEventSexyPed ...
37481A:  LDR.W           R0, [R1,#0x10]!; CEntity **
37481E:  ADDS            R2, #8
374820:  STR             R2, [R4]
374822:  CMP             R0, #0
374824:  IT NE
374826:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37482A:  MOV             R0, R4
37482C:  POP             {R4,R6,R7,PC}
