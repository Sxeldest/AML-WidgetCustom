; =========================================================
; Game Engine Function: sub_14D1E8
; Address            : 0x14D1E8 - 0x14D25C
; =========================================================

14D1E8:  PUSH            {R7,LR}
14D1EA:  MOV             R7, SP
14D1EC:  SUB             SP, SP, #0x118
14D1EE:  LDRD.W          R1, R0, [R0]; src
14D1F2:  MOVS            R3, #0
14D1F4:  ASRS            R2, R0, #0x1F
14D1F6:  ADD.W           R0, R0, R2,LSR#29
14D1FA:  MOVS            R2, #1
14D1FC:  ADD.W           R2, R2, R0,ASR#3; size
14D200:  MOV             R0, SP; int
14D202:  BL              sub_17D4F2
14D206:  SUBS            R1, R7, #2; int
14D208:  MOVS            R2, #0x10
14D20A:  MOVS            R3, #1
14D20C:  BL              sub_17D786
14D210:  SUBS            R1, R7, #3; int
14D212:  MOV             R0, SP; int
14D214:  MOVS            R2, #8
14D216:  MOVS            R3, #1
14D218:  BL              sub_17D786
14D21C:  LDRB.W          R0, [R7,#-3]
14D220:  CMP             R0, #2
14D222:  BEQ             loc_14D22E
14D224:  CMP             R0, #3
14D226:  ITE NE
14D228:  MOVNE           R2, #4
14D22A:  MOVEQ           R2, #0xE
14D22C:  B               loc_14D230
14D22E:  MOVS            R2, #0xF
14D230:  STRB.W          R2, [R7,#-3]
14D234:  MOVW            R1, #0x13BC
14D238:  LDR             R0, =(off_23496C - 0x14D23E)
14D23A:  ADD             R0, PC; off_23496C
14D23C:  LDR             R0, [R0]; dword_23DEF4
14D23E:  LDR             R0, [R0]
14D240:  LDR.W           R0, [R0,#0x3B0]
14D244:  LDR             R0, [R0]
14D246:  LDR             R0, [R0,R1]
14D248:  LDRH.W          R1, [R7,#-2]
14D24C:  STRB            R2, [R0,#0x10]
14D24E:  BL              sub_141424
14D252:  MOV             R0, SP
14D254:  BL              sub_17D542
14D258:  ADD             SP, SP, #0x118
14D25A:  POP             {R7,PC}
