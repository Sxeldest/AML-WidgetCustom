; =========================================================
; Game Engine Function: _Z16SetFrameNodeNameP7RwFramePKc
; Address            : 0x4823F4 - 0x482418
; =========================================================

4823F4:  LDR             R2, =(dword_9ECCC0 - 0x4823FA)
4823F6:  ADD             R2, PC; dword_9ECCC0
4823F8:  LDR             R2, [R2]
4823FA:  CMP             R2, #1
4823FC:  IT LT
4823FE:  BXLT            LR
482400:  PUSH            {R4,R6,R7,LR}
482402:  ADD             R7, SP, #0x10+var_8
482404:  ADDS            R4, R0, R2
482406:  MOVS            R2, #0x17; size_t
482408:  MOV             R0, R4; char *
48240A:  BLX             strncpy
48240E:  MOVS            R0, #0
482410:  STRB            R0, [R4,#0x17]
482412:  POP.W           {R4,R6,R7,LR}
482416:  BX              LR
