; =========================================================
; Game Engine Function: _ZN15CTaskSimpleLandC2E11AnimationId
; Address            : 0x52CB88 - 0x52CBBA
; =========================================================

52CB88:  PUSH            {R4,R6,R7,LR}
52CB8A:  ADD             R7, SP, #8
52CB8C:  MOV             R4, R1
52CB8E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52CB92:  LDR             R1, =(_ZTV15CTaskSimpleLand_ptr - 0x52CB9C)
52CB94:  MOVS            R2, #0
52CB96:  STR             R2, [R0,#8]
52CB98:  ADD             R1, PC; _ZTV15CTaskSimpleLand_ptr
52CB9A:  STR             R4, [R0,#0xC]
52CB9C:  LDRB            R3, [R0,#0x10]
52CB9E:  LDR             R1, [R1]; `vtable for'CTaskSimpleLand ...
52CBA0:  ADDS            R1, #8
52CBA2:  STR             R1, [R0]
52CBA4:  ADDS            R1, R4, #1
52CBA6:  IT EQ
52CBA8:  MOVEQ           R2, #1
52CBAA:  AND.W           R1, R3, #0xF8
52CBAE:  ORR.W           R1, R1, R2,LSL#1
52CBB2:  ORR.W           R1, R1, #4
52CBB6:  STRB            R1, [R0,#0x10]
52CBB8:  POP             {R4,R6,R7,PC}
