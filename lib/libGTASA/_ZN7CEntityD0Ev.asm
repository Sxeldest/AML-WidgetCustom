; =========================================================
; Game Engine Function: _ZN7CEntityD0Ev
; Address            : 0x3EAF78 - 0x3EAFB6
; =========================================================

3EAF78:  PUSH            {R4,R6,R7,LR}
3EAF7A:  ADD             R7, SP, #8
3EAF7C:  MOV             R4, R0
3EAF7E:  LDR             R0, =(_ZTV7CEntity_ptr - 0x3EAF86)
3EAF80:  LDR             R1, [R4,#0x34]
3EAF82:  ADD             R0, PC; _ZTV7CEntity_ptr
3EAF84:  CMP             R1, #0
3EAF86:  LDR             R0, [R0]; `vtable for'CEntity ...
3EAF88:  ADD.W           R0, R0, #8
3EAF8C:  STR             R0, [R4]
3EAF8E:  ITTTT NE
3EAF90:  LDRBNE.W        R0, [R1,#0x3B]
3EAF94:  SUBNE           R0, #1
3EAF96:  STRBNE.W        R0, [R1,#0x3B]
3EAF9A:  LDRNE           R0, [R4]
3EAF9C:  LDR             R1, [R0,#0x24]
3EAF9E:  MOV             R0, R4
3EAFA0:  BLX             R1
3EAFA2:  MOV             R0, R4; this
3EAFA4:  BLX             j__ZN7CEntity17ResolveReferencesEv; CEntity::ResolveReferences(void)
3EAFA8:  MOV             R0, R4; this
3EAFAA:  BLX             j__ZN10CPlaceableD2Ev; CPlaceable::~CPlaceable()
3EAFAE:  POP.W           {R4,R6,R7,LR}
3EAFB2:  B.W             j__ZdlPv; operator delete(void *)
