; =========================================================
; Game Engine Function: _ZN51CTaskComplexGoToPointAndStandStillAndAchieveHeading18CreateFirstSubTaskEP4CPed
; Address            : 0x51E230 - 0x51E290
; =========================================================

51E230:  PUSH            {R4-R7,LR}
51E232:  ADD             R7, SP, #0xC
51E234:  PUSH.W          {R11}
51E238:  MOV             R4, R0
51E23A:  LDRB.W          R0, [R4,#0x2C]
51E23E:  AND.W           R0, R0, #0xFE
51E242:  STRB.W          R0, [R4,#0x2C]
51E246:  MOVS            R0, #word_2C; this
51E248:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E24C:  LDR             R5, [R4,#0xC]
51E24E:  LDR             R6, [R4,#0x1C]
51E250:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51E254:  LDR             R1, =(_ZTV15CTaskSimpleGoTo_ptr - 0x51E25C)
51E256:  LDR             R2, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x51E260)
51E258:  ADD             R1, PC; _ZTV15CTaskSimpleGoTo_ptr
51E25A:  STR             R5, [R0,#8]
51E25C:  ADD             R2, PC; _ZTV20CTaskSimpleGoToPoint_ptr
51E25E:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoTo ...
51E260:  LDR             R2, [R2]; `vtable for'CTaskSimpleGoToPoint ...
51E262:  ADDS            R1, #8
51E264:  STR             R1, [R0]
51E266:  LDR             R1, [R4,#0x18]
51E268:  LDRB            R5, [R0,#0x1D]
51E26A:  VLDR            D16, [R4,#0x10]
51E26E:  LDRB            R3, [R0,#0x1C]
51E270:  STR             R1, [R0,#0x14]
51E272:  ADD.W           R1, R2, #8
51E276:  STR             R1, [R0]
51E278:  AND.W           R1, R5, #0xE0
51E27C:  STR             R6, [R0,#0x18]
51E27E:  STRB            R1, [R0,#0x1D]
51E280:  AND.W           R1, R3, #0xC0
51E284:  STRB            R1, [R0,#0x1C]
51E286:  VSTR            D16, [R0,#0xC]
51E28A:  POP.W           {R11}
51E28E:  POP             {R4-R7,PC}
