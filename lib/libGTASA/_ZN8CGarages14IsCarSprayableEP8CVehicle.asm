; =========================================================
; Game Engine Function: _ZN8CGarages14IsCarSprayableEP8CVehicle
; Address            : 0x311DDC - 0x311E38
; =========================================================

311DDC:  PUSH            {R4,R6,R7,LR}
311DDE:  ADD             R7, SP, #8
311DE0:  MOV             R4, R0
311DE2:  ADDW            R0, R4, #0x4CC
311DE6:  VLDR            S0, =250.0
311DEA:  VLDR            S2, [R0]
311DEE:  VCMPE.F32       S2, S0
311DF2:  VMRS            APSR_nzcv, FPSCR
311DF6:  BLT             loc_311E08
311DF8:  MOV             R0, R4; this
311DFA:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
311DFE:  CBNZ            R0, loc_311E08
311E00:  LDR.W           R0, [R4,#0x5A4]
311E04:  CMP             R0, #0xA
311E06:  BNE             loc_311E0C
311E08:  MOVS            R0, #0
311E0A:  POP             {R4,R6,R7,PC}
311E0C:  LDRSH.W         R1, [R4,#0x26]
311E10:  MOVS            R0, #0
311E12:  SUBW            R2, R1, #0x197
311E16:  CMP             R2, #0x1E
311E18:  BHI             loc_311E2E
311E1A:  MOVS            R3, #1
311E1C:  LSL.W           R2, R3, R2
311E20:  MOV             R3, #0x41000201
311E28:  TST             R2, R3
311E2A:  IT NE
311E2C:  POPNE           {R4,R6,R7,PC}
311E2E:  ADDS            R1, #2
311E30:  ITT NE
311E32:  MOVNE           R0, #1
311E34:  POPNE           {R4,R6,R7,PC}
311E36:  POP             {R4,R6,R7,PC}
