; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOut24PreparePedForVehicleExitEP4CPed
; Address            : 0x5051B8 - 0x505222
; =========================================================

5051B8:  PUSH            {R4,R6,R7,LR}
5051BA:  ADD             R7, SP, #8
5051BC:  VPUSH           {D8-D10}
5051C0:  MOV             R4, R1
5051C2:  ADDW            R1, R4, #0x55C
5051C6:  LDR             R0, [R4,#0x14]; this
5051C8:  VLDR            S0, [R1]
5051CC:  CBZ             R0, loc_50520E
5051CE:  VMOV            R3, S0; float
5051D2:  MOVS            R1, #0; x
5051D4:  MOVS            R2, #0; float
5051D6:  VLDR            S16, [R0,#0x30]
5051DA:  VLDR            S18, [R0,#0x34]
5051DE:  VLDR            S20, [R0,#0x38]
5051E2:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
5051E6:  LDR             R0, [R4,#0x14]
5051E8:  VLDR            S0, [R0,#0x30]
5051EC:  VLDR            S2, [R0,#0x34]
5051F0:  VLDR            S4, [R0,#0x38]
5051F4:  VADD.F32        S0, S16, S0
5051F8:  VADD.F32        S2, S18, S2
5051FC:  VADD.F32        S4, S20, S4
505200:  VSTR            S0, [R0,#0x30]
505204:  VSTR            S2, [R0,#0x34]
505208:  VSTR            S4, [R0,#0x38]
50520C:  B               loc_505212
50520E:  VSTR            S0, [R4,#0x10]
505212:  MOV             R0, R4
505214:  MOVS            R1, #0
505216:  VPOP            {D8-D10}
50521A:  POP.W           {R4,R6,R7,LR}
50521E:  B.W             sub_18D928
