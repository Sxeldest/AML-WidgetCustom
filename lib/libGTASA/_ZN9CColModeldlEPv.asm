; =========================================================
; Game Engine Function: _ZN9CColModeldlEPv
; Address            : 0x2E18C4 - 0x2E18F0
; =========================================================

2E18C4:  LDR             R1, =(_ZN6CPools16ms_pColModelPoolE_ptr - 0x2E18CA)
2E18C6:  ADD             R1, PC; _ZN6CPools16ms_pColModelPoolE_ptr
2E18C8:  LDR             R1, [R1]; CPools::ms_pColModelPool ...
2E18CA:  LDR             R1, [R1]; CPools::ms_pColModelPool
2E18CC:  LDRD.W          R2, R3, [R1]
2E18D0:  SUBS            R0, R0, R2
2E18D2:  MOV             R2, #0xAAAAAAAB
2E18DA:  ASRS            R0, R0, #4
2E18DC:  MULS            R0, R2
2E18DE:  LDRB            R2, [R3,R0]
2E18E0:  ORR.W           R2, R2, #0x80
2E18E4:  STRB            R2, [R3,R0]
2E18E6:  LDR             R2, [R1,#0xC]
2E18E8:  CMP             R0, R2
2E18EA:  IT LT
2E18EC:  STRLT           R0, [R1,#0xC]
2E18EE:  BX              LR
