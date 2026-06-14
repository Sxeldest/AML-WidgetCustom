; =========================================================
; Game Engine Function: alSetError
; Address            : 0x1CE334 - 0x1CE398
; =========================================================

1CE334:  PUSH            {R4,R5,R11,LR}
1CE338:  ADD             R11, SP, #8
1CE33C:  MOV             R5, R0
1CE340:  LDR             R0, =(TrapALError_ptr - 0x1CE350)
1CE344:  MOV             R4, R1
1CE348:  LDR             R0, [PC,R0]; TrapALError
1CE34C:  LDRB            R0, [R0]
1CE350:  CMP             R0, #0
1CE354:  BEQ             loc_1CE360
1CE358:  MOV             R0, #5; sig
1CE35C:  BL              raise
1CE360:  ADD             R0, R5, #0xC4
1CE364:  LDREX           R1, [R0]
1CE368:  CMP             R1, #0
1CE36C:  BNE             loc_1CE38C
1CE370:  DMB             ISH
1CE374:  STREX           R1, R4, [R0]
1CE378:  CMP             R1, #0
1CE37C:  BEQ             loc_1CE390
1CE380:  LDREX           R1, [R0]
1CE384:  CMP             R1, #0
1CE388:  BEQ             loc_1CE374
1CE38C:  CLREX
1CE390:  DMB             ISH
1CE394:  POP             {R4,R5,R11,PC}
