; =========================================================
; Game Engine Function: _Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_
; Address            : 0x215FB0 - 0x215FE0
; =========================================================

215FB0:  PUSH            {R4-R7,LR}
215FB2:  ADD             R7, SP, #0xC
215FB4:  PUSH.W          {R8,R9,R11}
215FB8:  MOV             R5, R0
215FBA:  MOV             R8, R2
215FBC:  LDR             R4, [R5,#0x24]
215FBE:  MOV             R9, R1
215FC0:  CMP             R4, #1
215FC2:  BLT             loc_215FD8
215FC4:  MOVS            R6, #0
215FC6:  LDR             R0, [R5,#0x20]
215FC8:  MOV             R1, R8
215FCA:  LDR.W           R0, [R0,R6,LSL#2]
215FCE:  BLX             R9
215FD0:  CBZ             R0, loc_215FD8
215FD2:  ADDS            R6, #1
215FD4:  CMP             R6, R4
215FD6:  BLT             loc_215FC6
215FD8:  MOV             R0, R5
215FDA:  POP.W           {R8,R9,R11}
215FDE:  POP             {R4-R7,PC}
