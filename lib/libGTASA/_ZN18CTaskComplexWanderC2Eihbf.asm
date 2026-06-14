; =========================================================
; Game Engine Function: _ZN18CTaskComplexWanderC2Eihbf
; Address            : 0x520C14 - 0x520C5C
; =========================================================

520C14:  PUSH            {R4-R7,LR}
520C16:  ADD             R7, SP, #0xC
520C18:  PUSH.W          {R11}
520C1C:  MOV             R4, R3
520C1E:  MOV             R5, R2
520C20:  MOV             R6, R1
520C22:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
520C26:  LDR             R1, =(_ZTV18CTaskComplexWander_ptr - 0x520C36)
520C28:  MOVW            R2, #0xFFFF
520C2C:  VLDR            S0, [R7,#arg_0]
520C30:  MOVS            R3, #0
520C32:  ADD             R1, PC; _ZTV18CTaskComplexWander_ptr
520C34:  STR             R6, [R0,#0xC]
520C36:  STRB            R5, [R0,#0x10]
520C38:  VSTR            S0, [R0,#0x14]
520C3C:  STRH            R2, [R0,#0x18]
520C3E:  STRH            R2, [R0,#0x1C]
520C40:  LDRB.W          R2, [R0,#0x24]
520C44:  LDR             R1, [R1]; `vtable for'CTaskComplexWander ...
520C46:  AND.W           R2, R2, #0xF0
520C4A:  STR             R3, [R0,#0x20]
520C4C:  ORRS            R2, R4
520C4E:  STRB.W          R2, [R0,#0x24]
520C52:  ADDS            R1, #8
520C54:  STR             R1, [R0]
520C56:  POP.W           {R11}
520C5A:  POP             {R4-R7,PC}
