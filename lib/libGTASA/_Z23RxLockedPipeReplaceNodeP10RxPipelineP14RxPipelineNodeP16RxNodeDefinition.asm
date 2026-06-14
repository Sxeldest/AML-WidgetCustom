; =========================================================
; Game Engine Function: _Z23RxLockedPipeReplaceNodeP10RxPipelineP14RxPipelineNodeP16RxNodeDefinition
; Address            : 0x1DFD72 - 0x1DFE72
; =========================================================

1DFD72:  PUSH            {R4-R7,LR}
1DFD74:  ADD             R7, SP, #0xC
1DFD76:  PUSH.W          {R8-R10}
1DFD7A:  MOV             R10, R0
1DFD7C:  MOV             R8, R1
1DFD7E:  MOVS            R0, #0
1DFD80:  CMP.W           R10, #0
1DFD84:  BEQ             loc_1DFE64
1DFD86:  CMP.W           R8, #0
1DFD8A:  ITT NE
1DFD8C:  LDRNE.W         R1, [R10]
1DFD90:  CMPNE           R1, #0
1DFD92:  BEQ             loc_1DFE64
1DFD94:  CMP             R2, #0
1DFD96:  MOV.W           R0, #0
1DFD9A:  ITT NE
1DFD9C:  LDRNE.W         R1, [R8]
1DFDA0:  CMPNE           R1, #0
1DFDA2:  BEQ             loc_1DFE64
1DFDA4:  LDRD.W          R0, R1, [R10,#4]
1DFDA8:  ADD.W           R0, R0, R0,LSL#2
1DFDAC:  ADD.W           R9, R1, R0,LSL#3
1DFDB0:  MOV             R0, R10
1DFDB2:  MOV             R1, R9
1DFDB4:  BL              sub_1DFBEC
1DFDB8:  CMP             R0, #0
1DFDBA:  BEQ             loc_1DFE6A
1DFDBC:  MOV             R6, R9
1DFDBE:  LDR.W           R0, [R8,#4]
1DFDC2:  LDR.W           R1, [R6,#4]!
1DFDC6:  CMP             R1, R0
1DFDC8:  MOV             R0, R8
1DFDCA:  IT CC
1DFDCC:  MOVCC           R0, R9
1DFDCE:  LDR             R5, [R0,#4]
1DFDD0:  CBZ             R5, loc_1DFDE2
1DFDD2:  LDR.W           R1, [R8,#8]; void *
1DFDD6:  LSLS            R2, R5, #2; size_t
1DFDD8:  LDR.W           R0, [R9,#8]; void *
1DFDDC:  BLX             memcpy_0
1DFDE0:  LDR             R1, [R6]
1DFDE2:  CMP             R1, R5
1DFDE4:  BLS             loc_1DFDF8
1DFDE6:  LDR.W           R0, [R8,#8]
1DFDEA:  SUBS            R1, R1, R5
1DFDEC:  MOVS            R2, #0xFF
1DFDEE:  ADD.W           R0, R0, R5,LSL#2
1DFDF2:  LSLS            R1, R1, #2
1DFDF4:  BLX             j___aeabi_memset8_0
1DFDF8:  LDR.W           R0, [R10,#4]
1DFDFC:  CBZ             R0, loc_1DFE5A
1DFDFE:  LDR.W           R0, [R10,#8]
1DFE02:  MOV             R2, #0xCCCCCCCD
1DFE0A:  MOV.W           R12, #0
1DFE0E:  SUB.W           R1, R8, R0
1DFE12:  SUB.W           R3, R9, R0
1DFE16:  ASRS            R1, R1, #3
1DFE18:  ASRS            R3, R3, #3
1DFE1A:  MULS            R1, R2
1DFE1C:  MULS            R2, R3
1DFE1E:  ADD.W           R6, R12, R12,LSL#2
1DFE22:  ADD.W           R5, R0, R6,LSL#3
1DFE26:  LDR             R5, [R5,#4]
1DFE28:  CBZ             R5, loc_1DFE4E
1DFE2A:  MOVS            R5, #0
1DFE2C:  ADD.W           R4, R0, R6,LSL#3
1DFE30:  LDR             R4, [R4,#8]
1DFE32:  LDR.W           R3, [R4,R5,LSL#2]
1DFE36:  CMP             R3, R1
1DFE38:  ITT EQ
1DFE3A:  STREQ.W         R2, [R4,R5,LSL#2]
1DFE3E:  LDREQ.W         R0, [R10,#8]
1DFE42:  ADDS            R5, #1
1DFE44:  ADD.W           R3, R0, R6,LSL#3
1DFE48:  LDR             R3, [R3,#4]
1DFE4A:  CMP             R5, R3
1DFE4C:  BCC             loc_1DFE2C
1DFE4E:  LDR.W           R3, [R10,#4]
1DFE52:  ADD.W           R12, R12, #1
1DFE56:  CMP             R12, R3
1DFE58:  BCC             loc_1DFE1E
1DFE5A:  MOV             R0, R8
1DFE5C:  MOV             R1, R10
1DFE5E:  BLX             j__Z19PipelineNodeDestroyP14RxPipelineNodeP10RxPipeline; PipelineNodeDestroy(RxPipelineNode *,RxPipeline *)
1DFE62:  MOV             R0, R10
1DFE64:  POP.W           {R8-R10}
1DFE68:  POP             {R4-R7,PC}
1DFE6A:  MOVS            R0, #0
1DFE6C:  POP.W           {R8-R10}
1DFE70:  POP             {R4-R7,PC}
