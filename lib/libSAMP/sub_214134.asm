; =========================================================
; Game Engine Function: sub_214134
; Address            : 0x214134 - 0x214164
; =========================================================

214134:  PUSH            {R4,R6,R7,LR}
214136:  ADD             R7, SP, #8
214138:  ORR.W           R1, R0, #1
21413C:  LDR             R4, =(unk_D8EF0 - 0x21414E)
21413E:  CLZ.W           R1, R1
214142:  MOVW            R2, #0x4D1
214146:  RSB.W           R1, R1, #0x20 ; ' '
21414A:  ADD             R4, PC; unk_D8EF0
21414C:  MULS            R1, R2
21414E:  MOV.W           R2, #0xFFFFFFFF
214152:  LSRS            R3, R1, #0xC
214154:  LDR.W           R4, [R4,R3,LSL#2]
214158:  CMP             R4, R0
21415A:  IT HI
21415C:  ADDHI.W         R3, R2, R1,LSR#12
214160:  ADDS            R0, R3, #1
214162:  POP             {R4,R6,R7,PC}
