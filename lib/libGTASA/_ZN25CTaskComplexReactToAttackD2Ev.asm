; =========================================================
; Game Engine Function: _ZN25CTaskComplexReactToAttackD2Ev
; Address            : 0x4DFE5C - 0x4DFE84
; =========================================================

4DFE5C:  PUSH            {R4,R6,R7,LR}
4DFE5E:  ADD             R7, SP, #8
4DFE60:  MOV             R4, R0
4DFE62:  LDR             R0, =(_ZTV25CTaskComplexReactToAttack_ptr - 0x4DFE6A)
4DFE64:  MOV             R1, R4
4DFE66:  ADD             R0, PC; _ZTV25CTaskComplexReactToAttack_ptr
4DFE68:  LDR             R2, [R0]; `vtable for'CTaskComplexReactToAttack ...
4DFE6A:  LDR.W           R0, [R1,#0x14]!; CEntity **
4DFE6E:  ADDS            R2, #8
4DFE70:  STR             R2, [R4]
4DFE72:  CMP             R0, #0
4DFE74:  IT NE
4DFE76:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DFE7A:  MOV             R0, R4; this
4DFE7C:  POP.W           {R4,R6,R7,LR}
4DFE80:  B.W             sub_18EDE8
