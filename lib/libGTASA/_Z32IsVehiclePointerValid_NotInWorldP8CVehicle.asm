; =========================================================
; Game Engine Function: _Z32IsVehiclePointerValid_NotInWorldP8CVehicle
; Address            : 0x5853DC - 0x585414
; =========================================================

5853DC:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x5853E2)
5853DE:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
5853E0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
5853E2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
5853E4:  LDR             R2, [R1]
5853E6:  SUBS            R0, R0, R2
5853E8:  CMP             R0, #0
5853EA:  ITT LT
5853EC:  MOVLT           R0, #0
5853EE:  BXLT            LR
5853F0:  MOVW            R2, #0xD523
5853F4:  ASRS            R0, R0, #2
5853F6:  MOVT            R2, #0xBFE6
5853FA:  LDR             R3, [R1,#8]
5853FC:  MULS            R2, R0
5853FE:  MOVS            R0, #0
585400:  CMP             R2, R3
585402:  IT GE
585404:  BXGE            LR
585406:  LDR             R1, [R1,#4]
585408:  LDRSB           R1, [R1,R2]
58540A:  CMP.W           R1, #0xFFFFFFFF
58540E:  IT GT
585410:  MOVGT           R0, #1
585412:  BX              LR
