; =========================================================
; Game Engine Function: _ZN10CStreaming10ClearSlotsEi
; Address            : 0x2D8C64 - 0x2D8D62
; =========================================================

2D8C64:  PUSH            {R4-R7,LR}
2D8C66:  ADD             R7, SP, #0xC
2D8C68:  PUSH.W          {R8-R11}
2D8C6C:  SUB             SP, SP, #0x14
2D8C6E:  MOV             R4, R0
2D8C70:  CMP             R4, #1
2D8C72:  BLT             loc_2D8D5A
2D8C74:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D8C80)
2D8C76:  MOV.W           R9, #0xFFFFFFFF
2D8C7A:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D8C82)
2D8C7C:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D8C7E:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D8C80:  LDR             R5, [R0]; CStreaming::ms_pedsLoaded ...
2D8C82:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8C88)
2D8C84:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8C86:  LDR.W           R11, [R0]; CStreaming::ms_aInfoForModel ...
2D8C8A:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8C90)
2D8C8C:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8C8E:  LDR.W           R8, [R0]; CStreaming::ms_aInfoForModel ...
2D8C92:  LDR             R0, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x2D8C9C)
2D8C94:  STR.W           R8, [SP,#0x30+var_2C]
2D8C98:  ADD             R0, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
2D8C9A:  LDR             R0, [R0]; CStreaming::ms_pStartLoadedList ...
2D8C9C:  STR             R0, [SP,#0x30+var_20]
2D8C9E:  LDR             R0, [R1]; CStreamingInfo::ms_pArrayBase ...
2D8CA0:  STR             R0, [SP,#0x30+var_24]
2D8CA2:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8CA8)
2D8CA4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8CA6:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D8CA8:  STR             R0, [SP,#0x30+var_28]
2D8CAA:  LDR             R0, =(_ZN10CStreaming16ms_numPedsLoadedE_ptr - 0x2D8CB0)
2D8CAC:  ADD             R0, PC; _ZN10CStreaming16ms_numPedsLoadedE_ptr
2D8CAE:  LDR.W           R10, [R0]; CStreaming::ms_numPedsLoaded ...
2D8CB2:  LDR             R0, [R5]; this
2D8CB4:  CMP             R0, #0
2D8CB6:  BLT             loc_2D8D52
2D8CB8:  ADD.W           R2, R0, R0,LSL#2
2D8CBC:  ADD.W           R1, R11, R2,LSL#2
2D8CC0:  LDRB            R6, [R1,#6]
2D8CC2:  AND.W           R3, R6, #0xFD
2D8CC6:  TST.W           R6, #4
2D8CCA:  STRB            R3, [R1,#6]
2D8CCC:  BNE             loc_2D8D44
2D8CCE:  ADD.W           R6, R8, R2,LSL#2
2D8CD2:  LDRB            R6, [R6,#0x10]
2D8CD4:  CMP             R6, #1
2D8CD6:  BNE             loc_2D8D3C
2D8CD8:  LDRH            R0, [R1]
2D8CDA:  MOVW            R3, #0xFFFF
2D8CDE:  CMP             R0, R3
2D8CE0:  BNE             loc_2D8D44
2D8CE2:  LDR             R0, [SP,#0x30+var_20]
2D8CE4:  MOVW            R3, #0xCCCD
2D8CE8:  LDR.W           LR, [SP,#0x30+var_24]
2D8CEC:  MOVT            R3, #0xCCCC
2D8CF0:  LDR             R0, [R0]
2D8CF2:  LDR.W           R12, [LR]
2D8CF6:  LDRH            R6, [R0]
2D8CF8:  STRH            R6, [R1]
2D8CFA:  SUB.W           R6, R1, R12
2D8CFE:  LSRS            R6, R6, #2
2D8D00:  MUL.W           R8, R6, R3
2D8D04:  SUB.W           R3, R0, R12
2D8D08:  MOVW            R6, #0xCCCD
2D8D0C:  LSRS            R3, R3, #2
2D8D0E:  MOVT            R6, #0xCCCC
2D8D12:  LDR.W           R12, [SP,#0x30+var_28]
2D8D16:  MULS            R3, R6
2D8D18:  ADD.W           R2, R12, R2,LSL#2
2D8D1C:  STRH            R3, [R2,#2]
2D8D1E:  STRH.W          R8, [R0]
2D8D22:  LDRSH.W         R0, [R1]
2D8D26:  LDR.W           R1, [LR]
2D8D2A:  ADD.W           R0, R0, R0,LSL#2
2D8D2E:  ADD.W           R0, R1, R0,LSL#2
2D8D32:  STRH.W          R8, [R0,#2]
2D8D36:  LDR.W           R8, [SP,#0x30+var_2C]
2D8D3A:  B               loc_2D8D44
2D8D3C:  LSLS            R1, R3, #0x1C; int
2D8D3E:  IT PL
2D8D40:  BLXPL           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D8D44:  LDR.W           R0, [R10]; CStreaming::ms_numPedsLoaded
2D8D48:  STR.W           R9, [R5]; CStreaming::ms_pedsLoaded
2D8D4C:  SUBS            R0, #1
2D8D4E:  STR.W           R0, [R10]; CStreaming::ms_numPedsLoaded
2D8D52:  SUBS            R4, #1
2D8D54:  ADD.W           R5, R5, #4
2D8D58:  BNE             loc_2D8CB2
2D8D5A:  ADD             SP, SP, #0x14
2D8D5C:  POP.W           {R8-R11}
2D8D60:  POP             {R4-R7,PC}
