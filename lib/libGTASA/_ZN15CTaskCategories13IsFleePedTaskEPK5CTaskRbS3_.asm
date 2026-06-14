; =========================================================
; Game Engine Function: _ZN15CTaskCategories13IsFleePedTaskEPK5CTaskRbS3_
; Address            : 0x548240 - 0x548290
; =========================================================

548240:  PUSH            {R4-R7,LR}
548242:  ADD             R7, SP, #0xC
548244:  PUSH.W          {R11}
548248:  MOV             R6, R0
54824A:  MOV             R4, R2
54824C:  MOV             R5, R1
54824E:  MOVS            R0, #0
548250:  STRB            R0, [R5]
548252:  STRB            R0, [R4]
548254:  LDR             R0, [R6]
548256:  LDR             R1, [R0,#0x14]
548258:  MOV             R0, R6
54825A:  BLX             R1
54825C:  MOVW            R1, #0x38F
548260:  CMP             R0, R1
548262:  ITT NE
548264:  MOVWNE          R1, #0x38D
548268:  CMPNE           R0, R1
54826A:  BNE             loc_54828A
54826C:  LDR             R0, [R6,#0xC]; this
54826E:  CBZ             R0, loc_54828A
548270:  LDRB.W          R1, [R0,#0x3A]
548274:  AND.W           R1, R1, #7
548278:  CMP             R1, #3
54827A:  BNE             loc_54828A
54827C:  MOVS            R6, #1
54827E:  STRB            R6, [R5]
548280:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
548284:  CMP             R0, #1
548286:  IT EQ
548288:  STRBEQ          R6, [R4]
54828A:  POP.W           {R11}
54828E:  POP             {R4-R7,PC}
