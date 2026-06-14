; =========================================================
; Game Engine Function: _ZN16IKChainManager_c4ExitEv
; Address            : 0x4D31FC - 0x4D3262
; =========================================================

4D31FC:  PUSH            {R4-R7,LR}
4D31FE:  ADD             R7, SP, #0xC
4D3200:  PUSH.W          {R8-R10}
4D3204:  MOV             R9, R0
4D3206:  ADD.W           R8, R9, #0xB00
4D320A:  LDR.W           R5, [R9,#0xB00]
4D320E:  CBZ             R5, loc_4D324C
4D3210:  LDR             R0, =(g_boneNodeMan_ptr - 0x4D321A)
4D3212:  MOV.W           R10, #0
4D3216:  ADD             R0, PC; g_boneNodeMan_ptr
4D3218:  LDR             R6, [R0]; g_boneNodeMan
4D321A:  LDRD.W          R1, R0, [R5,#0xC]
4D321E:  CMP             R1, #1
4D3220:  BLT             loc_4D3238
4D3222:  MOVS            R4, #0
4D3224:  LDR.W           R1, [R0,R4,LSL#2]; BoneNode_c *
4D3228:  MOV             R0, R6; this
4D322A:  BLX             j__ZN17BoneNodeManager_c14ReturnBoneNodeEP10BoneNode_c; BoneNodeManager_c::ReturnBoneNode(BoneNode_c *)
4D322E:  LDRD.W          R1, R0, [R5,#0xC]; void *
4D3232:  ADDS            R4, #1
4D3234:  CMP             R4, R1
4D3236:  BLT             loc_4D3224
4D3238:  CMP             R0, #0
4D323A:  IT NE
4D323C:  BLXNE           _ZdaPv; operator delete[](void *)
4D3240:  LDR             R0, [R5,#4]
4D3242:  STR.W           R10, [R5,#0x10]
4D3246:  CMP             R0, #0
4D3248:  MOV             R5, R0
4D324A:  BNE             loc_4D321A
4D324C:  MOV             R0, R8; this
4D324E:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4D3252:  ADDW            R0, R9, #0xB0C; this
4D3256:  POP.W           {R8-R10}
4D325A:  POP.W           {R4-R7,LR}
4D325E:  B.W             sub_19CBF8
