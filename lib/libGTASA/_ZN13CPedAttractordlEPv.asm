; =========================================================
; Game Engine Function: _ZN13CPedAttractordlEPv
; Address            : 0x4A91E8 - 0x4A9214
; =========================================================

4A91E8:  LDR             R1, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4A91EE)
4A91EA:  ADD             R1, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4A91EC:  LDR             R1, [R1]; CPools::ms_pPedAttractorPool ...
4A91EE:  LDR             R1, [R1]; CPools::ms_pPedAttractorPool
4A91F0:  LDRD.W          R2, R3, [R1]
4A91F4:  SUBS            R0, R0, R2
4A91F6:  MOV             R2, #0xA08AD8F3
4A91FE:  ASRS            R0, R0, #2
4A9200:  MULS            R0, R2
4A9202:  LDRB            R2, [R3,R0]
4A9204:  ORR.W           R2, R2, #0x80
4A9208:  STRB            R2, [R3,R0]
4A920A:  LDR             R2, [R1,#0xC]
4A920C:  CMP             R0, R2
4A920E:  IT LT
4A9210:  STRLT           R0, [R1,#0xC]
4A9212:  BX              LR
