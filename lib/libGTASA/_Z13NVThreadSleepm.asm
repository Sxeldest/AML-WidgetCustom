; =========================================================
; Game Engine Function: _Z13NVThreadSleepm
; Address            : 0x27A22C - 0x27A27E
; =========================================================

27A22C:  PUSH            {R7,LR}
27A22E:  MOV             R7, SP
27A230:  SUB             SP, SP, #0x10
27A232:  MOV             R1, #0x10624DD3
27A23A:  UMULL.W         R1, R2, R0, R1
27A23E:  LSRS            R1, R2, #6
27A240:  MOV             R2, #0xFFFFFC18
27A248:  MLA.W           R0, R1, R2, R0
27A24C:  MOV             R2, #0xF4240
27A254:  MULS            R0, R2
27A256:  STRD.W          R1, R0, [SP,#0x18+var_18]
27A25A:  STRD.W          R1, R0, [SP,#0x18+var_10]
27A25E:  ADD             R0, SP, #0x18+var_10; requested_time
27A260:  MOV             R1, SP; remaining
27A262:  BLX             nanosleep
27A266:  CBZ             R0, loc_27A278
27A268:  LDRD.W          R0, R1, [SP,#0x18+var_18]
27A26C:  STRD.W          R0, R1, [SP,#0x18+var_10]
27A270:  ADD             R0, SP, #0x18+var_10; requested_time
27A272:  MOV             R1, SP; remaining
27A274:  BLX             nanosleep
27A278:  MOVS            R0, #1
27A27A:  ADD             SP, SP, #0x10
27A27C:  POP             {R7,PC}
