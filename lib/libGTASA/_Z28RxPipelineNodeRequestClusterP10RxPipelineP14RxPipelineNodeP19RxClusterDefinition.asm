; =========================================================
; Game Engine Function: _Z28RxPipelineNodeRequestClusterP10RxPipelineP14RxPipelineNodeP19RxClusterDefinition
; Address            : 0x1DEE6A - 0x1DEECE
; =========================================================

1DEE6A:  PUSH            {R4-R7,LR}
1DEE6C:  ADD             R7, SP, #0xC
1DEE6E:  PUSH.W          {R11}
1DEE72:  MOV             R6, R0
1DEE74:  MOVS            R0, #0
1DEE76:  CBZ             R6, loc_1DEEC0
1DEE78:  CMP             R1, #0
1DEE7A:  ITT NE
1DEE7C:  LDRNE           R3, [R6]
1DEE7E:  CMPNE           R3, #0
1DEE80:  BEQ             loc_1DEEC0
1DEE82:  CMP             R2, #0
1DEE84:  MOV.W           R0, #0
1DEE88:  ITT NE
1DEE8A:  LDRNE           R3, [R1]
1DEE8C:  CMPNE           R3, #0
1DEE8E:  BEQ             loc_1DEEC0
1DEE90:  LDR             R0, [R3,#0x20]
1DEE92:  CBZ             R0, loc_1DEEA6
1DEE94:  LDR             R3, [R3,#0x24]
1DEE96:  MOVS            R4, #0
1DEE98:  LDR             R5, [R3]
1DEE9A:  CMP             R5, R2
1DEE9C:  BEQ             loc_1DEEC6
1DEE9E:  ADDS            R4, #1
1DEEA0:  ADDS            R3, #0xC
1DEEA2:  CMP             R4, R0
1DEEA4:  BCC             loc_1DEE98
1DEEA6:  MOV             R0, R1
1DEEA8:  MOV             R1, R2
1DEEAA:  BL              sub_1DEB4C
1DEEAE:  CBZ             R0, loc_1DEEC6
1DEEB0:  LDR             R1, [R0,#0x20]
1DEEB2:  LDR             R0, [R0,#0x28]
1DEEB4:  ADD.W           R0, R0, R1,LSL#2
1DEEB8:  MOVS            R1, #2
1DEEBA:  STR.W           R1, [R0,#-4]
1DEEBE:  MOV             R0, R6
1DEEC0:  POP.W           {R11}
1DEEC4:  POP             {R4-R7,PC}
1DEEC6:  MOVS            R0, #0
1DEEC8:  POP.W           {R11}
1DEECC:  POP             {R4-R7,PC}
