; =========================================================
; Game Engine Function: _ZN21CTaskSimpleGunControl16ChangeFiringTaskEaP7CEntityP7CVectorS3_
; Address            : 0x4DE8B4 - 0x4DE91E
; =========================================================

4DE8B4:  PUSH            {R4-R7,LR}
4DE8B6:  ADD             R7, SP, #0xC
4DE8B8:  PUSH.W          {R8}
4DE8BC:  MOV             R4, R0
4DE8BE:  MOV             R6, R2
4DE8C0:  LDRB.W          R0, [R4,#0x2E]
4DE8C4:  UXTB            R2, R1
4DE8C6:  MOV             R8, R3
4DE8C8:  CMP             R0, R2
4DE8CA:  ITTT NE
4DE8CC:  MOVNE           R0, #0
4DE8CE:  STRNE           R0, [R4,#0x34]
4DE8D0:  STRBNE.W        R1, [R4,#0x2E]
4DE8D4:  CBZ             R6, loc_4DE8F2
4DE8D6:  MOV             R5, R4
4DE8D8:  LDR.W           R0, [R5,#0xC]!; this
4DE8DC:  CBZ             R0, loc_4DE8E8
4DE8DE:  CMP             R0, R6
4DE8E0:  ITT NE
4DE8E2:  MOVNE           R1, R5; CEntity **
4DE8E4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DE8E8:  MOV             R0, R6; this
4DE8EA:  MOV             R1, R5; CEntity **
4DE8EC:  STR             R6, [R5]
4DE8EE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DE8F2:  LDR             R0, [R7,#arg_0]
4DE8F4:  CMP.W           R8, #0
4DE8F8:  ITTTT NE
4DE8FA:  VLDRNE          D16, [R8]
4DE8FE:  LDRNE.W         R1, [R8,#8]
4DE902:  STRNE           R1, [R4,#0x18]
4DE904:  VSTRNE          D16, [R4,#0x10]
4DE908:  CMP             R0, #0
4DE90A:  ITTTT NE
4DE90C:  VLDRNE          D16, [R0]
4DE910:  LDRNE           R0, [R0,#8]
4DE912:  STRNE           R0, [R4,#0x24]
4DE914:  VSTRNE          D16, [R4,#0x1C]
4DE918:  POP.W           {R8}
4DE91C:  POP             {R4-R7,PC}
