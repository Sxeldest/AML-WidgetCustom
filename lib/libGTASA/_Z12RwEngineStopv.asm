; =========================================================
; Game Engine Function: _Z12RwEngineStopv
; Address            : 0x1D778C - 0x1D77F6
; =========================================================

1D778C:  PUSH            {R4-R7,LR}
1D778E:  ADD             R7, SP, #0xC
1D7790:  PUSH.W          {R8}
1D7794:  SUB             SP, SP, #8
1D7796:  LDR             R0, =(RwEngineInstance_ptr - 0x1D77A2)
1D7798:  MOVS            R1, #0
1D779A:  MOVS            R2, #0
1D779C:  MOVS            R3, #0
1D779E:  ADD             R0, PC; RwEngineInstance_ptr
1D77A0:  MOV.W           R8, #0
1D77A4:  LDR             R5, [R0]; RwEngineInstance
1D77A6:  MOVS            R0, #0x12
1D77A8:  LDR             R6, [R5]
1D77AA:  LDR             R4, [R6,#0x14]
1D77AC:  BLX             R4
1D77AE:  LDR             R0, =(dword_68253C - 0x1D77B6)
1D77B0:  LDR             R1, [R5]
1D77B2:  ADD             R0, PC; dword_68253C
1D77B4:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1D77B8:  LDR             R6, [R6,#0x14]
1D77BA:  MOVS            R0, #3
1D77BC:  MOVS            R1, #0
1D77BE:  MOVS            R2, #0
1D77C0:  MOVS            R3, #0
1D77C2:  BLX             R6
1D77C4:  CBZ             R0, loc_1D77D8
1D77C6:  LDR             R1, =(RwEngineInstance_ptr - 0x1D77D0)
1D77C8:  MOV             R8, R0
1D77CA:  MOVS            R2, #2
1D77CC:  ADD             R1, PC; RwEngineInstance_ptr
1D77CE:  LDR             R1, [R1]; RwEngineInstance
1D77D0:  LDR             R1, [R1]
1D77D2:  STR.W           R2, [R1,#0x148]
1D77D6:  B               loc_1D77EC
1D77D8:  MOVS            R0, #0x18; int
1D77DA:  MOVS            R1, #3
1D77DC:  STR.W           R8, [SP,#0x18+var_18]
1D77E0:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D77E4:  STR             R0, [SP,#0x18+var_14]
1D77E6:  MOV             R0, SP
1D77E8:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D77EC:  MOV             R0, R8
1D77EE:  ADD             SP, SP, #8
1D77F0:  POP.W           {R8}
1D77F4:  POP             {R4-R7,PC}
