; =========================================================
; Game Engine Function: sub_10E246
; Address            : 0x10E246 - 0x10E292
; =========================================================

10E246:  PUSH            {R7,LR}
10E248:  MOV             R7, SP
10E24A:  MOV             R3, R0
10E24C:  MOV             R12, R0
10E24E:  LDR.W           R0, [R3,#4]!
10E252:  CBZ             R0, loc_10E27C
10E254:  LDR.W           LR, [R2]
10E258:  ADD.W           R12, R12, #4
10E25C:  LDR             R2, [R0,#0x10]
10E25E:  CMP             LR, R2
10E260:  BGE             loc_10E268
10E262:  LDR             R3, [R0]
10E264:  CBNZ            R3, loc_10E276
10E266:  B               loc_10E282
10E268:  CMP             R2, LR
10E26A:  BGE             loc_10E286
10E26C:  MOV             R2, R0
10E26E:  LDR.W           R3, [R2,#4]!
10E272:  CBZ             R3, loc_10E28C
10E274:  MOV             R0, R2
10E276:  MOV             R12, R0
10E278:  MOV             R0, R3
10E27A:  B               loc_10E25C
10E27C:  MOV             R0, R3
10E27E:  STR             R3, [R1]
10E280:  POP             {R7,PC}
10E282:  STR             R0, [R1]
10E284:  POP             {R7,PC}
10E286:  STR             R0, [R1]
10E288:  MOV             R0, R12
10E28A:  POP             {R7,PC}
10E28C:  STR             R0, [R1]
10E28E:  MOV             R0, R2
10E290:  POP             {R7,PC}
