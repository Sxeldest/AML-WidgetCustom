; =========================================================
; Game Engine Function: _ZN12CAnimManager10InitialiseEv
; Address            : 0x471F24 - 0x471FCE
; =========================================================

471F24:  PUSH            {R4,R6,R7,LR}
471F26:  ADD             R7, SP, #8
471F28:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x471F32)
471F2A:  MOVS            R3, #0
471F2C:  LDR             R2, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x471F36)
471F2E:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
471F30:  LDR             R1, =(_ZN12CAnimManager16ms_numAnimationsE_ptr - 0x471F38)
471F32:  ADD             R2, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
471F34:  ADD             R1, PC; _ZN12CAnimManager16ms_numAnimationsE_ptr
471F36:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
471F38:  LDR             R2, [R2]; CAnimManager::ms_numAnimAssocDefinitions ...
471F3A:  LDR             R1, [R1]; CAnimManager::ms_numAnimations ...
471F3C:  STR             R3, [R0]; CAnimManager::ms_numAnimBlocks
471F3E:  MOVS            R0, #0x76 ; 'v'
471F40:  STR             R0, [R2]; CAnimManager::ms_numAnimAssocDefinitions
471F42:  MOV.W           R0, #0x258; unsigned int
471F46:  STR             R3, [R1]; CAnimManager::ms_numAnimations
471F48:  BLX             _Znaj; operator new[](uint)
471F4C:  LDR             R1, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x471F5A)
471F4E:  ADD.W           R3, R0, #0x24C
471F52:  ADD.W           LR, R0, #0x240
471F56:  ADD             R1, PC; _ZN12CAnimManager12ms_animCacheE_ptr
471F58:  LDR             R1, [R1]; CAnimManager::ms_animCache ...
471F5A:  ADD.W           R2, R1, #0xC
471F5E:  ADD.W           R12, R1, #0x18
471F62:  STR             R0, [R1,#(dword_9421B8 - 0x942188)]
471F64:  STR             R2, [R1,#(dword_942190 - 0x942188)]
471F66:  ADD.W           R2, R1, #0x24 ; '$'
471F6A:  STR             R1, [R1,#(dword_942198 - 0x942188)]
471F6C:  STR             R3, [R1,#(dword_9421B0 - 0x942188)]
471F6E:  STRD.W          R12, R2, [R0,#0x250]
471F72:  STR             R3, [R1,#(dword_9421A8 - 0x942188)]
471F74:  STR.W           R3, [R0,#0x248]
471F78:  LDR             R3, [R1,#(dword_9421A8 - 0x942188)]
471F7A:  STR.W           LR, [R3,#4]
471F7E:  LDR             R3, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x471F8A)
471F80:  STR.W           R12, [R0,#0x244]
471F84:  MOVS            R0, #0x30 ; '0'
471F86:  ADD             R3, PC; _ZN12CAnimManager12ms_animCacheE_ptr
471F88:  STR.W           LR, [R1,#(dword_9421A8 - 0x942188)]
471F8C:  MOV.W           R1, #0x234
471F90:  LDR.W           R12, [R3]; CAnimManager::ms_animCache ...
471F94:  LDR.W           R4, [R12,#(dword_9421B8 - 0x942188)]
471F98:  SUBS            R0, #1; this
471F9A:  ADDS            R3, R4, R1
471F9C:  SUBS            R1, #0xC
471F9E:  STR.W           LR, [R3,#8]
471FA2:  LDR.W           R2, [R12,#(dword_9421A8 - 0x942188)]
471FA6:  STR             R3, [R2,#4]
471FA8:  ADD.W           R2, R12, #0x18
471FAC:  STR             R2, [R3,#4]
471FAE:  ADD.W           R2, R0, R0,LSL#1
471FB2:  STR.W           R3, [R12,#(dword_9421A8 - 0x942188)]
471FB6:  ADD.W           LR, R4, R2,LSL#2
471FBA:  ADDS.W          R2, R1, #0xC
471FBE:  BNE             loc_471F94
471FC0:  BLX             j__ZN12CAnimManager30ReadAnimAssociationDefinitionsEv; CAnimManager::ReadAnimAssociationDefinitions(void)
471FC4:  ADR             R0, off_471FE4; this
471FC6:  POP.W           {R4,R6,R7,LR}
471FCA:  B.W             j_j__ZN12CAnimManager17RegisterAnimBlockEPKc; j_CAnimManager::RegisterAnimBlock(char const*)
