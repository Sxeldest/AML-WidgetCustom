; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains41HasAttractorScriptBrainWithThisNameLoadedEPKc
; Address            : 0x32FCB4 - 0x32FD0E
; =========================================================

32FCB4:  PUSH            {R4-R7,LR}
32FCB6:  ADD             R7, SP, #0xC
32FCB8:  PUSH.W          {R11}
32FCBC:  ADD.W           R4, R0, #0xC
32FCC0:  MOV             R5, R1
32FCC2:  MOVS            R6, #0
32FCC4:  LDRB.W          R0, [R4,#-0xA]
32FCC8:  CMP             R0, #5
32FCCA:  BNE             loc_32FCD6
32FCCC:  MOV             R0, R4; char *
32FCCE:  MOV             R1, R5; char *
32FCD0:  BLX             strcasecmp
32FCD4:  CBZ             R0, loc_32FCE6
32FCD6:  ADDS            R6, #1
32FCD8:  ADDS            R4, #0x14
32FCDA:  CMP             R6, #0x46 ; 'F'
32FCDC:  BCC             loc_32FCC4
32FCDE:  MOVS            R0, #0
32FCE0:  POP.W           {R11}
32FCE4:  POP             {R4-R7,PC}
32FCE6:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x32FCF0)
32FCE8:  LDRSH.W         R1, [R4,#-0xC]
32FCEC:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
32FCEE:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
32FCF0:  ADD.W           R1, R1, R1,LSL#2
32FCF4:  ADD.W           R0, R0, R1,LSL#2
32FCF8:  MOV             R1, #0x80148
32FD00:  LDRB            R0, [R0,R1]
32FD02:  CMP             R0, #1
32FD04:  BNE             loc_32FCDE
32FD06:  MOVS            R0, #1
32FD08:  POP.W           {R11}
32FD0C:  POP             {R4-R7,PC}
