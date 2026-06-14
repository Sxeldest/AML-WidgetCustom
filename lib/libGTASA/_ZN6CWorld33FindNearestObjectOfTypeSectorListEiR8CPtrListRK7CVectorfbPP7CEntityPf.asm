; =========================================================
; Game Engine Function: _ZN6CWorld33FindNearestObjectOfTypeSectorListEiR8CPtrListRK7CVectorfbPP7CEntityPf
; Address            : 0x42A6CC - 0x42A770
; =========================================================

42A6CC:  PUSH            {R4-R7,LR}
42A6CE:  ADD             R7, SP, #0xC
42A6D0:  PUSH.W          {R8,R9,R11}
42A6D4:  LDR             R1, [R1]
42A6D6:  CMP             R1, #0
42A6D8:  BEQ             loc_42A76A
42A6DA:  LDR             R4, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42A6E4)
42A6DC:  LDR.W           R8, [R7,#arg_8]
42A6E0:  ADD             R4, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42A6E2:  LDRD.W          LR, R12, [R7,#arg_0]
42A6E6:  LDR             R4, [R4]; CWorld::ms_nCurrentScanCode ...
42A6E8:  LDRH.W          R9, [R4]; CWorld::ms_nCurrentScanCode
42A6EC:  LDRD.W          R5, R1, [R1]
42A6F0:  LDRH            R6, [R5,#0x30]
42A6F2:  CMP             R6, R9
42A6F4:  BEQ             loc_42A706
42A6F6:  LDRSH.W         R6, [R5,#0x26]
42A6FA:  CMP             R0, #0
42A6FC:  STRH.W          R9, [R5,#0x30]
42A700:  BLT             loc_42A70C
42A702:  CMP             R6, R0
42A704:  BEQ             loc_42A70C
42A706:  CMP             R1, #0
42A708:  BNE             loc_42A6EC
42A70A:  B               loc_42A76A
42A70C:  LDR             R6, [R5,#0x14]
42A70E:  MOV             R3, R2
42A710:  VLD1.32         {D16}, [R3]!
42A714:  ADD.W           R4, R6, #0x30 ; '0'
42A718:  CMP             R6, #0
42A71A:  IT EQ
42A71C:  ADDEQ           R4, R5, #4
42A71E:  VLDR            S0, [R3]
42A722:  VLD1.32         {D17}, [R4]!
42A726:  CMP.W           LR, #0
42A72A:  VSUB.F32        D16, D16, D17
42A72E:  VLDR            S2, [R4]
42A732:  VSUB.F32        S0, S0, S2
42A736:  VMUL.F32        D1, D16, D16
42A73A:  VADD.F32        S2, S2, S3
42A73E:  VMUL.F32        S0, S0, S0
42A742:  VADD.F32        S0, S2, S0
42A746:  IT NE
42A748:  VMOVNE.F32      S0, S2
42A74C:  VLDR            S2, [R8]
42A750:  VSQRT.F32       S0, S0
42A754:  VCMPE.F32       S0, S2
42A758:  VMRS            APSR_nzcv, FPSCR
42A75C:  ITT LT
42A75E:  VSTRLT          S0, [R8]
42A762:  STRLT.W         R5, [R12]
42A766:  CMP             R1, #0
42A768:  BNE             loc_42A6EC
42A76A:  POP.W           {R8,R9,R11}
42A76E:  POP             {R4-R7,PC}
