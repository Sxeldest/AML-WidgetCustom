; =========================================================
; Game Engine Function: _ZN5CRope15DoControlsApplyEv
; Address            : 0x414EAC - 0x414EFA
; =========================================================

414EAC:  LDR             R1, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x414EB6)
414EAE:  LDRB.W          R0, [R0,#0x325]
414EB2:  ADD             R1, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
414EB4:  CMP             R0, #4
414EB6:  LDR             R1, [R1]; CRopes::PlayerControlsCrane ...
414EB8:  LDR             R1, [R1]; CRopes::PlayerControlsCrane
414EBA:  IT EQ
414EBC:  CMPEQ           R1, #1
414EBE:  BEQ             loc_414EF6
414EC0:  CMP             R0, #5
414EC2:  IT EQ
414EC4:  CMPEQ           R1, #2
414EC6:  BEQ             loc_414EF6
414EC8:  CMP             R0, #7
414ECA:  IT EQ
414ECC:  CMPEQ           R1, #3
414ECE:  BEQ             loc_414EF6
414ED0:  EOR.W           R2, R0, #6
414ED4:  EOR.W           R1, R1, #4
414ED8:  SUBS            R0, #1
414EDA:  ORRS            R1, R2
414EDC:  MOV.W           R2, #0
414EE0:  MOV.W           R1, #0
414EE4:  IT EQ
414EE6:  MOVEQ           R2, #1
414EE8:  UXTB            R0, R0
414EEA:  CMP             R0, #3
414EEC:  IT CC
414EEE:  MOVCC           R1, #1
414EF0:  ORR.W           R0, R1, R2
414EF4:  BX              LR
414EF6:  MOVS            R0, #1
414EF8:  BX              LR
