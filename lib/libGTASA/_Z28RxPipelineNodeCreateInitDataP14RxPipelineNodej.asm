; =========================================================
; Game Engine Function: _Z28RxPipelineNodeCreateInitDataP14RxPipelineNodej
; Address            : 0x1DEF40 - 0x1DEFA4
; =========================================================

1DEF40:  PUSH            {R4-R7,LR}
1DEF42:  ADD             R7, SP, #0xC
1DEF44:  PUSH.W          {R11}
1DEF48:  SUB             SP, SP, #8
1DEF4A:  MOV             R5, R0
1DEF4C:  MOV             R4, R1
1DEF4E:  LDR             R0, [R5,#0x20]
1DEF50:  CBZ             R0, loc_1DEF66
1DEF52:  LDR             R1, =(RwEngineInstance_ptr - 0x1DEF58)
1DEF54:  ADD             R1, PC; RwEngineInstance_ptr
1DEF56:  LDR             R1, [R1]; RwEngineInstance
1DEF58:  LDR             R1, [R1]
1DEF5A:  LDR.W           R1, [R1,#0x130]
1DEF5E:  BLX             R1
1DEF60:  MOVS            R0, #0
1DEF62:  STRD.W          R0, R0, [R5,#0x20]
1DEF66:  LDR             R0, =(RwEngineInstance_ptr - 0x1DEF6C)
1DEF68:  ADD             R0, PC; RwEngineInstance_ptr
1DEF6A:  LDR             R0, [R0]; RwEngineInstance
1DEF6C:  LDR             R0, [R0]
1DEF6E:  LDR.W           R1, [R0,#0x12C]
1DEF72:  MOV             R0, R4
1DEF74:  BLX             R1
1DEF76:  MOV             R6, R0
1DEF78:  CMP             R6, #0
1DEF7A:  STR             R6, [R5,#0x20]
1DEF7C:  BEQ             loc_1DEF82
1DEF7E:  STR             R4, [R5,#0x24]
1DEF80:  B               loc_1DEF9A
1DEF82:  MOVS            R0, #0x13
1DEF84:  MOVS            R6, #0
1DEF86:  MOVT            R0, #0x8000; int
1DEF8A:  MOV             R1, R4
1DEF8C:  STR             R6, [SP,#0x18+var_18]
1DEF8E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DEF92:  STR             R0, [SP,#0x18+var_14]
1DEF94:  MOV             R0, SP
1DEF96:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DEF9A:  MOV             R0, R6
1DEF9C:  ADD             SP, SP, #8
1DEF9E:  POP.W           {R11}
1DEFA2:  POP             {R4-R7,PC}
