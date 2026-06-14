; =========================================================
; Game Engine Function: _Z28RxPipelineNodeReplaceClusterP10RxPipelineP14RxPipelineNodeP19RxClusterDefinitionS4_
; Address            : 0x1DEECE - 0x1DEF3E
; =========================================================

1DEECE:  PUSH            {R4-R7,LR}
1DEED0:  ADD             R7, SP, #0xC
1DEED2:  PUSH.W          {R8}
1DEED6:  MOV             R5, R0
1DEED8:  CMP             R5, #0
1DEEDA:  MOV             R8, R3
1DEEDC:  MOV.W           R6, #0
1DEEE0:  IT NE
1DEEE2:  CMPNE           R1, #0
1DEEE4:  BEQ             loc_1DEF36
1DEEE6:  LDR             R0, [R5]
1DEEE8:  CMP             R0, #0
1DEEEA:  ITT NE
1DEEEC:  MOVNE           R6, #0
1DEEEE:  CMPNE.W         R8, #0
1DEEF2:  BEQ             loc_1DEF36
1DEEF4:  CMP             R2, #0
1DEEF6:  ITT NE
1DEEF8:  LDRNE           R3, [R1]
1DEEFA:  CMPNE           R3, #0
1DEEFC:  BEQ             loc_1DEF36
1DEEFE:  LDR             R0, [R3,#0x20]
1DEF00:  CBZ             R0, loc_1DEF16
1DEF02:  LDR             R3, [R3,#0x24]
1DEF04:  MOVS            R4, #0
1DEF06:  LDR             R6, [R3]
1DEF08:  CMP             R6, R2
1DEF0A:  BEQ             loc_1DEF18
1DEF0C:  ADDS            R4, #1
1DEF0E:  ADDS            R3, #0xC
1DEF10:  CMP             R4, R0
1DEF12:  BCC             loc_1DEF06
1DEF14:  B               loc_1DEF18
1DEF16:  MOVS            R4, #0
1DEF18:  MOVS            R6, #0
1DEF1A:  CMP             R4, R0
1DEF1C:  BEQ             loc_1DEF36
1DEF1E:  MOV             R0, R1
1DEF20:  MOVS            R1, #0
1DEF22:  BL              sub_1DEB4C
1DEF26:  CMP             R0, #0
1DEF28:  ITTTT NE
1DEF2A:  LDRNE           R0, [R0,#0x24]
1DEF2C:  ADDNE.W         R1, R4, R4,LSL#1
1DEF30:  STRNE.W         R8, [R0,R1,LSL#2]
1DEF34:  MOVNE           R6, R5
1DEF36:  MOV             R0, R6
1DEF38:  POP.W           {R8}
1DEF3C:  POP             {R4-R7,PC}
