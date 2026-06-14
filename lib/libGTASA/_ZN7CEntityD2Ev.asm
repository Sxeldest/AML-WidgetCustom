; =========================================================
; Game Engine Function: _ZN7CEntityD2Ev
; Address            : 0x3EAF38 - 0x3EAF72
; =========================================================

3EAF38:  PUSH            {R4,R6,R7,LR}
3EAF3A:  ADD             R7, SP, #8
3EAF3C:  MOV             R4, R0
3EAF3E:  LDR             R0, =(_ZTV7CEntity_ptr - 0x3EAF46)
3EAF40:  LDR             R1, [R4,#0x34]
3EAF42:  ADD             R0, PC; _ZTV7CEntity_ptr
3EAF44:  CMP             R1, #0
3EAF46:  LDR             R0, [R0]; `vtable for'CEntity ...
3EAF48:  ADD.W           R0, R0, #8
3EAF4C:  STR             R0, [R4]
3EAF4E:  ITTTT NE
3EAF50:  LDRBNE.W        R0, [R1,#0x3B]
3EAF54:  SUBNE           R0, #1
3EAF56:  STRBNE.W        R0, [R1,#0x3B]
3EAF5A:  LDRNE           R0, [R4]
3EAF5C:  LDR             R1, [R0,#0x24]
3EAF5E:  MOV             R0, R4
3EAF60:  BLX             R1
3EAF62:  MOV             R0, R4; this
3EAF64:  BLX             j__ZN7CEntity17ResolveReferencesEv; CEntity::ResolveReferences(void)
3EAF68:  MOV             R0, R4; this
3EAF6A:  POP.W           {R4,R6,R7,LR}
3EAF6E:  B.W             sub_18E264
