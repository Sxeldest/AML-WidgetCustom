; =========================================================
; Game Engine Function: sub_12C688
; Address            : 0x12C688 - 0x12C70E
; =========================================================

12C688:  PUSH            {R4-R7,LR}
12C68A:  ADD             R7, SP, #0xC
12C68C:  PUSH.W          {R8}
12C690:  SUB             SP, SP, #0x10
12C692:  LDR.W           R8, [R0,#4]
12C696:  ADD             R4, SP, #0x20+var_1C
12C698:  LDR.W           R0, [R8,#0x6C]
12C69C:  LDR             R2, =(asc_84107 - 0x12C6A8); ">>" ...
12C69E:  LDRB.W          R3, [R8,#0x78]
12C6A2:  LDR             R1, =(asc_8D18E - 0x12C6B4); "<<" ...
12C6A4:  ADD             R2, PC; ">>"
12C6A6:  LDR             R5, [R0]
12C6A8:  EOR.W           R0, R3, #1
12C6AC:  STRB.W          R0, [R8,#0x78]
12C6B0:  ADD             R1, PC; "<<"
12C6B2:  MOV             R0, R4; int
12C6B4:  CMP             R3, #0
12C6B6:  IT EQ
12C6B8:  MOVEQ           R1, R2; s
12C6BA:  BL              sub_DC6DC
12C6BE:  LDR             R0, [R5,#0x54]
12C6C0:  MOV             R1, R4
12C6C2:  BL              sub_13D450
12C6C6:  LDRB.W          R0, [SP,#0x20+var_1C]
12C6CA:  LSLS            R0, R0, #0x1F
12C6CC:  ITT NE
12C6CE:  LDRNE           R0, [SP,#0x20+var_14]; void *
12C6D0:  BLXNE           j__ZdlPv; operator delete(void *)
12C6D4:  MOVS            R6, #3
12C6D6:  LDR.W           R0, [R8,#0x6C]
12C6DA:  LDR.W           R4, [R0,R6,LSL#2]
12C6DE:  LDRB.W          R0, [R8,#0x78]
12C6E2:  EOR.W           R5, R0, #1
12C6E6:  LDRB.W          R1, [R4,#0x50]
12C6EA:  CMP             R1, R5
12C6EC:  BEQ             loc_12C6FC
12C6EE:  LDR             R1, [R4]
12C6F0:  CLZ.W           R0, R0
12C6F4:  LDR             R2, [R1,#0x24]
12C6F6:  LSRS            R1, R0, #5
12C6F8:  MOV             R0, R4
12C6FA:  BLX             R2
12C6FC:  ADDS            R6, #1
12C6FE:  STRB.W          R5, [R4,#0x50]
12C702:  CMP             R6, #0xA
12C704:  BNE             loc_12C6D6
12C706:  ADD             SP, SP, #0x10
12C708:  POP.W           {R8}
12C70C:  POP             {R4-R7,PC}
