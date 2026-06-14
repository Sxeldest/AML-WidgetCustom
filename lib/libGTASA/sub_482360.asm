; =========================================================
; Game Engine Function: sub_482360
; Address            : 0x482360 - 0x48237A
; =========================================================

482360:  PUSH            {R4,R6,R7,LR}
482362:  ADD             R7, SP, #8
482364:  MOV             R4, R0
482366:  LDR             R0, =(dword_9ECCC0 - 0x48236C)
482368:  ADD             R0, PC; dword_9ECCC0
48236A:  LDR             R2, [R0]
48236C:  ADDS            R0, R4, R2; char *
48236E:  ADD             R1, R2; char *
482370:  MOVS            R2, #0x17; size_t
482372:  BLX             strncpy
482376:  MOV             R0, R4
482378:  POP             {R4,R6,R7,PC}
