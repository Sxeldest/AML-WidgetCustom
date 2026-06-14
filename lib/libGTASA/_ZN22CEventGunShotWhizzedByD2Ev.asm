; =========================================================
; Game Engine Function: _ZN22CEventGunShotWhizzedByD2Ev
; Address            : 0x370B94 - 0x370BB6
; =========================================================

370B94:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventGunShot::~CEventGunShot()'
370B96:  ADD             R7, SP, #8
370B98:  MOV             R4, R0
370B9A:  LDR             R0, =(_ZTV13CEventGunShot_ptr - 0x370BA2)
370B9C:  MOV             R1, R4
370B9E:  ADD             R0, PC; _ZTV13CEventGunShot_ptr
370BA0:  LDR             R2, [R0]; `vtable for'CEventGunShot ...
370BA2:  LDR.W           R0, [R1,#0x10]!; CEntity **
370BA6:  ADDS            R2, #8
370BA8:  STR             R2, [R4]
370BAA:  CMP             R0, #0
370BAC:  IT NE
370BAE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
370BB2:  MOV             R0, R4
370BB4:  POP             {R4,R6,R7,PC}
