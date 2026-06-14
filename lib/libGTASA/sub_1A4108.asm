; =========================================================
; Game Engine Function: sub_1A4108
; Address            : 0x1A4108 - 0x1A4158
; =========================================================

1A4108:  PUSH            {R4,R6,R7,LR}
1A410A:  ADD             R7, SP, #8
1A410C:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x1A4116)
1A410E:  MOVW            R4, #0xEA60
1A4112:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
1A4114:  LDR             R0, [R0]; this
1A4116:  BLX             j__ZN19CAnimBlendHierarchyC2Ev; CAnimBlendHierarchy::CAnimBlendHierarchy(void)
1A411A:  SUBS            R4, #0x18
1A411C:  ADD.W           R0, R0, #0x18
1A4120:  BNE             loc_1A4116
1A4122:  LDR             R0, =(sub_1A40E0+1 - 0x1A412E)
1A4124:  MOVS            R1, #0; obj
1A4126:  LDR             R2, =(unk_67A000 - 0x1A4130)
1A4128:  MOVS            R4, #0
1A412A:  ADD             R0, PC; sub_1A40E0 ; lpfunc
1A412C:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A412E:  BLX             __cxa_atexit
1A4132:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x1A413A)
1A4134:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x1A413C)
1A4136:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
1A4138:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
1A413A:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
1A413C:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
1A413E:  ADD.W           R1, R1, #0x1680
1A4142:  STRH            R4, [R0,#0x12]
1A4144:  STRB            R4, [R0]; CAnimManager::ms_aAnimBlocks
1A4146:  ADDS            R0, #0x20 ; ' '
1A4148:  CMP             R0, R1
1A414A:  BNE             loc_1A4142
1A414C:  LDR             R0, =(_ZN12CAnimManager12ms_animCacheE_ptr - 0x1A4154)
1A414E:  MOVS            R1, #0
1A4150:  ADD             R0, PC; _ZN12CAnimManager12ms_animCacheE_ptr
1A4152:  LDR             R0, [R0]; CAnimManager::ms_animCache ...
1A4154:  STR             R1, [R0,#(dword_9421B8 - 0x942188)]
1A4156:  POP             {R4,R6,R7,PC}
