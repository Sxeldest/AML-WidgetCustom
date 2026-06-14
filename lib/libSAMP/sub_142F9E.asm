; =========================================================
; Game Engine Function: sub_142F9E
; Address            : 0x142F9E - 0x143018
; =========================================================

142F9E:  PUSH            {R4,R5,R7,LR}
142FA0:  ADD             R7, SP, #8
142FA2:  SUB             SP, SP, #0x160
142FA4:  MOV             R4, R0
142FA6:  LDR.W           R0, [R0,#0x218]
142FAA:  CMP             R0, #5
142FAC:  BNE             loc_143014
142FAE:  LDR             R2, [R1,#0xC]; size
142FB0:  ADD             R5, SP, #0x168+var_11C
142FB2:  LDR             R1, [R1,#0x14]; src
142FB4:  MOVS            R3, #0
142FB6:  MOV             R0, R5; int
142FB8:  BL              sub_17D4F2
142FBC:  MOV             R0, SP; int
142FBE:  MOVS            R1, #0x43 ; 'C'; n
142FC0:  BLX             sub_22178C
142FC4:  MOV             R0, R5
142FC6:  MOVS            R1, #8
142FC8:  BL              sub_17DA96
142FCC:  ADD             R0, SP, #0x168+var_11C; int
142FCE:  ADD.W           R1, SP, #0x168+var_11E; int
142FD2:  MOVS            R2, #0x10
142FD4:  MOVS            R3, #1
142FD6:  BL              sub_17D786
142FDA:  ADD             R0, SP, #0x168+var_11C; int
142FDC:  MOV             R1, SP; dest
142FDE:  MOVS            R2, #0x43 ; 'C'
142FE0:  BL              sub_17D744
142FE4:  LDRH.W          R0, [SP,#0x168+var_11E]
142FE8:  CMP.W           R0, #0x3EC
142FEC:  BHI             loc_14300E
142FEE:  LDR.W           R1, [R4,#0x3B0]
142FF2:  LDR             R1, [R1]
142FF4:  ADDS            R2, R1, R0
142FF6:  LDRB.W          R2, [R2,#0xFB4]
142FFA:  CBZ             R2, loc_14300E
142FFC:  ADD.W           R0, R1, R0,LSL#2
143000:  LDR             R0, [R0,#4]
143002:  CBZ             R0, loc_14300E
143004:  LDR             R0, [R0]
143006:  CBZ             R0, loc_14300E
143008:  MOV             R1, SP
14300A:  BL              sub_14B194
14300E:  ADD             R0, SP, #0x168+var_11C
143010:  BL              sub_17D542
143014:  ADD             SP, SP, #0x160
143016:  POP             {R4,R5,R7,PC}
