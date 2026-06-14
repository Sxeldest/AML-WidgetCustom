; =========================================================
; Game Engine Function: _Z19_rxOpenGLReinstancePvPK12RpMeshHeaderP24RxOpenGLMeshInstanceDataiPFiS_S4_iiE
; Address            : 0x222C8C - 0x222CCE
; =========================================================

222C8C:  PUSH            {R4-R7,LR}
222C8E:  ADD             R7, SP, #0xC
222C90:  PUSH.W          {R8,R9,R11}
222C94:  LDR.W           R8, [R7,#arg_0]
222C98:  MOV             R9, R3
222C9A:  MOV             R5, R2
222C9C:  MOV             R6, R0
222C9E:  CMP.W           R8, #0
222CA2:  ITT NE
222CA4:  LDRHNE          R4, [R1,#4]
222CA6:  CMPNE           R4, #0
222CA8:  BEQ             loc_222CBE
222CAA:  MOV             R0, R6
222CAC:  MOV             R1, R5
222CAE:  MOV             R2, R9
222CB0:  MOVS            R3, #1
222CB2:  BLX             R8
222CB4:  CBZ             R0, loc_222CC6
222CB6:  SUBS            R4, #1
222CB8:  ADDS            R5, #0x38 ; '8'
222CBA:  LSLS            R0, R4, #0x10
222CBC:  BNE             loc_222CAA
222CBE:  MOVS            R0, #1
222CC0:  POP.W           {R8,R9,R11}
222CC4:  POP             {R4-R7,PC}
222CC6:  MOVS            R0, #0
222CC8:  POP.W           {R8,R9,R11}
222CCC:  POP             {R4-R7,PC}
