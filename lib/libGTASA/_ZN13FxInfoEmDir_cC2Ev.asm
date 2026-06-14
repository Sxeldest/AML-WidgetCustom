; =========================================================
; Game Engine Function: _ZN13FxInfoEmDir_cC2Ev
; Address            : 0x36A52C - 0x36A564
; =========================================================

36A52C:  PUSH            {R4,R6,R7,LR}
36A52E:  ADD             R7, SP, #8
36A530:  MOV             R4, R0
36A532:  LDR             R0, =(_ZTV13FxInfoEmDir_c_ptr - 0x36A538)
36A534:  ADD             R0, PC; _ZTV13FxInfoEmDir_c_ptr
36A536:  LDR             R0, [R0]; `vtable for'FxInfoEmDir_c ...
36A538:  ADDS            R0, #8
36A53A:  STR             R0, [R4]
36A53C:  ADD.W           R0, R4, #8; this
36A540:  BLX             j__ZN16FxInterpInfo32_cC2Ev; FxInterpInfo32_c::FxInterpInfo32_c(void)
36A544:  LDR             R0, =(g_fxMan_ptr - 0x36A552)
36A546:  MOVS            R1, #3
36A548:  STRB            R1, [R4,#0xE]
36A54A:  MOVW            R1, #0x1010
36A54E:  ADD             R0, PC; g_fxMan_ptr
36A550:  STRH            R1, [R4,#4]
36A552:  MOVS            R1, #0xC; int
36A554:  MOVS            R2, #4; int
36A556:  LDR             R0, [R0]; g_fxMan
36A558:  ADDS            R0, #0xAC; this
36A55A:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36A55E:  STR             R0, [R4,#0x14]
36A560:  MOV             R0, R4
36A562:  POP             {R4,R6,R7,PC}
