; =========================================================
; Game Engine Function: mpg123_geteq
; Address            : 0x22F5C0 - 0x22F628
; =========================================================

22F5C0:  CBZ             R0, loc_22F600
22F5C2:  VMOV.I32        D16, #0
22F5C6:  CMP             R2, #0x1F
22F5C8:  BHI             loc_22F622
22F5CA:  CMP             R1, #1
22F5CC:  BEQ             loc_22F60A
22F5CE:  CMP             R1, #2
22F5D0:  BEQ             loc_22F614
22F5D2:  CMP             R1, #3
22F5D4:  BNE             loc_22F622
22F5D6:  ADD.W           R0, R0, R2,LSL#3
22F5DA:  MOVW            R1, #0x4950
22F5DE:  ADD             R1, R0
22F5E0:  MOVW            R2, #0x4850
22F5E4:  ADD             R0, R2
22F5E6:  VLDR            D16, [R1]
22F5EA:  VLDR            D17, [R0]
22F5EE:  VADD.F64        D16, D17, D16
22F5F2:  VMOV.F64        D17, #0.5
22F5F6:  VMUL.F64        D16, D16, D17
22F5FA:  VMOV            R0, R1, D16
22F5FE:  BX              LR
22F600:  VMOV.F64        D16, #-1.0
22F604:  VMOV            R0, R1, D16
22F608:  BX              LR
22F60A:  ADD.W           R0, R0, R2,LSL#3
22F60E:  MOVW            R1, #0x4850
22F612:  B               loc_22F61C
22F614:  ADD.W           R0, R0, R2,LSL#3
22F618:  MOVW            R1, #0x4950
22F61C:  ADD             R0, R1
22F61E:  VLDR            D16, [R0]
22F622:  VMOV            R0, R1, D16
22F626:  BX              LR
