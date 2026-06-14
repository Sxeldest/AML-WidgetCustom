; =========================================================
; Game Engine Function: sub_8613E
; Address            : 0x8613E - 0x861B8
; =========================================================

8613E:  PUSH            {R7,LR}
86140:  MOV             R7, SP
86142:  MOVW            R12, #0x3B78
86146:  MOV.W           R3, #0xFFFFFFFF
8614A:  MOV.W           LR, #4
8614E:  MOVT            R12, #0x82F6
86152:  LDRB.W          R2, [R0,LR]
86156:  ADD.W           LR, LR, #1
8615A:  EORS            R2, R3
8615C:  EOR.W           R3, R12, R2,LSR#1
86160:  LSLS            R1, R2, #0x1F
86162:  IT EQ
86164:  LSREQ           R3, R2, #1
86166:  EOR.W           R1, R12, R3,LSR#1
8616A:  LSLS            R2, R3, #0x1F
8616C:  IT EQ
8616E:  LSREQ           R1, R3, #1
86170:  EOR.W           R2, R12, R1,LSR#1
86174:  LSLS            R3, R1, #0x1F
86176:  IT EQ
86178:  LSREQ           R2, R1, #1
8617A:  EOR.W           R1, R12, R2,LSR#1
8617E:  LSLS            R3, R2, #0x1F
86180:  IT EQ
86182:  LSREQ           R1, R2, #1
86184:  EOR.W           R2, R12, R1,LSR#1
86188:  LSLS            R3, R1, #0x1F
8618A:  IT EQ
8618C:  LSREQ           R2, R1, #1
8618E:  EOR.W           R1, R12, R2,LSR#1
86192:  LSLS            R3, R2, #0x1F
86194:  IT EQ
86196:  LSREQ           R1, R2, #1
86198:  EOR.W           R2, R12, R1,LSR#1
8619C:  LSLS            R3, R1, #0x1F
8619E:  IT EQ
861A0:  LSREQ           R2, R1, #1
861A2:  EOR.W           R3, R12, R2,LSR#1
861A6:  LSLS            R1, R2, #0x1F
861A8:  IT EQ
861AA:  LSREQ           R3, R2, #1
861AC:  CMP.W           LR, #0x18
861B0:  BNE             loc_86152
861B2:  MVNS            R1, R3
861B4:  STR             R1, [R0]
861B6:  POP             {R7,PC}
