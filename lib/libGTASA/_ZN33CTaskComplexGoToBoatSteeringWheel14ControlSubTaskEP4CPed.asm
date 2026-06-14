; =========================================================
; Game Engine Function: _ZN33CTaskComplexGoToBoatSteeringWheel14ControlSubTaskEP4CPed
; Address            : 0x505FC4 - 0x506160
; =========================================================

505FC4:  PUSH            {R4,R5,R7,LR}
505FC6:  ADD             R7, SP, #8
505FC8:  SUB             SP, SP, #0x28; CTask *
505FCA:  MOV             R5, R1
505FCC:  MOV             R4, R0
505FCE:  MOV             R0, R5; this
505FD0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
505FD4:  CMP             R0, #1
505FD6:  BNE             loc_506006
505FD8:  LDR             R1, [R4,#0x18]; CPed *
505FDA:  CBZ             R1, loc_506006
505FDC:  LDR             R3, [R4,#8]; int
505FDE:  MOV             R0, R5; this
505FE0:  LDR             R2, [R4,#0x20]; CVehicle *
505FE2:  BLX             j__ZN13CCarEnterExit22IsPlayerToQuitCarEnterERK4CPedRK8CVehicleiP5CTask; CCarEnterExit::IsPlayerToQuitCarEnter(CPed const&,CVehicle const&,int,CTask *)
505FE6:  CMP             R0, #1
505FE8:  BNE             loc_506006
505FEA:  MOVS            R0, #dword_20; this
505FEC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
505FF0:  MOV.W           R1, #0x41000000
505FF4:  MOVS            R2, #0; bool
505FF6:  STR             R1, [SP,#0x30+var_30]; float
505FF8:  MOV.W           R1, #0xFFFFFFFF; int
505FFC:  MOVS            R3, #0; bool
505FFE:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
506002:  ADD             SP, SP, #0x28 ; '('
506004:  POP             {R4,R5,R7,PC}
506006:  LDR             R5, [R4,#8]
506008:  LDR             R0, [R5]
50600A:  LDR             R1, [R0,#0xC]
50600C:  MOV             R0, R5
50600E:  BLX             R1
506010:  CMP             R0, #0
506012:  BEQ.W           loc_50615A
506016:  LDR             R0, [R5]
506018:  LDR             R1, [R0,#0xC]
50601A:  MOV             R0, R5
50601C:  BLX             R1
50601E:  LDR             R1, [R0]
506020:  LDR             R1, [R1,#0x14]
506022:  BLX             R1
506024:  CMP             R0, #0xCB
506026:  BEQ.W           loc_50615A
50602A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x506032)
50602C:  LDR             R1, [R4,#0x18]
50602E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
506030:  LDRSH.W         R2, [R1,#0x26]
506034:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
506036:  LDR.W           R0, [R0,R2,LSL#2]
50603A:  LDR             R2, [R0,#0x54]
50603C:  LDR             R0, [R0,#0x74]
50603E:  CMP             R2, #5
506040:  ADD             R2, SP, #0x30+var_18
506042:  IT NE
506044:  ADDNE           R0, #0x30 ; '0'
506046:  VLDR            D16, [R0]
50604A:  LDR             R0, [R0,#8]
50604C:  STR             R0, [SP,#0x30+var_10]
50604E:  ADD             R0, SP, #0x30+var_28; CMatrix *
506050:  VSTR            D16, [SP,#0x30+var_18]
506054:  LDR             R1, [R1,#0x14]; CVector *
506056:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
50605A:  VLDR            D16, [SP,#0x30+var_28]
50605E:  LDR             R0, [SP,#0x30+var_20]
506060:  STR             R0, [SP,#0x30+var_10]
506062:  VSTR            D16, [SP,#0x30+var_18]
506066:  LDR             R0, [R4,#0x18]
506068:  VLDR            S0, [SP,#0x30+var_18]
50606C:  VLDR            S2, [SP,#0x30+var_18+4]
506070:  LDR             R1, [R0,#0x14]
506072:  VLDR            S4, [SP,#0x30+var_10]
506076:  ADD.W           R2, R1, #0x30 ; '0'
50607A:  CMP             R1, #0
50607C:  IT EQ
50607E:  ADDEQ           R2, R0, #4
506080:  VLDR            S6, [R2]
506084:  VADD.F32        S0, S6, S0
506088:  VSTR            S0, [SP,#0x30+var_18]
50608C:  VLDR            S0, [R2,#4]
506090:  VADD.F32        S0, S0, S2
506094:  VSTR            S0, [SP,#0x30+var_18+4]
506098:  VLDR            S0, [R2,#8]
50609C:  VLDR            D16, [SP,#0x30+var_18]
5060A0:  VADD.F32        S0, S0, S4
5060A4:  VSTR            S0, [SP,#0x30+var_10]
5060A8:  LDR             R0, [SP,#0x30+var_10]
5060AA:  VSTR            D16, [R4,#0xC]
5060AE:  STR             R0, [R4,#0x14]
5060B0:  VLDR            S4, [R4,#0xC]
5060B4:  VLDR            S8, [R5,#0x10]
5060B8:  VLDR            S10, [R4,#0x10]
5060BC:  VLDR            S12, [R5,#0x14]
5060C0:  VSUB.F32        S14, S8, S4
5060C4:  VLDR            S2, [R4,#0x14]
5060C8:  VSUB.F32        S0, S12, S10
5060CC:  VLDR            S6, [R5,#0x18]
5060D0:  VSUB.F32        S1, S6, S2
5060D4:  VMUL.F32        S14, S14, S14
5060D8:  VMUL.F32        S0, S0, S0
5060DC:  VMUL.F32        S1, S1, S1
5060E0:  VADD.F32        S0, S14, S0
5060E4:  VLDR            S14, =0.04
5060E8:  VADD.F32        S0, S0, S1
5060EC:  VCMPE.F32       S0, S14
5060F0:  VMRS            APSR_nzcv, FPSCR
5060F4:  BLE             loc_50615A
5060F6:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x506104)
5060F8:  VCMP.F32        S12, S10
5060FC:  VMRS            APSR_nzcv, FPSCR
506100:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
506102:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
506104:  VLDR            S0, [R0]
506108:  BNE             loc_50612C
50610A:  VCMP.F32        S8, S4
50610E:  VMRS            APSR_nzcv, FPSCR
506112:  ITT EQ
506114:  VCMPEQ.F32      S6, S2
506118:  VMRSEQ          APSR_nzcv, FPSCR
50611C:  BNE             loc_50612C
50611E:  VLDR            S2, [R5,#0x20]
506122:  VCMP.F32        S2, S0
506126:  VMRS            APSR_nzcv, FPSCR
50612A:  BEQ             loc_50615A
50612C:  LDR             R2, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x50613A)
50612E:  ADD.W           R1, R4, #0xC
506132:  ADD.W           R0, R5, #0x10
506136:  ADD             R2, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
506138:  VLDR            D16, [R1]
50613C:  LDR             R1, [R1,#8]
50613E:  LDR             R2, [R2]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
506140:  STR             R1, [R0,#8]
506142:  VSTR            D16, [R0]
506146:  VSTR            S0, [R5,#0x20]
50614A:  LDRB.W          R0, [R5,#0x24]
50614E:  LDR             R2, [R2]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius
506150:  STR             R2, [R5,#0x1C]
506152:  ORR.W           R0, R0, #4
506156:  STRB.W          R0, [R5,#0x24]
50615A:  LDR             R0, [R4,#8]
50615C:  ADD             SP, SP, #0x28 ; '('
50615E:  POP             {R4,R5,R7,PC}
