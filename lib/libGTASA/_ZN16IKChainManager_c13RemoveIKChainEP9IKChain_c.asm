; =========================================================
; Game Engine Function: _ZN16IKChainManager_c13RemoveIKChainEP9IKChain_c
; Address            : 0x4D3408 - 0x4D3460
; =========================================================

4D3408:  PUSH            {R4-R7,LR}
4D340A:  ADD             R7, SP, #0xC
4D340C:  PUSH.W          {R8}
4D3410:  MOV             R4, R1
4D3412:  MOV             R8, R0
4D3414:  LDRD.W          R1, R0, [R4,#0xC]
4D3418:  CMP             R1, #1
4D341A:  BLT             loc_4D3438
4D341C:  LDR             R1, =(g_boneNodeMan_ptr - 0x4D3424)
4D341E:  MOVS            R5, #0
4D3420:  ADD             R1, PC; g_boneNodeMan_ptr
4D3422:  LDR             R6, [R1]; g_boneNodeMan
4D3424:  LDR.W           R1, [R0,R5,LSL#2]; BoneNode_c *
4D3428:  MOV             R0, R6; this
4D342A:  BLX             j__ZN17BoneNodeManager_c14ReturnBoneNodeEP10BoneNode_c; BoneNodeManager_c::ReturnBoneNode(BoneNode_c *)
4D342E:  LDRD.W          R1, R0, [R4,#0xC]; void *
4D3432:  ADDS            R5, #1
4D3434:  CMP             R5, R1
4D3436:  BLT             loc_4D3424
4D3438:  CMP             R0, #0
4D343A:  IT NE
4D343C:  BLXNE           _ZdaPv; operator delete[](void *)
4D3440:  MOVS            R0, #0
4D3442:  MOV             R1, R4; ListItem_c *
4D3444:  STR             R0, [R4,#0x10]
4D3446:  ADD.W           R0, R8, #0xB00; this
4D344A:  BLX             j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
4D344E:  ADDW            R0, R8, #0xB0C; this
4D3452:  MOV             R1, R4; ListItem_c *
4D3454:  POP.W           {R8}
4D3458:  POP.W           {R4-R7,LR}
4D345C:  B.W             j_j__ZN6List_c7AddItemEP10ListItem_c; j_List_c::AddItem(ListItem_c *)
