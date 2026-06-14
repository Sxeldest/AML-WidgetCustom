; =========================================================
; Game Engine Function: sub_182356
; Address            : 0x182356 - 0x18237E
; =========================================================

182356:  ADDW            R2, R0, #0x808
18235A:  MOV             R1, R0
18235C:  MOVS            R0, #1
18235E:  VLDR            D16, [R2]
182362:  VCMP.F64        D16, #0.0
182366:  VMRS            APSR_nzcv, FPSCR
18236A:  BGT             locret_18237C
18236C:  LDRH.W          R2, [R1,#0x810]
182370:  CBNZ            R2, locret_18237C
182372:  LDRH.W          R0, [R1,#0x812]
182376:  CMP             R0, #0
182378:  IT NE
18237A:  MOVNE           R0, #1
18237C:  BX              LR
