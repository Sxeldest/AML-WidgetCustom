; =========================================================
; Game Engine Function: _ZNK16CTaskSimplePause5CloneEv
; Address            : 0x357380 - 0x3573A8
; =========================================================

357380:  PUSH            {R4,R6,R7,LR}
357382:  ADD             R7, SP, #8
357384:  MOV             R4, R0
357386:  MOVS            R0, #off_18; this
357388:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35738C:  LDR             R4, [R4,#0x14]
35738E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
357392:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x35739C)
357394:  MOVS            R2, #0
357396:  STRH            R2, [R0,#0x10]
357398:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
35739A:  STR             R4, [R0,#0x14]
35739C:  STRD.W          R2, R2, [R0,#8]
3573A0:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
3573A2:  ADDS            R1, #8
3573A4:  STR             R1, [R0]
3573A6:  POP             {R4,R6,R7,PC}
