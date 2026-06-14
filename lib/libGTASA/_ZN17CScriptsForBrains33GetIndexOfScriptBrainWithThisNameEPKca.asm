; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains33GetIndexOfScriptBrainWithThisNameEPKca
; Address            : 0x32FB5C - 0x32FB94
; =========================================================

32FB5C:  PUSH            {R4-R7,LR}
32FB5E:  ADD             R7, SP, #0xC
32FB60:  PUSH.W          {R8}
32FB64:  ADD.W           R5, R0, #0xC
32FB68:  MOV             R8, R1
32FB6A:  MOVS            R6, #0
32FB6C:  UXTB            R4, R2
32FB6E:  LDRB.W          R0, [R5,#-0xA]
32FB72:  CMP             R0, R4
32FB74:  BNE             loc_32FB80
32FB76:  MOV             R0, R5; char *
32FB78:  MOV             R1, R8; char *
32FB7A:  BLX             strcasecmp
32FB7E:  CBZ             R0, loc_32FB8C
32FB80:  ADDS            R6, #1
32FB82:  ADDS            R5, #0x14
32FB84:  CMP             R6, #0x46 ; 'F'
32FB86:  BCC             loc_32FB6E
32FB88:  MOVW            R6, #0xFFFF
32FB8C:  SXTH            R0, R6
32FB8E:  POP.W           {R8}
32FB92:  POP             {R4-R7,PC}
