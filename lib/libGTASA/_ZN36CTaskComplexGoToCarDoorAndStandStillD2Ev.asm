; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStillD2Ev
; Address            : 0x4FFA70 - 0x4FFAA2
; =========================================================

4FFA70:  PUSH            {R4,R6,R7,LR}
4FFA72:  ADD             R7, SP, #8
4FFA74:  MOV             R4, R0
4FFA76:  LDR             R0, =(_ZTV36CTaskComplexGoToCarDoorAndStandStill_ptr - 0x4FFA7E)
4FFA78:  MOV             R1, R4
4FFA7A:  ADD             R0, PC; _ZTV36CTaskComplexGoToCarDoorAndStandStill_ptr
4FFA7C:  LDR             R2, [R0]; `vtable for'CTaskComplexGoToCarDoorAndStandStill ...
4FFA7E:  LDR.W           R0, [R1,#0xC]!; CEntity **
4FFA82:  ADDS            R2, #8
4FFA84:  STR             R2, [R4]
4FFA86:  CMP             R0, #0
4FFA88:  IT NE
4FFA8A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FFA8E:  LDR             R0, [R4,#0x4C]; void *
4FFA90:  CMP             R0, #0
4FFA92:  IT NE
4FFA94:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
4FFA98:  MOV             R0, R4; this
4FFA9A:  POP.W           {R4,R6,R7,LR}
4FFA9E:  B.W             sub_18EDE8
