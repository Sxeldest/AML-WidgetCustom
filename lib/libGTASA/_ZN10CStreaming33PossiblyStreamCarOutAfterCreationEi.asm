; =========================================================
; Game Engine Function: _ZN10CStreaming33PossiblyStreamCarOutAfterCreationEi
; Address            : 0x2D8B3C - 0x2D8BF8
; =========================================================

2D8B3C:  PUSH            {R4,R5,R7,LR}
2D8B3E:  ADD             R7, SP, #8
2D8B40:  MOV             R4, R0
2D8B42:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D8B48)
2D8B44:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D8B46:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2D8B48:  LDR.W           R0, [R0,R4,LSL#2]
2D8B4C:  LDRB.W          R0, [R0,#0x66]
2D8B50:  LSLS            R0, R0, #0x1F
2D8B52:  BEQ             locret_2D8BF6
2D8B54:  BLX             rand
2D8B58:  TST.W           R0, #1
2D8B5C:  BEQ             locret_2D8BF6
2D8B5E:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8B68)
2D8B60:  ADD.W           R1, R4, R4,LSL#2; int
2D8B64:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8B66:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D8B68:  ADD.W           R0, R0, R1,LSL#2
2D8B6C:  LDRB            R3, [R0,#6]
2D8B6E:  AND.W           R2, R3, #0xFD
2D8B72:  TST.W           R3, #4
2D8B76:  STRB            R2, [R0,#6]
2D8B78:  BNE             locret_2D8BF6
2D8B7A:  LDR             R3, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8B80)
2D8B7C:  ADD             R3, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8B7E:  LDR             R3, [R3]; CStreaming::ms_aInfoForModel ...
2D8B80:  ADD.W           R3, R3, R1,LSL#2
2D8B84:  LDRB            R3, [R3,#0x10]
2D8B86:  CMP             R3, #1
2D8B88:  BNE             loc_2D8BE8
2D8B8A:  LDRH            R2, [R0]
2D8B8C:  MOVW            R3, #0xFFFF
2D8B90:  CMP             R2, R3
2D8B92:  IT NE
2D8B94:  POPNE           {R4,R5,R7,PC}
2D8B96:  LDR             R2, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x2D8BA6)
2D8B98:  MOVW            R5, #0xCCCD
2D8B9C:  LDR             R3, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D8BAC)
2D8B9E:  MOVT            R5, #0xCCCC
2D8BA2:  ADD             R2, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
2D8BA4:  LDR.W           R12, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8BB0)
2D8BA8:  ADD             R3, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D8BAA:  LDR             R2, [R2]; CStreaming::ms_pStartLoadedList ...
2D8BAC:  ADD             R12, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8BAE:  LDR.W           LR, [R3]; CStreamingInfo::ms_pArrayBase ...
2D8BB2:  LDR.W           R12, [R12]; CStreaming::ms_aInfoForModel ...
2D8BB6:  LDR             R2, [R2]; CStreaming::ms_pStartLoadedList
2D8BB8:  LDR.W           R4, [LR]; CStreamingInfo::ms_pArrayBase
2D8BBC:  ADD.W           R1, R12, R1,LSL#2
2D8BC0:  LDRH            R3, [R2]
2D8BC2:  STRH            R3, [R0]
2D8BC4:  SUBS            R3, R0, R4
2D8BC6:  SUBS            R4, R2, R4
2D8BC8:  LSRS            R3, R3, #2
2D8BCA:  LSRS            R4, R4, #2
2D8BCC:  MULS            R3, R5
2D8BCE:  MULS            R4, R5
2D8BD0:  STRH            R4, [R1,#2]
2D8BD2:  STRH            R3, [R2]
2D8BD4:  LDRSH.W         R0, [R0]
2D8BD8:  LDR.W           R1, [LR]; CStreamingInfo::ms_pArrayBase
2D8BDC:  ADD.W           R0, R0, R0,LSL#2
2D8BE0:  ADD.W           R0, R1, R0,LSL#2
2D8BE4:  STRH            R3, [R0,#2]
2D8BE6:  POP             {R4,R5,R7,PC}
2D8BE8:  LSLS            R0, R2, #0x1C
2D8BEA:  BMI             locret_2D8BF6
2D8BEC:  MOV             R0, R4; this
2D8BEE:  POP.W           {R4,R5,R7,LR}
2D8BF2:  B.W             _ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D8BF6:  POP             {R4,R5,R7,PC}
