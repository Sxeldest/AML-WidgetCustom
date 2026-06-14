; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun7AbortIKEP4CPed
; Address            : 0x4DBDFC - 0x4DBE86
; =========================================================

4DBDFC:  PUSH            {R4,R5,R7,LR}
4DBDFE:  ADD             R7, SP, #8
4DBE00:  MOV             R5, R0
4DBE02:  MOV             R4, R1
4DBE04:  LDRB.W          R0, [R5,#0x39]
4DBE08:  CBZ             R0, loc_4DBE50
4DBE0A:  LDR             R0, =(g_ikChainMan_ptr - 0x4DBE14)
4DBE0C:  MOVS            R1, #0; int
4DBE0E:  MOV             R2, R4; CPed *
4DBE10:  ADD             R0, PC; g_ikChainMan_ptr
4DBE12:  LDR             R0, [R0]; g_ikChainMan ; this
4DBE14:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
4DBE18:  CBZ             R0, loc_4DBE2A
4DBE1A:  LDR             R0, =(g_ikChainMan_ptr - 0x4DBE26)
4DBE1C:  MOVS            R1, #0; int
4DBE1E:  MOV             R2, R4; CPed *
4DBE20:  MOVS            R3, #0xFA; int
4DBE22:  ADD             R0, PC; g_ikChainMan_ptr
4DBE24:  LDR             R0, [R0]; g_ikChainMan ; this
4DBE26:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
4DBE2A:  LDR             R0, =(g_ikChainMan_ptr - 0x4DBE34)
4DBE2C:  MOVS            R1, #1; int
4DBE2E:  MOV             R2, R4; CPed *
4DBE30:  ADD             R0, PC; g_ikChainMan_ptr
4DBE32:  LDR             R0, [R0]; g_ikChainMan ; this
4DBE34:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
4DBE38:  CBZ             R0, loc_4DBE4A
4DBE3A:  LDR             R0, =(g_ikChainMan_ptr - 0x4DBE46)
4DBE3C:  MOVS            R1, #1; int
4DBE3E:  MOV             R2, R4; CPed *
4DBE40:  MOVS            R3, #0xFA; int
4DBE42:  ADD             R0, PC; g_ikChainMan_ptr
4DBE44:  LDR             R0, [R0]; g_ikChainMan ; this
4DBE46:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
4DBE4A:  MOVS            R0, #0
4DBE4C:  STRB.W          R0, [R5,#0x39]
4DBE50:  LDRB.W          R0, [R5,#0x3A]
4DBE54:  CBZ             R0, loc_4DBE78
4DBE56:  LDR             R0, =(g_ikChainMan_ptr - 0x4DBE5E)
4DBE58:  MOV             R1, R4; CPed *
4DBE5A:  ADD             R0, PC; g_ikChainMan_ptr
4DBE5C:  LDR             R0, [R0]; g_ikChainMan ; this
4DBE5E:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
4DBE62:  CBZ             R0, loc_4DBE72
4DBE64:  LDR             R0, =(g_ikChainMan_ptr - 0x4DBE6E)
4DBE66:  MOV             R1, R4; CPed *
4DBE68:  MOVS            R2, #0xFA; int
4DBE6A:  ADD             R0, PC; g_ikChainMan_ptr
4DBE6C:  LDR             R0, [R0]; g_ikChainMan ; this
4DBE6E:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
4DBE72:  MOVS            R0, #0
4DBE74:  STRB.W          R0, [R5,#0x3A]
4DBE78:  LDR.W           R0, [R4,#0x534]
4DBE7C:  BIC.W           R0, R0, #0x10
4DBE80:  STR.W           R0, [R4,#0x534]
4DBE84:  POP             {R4,R5,R7,PC}
