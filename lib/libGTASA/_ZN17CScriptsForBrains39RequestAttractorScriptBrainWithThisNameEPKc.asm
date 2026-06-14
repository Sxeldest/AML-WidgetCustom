; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains39RequestAttractorScriptBrainWithThisNameEPKc
; Address            : 0x32FBE4 - 0x32FC58
; =========================================================

32FBE4:  PUSH            {R4-R7,LR}
32FBE6:  ADD             R7, SP, #0xC
32FBE8:  PUSH.W          {R11}
32FBEC:  ADD.W           R4, R0, #0xC
32FBF0:  MOV             R5, R1
32FBF2:  MOVS            R6, #0
32FBF4:  LDRB.W          R0, [R4,#-0xA]
32FBF8:  CMP             R0, #5
32FBFA:  BNE             loc_32FC06
32FBFC:  MOV             R0, R4; char *
32FBFE:  MOV             R1, R5; char *
32FC00:  BLX             strcasecmp
32FC04:  CBZ             R0, loc_32FC14
32FC06:  ADDS            R6, #1
32FC08:  ADDS            R4, #0x14
32FC0A:  CMP             R6, #0x46 ; 'F'
32FC0C:  BCC             loc_32FBF4
32FC0E:  POP.W           {R11}
32FC12:  POP             {R4-R7,PC}
32FC14:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x32FC22)
32FC16:  MOVW            R0, #0x6676
32FC1A:  LDRSH.W         R1, [R4,#-0xC]
32FC1E:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
32FC20:  ADD             R0, R1; this
32FC22:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
32FC24:  ADD.W           R3, R0, R0,LSL#2
32FC28:  ADD.W           R2, R2, R3,LSL#2
32FC2C:  LDRB            R2, [R2,#0x10]; int
32FC2E:  CMP             R2, #1
32FC30:  BNE             loc_32FC36
32FC32:  UXTH            R0, R1
32FC34:  B               loc_32FC40
32FC36:  MOVS            R1, #0x10; int
32FC38:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
32FC3C:  LDRH.W          R0, [R4,#-0xC]
32FC40:  LDR             R1, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x32FC48)
32FC42:  SXTH            R0, R0
32FC44:  ADD             R1, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
32FC46:  LDR             R1, [R1]; CTheScripts::StreamedScripts ...
32FC48:  ADD.W           R0, R1, R0,LSL#5
32FC4C:  LDRB            R1, [R0,#4]
32FC4E:  ADDS            R1, #1
32FC50:  STRB            R1, [R0,#4]
32FC52:  POP.W           {R11}
32FC56:  POP             {R4-R7,PC}
