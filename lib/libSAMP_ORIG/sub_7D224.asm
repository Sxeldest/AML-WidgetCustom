; =========================================================
; Game Engine Function: sub_7D224
; Address            : 0x7D224 - 0x7D256
; =========================================================

7D224:  PUSH            {R4,R6,R7,LR}
7D226:  ADD             R7, SP, #8
7D228:  LDR             R1, =(_ZTV6Button - 0x7D232); `vtable for'Button ...
7D22A:  MOV             R4, R0
7D22C:  LDR             R0, [R0,#0x68]
7D22E:  ADD             R1, PC; `vtable for'Button
7D230:  ADDS            R1, #8
7D232:  STR             R1, [R4]
7D234:  ADD.W           R1, R4, #0x58 ; 'X'
7D238:  CMP             R1, R0
7D23A:  BEQ             loc_7D242
7D23C:  CBZ             R0, loc_7D24C
7D23E:  MOVS            R1, #5
7D240:  B               loc_7D244
7D242:  MOVS            R1, #4
7D244:  LDR             R2, [R0]
7D246:  LDR.W           R1, [R2,R1,LSL#2]
7D24A:  BLX             R1
7D24C:  MOV             R0, R4
7D24E:  POP.W           {R4,R6,R7,LR}
7D252:  B.W             sub_7C3B4
