; =========================================================
; Game Engine Function: _Z7MoveMemPPv
; Address            : 0x3F440C - 0x3F4434
; =========================================================

3F440C:  PUSH            {R4,R6,R7,LR}
3F440E:  ADD             R7, SP, #8
3F4410:  MOV             R4, R0
3F4412:  LDR             R0, [R4]; this
3F4414:  CBZ             R0, loc_3F4430
3F4416:  LDR             R1, =(dword_9595B8 - 0x3F441C)
3F4418:  ADD             R1, PC; dword_9595B8 ; void *
3F441A:  LDR             R2, [R1]
3F441C:  ADDS            R2, #1
3F441E:  STR             R2, [R1]
3F4420:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F4424:  LDR             R1, [R4]
3F4426:  CMP             R0, R1
3F4428:  ITTT NE
3F442A:  STRNE           R0, [R4]
3F442C:  MOVNE           R0, #1
3F442E:  POPNE           {R4,R6,R7,PC}
3F4430:  MOVS            R0, #0
3F4432:  POP             {R4,R6,R7,PC}
