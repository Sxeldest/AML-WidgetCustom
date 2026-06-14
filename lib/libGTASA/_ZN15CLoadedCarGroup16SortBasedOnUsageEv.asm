; =========================================================
; Game Engine Function: _ZN15CLoadedCarGroup16SortBasedOnUsageEv
; Address            : 0x4D1B58 - 0x4D1BCC
; =========================================================

4D1B58:  PUSH            {R4-R7,LR}
4D1B5A:  ADD             R7, SP, #0xC
4D1B5C:  PUSH.W          {R8}
4D1B60:  MOV             R4, R0
4D1B62:  BLX             j__ZN15CLoadedCarGroup12CountMembersEv; CLoadedCarGroup::CountMembers(void)
4D1B66:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D1B76)
4D1B68:  ADD.W           R12, R4, #2
4D1B6C:  SUB.W           R8, R0, #1
4D1B70:  MOVS            R2, #0
4D1B72:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D1B74:  MOV.W           LR, #0
4D1B78:  LDR             R3, [R1]; CModelInfo::ms_modelInfoPtrs ...
4D1B7A:  B               loc_4D1B9C
4D1B7C:  MOVS.W          R1, LR,LSL#24
4D1B80:  MOV.W           R2, #0
4D1B84:  MOV.W           LR, #0
4D1B88:  BNE             loc_4D1B9C
4D1B8A:  B               loc_4D1BC6
4D1B8C:  UXTH            R6, R5
4D1B8E:  UXTH            R0, R4
4D1B90:  STRH.W          R6, [R1,#-2]
4D1B94:  MOV.W           LR, #1
4D1B98:  STRH.W          R0, [R1,#-4]
4D1B9C:  ADD.W           R1, R12, R2,LSL#1
4D1BA0:  CMP             R2, R8
4D1BA2:  BGE             loc_4D1B7C
4D1BA4:  LDRSH.W         R4, [R1]
4D1BA8:  ADDS            R2, #1
4D1BAA:  LDRSH.W         R5, [R1,#-2]
4D1BAE:  ADDS            R1, #2
4D1BB0:  LDR.W           R6, [R3,R4,LSL#2]
4D1BB4:  LDR.W           R0, [R3,R5,LSL#2]
4D1BB8:  LDRSB.W         R6, [R6,#0x68]
4D1BBC:  LDRSB.W         R0, [R0,#0x68]
4D1BC0:  CMP             R0, R6
4D1BC2:  BGE             loc_4D1BA0
4D1BC4:  B               loc_4D1B8C
4D1BC6:  POP.W           {R8}
4D1BCA:  POP             {R4-R7,PC}
