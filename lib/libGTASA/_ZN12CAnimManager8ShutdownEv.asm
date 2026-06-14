; =========================================================
; Game Engine Function: _ZN12CAnimManager8ShutdownEv
; Address            : 0x38DC50 - 0x38DCEA
; =========================================================

38DC50:  PUSH            {R4-R7,LR}
38DC52:  ADD             R7, SP, #0xC
38DC54:  PUSH.W          {R11}
38DC58:  MOVS            R4, #0
38DC5A:  MOVW            R5, #0x63E7
38DC5E:  ADDS            R0, R4, R5; this
38DC60:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
38DC64:  ADDS            R4, #1
38DC66:  CMP             R4, #0xB4
38DC68:  BNE             loc_38DC5E
38DC6A:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38DC70)
38DC6C:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38DC6E:  LDR             R0, [R0]; CAnimManager::ms_numAnimations ...
38DC70:  LDR             R0, [R0]; CAnimManager::ms_numAnimations
38DC72:  CMP             R0, #1
38DC74:  BLT             loc_38DC94
38DC76:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x38DC7E)
38DC78:  MOVS            R5, #0
38DC7A:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
38DC7C:  LDR             R4, [R0]; CAnimManager::ms_aAnimations ...
38DC7E:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x38DC84)
38DC80:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
38DC82:  LDR             R6, [R0]; CAnimManager::ms_numAnimations ...
38DC84:  MOV             R0, R4; this
38DC86:  BLX             j__ZN19CAnimBlendHierarchy8ShutdownEv; CAnimBlendHierarchy::Shutdown(void)
38DC8A:  LDR             R0, [R6]; CAnimManager::ms_numAnimations
38DC8C:  ADDS            R5, #1
38DC8E:  ADDS            R4, #0x18
38DC90:  CMP             R5, R0
38DC92:  BLT             loc_38DC84
38DC94:  LDR             R0, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x38DC9A)
38DC96:  ADD             R0, PC; _ZN12CAnimManager12ms_animCacheE_ptr
38DC98:  LDR             R0, [R0]; CAnimManager::ms_animCache ...
38DC9A:  LDR             R0, [R0,#(dword_9421B8 - 0x942188)]; void *
38DC9C:  CMP             R0, #0
38DC9E:  IT NE
38DCA0:  BLXNE           _ZdaPv; operator delete[](void *)
38DCA4:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x38DCAE)
38DCA6:  MOVS            R2, #0
38DCA8:  LDR             R1, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x38DCB0)
38DCAA:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
38DCAC:  ADD             R1, PC; _ZN12CAnimManager12ms_animCacheE_ptr
38DCAE:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
38DCB0:  LDR             R1, [R1]; CAnimManager::ms_animCache ...
38DCB2:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
38DCB4:  STR             R2, [R1,#(dword_9421B8 - 0x942188)]
38DCB6:  CBZ             R0, loc_38DCE4
38DCB8:  LDR.W           R1, [R0,#-4]
38DCBC:  SUB.W           R4, R0, #8
38DCC0:  CBZ             R1, loc_38DCD6
38DCC2:  SUB.W           R5, R0, #0x14
38DCC6:  ADD.W           R0, R1, R1,LSL#2
38DCCA:  LSLS            R6, R0, #2
38DCCC:  ADDS            R0, R5, R6; this
38DCCE:  BLX             j__ZN20CAnimBlendAssocGroupD2Ev; CAnimBlendAssocGroup::~CAnimBlendAssocGroup()
38DCD2:  SUBS            R6, #0x14
38DCD4:  BNE             loc_38DCCC
38DCD6:  MOV             R0, R4; void *
38DCD8:  POP.W           {R11}
38DCDC:  POP.W           {R4-R7,LR}
38DCE0:  B.W             sub_18E920
38DCE4:  POP.W           {R11}
38DCE8:  POP             {R4-R7,PC}
