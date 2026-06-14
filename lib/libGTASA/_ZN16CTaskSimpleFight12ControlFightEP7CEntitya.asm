; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight12ControlFightEP7CEntitya
; Address            : 0x4DA1E4 - 0x4DA230
; =========================================================

4DA1E4:  PUSH            {R4-R7,LR}
4DA1E6:  ADD             R7, SP, #0xC
4DA1E8:  PUSH.W          {R8}
4DA1EC:  MOV             R5, R0
4DA1EE:  MOV             R6, R1
4DA1F0:  MOV             R4, R5
4DA1F2:  MOV             R8, R2
4DA1F4:  LDR.W           R0, [R4,#0x18]!; this
4DA1F8:  MOVS            R1, #1
4DA1FA:  CMP             R0, R6
4DA1FC:  STRB.W          R1, [R4,#-0xF]
4DA200:  BEQ             loc_4DA21A
4DA202:  CMP             R0, #0
4DA204:  ITT NE
4DA206:  MOVNE           R1, R4; CEntity **
4DA208:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DA20C:  CMP             R6, #0
4DA20E:  STR             R6, [R4]
4DA210:  ITTT NE
4DA212:  MOVNE           R0, R6; this
4DA214:  MOVNE           R1, R4; CEntity **
4DA216:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DA21A:  LDRSB.W         R0, [R5,#0x26]
4DA21E:  CMP             R0, R8
4DA220:  MOV.W           R0, #1
4DA224:  IT LT
4DA226:  STRBLT.W        R8, [R5,#0x26]
4DA22A:  POP.W           {R8}
4DA22E:  POP             {R4-R7,PC}
