; =========================================================
; Game Engine Function: _ZN12CEventDangerC2EP7CEntityf
; Address            : 0x377E2C - 0x377E76
; =========================================================

377E2C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventDanger::CEventDanger(CEntity *, float)'
377E2E:  ADD             R7, SP, #8
377E30:  VPUSH           {D8}
377E34:  MOV             R4, R0
377E36:  LDR             R0, =(_ZTV12CEventDanger_ptr - 0x377E42)
377E38:  MOVS            R3, #0
377E3A:  VMOV            S16, R2
377E3E:  ADD             R0, PC; _ZTV12CEventDanger_ptr
377E40:  STR             R3, [R4,#4]
377E42:  MOVW            R3, #0x100
377E46:  MOV             R2, R4
377E48:  LDR             R0, [R0]; `vtable for'CEventDanger ...
377E4A:  MOVT            R3, #0xC8
377E4E:  STR             R3, [R4,#8]
377E50:  MOVW            R3, #0xFFFF
377E54:  STRH            R3, [R4,#0xC]
377E56:  ADDS            R0, #8
377E58:  STR             R0, [R4]
377E5A:  CMP             R1, #0
377E5C:  STR.W           R1, [R2,#0x10]!
377E60:  ITTT NE
377E62:  MOVNE           R0, R1; this
377E64:  MOVNE           R1, R2; CEntity **
377E66:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
377E6A:  VSTR            S16, [R4,#0x14]
377E6E:  MOV             R0, R4
377E70:  VPOP            {D8}
377E74:  POP             {R4,R6,R7,PC}
