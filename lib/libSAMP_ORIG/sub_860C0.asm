; =========================================================
; Game Engine Function: sub_860C0
; Address            : 0x860C0 - 0x8613E
; =========================================================

860C0:  PUSH            {R4,R6,R7,LR}
860C2:  ADD             R7, SP, #8
860C4:  LDR.W           R12, [R0]
860C8:  MOVW            LR, #0x3B78
860CC:  MOV.W           R1, #0xFFFFFFFF
860D0:  MOVS            R2, #4
860D2:  MOVT            LR, #0x82F6
860D6:  LDRB            R3, [R0,R2]
860D8:  ADDS            R2, #1
860DA:  EORS            R1, R3
860DC:  EOR.W           R3, LR, R1,LSR#1
860E0:  LSLS            R4, R1, #0x1F
860E2:  IT EQ
860E4:  LSREQ           R3, R1, #1
860E6:  EOR.W           R1, LR, R3,LSR#1
860EA:  LSLS            R4, R3, #0x1F
860EC:  IT EQ
860EE:  LSREQ           R1, R3, #1
860F0:  EOR.W           R3, LR, R1,LSR#1
860F4:  LSLS            R4, R1, #0x1F
860F6:  IT EQ
860F8:  LSREQ           R3, R1, #1
860FA:  EOR.W           R1, LR, R3,LSR#1
860FE:  LSLS            R4, R3, #0x1F
86100:  IT EQ
86102:  LSREQ           R1, R3, #1
86104:  EOR.W           R3, LR, R1,LSR#1
86108:  LSLS            R4, R1, #0x1F
8610A:  IT EQ
8610C:  LSREQ           R3, R1, #1
8610E:  EOR.W           R1, LR, R3,LSR#1
86112:  LSLS            R4, R3, #0x1F
86114:  IT EQ
86116:  LSREQ           R1, R3, #1
86118:  EOR.W           R3, LR, R1,LSR#1
8611C:  LSLS            R4, R1, #0x1F
8611E:  IT EQ
86120:  LSREQ           R3, R1, #1
86122:  EOR.W           R1, LR, R3,LSR#1
86126:  LSLS            R4, R3, #0x1F
86128:  IT EQ
8612A:  LSREQ           R1, R3, #1
8612C:  CMP             R2, #0x18
8612E:  BNE             loc_860D6
86130:  ADD.W           R0, R12, R1
86134:  ADDS            R0, #1
86136:  CLZ.W           R0, R0
8613A:  LSRS            R0, R0, #5
8613C:  POP             {R4,R6,R7,PC}
