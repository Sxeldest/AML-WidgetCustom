; =========================================================
; Game Engine Function: _ZN30CEventLeaderEnteredCarAsDriverD2Ev
; Address            : 0x37864C - 0x37866E
; =========================================================

37864C:  PUSH            {R4,R6,R7,LR}
37864E:  ADD             R7, SP, #8
378650:  MOV             R4, R0
378652:  LDR             R0, =(_ZTV30CEventLeaderEnteredCarAsDriver_ptr - 0x37865A)
378654:  MOV             R1, R4
378656:  ADD             R0, PC; _ZTV30CEventLeaderEnteredCarAsDriver_ptr
378658:  LDR             R2, [R0]; `vtable for'CEventLeaderEnteredCarAsDriver ...
37865A:  LDR.W           R0, [R1,#0x10]!; CEntity **
37865E:  ADDS            R2, #8
378660:  STR             R2, [R4]
378662:  CMP             R0, #0
378664:  IT NE
378666:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37866A:  MOV             R0, R4
37866C:  POP             {R4,R6,R7,PC}
