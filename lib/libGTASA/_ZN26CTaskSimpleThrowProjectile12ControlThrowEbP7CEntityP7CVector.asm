; =========================================================
; Game Engine Function: _ZN26CTaskSimpleThrowProjectile12ControlThrowEbP7CEntityP7CVector
; Address            : 0x4DED94 - 0x4DEE0A
; =========================================================

4DED94:  PUSH            {R4-R7,LR}
4DED96:  ADD             R7, SP, #0xC
4DED98:  PUSH.W          {R8}
4DED9C:  MOV             R5, R0
4DED9E:  MOV             R8, R3
4DEDA0:  LDRB            R0, [R5,#8]
4DEDA2:  MOV             R6, R2
4DEDA4:  CMP             R0, #0
4DEDA6:  ITTT NE
4DEDA8:  MOVNE           R0, #1
4DEDAA:  POPNE.W         {R8}
4DEDAE:  POPNE           {R4-R7,PC}
4DEDB0:  CMP             R1, #1
4DEDB2:  ITT EQ
4DEDB4:  LDRBEQ          R0, [R5,#0xA]
4DEDB6:  CMPEQ           R0, #0
4DEDB8:  BNE             loc_4DEDCC
4DEDBA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DEDC4)
4DEDBC:  MOVS            R2, #1
4DEDBE:  LDR             R1, [R5,#0x20]
4DEDC0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DEDC2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DEDC4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4DEDC6:  STRB            R2, [R5,#0xA]
4DEDC8:  SUBS            R0, R0, R1
4DEDCA:  STR             R0, [R5,#0x20]
4DEDCC:  CMP             R6, #0
4DEDCE:  ITTT NE
4DEDD0:  MOVNE           R4, R5
4DEDD2:  LDRNE.W         R0, [R4,#0x10]!; this
4DEDD6:  CMPNE           R0, R6
4DEDD8:  BEQ             loc_4DEDEE
4DEDDA:  CMP             R0, #0
4DEDDC:  ITT NE
4DEDDE:  MOVNE           R1, R4; CEntity **
4DEDE0:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DEDE4:  MOV             R0, R6; this
4DEDE6:  MOV             R1, R4; CEntity **
4DEDE8:  STR             R6, [R4]
4DEDEA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DEDEE:  CMP.W           R8, #0
4DEDF2:  ITTTT NE
4DEDF4:  VLDRNE          D16, [R8]
4DEDF8:  LDRNE.W         R0, [R8,#8]
4DEDFC:  STRNE           R0, [R5,#0x1C]
4DEDFE:  VSTRNE          D16, [R5,#0x14]
4DEE02:  MOVS            R0, #0
4DEE04:  POP.W           {R8}
4DEE08:  POP             {R4-R7,PC}
