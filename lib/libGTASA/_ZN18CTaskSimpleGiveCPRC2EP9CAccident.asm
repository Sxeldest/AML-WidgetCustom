; =========================================================
; Game Engine Function: _ZN18CTaskSimpleGiveCPRC2EP9CAccident
; Address            : 0x510230 - 0x510258
; =========================================================

510230:  PUSH            {R4,R6,R7,LR}
510232:  ADD             R7, SP, #8
510234:  MOV             R4, R1
510236:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51023A:  LDR             R1, =(_ZTV18CTaskSimpleGiveCPR_ptr - 0x510244)
51023C:  MOVS            R3, #0
51023E:  LDRB            R2, [R0,#8]
510240:  ADD             R1, PC; _ZTV18CTaskSimpleGiveCPR_ptr
510242:  STRD.W          R4, R3, [R0,#0xC]
510246:  AND.W           R2, R2, #0xFC
51024A:  LDR             R1, [R1]; `vtable for'CTaskSimpleGiveCPR ...
51024C:  ORR.W           R2, R2, #1
510250:  STRB            R2, [R0,#8]
510252:  ADDS            R1, #8
510254:  STR             R1, [R0]
510256:  POP             {R4,R6,R7,PC}
