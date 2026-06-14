; =========================================================
; Game Engine Function: _ZN15CTaskSimpleAnimC2Eb
; Address            : 0x4D6B08 - 0x4D6B2E
; =========================================================

4D6B08:  PUSH            {R4,R6,R7,LR}
4D6B0A:  ADD             R7, SP, #8
4D6B0C:  MOV             R4, R1
4D6B0E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D6B12:  LDR             R1, =(_ZTV15CTaskSimpleAnim_ptr - 0x4D6B1C)
4D6B14:  MOVS            R3, #0
4D6B16:  LDRB            R2, [R0,#0xC]
4D6B18:  ADD             R1, PC; _ZTV15CTaskSimpleAnim_ptr
4D6B1A:  STR             R3, [R0,#8]
4D6B1C:  AND.W           R2, R2, #0xF8
4D6B20:  LDR             R1, [R1]; `vtable for'CTaskSimpleAnim ...
4D6B22:  ORR.W           R2, R2, R4,LSL#2
4D6B26:  STRB            R2, [R0,#0xC]
4D6B28:  ADDS            R1, #8
4D6B2A:  STR             R1, [R0]
4D6B2C:  POP             {R4,R6,R7,PC}
