; =========================================================
; Game Engine Function: _ZN10CStreaming16PurgeRequestListEv
; Address            : 0x2D2188 - 0x2D221E
; =========================================================

2D2188:  LDR             R0, =(_ZN10CStreaming20ms_pEndRequestedListE_ptr - 0x2D218E)
2D218A:  ADD             R0, PC; _ZN10CStreaming20ms_pEndRequestedListE_ptr
2D218C:  LDR             R0, [R0]; CStreaming::ms_pEndRequestedList ...
2D218E:  LDR             R0, [R0]; CStreaming::ms_pEndRequestedList
2D2190:  LDRSH.W         R0, [R0,#2]
2D2194:  ADDS            R1, R0, #1
2D2196:  BNE             loc_2D219C
2D2198:  MOVS            R0, #0
2D219A:  B               loc_2D21AC
2D219C:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D21A6)
2D219E:  ADD.W           R0, R0, R0,LSL#2
2D21A2:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D21A4:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase ...
2D21A6:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase
2D21A8:  ADD.W           R0, R1, R0,LSL#2
2D21AC:  PUSH            {R4-R7,LR}
2D21AE:  ADD             R7, SP, #0x14+var_8
2D21B0:  PUSH.W          {R8-R10}
2D21B4:  LDR             R1, =(_ZN10CStreaming22ms_pStartRequestedListE_ptr - 0x2D21BA)
2D21B6:  ADD             R1, PC; _ZN10CStreaming22ms_pStartRequestedListE_ptr
2D21B8:  LDR             R1, [R1]; CStreaming::ms_pStartRequestedList ...
2D21BA:  LDR             R1, [R1]; int
2D21BC:  CMP             R0, R1
2D21BE:  BEQ             loc_2D2218
2D21C0:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D21D2)
2D21C2:  MOVW            R8, #0xCCCD
2D21C6:  MOVW            R4, #0xFFFF
2D21CA:  MOVT            R8, #0xCCCC
2D21CE:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D21D0:  LDR.W           R9, [R2]; CStreaming::ms_aInfoForModel ...
2D21D4:  LDR             R2, =(_ZN10CStreaming22ms_pStartRequestedListE_ptr - 0x2D21DA)
2D21D6:  ADD             R2, PC; _ZN10CStreaming22ms_pStartRequestedListE_ptr
2D21D8:  LDR.W           R10, [R2]; CStreaming::ms_pStartRequestedList ...
2D21DC:  LDR             R2, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D21E2)
2D21DE:  ADD             R2, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D21E0:  LDR             R5, [R2]; CStreamingInfo::ms_pArrayBase ...
2D21E2:  LDRH            R2, [R0,#2]
2D21E4:  CMP             R2, R4
2D21E6:  BNE             loc_2D21EC
2D21E8:  MOVS            R6, #0
2D21EA:  B               loc_2D21F8
2D21EC:  SXTH            R2, R2
2D21EE:  LDR             R3, [R5]; CStreamingInfo::ms_pArrayBase
2D21F0:  ADD.W           R2, R2, R2,LSL#2
2D21F4:  ADD.W           R6, R3, R2,LSL#2
2D21F8:  LDRB            R2, [R0,#6]
2D21FA:  TST.W           R2, #0x1E
2D21FE:  BNE             loc_2D2212
2D2200:  SUB.W           R0, R0, R9
2D2204:  ASRS            R0, R0, #2
2D2206:  MUL.W           R0, R0, R8; this
2D220A:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D220E:  LDR.W           R1, [R10]; CStreaming::ms_pStartRequestedList
2D2212:  CMP             R6, R1
2D2214:  MOV             R0, R6
2D2216:  BNE             loc_2D21E2
2D2218:  POP.W           {R8-R10}
2D221C:  POP             {R4-R7,PC}
