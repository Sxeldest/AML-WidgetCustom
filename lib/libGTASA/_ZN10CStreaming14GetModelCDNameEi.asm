; =========================================================
; Game Engine Function: _ZN10CStreaming14GetModelCDNameEi
; Address            : 0x2CF560 - 0x2CF5E0
; =========================================================

2CF560:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2CF56A)
2CF562:  ADD.W           R0, R0, R0,LSL#2
2CF566:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2CF568:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2CF56A:  ADD.W           R1, R1, R0,LSL#2
2CF56E:  LDR             R1, [R1,#0xC]
2CF570:  CMP             R1, #0
2CF572:  ITT EQ
2CF574:  ADREQ           R0, off_2CF5E4
2CF576:  BXEQ            LR
2CF578:  PUSH            {R4,R6,R7,LR}
2CF57A:  ADD             R7, SP, #0x10+var_8
2CF57C:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2CF584)
2CF57E:  LDR             R2, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF588)
2CF580:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2CF582:  LDR             R3, =(gCdImageNames_ptr - 0x2CF58E)
2CF584:  ADD             R2, PC; _ZN10CStreaming8ms_filesE_ptr
2CF586:  LDR             R4, =(unk_792F35 - 0x2CF592)
2CF588:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2CF58A:  ADD             R3, PC; gCdImageNames_ptr
2CF58C:  LDR             R2, [R2]; CStreaming::ms_files ...
2CF58E:  ADD             R4, PC; unk_792F35
2CF590:  ADD.W           R0, R1, R0,LSL#2
2CF594:  LDRB            R1, [R0,#7]
2CF596:  LDR             R0, [R0,#8]
2CF598:  ADD.W           R1, R1, R1,LSL#1
2CF59C:  ADD.W           R1, R2, R1,LSL#4
2CF5A0:  LDR             R2, [R3]; gCdImageNames
2CF5A2:  LDR             R1, [R1,#0x2C]
2CF5A4:  ADD             R0, R1
2CF5A6:  MOV.W           R1, #0x3FC0
2CF5AA:  AND.W           R0, R1, R0,LSR#18
2CF5AE:  ADDS            R1, R2, R0; char *
2CF5B0:  MOV             R0, R4; char *
2CF5B2:  BLX             strcpy
2CF5B6:  MOV             R0, R4; char *
2CF5B8:  BLX             strlen
2CF5BC:  LDR             R1, =(RwEngineInstance_ptr - 0x2CF5C6)
2CF5BE:  ADD             R0, R4
2CF5C0:  MOVS            R2, #0
2CF5C2:  ADD             R1, PC; RwEngineInstance_ptr
2CF5C4:  STRB.W          R2, [R0,#-4]
2CF5C8:  LDR             R1, [R1]; RwEngineInstance
2CF5CA:  LDR             R0, [R1]
2CF5CC:  LDR.W           R1, [R0,#0x120]
2CF5D0:  MOV             R0, R4
2CF5D2:  BLX             R1
2CF5D4:  MOV             R0, R4; s
2CF5D6:  MOVS            R1, #0x5C ; '\'; c
2CF5D8:  BLX             strchr
2CF5DC:  ADDS            R0, #1
2CF5DE:  POP             {R4,R6,R7,PC}
