; =========================================================
; Game Engine Function: _ZN24CTaskComplexKillCriminalD2Ev
; Address            : 0x53DECC - 0x53DFC2
; =========================================================

53DECC:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexKillCriminal::~CTaskComplexKillCriminal()'
53DECE:  ADD             R7, SP, #0xC
53DED0:  PUSH.W          {R11}
53DED4:  MOV             R6, R0
53DED6:  LDR             R0, =(_ZTV24CTaskComplexKillCriminal_ptr - 0x53DEDE)
53DED8:  MOV             R1, R6
53DEDA:  ADD             R0, PC; _ZTV24CTaskComplexKillCriminal_ptr
53DEDC:  LDR             R2, [R0]; `vtable for'CTaskComplexKillCriminal ...
53DEDE:  LDR.W           R0, [R1,#0xC]!; CEntity **
53DEE2:  ADDS            R2, #8
53DEE4:  STR             R2, [R6]
53DEE6:  CMP             R0, #0
53DEE8:  IT NE
53DEEA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53DEEE:  MOV             R5, R6
53DEF0:  LDR.W           R0, [R5,#0x10]!
53DEF4:  CMP             R0, #0
53DEF6:  BEQ             loc_53DFB4
53DEF8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x53DEFE)
53DEFA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
53DEFC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
53DEFE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
53DF00:  STR.W           R1, [R0,#0x550]
53DF04:  LDR             R0, [R5]
53DF06:  LDR.W           R2, [R0,#0x488]
53DF0A:  LDR.W           R1, [R0,#0x484]
53DF0E:  LDR.W           R3, [R0,#0x48C]
53DF12:  BIC.W           R2, R2, #0x40 ; '@'
53DF16:  LDR.W           R4, [R0,#0x490]
53DF1A:  STR.W           R1, [R0,#0x484]
53DF1E:  MOV.W           R1, #0x3F800000
53DF22:  STR.W           R2, [R0,#0x488]
53DF26:  STR.W           R3, [R0,#0x48C]
53DF2A:  STR.W           R4, [R0,#0x490]
53DF2E:  LDR             R0, [R5]
53DF30:  STR.W           R1, [R0,#0x798]
53DF34:  LDR             R0, [R5]
53DF36:  LDR.W           R1, [R0,#0x590]
53DF3A:  CBZ             R1, loc_53DFAA
53DF3C:  MOVS            R0, #0
53DF3E:  STRH.W          R0, [R1,#0x4B0]
53DF42:  LDR             R0, [R5]
53DF44:  LDR.W           R0, [R0,#0x590]
53DF48:  LDR.W           R1, [R0,#0x430]
53DF4C:  BIC.W           R1, R1, #0x40 ; '@'
53DF50:  STR.W           R1, [R0,#0x430]
53DF54:  LDR             R0, [R5]
53DF56:  LDR.W           R1, [R0,#0x590]
53DF5A:  LDR.W           R2, [R1,#0x464]
53DF5E:  CMP             R2, R0
53DF60:  BNE             loc_53DFAA
53DF62:  MOVS            R0, #2
53DF64:  STRB.W          R0, [R1,#0x3BD]
53DF68:  MOVS            R1, #1
53DF6A:  LDR             R0, [R5]
53DF6C:  LDR.W           R0, [R0,#0x590]
53DF70:  STRB.W          R1, [R0,#0x3BE]
53DF74:  MOVS            R1, #0xA
53DF76:  LDR             R0, [R5]
53DF78:  LDR.W           R0, [R0,#0x590]
53DF7C:  STRB.W          R1, [R0,#0x3D4]
53DF80:  LDR             R0, [R5]
53DF82:  LDR.W           R0, [R0,#0x590]; this
53DF86:  LDRB.W          R1, [R0,#0x3A]
53DF8A:  AND.W           R1, R1, #0xF8; CVehicle *
53DF8E:  CMP             R1, #0x10
53DF90:  BEQ             loc_53DF9C
53DF92:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
53DF96:  LDR             R0, [R5]
53DF98:  LDR.W           R0, [R0,#0x590]
53DF9C:  LDR.W           R1, [R0,#0x430]
53DFA0:  BIC.W           R1, R1, #0x8000
53DFA4:  STR.W           R1, [R0,#0x430]
53DFA8:  LDR             R0, [R5]; this
53DFAA:  CMP             R0, #0
53DFAC:  ITT NE
53DFAE:  MOVNE           R1, R5; CEntity **
53DFB0:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53DFB4:  MOV             R0, R6; this
53DFB6:  POP.W           {R11}
53DFBA:  POP.W           {R4-R7,LR}
53DFBE:  B.W             sub_18EDE8
