; =========================================================
; Game Engine Function: sub_F601C
; Address            : 0xF601C - 0xF6066
; =========================================================

F601C:  PUSH            {R4-R7,LR}
F601E:  ADD             R7, SP, #0xC
F6020:  PUSH.W          {R8-R10}
F6024:  LDRD.W          R6, R5, [R7,#arg_0]
F6028:  MOV             R8, R3
F602A:  MOV             R9, R2
F602C:  MOV             R10, R1
F602E:  MOV             R4, R0
F6030:  CMP             R5, #1
F6032:  BLT             loc_F6048
F6034:  MOV             R0, R5
F6036:  BL              sub_F6104
F603A:  LDR             R1, =(byte_237998 - 0xF6048)
F603C:  MOVS            R2, #0
F603E:  CMP             R0, #0
F6040:  IT GT
F6042:  MOVGT           R2, #1
F6044:  ADD             R1, PC; byte_237998
F6046:  STRB            R2, [R1]
F6048:  LDR             R0, =(off_2400CC - 0xF6056)
F604A:  MOV             R1, R10
F604C:  STRD.W          R6, R5, [R7,#arg_0]
F6050:  MOV             R2, R9
F6052:  ADD             R0, PC; off_2400CC
F6054:  MOV             R3, R8
F6056:  LDR.W           R12, [R0]
F605A:  MOV             R0, R4
F605C:  POP.W           {R8-R10}
F6060:  POP.W           {R4-R7,LR}
F6064:  BX              R12
