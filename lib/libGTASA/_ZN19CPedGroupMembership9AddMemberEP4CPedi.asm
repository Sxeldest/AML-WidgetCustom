; =========================================================
; Game Engine Function: _ZN19CPedGroupMembership9AddMemberEP4CPedi
; Address            : 0x4B1F58 - 0x4B1F88
; =========================================================

4B1F58:  PUSH            {R4,R6,R7,LR}
4B1F5A:  ADD             R7, SP, #8
4B1F5C:  ADD.W           R4, R0, R2,LSL#2
4B1F60:  MOV             R0, R1; this
4B1F62:  STR.W           R1, [R4,#4]!
4B1F66:  MOV             R1, R4; CEntity **
4B1F68:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4B1F6C:  LDR             R0, [R4]; this
4B1F6E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4B1F72:  CMP             R0, #0
4B1F74:  IT NE
4B1F76:  POPNE           {R4,R6,R7,PC}
4B1F78:  LDR             R0, [R4]
4B1F7A:  MOVS            R1, #0; int
4B1F7C:  LDR.W           R0, [R0,#0x440]; this
4B1F80:  POP.W           {R4,R6,R7,LR}
4B1F84:  B.W             sub_19F018
