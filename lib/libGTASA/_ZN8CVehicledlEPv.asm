; =========================================================
; Game Engine Function: _ZN8CVehicledlEPv
; Address            : 0x581C80 - 0x581CAC
; =========================================================

581C80:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x581C86)
581C82:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
581C84:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
581C86:  LDR             R1, [R1]; CPools::ms_pVehiclePool
581C88:  LDRD.W          R2, R3, [R1]
581C8C:  SUBS            R0, R0, R2
581C8E:  MOV             R2, #0xBFE6D523
581C96:  ASRS            R0, R0, #2
581C98:  MULS            R0, R2
581C9A:  LDRB            R2, [R3,R0]
581C9C:  ORR.W           R2, R2, #0x80
581CA0:  STRB            R2, [R3,R0]
581CA2:  LDR             R2, [R1,#0xC]
581CA4:  CMP             R0, R2
581CA6:  IT LT
581CA8:  STRLT           R0, [R1,#0xC]
581CAA:  BX              LR
