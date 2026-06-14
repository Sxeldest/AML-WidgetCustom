; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains48StartOrRequestNewStreamedScriptBrainWithThisNameEPKcP7CEntitya
; Address            : 0x32FB94 - 0x32FBE2
; =========================================================

32FB94:  PUSH            {R4-R7,LR}
32FB96:  ADD             R7, SP, #0xC
32FB98:  PUSH.W          {R8-R10}
32FB9C:  SUB             SP, SP, #8
32FB9E:  MOV             R9, R0
32FBA0:  ADD.W           R6, R9, #0xC
32FBA4:  MOV             R4, R3
32FBA6:  MOV             R8, R2
32FBA8:  MOV             R10, R1
32FBAA:  MOVS            R5, #0
32FBAC:  LDRB.W          R0, [R6,#-0xA]
32FBB0:  UXTB            R1, R4
32FBB2:  CMP             R0, R1
32FBB4:  BNE             loc_32FBC0
32FBB6:  MOV             R0, R6; char *
32FBB8:  MOV             R1, R10; char *
32FBBA:  BLX             strcasecmp
32FBBE:  CBZ             R0, loc_32FBCA
32FBC0:  ADDS            R5, #1
32FBC2:  ADDS            R6, #0x14
32FBC4:  CMP             R5, #0x46 ; 'F'
32FBC6:  BCC             loc_32FBAC
32FBC8:  B               loc_32FBDA
32FBCA:  MOVS            R0, #1
32FBCC:  UXTB            R1, R5; unsigned __int8
32FBCE:  STR             R0, [SP,#0x20+var_20]; unsigned __int8
32FBD0:  MOV             R0, R9; this
32FBD2:  MOV             R2, R8; CEntity *
32FBD4:  MOV             R3, R4; signed __int8
32FBD6:  BLX             j__ZN17CScriptsForBrains36StartOrRequestNewStreamedScriptBrainEhP7CEntityah; CScriptsForBrains::StartOrRequestNewStreamedScriptBrain(uchar,CEntity *,signed char,uchar)
32FBDA:  ADD             SP, SP, #8
32FBDC:  POP.W           {R8-R10}
32FBE0:  POP             {R4-R7,PC}
