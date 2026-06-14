; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains37StartAttractorScriptBrainWithThisNameEPKcP7CEntityh
; Address            : 0x32FD14 - 0x32FD66
; =========================================================

32FD14:  PUSH            {R4-R7,LR}
32FD16:  ADD             R7, SP, #0xC
32FD18:  PUSH.W          {R8-R10}
32FD1C:  MOV             R10, R2
32FD1E:  MOV             R9, R0
32FD20:  LDRH.W          R0, [R10,#0x48E]
32FD24:  MOV             R8, R3
32FD26:  MOV             R4, R1
32FD28:  TST.W           R0, #0x180
32FD2C:  BNE             loc_32FD4E
32FD2E:  ADD.W           R6, R9, #0xC
32FD32:  MOVS            R5, #0
32FD34:  LDRB.W          R0, [R6,#-0xA]
32FD38:  CMP             R0, #5
32FD3A:  BNE             loc_32FD46
32FD3C:  MOV             R0, R6; char *
32FD3E:  MOV             R1, R4; char *
32FD40:  BLX             strcasecmp
32FD44:  CBZ             R0, loc_32FD54
32FD46:  ADDS            R5, #1
32FD48:  ADDS            R6, #0x14
32FD4A:  CMP             R5, #0x46 ; 'F'
32FD4C:  BCC             loc_32FD34
32FD4E:  POP.W           {R8-R10}
32FD52:  POP             {R4-R7,PC}
32FD54:  UXTB            R1, R5; unsigned __int8
32FD56:  MOV             R0, R9; this
32FD58:  MOV             R2, R10; CEntity *
32FD5A:  MOV             R3, R8; unsigned __int8
32FD5C:  POP.W           {R8-R10}
32FD60:  POP.W           {R4-R7,LR}
32FD64:  B               _ZN17CScriptsForBrains27StartNewStreamedScriptBrainEhP7CEntityh; CScriptsForBrains::StartNewStreamedScriptBrain(uchar,CEntity *,uchar)
