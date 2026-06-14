; =========================================================
; Game Engine Function: _ZN17CVehicleAnimGroup8GetGroupEi
; Address            : 0x591D78 - 0x591DBA
; =========================================================

591D78:  PUSH            {R4,R6,R7,LR}
591D7A:  ADD             R7, SP, #8
591D7C:  MOV             R4, R0
591D7E:  SUBW            R0, R1, #0x163
591D82:  CMP             R0, #0x23 ; '#'
591D84:  BHI             loc_591D94
591D86:  LDR             R1, =(unk_61F100 - 0x591D8C)
591D88:  ADD             R1, PC; unk_61F100
591D8A:  ADD.W           R0, R1, R0,LSL#2
591D8E:  VLDR            S0, [R0]
591D92:  B               loc_591D98
591D94:  VLDR            S0, =0.0
591D98:  VMOV            R0, S0
591D9C:  BLX             exp2f
591DA0:  VMOV            S0, R0
591DA4:  LDR             R0, [R4,#4]
591DA6:  VCVT.S32.F32    S0, S0
591DAA:  VMOV            R1, S0
591DAE:  TST             R0, R1
591DB0:  IT NE
591DB2:  ADDNE           R4, #1
591DB4:  LDRSB.W         R0, [R4]
591DB8:  POP             {R4,R6,R7,PC}
