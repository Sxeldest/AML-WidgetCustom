; =========================================================
; Game Engine Function: _ZN8CVehiclenwEji
; Address            : 0x581D9C - 0x581DEA
; =========================================================

581D9C:  PUSH            {R4,R6,R7,LR}
581D9E:  ADD             R7, SP, #8
581DA0:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x581DAC)
581DA2:  ASRS            R4, R1, #8
581DA4:  AND.W           R1, R1, #0x7F
581DA8:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
581DAA:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
581DAC:  LDR             R2, [R0]; CPools::ms_pVehiclePool
581DAE:  LDRD.W          R12, LR, [R2]
581DB2:  LDRB.W          R0, [LR,R4]
581DB6:  AND.W           R0, R0, #0x7F
581DBA:  STRB.W          R0, [LR,R4]
581DBE:  LDR.W           LR, [R2,#4]
581DC2:  LDRB.W          R0, [LR,R4]
581DC6:  AND.W           R0, R0, #0x80
581DCA:  ORRS            R0, R1
581DCC:  STRB.W          R0, [LR,R4]
581DD0:  MOVS            R0, #0
581DD2:  LDR             R1, [R2,#4]
581DD4:  STR             R0, [R2,#0xC]
581DD6:  LDRSB           R3, [R1,R0]
581DD8:  ADDS            R0, #1
581DDA:  CMP.W           R3, #0xFFFFFFFF
581DDE:  BGT             loc_581DD4
581DE0:  MOVW            R0, #0xA2C
581DE4:  MLA.W           R0, R4, R0, R12
581DE8:  POP             {R4,R6,R7,PC}
