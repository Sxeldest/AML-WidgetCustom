; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains35AddNewStreamedScriptBrainForCodeUseEsPca
; Address            : 0x32F690 - 0x32F6FC
; =========================================================

32F690:  PUSH            {R4-R7,LR}
32F692:  ADD             R7, SP, #0xC
32F694:  PUSH.W          {R8}
32F698:  MOV             R8, R3
32F69A:  MOVS            R3, #0
32F69C:  MOVW            R4, #0xFFFF
32F6A0:  MOVS            R5, #0
32F6A2:  ADD.W           R3, R3, R3,LSL#2
32F6A6:  LDRH.W          R6, [R0,R3,LSL#2]
32F6AA:  MOVS            R3, #0
32F6AC:  CMP             R6, R4
32F6AE:  IT NE
32F6B0:  MOVNE           R3, #1
32F6B2:  ADD             R5, R3
32F6B4:  UXTB            R3, R5
32F6B6:  CMP             R3, #0x45 ; 'E'
32F6B8:  BHI             loc_32F6BE
32F6BA:  CMP             R6, R4
32F6BC:  BNE             loc_32F6A2
32F6BE:  MOVW            R5, #0xFFFF
32F6C2:  CMP             R6, R5
32F6C4:  BEQ             loc_32F6CC
32F6C6:  POP.W           {R8}
32F6CA:  POP             {R4-R7,PC}
32F6CC:  ADD.W           R3, R3, R3,LSL#2
32F6D0:  ADD.W           R4, R0, R3,LSL#2
32F6D4:  STRH.W          R1, [R0,R3,LSL#2]
32F6D8:  ADD.W           R0, R4, #0xC; char *
32F6DC:  MOV             R1, R2; char *
32F6DE:  BLX             strcpy
32F6E2:  MOVW            R0, #0x1FF
32F6E6:  STRB.W          R8, [R4,#2]
32F6EA:  STRH.W          R0, [R4,#3]
32F6EE:  MOVS            R0, #0x40A00000
32F6F4:  STR             R0, [R4,#8]
32F6F6:  POP.W           {R8}
32F6FA:  POP             {R4-R7,PC}
