; =========================================================
; Game Engine Function: sub_98474
; Address            : 0x98474 - 0x984A0
; =========================================================

98474:  LDR             R1, =(dword_1ACF68 - 0x9847E)
98476:  MOVW            R2, #0x1A9C
9847A:  ADD             R1, PC; dword_1ACF68
9847C:  LDR             R1, [R1]
9847E:  LDR             R3, [R1,R2]
98480:  ADD             R2, R1
98482:  LDR             R1, [R2,#0xC]
98484:  CMP             R3, R1
98486:  ITT LE
98488:  MOVLE           R0, #0
9848A:  BXLE            LR
9848C:  LDR             R2, [R2,#8]
9848E:  ADD.W           R1, R1, R1,LSL#3
98492:  LDR.W           R1, [R2,R1,LSL#2]
98496:  SUBS            R0, R1, R0
98498:  CLZ.W           R0, R0
9849C:  LSRS            R0, R0, #5
9849E:  BX              LR
