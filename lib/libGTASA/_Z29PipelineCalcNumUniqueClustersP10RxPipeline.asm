; =========================================================
; Game Engine Function: _Z29PipelineCalcNumUniqueClustersP10RxPipeline
; Address            : 0x1DEAAC - 0x1DEB14
; =========================================================

1DEAAC:  PUSH            {R4-R7,LR}
1DEAAE:  ADD             R7, SP, #0xC
1DEAB0:  PUSH.W          {R8-R10}
1DEAB4:  LDR.W           LR, [R0,#4]
1DEAB8:  MOVS            R2, #0
1DEABA:  MOV.W           R10, #0
1DEABE:  MOV             R12, R2
1DEAC0:  CMP.W           LR, #0
1DEAC4:  BEQ             loc_1DEB0C
1DEAC6:  LDR.W           R8, [R0,#8]
1DEACA:  MOV.W           R9, #0
1DEACE:  MOV.W           R3, #0xFFFFFFFF
1DEAD2:  ADD.W           R4, R9, R9,LSL#2
1DEAD6:  LDR.W           R4, [R8,R4,LSL#3]
1DEADA:  LDR             R5, [R4,#0x20]
1DEADC:  CBZ             R5, loc_1DEAFA
1DEADE:  LDR             R6, [R4,#0x24]
1DEAE0:  MOVS            R4, #0
1DEAE2:  LDR.W           R2, [R6],#0xC
1DEAE6:  MOV             R1, R3
1DEAE8:  ADDS            R4, #1
1DEAEA:  CMP             R2, R3
1DEAEC:  IT CC
1DEAEE:  MOVCC           R1, R2
1DEAF0:  CMP             R2, R10
1DEAF2:  IT HI
1DEAF4:  MOVHI           R3, R1
1DEAF6:  CMP             R4, R5
1DEAF8:  BCC             loc_1DEAE2
1DEAFA:  ADD.W           R9, R9, #1
1DEAFE:  CMP             R9, LR
1DEB00:  BCC             loc_1DEAD2
1DEB02:  ADD.W           R2, R12, #1
1DEB06:  ADDS            R1, R3, #1
1DEB08:  MOV             R10, R3
1DEB0A:  BNE             loc_1DEABE
1DEB0C:  MOV             R0, R12
1DEB0E:  POP.W           {R8-R10}
1DEB12:  POP             {R4-R7,PC}
