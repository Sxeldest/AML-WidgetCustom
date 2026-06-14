; =========================================================
; Game Engine Function: sub_2141C4
; Address            : 0x2141C4 - 0x2141F4
; =========================================================

2141C4:  PUSH            {R4,R6,R7,LR}
2141C6:  ADD             R7, SP, #8
2141C8:  ORR.W           R1, R0, #1
2141CC:  LDR             R4, =(unk_D8EF0 - 0x2141DE)
2141CE:  CLZ.W           R1, R1
2141D2:  MOVW            R2, #0x4D1
2141D6:  RSB.W           R1, R1, #0x20 ; ' '
2141DA:  ADD             R4, PC; unk_D8EF0
2141DC:  MULS            R1, R2
2141DE:  MOV.W           R2, #0xFFFFFFFF
2141E2:  LSRS            R3, R1, #0xC
2141E4:  LDR.W           R4, [R4,R3,LSL#2]
2141E8:  CMP             R4, R0
2141EA:  IT HI
2141EC:  ADDHI.W         R3, R2, R1,LSR#12
2141F0:  ADDS            R0, R3, #1
2141F2:  POP             {R4,R6,R7,PC}
