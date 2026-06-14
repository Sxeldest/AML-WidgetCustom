; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c14ReferenceAnimsEv
; Address            : 0x449A60 - 0x449AB0
; =========================================================

449A60:  PUSH            {R4,R6,R7,LR}
449A62:  ADD             R7, SP, #8
449A64:  MOV             R4, R0
449A66:  LDRB.W          R0, [R4,#0xBA]
449A6A:  CMP             R0, #0
449A6C:  IT NE
449A6E:  POPNE           {R4,R6,R7,PC}
449A70:  LDRSB.W         R1, [R4,#0xE]; char *
449A74:  CMP             R1, #2
449A76:  BHI             loc_449A84
449A78:  LDR             R0, =(off_667D9C - 0x449A7E); "int_house" ...
449A7A:  ADD             R0, PC; off_667D9C
449A7C:  LDR.W           R0, [R0,R1,LSL#2]; this
449A80:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
449A84:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x449A8A)
449A86:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
449A88:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
449A8A:  ADD.W           R1, R1, R0,LSL#5
449A8E:  LDRB            R1, [R1,#0x10]; int
449A90:  CMP             R1, #1
449A92:  BNE             loc_449AA0
449A94:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
449A98:  MOVS            R0, #1
449A9A:  STRB.W          R0, [R4,#0xBA]
449A9E:  POP             {R4,R6,R7,PC}
449AA0:  MOVW            R1, #0x63E7
449AA4:  ADD             R0, R1; this
449AA6:  MOVS            R1, #8; int
449AA8:  POP.W           {R4,R6,R7,LR}
449AAC:  B.W             j_j__ZN10CStreaming12RequestModelEii; j_CStreaming::RequestModel(int,int)
