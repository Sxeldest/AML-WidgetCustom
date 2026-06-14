; =========================================================
; Game Engine Function: _ZN13CAEDataStreamD2Ev
; Address            : 0x395330 - 0x395354
; =========================================================

395330:  PUSH            {R4,R6,R7,LR}
395332:  ADD             R7, SP, #8
395334:  MOV             R4, R0
395336:  LDRB            R0, [R4,#0xC]
395338:  CBZ             R0, loc_395344
39533A:  LDR             R0, [R4,#4]; this
39533C:  MOVS            R1, #0
39533E:  STRB            R1, [R4,#0xC]
395340:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
395344:  LDR             R0, [R4,#8]; void *
395346:  CBZ             R0, loc_395350
395348:  BLX             _ZdaPv; operator delete[](void *)
39534C:  MOVS            R0, #0
39534E:  STR             R0, [R4,#8]
395350:  MOV             R0, R4
395352:  POP             {R4,R6,R7,PC}
