; =========================================================
; Game Engine Function: _ZN11CAutomobile24GetMovingCollisionOffsetEv
; Address            : 0x5506A0 - 0x550734
; =========================================================

5506A0:  LDRH.W          R1, [R0,#0x880]
5506A4:  VLDR            S0, =0.0
5506A8:  CMP             R1, #0
5506AA:  BEQ             loc_55072E
5506AC:  LDRSH.W         R3, [R0,#0x26]
5506B0:  UXTH.W          R12, R3
5506B4:  CMP.W           R12, #0x196
5506B8:  BNE             loc_5506DC
5506BA:  LDR.W           R2, [R0,#0x6B4]
5506BE:  CBZ             R2, loc_5506DC
5506C0:  LDR             R0, =(_ZN13CMonsterTruck20DUMPER_COL_ANGLEMULTE_ptr - 0x5506C6)
5506C2:  ADD             R0, PC; _ZN13CMonsterTruck20DUMPER_COL_ANGLEMULTE_ptr
5506C4:  VMOV            S0, R1
5506C8:  LDR             R0, [R0]; CMonsterTruck::DUMPER_COL_ANGLEMULT
5506CA:  VCVT.F32.U32    S0, S0
5506CE:  VLDR            S2, [R0]
5506D2:  VMUL.F32        S0, S2, S0
5506D6:  VMOV            R0, S0
5506DA:  BX              LR
5506DC:  CMP.W           R3, #0x1E6
5506E0:  BEQ             loc_5506F4
5506E2:  MOVW            R2, #0x1BB
5506E6:  CMP             R3, R2
5506E8:  BNE             loc_550704
5506EA:  VMOV            S0, R1
5506EE:  VLDR            S2, =-0.0001
5506F2:  B               loc_550726
5506F4:  LDR.W           R2, [R0,#0x6AC]
5506F8:  CBZ             R2, loc_550704
5506FA:  VMOV            S0, R1
5506FE:  VLDR            S2, =0.0002
550702:  B               loc_550726
550704:  MOVW            R2, #0x212
550708:  CMP             R12, R2
55070A:  BEQ             loc_55071E
55070C:  CMP.W           R12, #0x250
550710:  BNE             loc_55072E
550712:  LDR.W           R0, [R0,#0x6BC]
550716:  CBZ             R0, loc_55072E
550718:  LDR             R0, =(_ZN6CPlane21ANDROM_COL_ANGLE_MULTE_ptr - 0x55071E)
55071A:  ADD             R0, PC; _ZN6CPlane21ANDROM_COL_ANGLE_MULTE_ptr
55071C:  B               loc_5506C4
55071E:  VMOV            S0, R1
550722:  VLDR            S2, =0.0006
550726:  VCVT.F32.U32    S0, S0
55072A:  VMUL.F32        S0, S0, S2
55072E:  VMOV            R0, S0
550732:  BX              LR
