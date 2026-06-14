; =========================================================
; Game Engine Function: _ZN10TouchSense8instanceEv
; Address            : 0x27044C - 0x270476
; =========================================================

27044C:  LDR             R0, =(g_touchSense_ptr - 0x270452)
27044E:  ADD             R0, PC; g_touchSense_ptr
270450:  LDR             R0, [R0]; g_touchSense
270452:  LDR             R0, [R0]
270454:  CMP             R0, #0
270456:  IT NE
270458:  BXNE            LR
27045A:  PUSH            {R7,LR}
27045C:  MOV             R7, SP
27045E:  MOVS            R0, #0x30 ; '0'; unsigned int
270460:  BLX             _Znwj; operator new(uint)
270464:  BLX             j__ZN10TouchSenseC2Ev; TouchSense::TouchSense(void)
270468:  LDR             R1, =(g_touchSense_ptr - 0x27046E)
27046A:  ADD             R1, PC; g_touchSense_ptr
27046C:  LDR             R1, [R1]; g_touchSense
27046E:  STR             R0, [R1]
270470:  POP.W           {R7,LR}
270474:  BX              LR
