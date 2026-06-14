; =========================================================
; Game Engine Function: _ZN17InteriorManager_c15SetEntryExitPtrEP10CEntryExit
; Address            : 0x44C6EC - 0x44C7A6
; =========================================================

44C6EC:  LDR             R2, [R1,#0x38]
44C6EE:  CMP             R2, #0
44C6F0:  IT EQ
44C6F2:  MOVEQ           R2, R1
44C6F4:  LDRB.W          R2, [R2,#0x32]
44C6F8:  CMP             R2, #0
44C6FA:  IT EQ
44C6FC:  BXEQ            LR
44C6FE:  PUSH            {R4,R6,R7,LR}
44C700:  ADD             R7, SP, #0x10+var_8
44C702:  MOVW            R3, #0x4744
44C706:  VLDR            S0, [R1,#0xC]
44C70A:  ADD             R3, R0
44C70C:  MOVW            R2, #0x4740
44C710:  ADD.W           LR, R0, R2
44C714:  ADD.W           R4, R1, #8
44C718:  VLDR            S2, [R3]
44C71C:  VCMP.F32        S0, S2
44C720:  VMRS            APSR_nzcv, FPSCR
44C724:  BNE             loc_44C76A
44C726:  MOVW            R12, #0x474C
44C72A:  ADD.W           R2, R0, R12
44C72E:  VLDR            S0, [R1,#0x14]
44C732:  VLDR            S2, [R2]
44C736:  VCMP.F32        S0, S2
44C73A:  VMRS            APSR_nzcv, FPSCR
44C73E:  BNE             loc_44C76A
44C740:  VLDR            S0, [LR]
44C744:  VLDR            S2, [R4]
44C748:  VCMP.F32        S2, S0
44C74C:  VMRS            APSR_nzcv, FPSCR
44C750:  BNE             loc_44C76A
44C752:  MOVW            R2, #0x4748
44C756:  VLDR            S0, [R1,#0x10]
44C75A:  ADD             R2, R0
44C75C:  VLDR            S2, [R2]
44C760:  VCMP.F32        S0, S2
44C764:  VMRS            APSR_nzcv, FPSCR
44C768:  BEQ             loc_44C796
44C76A:  MOVW            R12, #0x42A4
44C76E:  MOVS            R2, #0
44C770:  MOVW            R3, #0x43A8
44C774:  STR.W           R2, [R0,R12]
44C778:  STR             R2, [R0,R3]
44C77A:  MOVW            R2, #0x4738
44C77E:  MOV.W           R3, #0x1010101
44C782:  STR             R3, [R0,R2]
44C784:  MOVW            R2, #0x4734
44C788:  STR             R3, [R0,R2]
44C78A:  MOVW            R2, #0x4730
44C78E:  STR             R3, [R0,R2]
44C790:  MOVW            R2, #0x472C
44C794:  STR             R3, [R0,R2]
44C796:  MOVW            R2, #0x473C
44C79A:  STR             R1, [R0,R2]
44C79C:  VLD1.32         {D16-D17}, [R4]
44C7A0:  VST1.32         {D16-D17}, [LR]
44C7A4:  POP             {R4,R6,R7,PC}
