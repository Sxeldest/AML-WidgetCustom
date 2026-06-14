; =========================================================
; Game Engine Function: sub_123424
; Address            : 0x123424 - 0x123464
; =========================================================

123424:  PUSH            {R7,LR}
123426:  MOV             R7, SP
123428:  LDR             R0, =(byte_263BD0 - 0x12342E)
12342A:  ADD             R0, PC; byte_263BD0
12342C:  LDRB            R0, [R0]
12342E:  DMB.W           ISH
123432:  LSLS            R0, R0, #0x1F
123434:  IT NE
123436:  POPNE           {R7,PC}
123438:  LDR             R0, =(byte_263BD0 - 0x12343E)
12343A:  ADD             R0, PC; byte_263BD0 ; __guard *
12343C:  BLX             j___cxa_guard_acquire
123440:  CBZ             R0, locret_123462
123442:  LDR             R1, =(unk_263BB8 - 0x12344E)
123444:  MOVS            R3, #0
123446:  LDR             R0, =(sub_12335C+1 - 0x123450)
123448:  LDR             R2, =(off_22A540 - 0x123452)
12344A:  ADD             R1, PC; unk_263BB8 ; obj
12344C:  ADD             R0, PC; sub_12335C ; lpfunc
12344E:  ADD             R2, PC; off_22A540 ; lpdso_handle
123450:  STR             R3, [R1,#(dword_263BC8 - 0x263BB8)]
123452:  BLX             __cxa_atexit
123456:  LDR             R0, =(byte_263BD0 - 0x12345C)
123458:  ADD             R0, PC; byte_263BD0
12345A:  POP.W           {R7,LR}
12345E:  B.W             sub_2242B0
123462:  POP             {R7,PC}
