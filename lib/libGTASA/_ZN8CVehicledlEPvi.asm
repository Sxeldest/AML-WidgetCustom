; =========================================================
; Game Engine Function: _ZN8CVehicledlEPvi
; Address            : 0x581DF0 - 0x581E1C
; =========================================================

581DF0:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x581DF6)
581DF2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
581DF4:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
581DF6:  LDR             R1, [R1]; CPools::ms_pVehiclePool
581DF8:  LDRD.W          R2, R3, [R1]
581DFC:  SUBS            R0, R0, R2
581DFE:  MOV             R2, #0xBFE6D523
581E06:  ASRS            R0, R0, #2
581E08:  MULS            R0, R2
581E0A:  LDRB            R2, [R3,R0]
581E0C:  ORR.W           R2, R2, #0x80
581E10:  STRB            R2, [R3,R0]
581E12:  LDR             R2, [R1,#0xC]
581E14:  CMP             R0, R2
581E16:  IT LT
581E18:  STRLT           R0, [R1,#0xC]
581E1A:  BX              LR
