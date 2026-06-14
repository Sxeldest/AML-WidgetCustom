; =========================================================
; Game Engine Function: _ZN10CStreaming16FlushRequestListEv
; Address            : 0x2CFD14 - 0x2CFDA4
; =========================================================

2CFD14:  LDR             R0, =(_ZN10CStreaming22ms_pStartRequestedListE_ptr - 0x2CFD1A)
2CFD16:  ADD             R0, PC; _ZN10CStreaming22ms_pStartRequestedListE_ptr
2CFD18:  LDR             R0, [R0]; CStreaming::ms_pStartRequestedList ...
2CFD1A:  LDR             R0, [R0]; CStreaming::ms_pStartRequestedList
2CFD1C:  LDRSH.W         R0, [R0]
2CFD20:  ADDS            R1, R0, #1
2CFD22:  BNE             loc_2CFD28
2CFD24:  MOVS            R0, #0
2CFD26:  B               loc_2CFD38
2CFD28:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CFD32)
2CFD2A:  ADD.W           R0, R0, R0,LSL#2
2CFD2E:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CFD30:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase ...
2CFD32:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase
2CFD34:  ADD.W           R0, R1, R0,LSL#2
2CFD38:  PUSH            {R4-R7,LR}
2CFD3A:  ADD             R7, SP, #0x14+var_8
2CFD3C:  PUSH.W          {R8-R10}
2CFD40:  LDR             R1, =(_ZN10CStreaming20ms_pEndRequestedListE_ptr - 0x2CFD46)
2CFD42:  ADD             R1, PC; _ZN10CStreaming20ms_pEndRequestedListE_ptr
2CFD44:  LDR             R1, [R1]; CStreaming::ms_pEndRequestedList ...
2CFD46:  LDR             R1, [R1]; CStreaming::ms_pEndRequestedList
2CFD48:  CMP             R0, R1
2CFD4A:  BEQ             loc_2CFD98
2CFD4C:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2CFD5E)
2CFD4E:  MOVW            R9, #0xCCCD
2CFD52:  MOVW            R8, #0xFFFF
2CFD56:  MOVT            R9, #0xCCCC
2CFD5A:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2CFD5C:  LDR             R5, [R1]; CStreaming::ms_aInfoForModel ...
2CFD5E:  LDR             R1, =(_ZN10CStreaming20ms_pEndRequestedListE_ptr - 0x2CFD64)
2CFD60:  ADD             R1, PC; _ZN10CStreaming20ms_pEndRequestedListE_ptr
2CFD62:  LDR             R4, [R1]; CStreaming::ms_pEndRequestedList ...
2CFD64:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CFD6A)
2CFD66:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CFD68:  LDR.W           R10, [R1]; CStreamingInfo::ms_pArrayBase ...
2CFD6C:  LDRH            R1, [R0]
2CFD6E:  CMP             R1, R8
2CFD70:  BNE             loc_2CFD76
2CFD72:  MOVS            R6, #0
2CFD74:  B               loc_2CFD84
2CFD76:  SXTH            R1, R1
2CFD78:  LDR.W           R2, [R10]; CStreamingInfo::ms_pArrayBase
2CFD7C:  ADD.W           R1, R1, R1,LSL#2; int
2CFD80:  ADD.W           R6, R2, R1,LSL#2
2CFD84:  SUBS            R0, R0, R5
2CFD86:  ASRS            R0, R0, #2
2CFD88:  MUL.W           R0, R0, R9; this
2CFD8C:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2CFD90:  LDR             R0, [R4]; CStreaming::ms_pEndRequestedList
2CFD92:  CMP             R6, R0
2CFD94:  MOV             R0, R6; this
2CFD96:  BNE             loc_2CFD6C
2CFD98:  POP.W           {R8-R10}
2CFD9C:  POP.W           {R4-R7,LR}
2CFDA0:  B.W             _ZN10CStreaming13FlushChannelsEv; CStreaming::FlushChannels(void)
