; =========================================================
; Game Engine Function: sub_146F80
; Address            : 0x146F80 - 0x14702E
; =========================================================

146F80:  PUSH            {R4,R6,R7,LR}
146F82:  ADD             R7, SP, #8
146F84:  SUB             SP, SP, #0x138
146F86:  LDRD.W          R1, R0, [R0]; src
146F8A:  MOVS            R3, #0
146F8C:  ASRS            R2, R0, #0x1F
146F8E:  ADD.W           R0, R0, R2,LSR#29
146F92:  MOVS            R2, #1
146F94:  ADD.W           R2, R2, R0,ASR#3; size
146F98:  ADD             R0, SP, #0x140+var_13C; int
146F9A:  BL              sub_17D4F2
146F9E:  SUB.W           R1, R7, #-var_9; int
146FA2:  MOVS            R2, #8
146FA4:  MOVS            R3, #1
146FA6:  BL              sub_17D786
146FAA:  ADD             R4, SP, #0x140+var_18
146FAC:  ADD             R0, SP, #0x140+var_13C; int
146FAE:  MOVS            R2, #0x20 ; ' '
146FB0:  MOVS            R3, #1
146FB2:  MOV             R1, R4; int
146FB4:  BL              sub_17D786
146FB8:  ADDS            R1, R4, #4; int
146FBA:  ADD             R0, SP, #0x140+var_13C; int
146FBC:  MOVS            R2, #0x20 ; ' '
146FBE:  MOVS            R3, #1
146FC0:  BL              sub_17D786
146FC4:  ADD.W           R1, R4, #8; int
146FC8:  ADD             R0, SP, #0x140+var_13C; int
146FCA:  MOVS            R2, #0x20 ; ' '
146FCC:  MOVS            R3, #1
146FCE:  BL              sub_17D786
146FD2:  ADD             R4, SP, #0x140+var_24
146FD4:  ADD             R0, SP, #0x140+var_13C; int
146FD6:  MOVS            R2, #0x20 ; ' '
146FD8:  MOVS            R3, #1
146FDA:  MOV             R1, R4; int
146FDC:  BL              sub_17D786
146FE0:  ADDS            R1, R4, #4; int
146FE2:  ADD             R0, SP, #0x140+var_13C; int
146FE4:  MOVS            R2, #0x20 ; ' '
146FE6:  MOVS            R3, #1
146FE8:  BL              sub_17D786
146FEC:  ADD.W           R1, R4, #8; int
146FF0:  ADD             R0, SP, #0x140+var_13C; int
146FF2:  MOVS            R2, #0x20 ; ' '
146FF4:  MOVS            R3, #1
146FF6:  BL              sub_17D786
146FFA:  ADD             R0, SP, #0x140+var_13C; int
146FFC:  ADD             R1, SP, #0x140+var_28; int
146FFE:  MOVS            R2, #0x20 ; ' '
147000:  MOVS            R3, #1
147002:  BL              sub_17D786
147006:  LDR             R0, =(off_234970 - 0x147010)
147008:  LDRB.W          R1, [R7,#var_9]
14700C:  ADD             R0, PC; off_234970
14700E:  LDR             R2, [SP,#0x140+var_28]
147010:  LDR             R4, [R0]; dword_23DEF0
147012:  LDR             R0, [R4]
147014:  STR             R2, [SP,#0x140+var_140]
147016:  ADD             R2, SP, #0x140+var_18
147018:  ADD             R3, SP, #0x140+var_24
14701A:  BL              sub_FA088
14701E:  LDR             R0, [R4]
147020:  MOVS            R1, #1
147022:  STRB            R1, [R0,#1]
147024:  ADD             R0, SP, #0x140+var_13C
147026:  BL              sub_17D542
14702A:  ADD             SP, SP, #0x138
14702C:  POP             {R4,R6,R7,PC}
