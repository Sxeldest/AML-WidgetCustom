; =========================================================
; Game Engine Function: _ZN15CAEStreamThreadD2Ev
; Address            : 0x3AA30E - 0x3AA32E
; =========================================================

3AA30E:  PUSH            {R4,R6,R7,LR}
3AA310:  ADD             R7, SP, #8
3AA312:  MOV             R4, R0
3AA314:  LDR             R0, [R4,#4]; void *
3AA316:  BLX             j__Z14OS_MutexDeletePv; OS_MutexDelete(void *)
3AA31A:  LDR             R0, [R4,#0xC]; void *
3AA31C:  BLX             j__Z14OS_MutexDeletePv; OS_MutexDelete(void *)
3AA320:  LDR             R0, [R4,#8]; sem
3AA322:  CMP             R0, #0
3AA324:  IT NE
3AA326:  BLXNE           j__Z18OS_SemaphoreDeletePv; OS_SemaphoreDelete(void *)
3AA32A:  MOV             R0, R4
3AA32C:  POP             {R4,R6,R7,PC}
