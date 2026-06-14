; =========================================================
; Game Engine Function: alEffecti
; Address            : 0x1DAD60 - 0x1DAE44
; =========================================================

1DAD60:  PUSH            {R4-R7,R11,LR}
1DAD64:  ADD             R11, SP, #0x10
1DAD68:  MOV             R5, R2
1DAD6C:  MOV             R6, R1
1DAD70:  MOV             R7, R0
1DAD74:  BL              j_GetContextRef
1DAD78:  MOV             R4, R0
1DAD7C:  CMP             R4, #0
1DAD80:  POPEQ           {R4-R7,R11,PC}
1DAD84:  LDR             R0, [R4,#0xFC]
1DAD88:  MOV             R1, R7
1DAD8C:  ADD             R0, R0, #0x60 ; '`'
1DAD90:  BL              j_LookupUIntMapKey
1DAD94:  CMP             R0, #0
1DAD98:  BEQ             loc_1DAE08
1DAD9C:  MOVW            R1, #0x8001
1DADA0:  CMP             R6, R1
1DADA4:  BNE             loc_1DAE18
1DADA8:  CMP             R5, #0
1DADAC:  BEQ             loc_1DAE30
1DADB0:  LDR             R1, =(EffectList_ptr - 0x1DADBC)
1DADB4:  LDR             R1, [PC,R1]; EffectList
1DADB8:  LDR             R3, [R1,#(dword_230870 - 0x230864)]
1DADBC:  CMP             R3, #0
1DADC0:  BEQ             loc_1DADFC
1DADC4:  LDR             R1, =(EffectList_ptr - 0x1DADD4)
1DADC8:  LDR             R2, =(DisabledEffects_ptr - 0x1DADD8)
1DADCC:  LDR             R1, [PC,R1]; EffectList
1DADD0:  LDR             R2, [PC,R2]; DisabledEffects
1DADD4:  ADD             R1, R1, #0x1C
1DADD8:  CMP             R3, R5
1DADDC:  BNE             loc_1DADF0
1DADE0:  LDR             R3, [R1,#-0x18]
1DADE4:  LDRB            R3, [R2,R3]
1DADE8:  CMP             R3, #0
1DADEC:  BEQ             loc_1DAE30
1DADF0:  LDR             R3, [R1],#0x10
1DADF4:  CMP             R3, #0
1DADF8:  BNE             loc_1DADD8
1DADFC:  MOV             R0, R4
1DAE00:  MOVW            R1, #0xA003
1DAE04:  B               loc_1DAE10
1DAE08:  MOV             R0, R4
1DAE0C:  MOVW            R1, #0xA001
1DAE10:  BL              j_alSetError
1DAE14:  B               loc_1DAE38
1DAE18:  LDR             R7, [R0,#0x94]
1DAE1C:  MOV             R1, R4
1DAE20:  MOV             R2, R6
1DAE24:  MOV             R3, R5
1DAE28:  BLX             R7
1DAE2C:  B               loc_1DAE38
1DAE30:  MOV             R1, R5
1DAE34:  BL              sub_1DAE50
1DAE38:  MOV             R0, R4
1DAE3C:  POP             {R4-R7,R11,LR}
1DAE40:  B               j_ALCcontext_DecRef
