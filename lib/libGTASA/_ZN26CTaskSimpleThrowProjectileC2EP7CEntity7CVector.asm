; =========================================================
; Game Engine Function: _ZN26CTaskSimpleThrowProjectileC2EP7CEntity7CVector
; Address            : 0x4DE920 - 0x4DE974
; =========================================================

4DE920:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleThrowProjectile::CTaskSimpleThrowProjectile(CEntity *, CVector)'
4DE922:  ADD             R7, SP, #0xC
4DE924:  PUSH.W          {R8}
4DE928:  MOV             R8, R3
4DE92A:  MOV             R6, R2
4DE92C:  MOV             R5, R1
4DE92E:  MOV             R4, R0
4DE930:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DE934:  LDR             R0, =(_ZTV26CTaskSimpleThrowProjectile_ptr - 0x4DE940)
4DE936:  MOVS            R2, #0
4DE938:  LDR             R1, [R7,#arg_0]
4DE93A:  CMP             R5, #0
4DE93C:  ADD             R0, PC; _ZTV26CTaskSimpleThrowProjectile_ptr
4DE93E:  STRH            R2, [R4,#8]
4DE940:  STRB            R2, [R4,#0xA]
4DE942:  LDR             R0, [R0]; `vtable for'CTaskSimpleThrowProjectile ...
4DE944:  STR             R2, [R4,#0xC]
4DE946:  STR             R6, [R4,#0x14]
4DE948:  ADD.W           R0, R0, #8
4DE94C:  STR             R1, [R4,#0x1C]
4DE94E:  MOV             R1, R4
4DE950:  STR.W           R8, [R4,#0x18]
4DE954:  STR             R0, [R4]
4DE956:  STR.W           R5, [R1,#0x10]!; CEntity **
4DE95A:  ITT NE
4DE95C:  MOVNE           R0, R5; this
4DE95E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DE962:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DE968)
4DE964:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DE966:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DE968:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4DE96A:  STR             R0, [R4,#0x20]
4DE96C:  MOV             R0, R4
4DE96E:  POP.W           {R8}
4DE972:  POP             {R4-R7,PC}
