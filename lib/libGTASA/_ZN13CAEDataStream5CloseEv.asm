; =========================================================
; Game Engine Function: _ZN13CAEDataStream5CloseEv
; Address            : 0x395354 - 0x395368
; =========================================================

395354:  PUSH            {R7,LR}
395356:  MOV             R7, SP
395358:  LDR             R1, [R0,#4]
39535A:  MOVS            R2, #0
39535C:  STRB            R2, [R0,#0xC]
39535E:  MOV             R0, R1; this
395360:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
395364:  MOVS            R0, #0
395366:  POP             {R7,PC}
