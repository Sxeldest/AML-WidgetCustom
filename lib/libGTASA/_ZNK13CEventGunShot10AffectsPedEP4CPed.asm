; =========================================================
; Game Engine Function: _ZNK13CEventGunShot10AffectsPedEP4CPed
; Address            : 0x370C94 - 0x370E64
; =========================================================

370C94:  PUSH            {R4-R7,LR}
370C96:  ADD             R7, SP, #0xC
370C98:  PUSH.W          {R11}
370C9C:  SUB             SP, SP, #0x18
370C9E:  MOV             R4, R0
370CA0:  MOV             R5, R1
370CA2:  LDR             R1, [R4,#0x10]; CPed *
370CA4:  CMP             R1, #0
370CA6:  BEQ.W           loc_370DEA
370CAA:  LDRB.W          R0, [R1,#0x3A]
370CAE:  AND.W           R0, R0, #7
370CB2:  CMP             R0, #3
370CB4:  BNE             loc_370CC2
370CB6:  MOV             R0, R5; this
370CB8:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
370CBC:  CMP             R0, #0
370CBE:  BNE.W           loc_370DEA
370CC2:  LDRB.W          R0, [R5,#0x485]
370CC6:  LSLS            R0, R0, #0x1F
370CC8:  ITT NE
370CCA:  LDRNE.W         R0, [R5,#0x590]; this
370CCE:  CMPNE           R0, #0
370CD0:  BEQ             loc_370CEA
370CD2:  MOV             R1, R5; CPed *
370CD4:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
370CD8:  CMP             R0, #1
370CDA:  BNE             loc_370CEA
370CDC:  LDR.W           R0, [R5,#0x590]
370CE0:  LDR.W           R0, [R0,#0x464]
370CE4:  CMP             R0, #0
370CE6:  BNE.W           loc_370DEA
370CEA:  LDR.W           R0, [R5,#0x59C]
370CEE:  CMP             R0, #6
370CF0:  BNE             loc_370D30
370CF2:  MOV.W           R0, #0xFFFFFFFF; int
370CF6:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
370CFA:  LDR             R0, [R0,#0x2C]
370CFC:  CMP             R0, #1
370CFE:  BLT             loc_370D30
370D00:  MOV.W           R0, #0xFFFFFFFF; int
370D04:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
370D08:  MOV             R1, R5
370D0A:  BLX             j__ZN7CWanted11IsInPursuitEP7CCopPed; CWanted::IsInPursuit(CCopPed *)
370D0E:  CBNZ            R0, loc_370D22
370D10:  MOV.W           R0, #0xFFFFFFFF; int
370D14:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
370D18:  MOV             R1, R5; CCopPed *
370D1A:  BLX             j__ZNK7CWanted17CanCopJoinPursuitEP7CCopPed; CWanted::CanCopJoinPursuit(CCopPed *)
370D1E:  CMP             R0, #1
370D20:  BNE             loc_370D30
370D22:  MOV.W           R0, #0xFFFFFFFF; int
370D26:  LDR             R6, [R4,#0x10]
370D28:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
370D2C:  CMP             R6, R0
370D2E:  BNE             loc_370DEA
370D30:  MOV             R0, R5; this
370D32:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
370D36:  CMP             R0, #1
370D38:  BNE             loc_370DEA
370D3A:  LDR             R0, [R4,#0x10]
370D3C:  CMP             R0, R5
370D3E:  BEQ             loc_370DEA
370D40:  MOV             R0, R5; this
370D42:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
370D46:  CMP             R0, #0
370D48:  BNE             loc_370DEA
370D4A:  LDR             R2, [R4,#0x10]
370D4C:  LDR             R0, [R5,#0x14]
370D4E:  LDR             R3, [R2,#0x14]
370D50:  ADD.W           R1, R0, #0x30 ; '0'
370D54:  CMP             R0, #0
370D56:  IT EQ
370D58:  ADDEQ           R1, R5, #4; CVector *
370D5A:  ADD.W           R6, R3, #0x30 ; '0'
370D5E:  CMP             R3, #0
370D60:  VLDR            S2, [R1]
370D64:  VLDR            S4, [R1,#4]
370D68:  VLDR            S0, [R1,#8]
370D6C:  IT EQ
370D6E:  ADDEQ           R6, R2, #4
370D70:  VLDR            S6, [R6]
370D74:  VLDR            S8, [R6,#4]
370D78:  VSUB.F32        S6, S2, S6
370D7C:  VLDR            S10, [R6,#8]
370D80:  VSUB.F32        S8, S4, S8
370D84:  LDR             R2, =(_ZN13CEventGunShot29ms_fGunShotSenseRangeForRiot2E_ptr - 0x370D8E)
370D86:  VSUB.F32        S10, S0, S10
370D8A:  ADD             R2, PC; _ZN13CEventGunShot29ms_fGunShotSenseRangeForRiot2E_ptr
370D8C:  LDR             R3, [R2]; CEventGunShot::ms_fGunShotSenseRangeForRiot2 ...
370D8E:  LDRB.W          R2, [R5,#0x448]
370D92:  VMUL.F32        S6, S6, S6
370D96:  VMUL.F32        S8, S8, S8
370D9A:  VMUL.F32        S10, S10, S10
370D9E:  VADD.F32        S6, S6, S8
370DA2:  VADD.F32        S6, S6, S10
370DA6:  VLDR            S10, [R3]
370DAA:  VCMPE.F32       S10, #0.0
370DAE:  VMRS            APSR_nzcv, FPSCR
370DB2:  BLE             loc_370DC2
370DB4:  VLDR            S8, =45.0
370DB8:  CMP             R2, #2
370DBA:  IT EQ
370DBC:  VMOVEQ.F32      S8, S10
370DC0:  B               loc_370DDC
370DC2:  CMP             R2, #2
370DC4:  BNE             loc_370DD8
370DC6:  LDR.W           R2, [R5,#0x440]
370DCA:  VLDR            S8, [R2,#0xBC]
370DCE:  VLDR            S10, [R2,#0xC0]
370DD2:  VMAX.F32        D4, D4, D5
370DD6:  B               loc_370DDC
370DD8:  VLDR            S8, =45.0
370DDC:  VMUL.F32        S8, S8, S8
370DE0:  VCMPE.F32       S6, S8
370DE4:  VMRS            APSR_nzcv, FPSCR
370DE8:  BLE             loc_370DF6
370DEA:  MOVS            R5, #0
370DEC:  MOV             R0, R5
370DEE:  ADD             SP, SP, #0x18
370DF0:  POP.W           {R11}
370DF4:  POP             {R4-R7,PC}
370DF6:  LDRB.W          R2, [R4,#0x2C]
370DFA:  CBZ             R2, loc_370E60
370DFC:  VLDR            S6, [R4,#0x14]
370E00:  MOVS            R5, #0
370E02:  VLDR            S8, [R4,#0x18]
370E06:  VSUB.F32        S2, S6, S2
370E0A:  VLDR            S10, [R4,#0x1C]
370E0E:  VSUB.F32        S4, S8, S4
370E12:  VLDR            S6, [R0,#0x10]
370E16:  VLDR            S8, [R0,#0x14]
370E1A:  VSUB.F32        S0, S10, S0
370E1E:  VLDR            S12, [R0,#0x18]
370E22:  VMUL.F32        S2, S2, S6
370E26:  VMUL.F32        S4, S4, S8
370E2A:  VMUL.F32        S0, S0, S12
370E2E:  VADD.F32        S2, S2, S4
370E32:  VADD.F32        S0, S2, S0
370E36:  VCMPE.F32       S0, #0.0
370E3A:  VMRS            APSR_nzcv, FPSCR
370E3E:  BLE             loc_370DEC
370E40:  MOVS            R2, #1
370E42:  ADD.W           R0, R4, #0x14; this
370E46:  STRD.W          R2, R2, [SP,#0x28+var_28]; bool
370E4A:  MOVS            R3, #1; bool
370E4C:  STRD.W          R2, R5, [SP,#0x28+var_20]; bool
370E50:  MOVS            R2, #(stderr+1); CVector *
370E52:  STR             R5, [SP,#0x28+var_18]; bool
370E54:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
370E58:  CMP             R0, #1
370E5A:  IT EQ
370E5C:  MOVEQ           R5, #1
370E5E:  B               loc_370DEC
370E60:  MOVS            R5, #1
370E62:  B               loc_370DEC
