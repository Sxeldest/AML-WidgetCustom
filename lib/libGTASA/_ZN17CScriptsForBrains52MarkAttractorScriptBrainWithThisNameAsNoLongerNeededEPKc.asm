; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains52MarkAttractorScriptBrainWithThisNameAsNoLongerNeededEPKc
; Address            : 0x32FC60 - 0x32FCB0
; =========================================================

32FC60:  PUSH            {R4-R7,LR}
32FC62:  ADD             R7, SP, #0xC
32FC64:  PUSH.W          {R11}
32FC68:  ADD.W           R4, R0, #0xC
32FC6C:  MOV             R5, R1
32FC6E:  MOVS            R6, #0
32FC70:  LDRB.W          R0, [R4,#-0xA]
32FC74:  CMP             R0, #5
32FC76:  BNE             loc_32FC82
32FC78:  MOV             R0, R4; char *
32FC7A:  MOV             R1, R5; char *
32FC7C:  BLX             strcasecmp
32FC80:  CBZ             R0, loc_32FC90
32FC82:  ADDS            R6, #1
32FC84:  ADDS            R4, #0x14
32FC86:  CMP             R6, #0x46 ; 'F'
32FC88:  BCC             loc_32FC70
32FC8A:  POP.W           {R11}
32FC8E:  POP             {R4-R7,PC}
32FC90:  LDR             R0, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x32FC9A)
32FC92:  LDRSH.W         R1, [R4,#-0xC]
32FC96:  ADD             R0, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
32FC98:  LDR             R0, [R0]; CTheScripts::StreamedScripts ...
32FC9A:  ADD.W           R0, R0, R1,LSL#5
32FC9E:  LDRB.W          R1, [R0,#4]!
32FCA2:  CMP             R1, #0
32FCA4:  ITT NE
32FCA6:  ADDNE           R1, #0xFF
32FCA8:  STRBNE          R1, [R0]
32FCAA:  POP.W           {R11}
32FCAE:  POP             {R4-R7,PC}
