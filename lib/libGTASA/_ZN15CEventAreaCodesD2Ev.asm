; =========================================================
; Game Engine Function: _ZN15CEventAreaCodesD2Ev
; Address            : 0x378078 - 0x37809A
; =========================================================

378078:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventAreaCodes::~CEventAreaCodes()'
37807A:  ADD             R7, SP, #8
37807C:  MOV             R4, R0
37807E:  LDR             R0, =(_ZTV15CEventAreaCodes_ptr - 0x378086)
378080:  MOV             R1, R4
378082:  ADD             R0, PC; _ZTV15CEventAreaCodes_ptr
378084:  LDR             R2, [R0]; `vtable for'CEventAreaCodes ...
378086:  LDR.W           R0, [R1,#0xC]!; CEntity **
37808A:  ADDS            R2, #8
37808C:  STR             R2, [R4]
37808E:  CMP             R0, #0
378090:  IT NE
378092:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378096:  MOV             R0, R4
378098:  POP             {R4,R6,R7,PC}
