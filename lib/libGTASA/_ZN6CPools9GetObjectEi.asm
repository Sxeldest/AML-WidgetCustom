; =========================================================
; Game Engine Function: _ZN6CPools9GetObjectEi
; Address            : 0x40D4E8 - 0x40D510
; =========================================================

40D4E8:  CMP             R0, #0
40D4EA:  BLT             loc_40D50C
40D4EC:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x40D4F6)
40D4EE:  UXTB            R3, R0
40D4F0:  LSRS            R0, R0, #8
40D4F2:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
40D4F4:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
40D4F6:  LDR             R1, [R1]; CPools::ms_pObjectPool
40D4F8:  LDR             R2, [R1,#4]
40D4FA:  LDRB            R2, [R2,R0]
40D4FC:  CMP             R2, R3
40D4FE:  BNE             loc_40D50C
40D500:  MOV.W           R2, #0x1A4
40D504:  LDR             R1, [R1]
40D506:  MLA.W           R0, R0, R2, R1
40D50A:  BX              LR
40D50C:  MOVS            R0, #0
40D50E:  BX              LR
