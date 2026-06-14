; =========================================================
; Game Engine Function: _ZN21CTaskComplexUseEffect18CreateFirstSubTaskEP4CPed
; Address            : 0x4EDDDC - 0x4EDE74
; =========================================================

4EDDDC:  PUSH            {R4-R7,LR}
4EDDDE:  ADD             R7, SP, #0xC
4EDDE0:  PUSH.W          {R11}
4EDDE4:  SUB             SP, SP, #8
4EDDE6:  MOV             R5, R0
4EDDE8:  MOV             R4, R1
4EDDEA:  MOV             R6, R5
4EDDEC:  LDR.W           R0, [R6,#0x18]!; this
4EDDF0:  CMP             R0, #0
4EDDF2:  ITT NE
4EDDF4:  MOVNE           R1, R6; CEntity **
4EDDF6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EDDFA:  CMP             R4, #0
4EDDFC:  STR             R4, [R6]
4EDDFE:  ITTT NE
4EDE00:  MOVNE           R0, R4; this
4EDE02:  MOVNE           R1, R6; CEntity **
4EDE04:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EDE08:  LDRB.W          R0, [R5,#0x20]
4EDE0C:  CBZ             R0, loc_4EDE2E
4EDE0E:  MOVS            R0, #0
4EDE10:  STR             R0, [R5,#0x14]
4EDE12:  MOVS            R0, #byte_8; this
4EDE14:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EDE18:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EDE1C:  LDR             R1, =(_ZTV15CTaskSimpleNone_ptr - 0x4EDE22)
4EDE1E:  ADD             R1, PC; _ZTV15CTaskSimpleNone_ptr
4EDE20:  LDR             R1, [R1]; `vtable for'CTaskSimpleNone ...
4EDE22:  ADDS            R1, #8
4EDE24:  STR             R1, [R0]
4EDE26:  ADD             SP, SP, #8
4EDE28:  POP.W           {R11}
4EDE2C:  POP             {R4-R7,PC}
4EDE2E:  LDR             R0, [R5,#0x10]
4EDE30:  CBZ             R0, loc_4EDE5A
4EDE32:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4EDE36:  LDR             R2, [R5,#0xC]; C2dEffect *
4EDE38:  LDR             R3, [R5,#0x10]; CEntity *
4EDE3A:  LDR             R1, [R5,#0x1C]
4EDE3C:  STR             R1, [SP,#0x18+var_18]; int
4EDE3E:  MOV             R1, R4; CPed *
4EDE40:  BLX             j__ZN20CPedAttractorManager24RegisterPedWithAttractorEP4CPedP9C2dEffectP7CEntityi; CPedAttractorManager::RegisterPedWithAttractor(CPed *,C2dEffect *,CEntity *,int)
4EDE44:  CMP             R0, #0
4EDE46:  STR             R0, [R5,#0x14]
4EDE48:  BEQ             loc_4EDE12
4EDE4A:  MOV             R1, R4; CPed *
4EDE4C:  ADD             SP, SP, #8
4EDE4E:  POP.W           {R11}
4EDE52:  POP.W           {R4-R7,LR}
4EDE56:  B.W             j_j__ZNK13CPedAttractor13GetTaskForPedEP4CPed; j_CPedAttractor::GetTaskForPed(CPed *)
4EDE5A:  LDR             R0, [R5,#0xC]
4EDE5C:  BLX             j__ZN18CScripted2dEffects8GetIndexEPK9C2dEffect; CScripted2dEffects::GetIndex(C2dEffect const*)
4EDE60:  CMP             R0, #0
4EDE62:  BLT             loc_4EDE0E
4EDE64:  LDR             R6, [R5,#0x10]
4EDE66:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4EDE6A:  LDR             R2, [R5,#0xC]
4EDE6C:  CMP             R6, #0
4EDE6E:  BNE             loc_4EDE38
4EDE70:  MOVS            R3, #0
4EDE72:  B               loc_4EDE3A
