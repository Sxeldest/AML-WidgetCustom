; =========================================================
; Game Engine Function: _ZN23CEventBuildingCollisionD2Ev
; Address            : 0x378050 - 0x378072
; =========================================================

378050:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventBuildingCollision::~CEventBuildingCollision()'
378052:  ADD             R7, SP, #8
378054:  MOV             R4, R0
378056:  LDR             R0, =(_ZTV23CEventBuildingCollision_ptr - 0x37805E)
378058:  MOV             R1, R4
37805A:  ADD             R0, PC; _ZTV23CEventBuildingCollision_ptr
37805C:  LDR             R2, [R0]; `vtable for'CEventBuildingCollision ...
37805E:  LDR.W           R0, [R1,#0x14]!; CEntity **
378062:  ADDS            R2, #8
378064:  STR             R2, [R4]
378066:  CMP             R0, #0
378068:  IT NE
37806A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37806E:  MOV             R0, R4
378070:  POP             {R4,R6,R7,PC}
