; =========================================================
; Game Engine Function: _ZN4CBmx9ProcessAIERj
; Address            : 0x568CE4 - 0x5697A6
; =========================================================

568CE4:  PUSH            {R4-R7,LR}
568CE6:  ADD             R7, SP, #0xC
568CE8:  PUSH.W          {R8,R9,R11}
568CEC:  VPUSH           {D8-D9}
568CF0:  SUB             SP, SP, #0x10; float
568CF2:  MOV             R4, R0
568CF4:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x568D02)
568CF8:  MOV             R5, R1
568CFA:  LDRSH.W         R1, [R4,#0x26]; CVehicle *
568CFE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
568D00:  LDRH.W          R2, [R4,#0x3DF]
568D04:  LDRB.W          R3, [R4,#0x3A]
568D08:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
568D0A:  LDR.W           R6, [R0,R1,LSL#2]
568D0E:  BIC.W           R0, R2, #3
568D12:  STRH.W          R0, [R4,#0x3DF]
568D16:  MOVS            R0, #0
568D18:  STRB.W          R0, [R4,#0x848]
568D1C:  LSRS            R0, R3, #3
568D1E:  CMP             R0, #9; switch 10 cases
568D20:  BHI.W           def_568D24; jumptable 00568D24 default case, cases 6-8
568D24:  TBH.W           [PC,R0,LSL#1]; switch jump
568D28:  DCW 0xA; jump table for switch statement
568D2A:  DCW 0x66
568D2C:  DCW 0x6A
568D2E:  DCW 0xD2
568D30:  DCW 0xF1
568D32:  DCW 0x116
568D34:  DCW 0x1B5
568D36:  DCW 0x1B5
568D38:  DCW 0x1B5
568D3A:  DCW 0x134
568D3C:  LDR             R0, [R5]; jumptable 00568D24 case 0
568D3E:  ADDS            R0, #2
568D40:  STR             R0, [R5]
568D42:  LDR.W           R0, [R4,#0x464]; this
568D46:  LDRB.W          R1, [R4,#0x628]
568D4A:  CMP             R0, #0
568D4C:  AND.W           R1, R1, #0xF7
568D50:  STRB.W          R1, [R4,#0x628]
568D54:  BEQ.W           def_568D24; jumptable 00568D24 default case, cases 6-8
568D58:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
568D5C:  CMP             R0, #1
568D5E:  BNE.W           def_568D24; jumptable 00568D24 default case, cases 6-8
568D62:  LDR             R2, [R4]
568D64:  LDR.W           R0, [R4,#0x464]
568D68:  LDR             R2, [R2,#0x64]
568D6A:  LDRB.W          R1, [R0,#0x59C]
568D6E:  MOV             R0, R4
568D70:  BLX             R2
568D72:  LDR.W           R0, [R4,#0x464]; this
568D76:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
568D7A:  ADDW            R2, R4, #0x664
568D7E:  LDR.W           R1, [R4,#0x388]
568D82:  MOV             R8, R0
568D84:  LDR.W           R9, [R4,#0x464]
568D88:  VLDR            S2, [R2]
568D8C:  LDR.W           R0, [R4,#0x650]
568D90:  VCMPE.F32       S2, #0.0
568D94:  VLDR            S0, [R1,#0x18]
568D98:  VMRS            APSR_nzcv, FPSCR
568D9C:  BGE.W           loc_56937C
568DA0:  VLDR            S4, [R0,#0xC]
568DA4:  ADDW            R1, R4, #0x4A4
568DA8:  VMUL.F32        S4, S2, S4
568DAC:  VADD.F32        S0, S0, S4
568DB0:  VLDR            S4, [R1]
568DB4:  VCMP.F32        S4, #0.0
568DB8:  VMRS            APSR_nzcv, FPSCR
568DBC:  VSTR            S0, [R4,#0xAC]
568DC0:  BNE             loc_568DCA
568DC2:  LDRB.W          R1, [R4,#0x42C]
568DC6:  LSLS            R1, R1, #0x1A
568DC8:  BPL             loc_568DD4
568DCA:  LDRB.W          R1, [R4,#0x818]
568DCE:  CMP             R1, #0
568DD0:  BNE.W           loc_569494
568DD4:  ADD.W           R2, R4, #0x4A0
568DD8:  LDRH            R1, [R4,#0x26]
568DDA:  VLDR            S4, [R2]
568DDE:  CMP.W           R1, #0x1D4
568DE2:  BNE.W           loc_5693DE
568DE6:  VLDR            S6, =0.7
568DEA:  VMUL.F32        S4, S4, S6
568DEE:  VLDR            S6, =0.3
568DF2:  B               loc_5693E6
568DF4:  LDR             R0, [R5]; jumptable 00568D24 case 1
568DF6:  ADDS            R0, #2
568DF8:  STR             R0, [R5]
568DFA:  B               def_568D24; jumptable 00568D24 default case, cases 6-8
568DFC:  MOV             R0, R4; jumptable 00568D24 case 2
568DFE:  BLX             j__ZN6CCarAI11UpdateCarAIEP8CVehicle; CCarAI::UpdateCarAI(CVehicle *)
568E02:  MOV             R0, R4; this
568E04:  BLX             j__ZN9CPhysical14ProcessControlEv; CPhysical::ProcessControl(void)
568E08:  MOV             R0, R4; this
568E0A:  BLX             j__ZN8CCarCtrl16UpdateCarOnRailsEP8CVehicle; CCarCtrl::UpdateCarOnRails(CVehicle *)
568E0E:  VLDR            S0, =50.0
568E12:  MOVS            R3, #2
568E14:  VLDR            S2, [R4,#0x3CC]
568E18:  LDR.W           R0, [R4,#0x388]
568E1C:  VDIV.F32        S0, S2, S0
568E20:  LDRB.W          R2, [R4,#0x819]
568E24:  STRB.W          R3, [R4,#0x818]
568E28:  ADDS            R0, #0x2C ; ','; this
568E2A:  STRB.W          R3, [R4,#0x819]
568E2E:  STRB.W          R2, [R4,#0x81A]
568E32:  ADD.W           R2, R4, #0x4C0; unsigned __int8 *
568E36:  VMOV            R1, S0; float
568E3A:  BLX             j__ZN13cTransmission25CalculateGearForSimpleCarEfRh; cTransmission::CalculateGearForSimpleCar(float,uchar &)
568E3E:  VMOV.F32        S16, #0.5
568E42:  VLDR            S0, [R6,#0x58]
568E46:  LDR             R0, [R4,#0x14]
568E48:  ADD.W           R5, R4, #0x48 ; 'H'
568E4C:  MOVS            R1, #0; int
568E4E:  MOV.W           R8, #0
568E52:  ADD.W           R2, R0, #0x10; int
568E56:  MOV             R0, R4; int
568E58:  MOV             R3, R5; int
568E5A:  VMUL.F32        S0, S0, S16
568E5E:  VSTR            S0, [SP,#0x38+var_38]
568E62:  BLX             j__ZN8CVehicle20ProcessWheelRotationE11tWheelStateRK7CVectorS3_f; CVehicle::ProcessWheelRotation(tWheelState,CVector const&,CVector const&,float)
568E66:  ADDW            R1, R4, #0x764
568E6A:  VMOV            S0, R0
568E6E:  MOV             R3, R5; int
568E70:  VLDR            S2, [R1]
568E74:  VADD.F32        S0, S0, S2
568E78:  VSTR            S0, [R1]
568E7C:  MOVS            R1, #0; int
568E7E:  VLDR            S0, [R6,#0x5C]
568E82:  LDR             R0, [R4,#0x14]
568E84:  VMUL.F32        S0, S0, S16
568E88:  ADD.W           R2, R0, #0x10; int
568E8C:  MOV             R0, R4; int
568E8E:  VSTR            S0, [SP,#0x38+var_38]
568E92:  BLX             j__ZN8CVehicle20ProcessWheelRotationE11tWheelStateRK7CVectorS3_f; CVehicle::ProcessWheelRotation(tWheelState,CVector const&,CVector const&,float)
568E96:  ADD.W           R1, R4, #0x768
568E9A:  VMOV            S0, R0
568E9E:  MOV             R0, R4; this
568EA0:  VLDR            S2, [R1]
568EA4:  VADD.F32        S0, S0, S2
568EA8:  VSTR            S0, [R1]
568EAC:  BLX             j__ZN5CBike19PlayHornIfNecessaryEv; CBike::PlayHornIfNecessary(void)
568EB0:  MOV             R0, R4; this
568EB2:  BLX             j__ZN5CBike17ReduceHornCounterEv; CBike::ReduceHornCounter(void)
568EB6:  LDR.W           R0, [R4,#0x42C]
568EBA:  STR.W           R8, [R4,#0x82C]
568EBE:  LDRB.W          R1, [R4,#0x628]
568EC2:  BIC.W           R0, R0, #0x21000000
568EC6:  STR.W           R0, [R4,#0x42C]
568ECA:  B               loc_56908A
568ECC:  MOV             R0, R4; jumptable 00568D24 case 3
568ECE:  BLX             j__ZN6CCarAI11UpdateCarAIEP8CVehicle; CCarAI::UpdateCarAI(CVehicle *)
568ED2:  MOV             R0, R4; this
568ED4:  BLX             j__ZN8CCarCtrl21SteerAICarWithPhysicsEP8CVehicle; CCarCtrl::SteerAICarWithPhysics(CVehicle *)
568ED8:  MOV             R0, R4; this
568EDA:  BLX             j__ZN5CBike19PlayHornIfNecessaryEv; CBike::PlayHornIfNecessary(void)
568EDE:  LDR             R0, [R5]
568EE0:  ADDS            R0, #2
568EE2:  STR             R0, [R5]
568EE4:  LDRB.W          R2, [R4,#0x628]
568EE8:  LDR.W           R0, [R4,#0x42C]
568EEC:  LDR.W           R1, [R4,#0x430]
568EF0:  AND.W           R3, R2, #0x7F
568EF4:  TST.W           R0, #0x80000
568EF8:  STRB.W          R3, [R4,#0x628]
568EFC:  BNE.W           loc_569014
568F00:  AND.W           R0, R2, #0x77 ; 'w'
568F04:  STRB.W          R0, [R4,#0x628]
568F08:  B               loc_56902E
568F0A:  VLDR            S0, [R4,#0x48]; jumptable 00568D24 case 4
568F0E:  MOVS            R0, #0
568F10:  VLDR            S2, [R4,#0x4C]
568F14:  VMUL.F32        S0, S0, S0
568F18:  VLDR            S4, [R4,#0x50]
568F1C:  VMUL.F32        S2, S2, S2
568F20:  STR.W           R0, [R4,#0x4A4]
568F24:  VMUL.F32        S4, S4, S4
568F28:  VADD.F32        S0, S0, S2
568F2C:  VLDR            S2, =0.01
568F30:  VADD.F32        S0, S0, S4
568F34:  VCMPE.F32       S0, S2
568F38:  VMRS            APSR_nzcv, FPSCR
568F3C:  BLT             loc_568FD2
568F3E:  LDRB.W          R0, [R4,#0x628]
568F42:  LSLS            R0, R0, #0x1B
568F44:  BMI             loc_568FD2
568F46:  LDR.W           R1, [R4,#0x42C]
568F4A:  LDR.W           R0, [R4,#0x430]
568F4E:  BIC.W           R1, R1, #0x20 ; ' '
568F52:  B               loc_568FDE
568F54:  MOVW            R0, #0xCCCD; jumptable 00568D24 case 5
568F58:  MOVS            R2, #0
568F5A:  MOVT            R0, #0x3D4C
568F5E:  LDR.W           R1, [R4,#0x42C]
568F62:  STR.W           R2, [R4,#0x498]
568F66:  STR.W           R2, [R4,#0x4A0]
568F6A:  ORR.W           R1, R1, #0x20 ; ' '
568F6E:  STR.W           R0, [R4,#0x4A4]
568F72:  STR.W           R2, [R4,#0x524]
568F76:  STR.W           R2, [R4,#0x82C]
568F7A:  STR.W           R2, [R4,#0x668]
568F7E:  STR.W           R2, [R4,#0x66C]
568F82:  LDRB.W          R0, [R4,#0x628]
568F86:  STR.W           R1, [R4,#0x42C]
568F8A:  AND.W           R0, R0, #0x7F
568F8E:  B               loc_56908E
568F90:  VLDR            S0, [R4,#0x48]; jumptable 00568D24 case 9
568F94:  ADDW            R0, R4, #0x4A4
568F98:  VLDR            S2, [R4,#0x4C]
568F9C:  VMUL.F32        S0, S0, S0
568FA0:  VLDR            S4, [R4,#0x50]
568FA4:  VMUL.F32        S2, S2, S2
568FA8:  VMUL.F32        S4, S4, S4
568FAC:  VADD.F32        S0, S0, S2
568FB0:  VLDR            S2, =0.01
568FB4:  VADD.F32        S0, S0, S4
568FB8:  VCMPE.F32       S0, S2
568FBC:  VMRS            APSR_nzcv, FPSCR
568FC0:  BGE             loc_56905E
568FC2:  MOV.W           R1, #0x3F800000
568FC6:  STR             R1, [R0]
568FC8:  LDR.W           R0, [R4,#0x42C]
568FCC:  ORR.W           R0, R0, #0x20 ; ' '
568FD0:  B               loc_56906A
568FD2:  LDR.W           R1, [R4,#0x42C]
568FD6:  LDR.W           R0, [R4,#0x430]
568FDA:  ORR.W           R1, R1, #0x20 ; ' '
568FDE:  MOVS            R2, #0
568FE0:  STR.W           R1, [R4,#0x42C]
568FE4:  STR.W           R2, [R4,#0x524]
568FE8:  STR.W           R2, [R4,#0x4A0]
568FEC:  LDR.W           R2, [R4,#0x464]
568FF0:  CMP             R2, #0
568FF2:  BEQ.W           loc_5692F8
568FF6:  LDRB.W          R2, [R4,#0x628]
568FFA:  ADD.W           R3, R4, #0x628
568FFE:  LSLS            R2, R2, #0x1B
569000:  BMI.W           loc_56930C
569004:  LDR             R0, [R5]
569006:  ADDS            R0, #2
569008:  STR             R0, [R5]
56900A:  LDR.W           R1, [R4,#0x42C]
56900E:  LDR.W           R0, [R4,#0x430]
569012:  B               loc_56930C
569014:  ADDW            R2, R4, #0x42C
569018:  MOVS            R6, #0
56901A:  MOV.W           R3, #0x3F800000
56901E:  STR.W           R6, [R4,#0x4A0]
569022:  STR.W           R3, [R4,#0x4A4]
569026:  ORR.W           R0, R0, #0x20 ; ' '
56902A:  STRD.W          R0, R1, [R2]
56902E:  ADDW            R0, R4, #0x82C
569032:  VLDR            S0, [R0]
569036:  VCMPE.F32       S0, #0.0
56903A:  VMRS            APSR_nzcv, FPSCR
56903E:  BLE             def_568D24; jumptable 00568D24 default case, cases 6-8
569040:  VMOV.F32        S2, #5.0
569044:  VCMPE.F32       S0, S2
569048:  VMRS            APSR_nzcv, FPSCR
56904C:  BLE.W           loc_569346
569050:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56905C)
569054:  VLDR            S2, =0.02
569058:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56905A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
56905C:  B               loc_56935C
56905E:  MOVS            R1, #0
569060:  STR             R1, [R0]
569062:  LDR.W           R0, [R4,#0x42C]
569066:  BIC.W           R0, R0, #0x20 ; ' '
56906A:  STR.W           R0, [R4,#0x42C]
56906E:  MOVS            R0, #0
569070:  STR.W           R0, [R4,#0x4A0]
569074:  STR.W           R0, [R4,#0x498]
569078:  STR.W           R0, [R4,#0x524]
56907C:  LDR             R1, [R5]
56907E:  ADDS            R1, #2
569080:  STR             R1, [R5]
569082:  LDRB.W          R1, [R4,#0x628]
569086:  STR.W           R0, [R4,#0x82C]
56908A:  AND.W           R0, R1, #0x7F
56908E:  STRB.W          R0, [R4,#0x628]
569092:  LDR.W           R0, [R4,#0x464]; jumptable 00568D24 default case, cases 6-8
569096:  CMP             R0, #0
569098:  BEQ.W           loc_5691C0
56909C:  LDR             R0, [R0,#0x18]
56909E:  MOVS            R1, #0xC7
5690A0:  ADDW            R6, R4, #0x464
5690A4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5690A8:  MOV             R5, R0
5690AA:  CBZ             R5, loc_5690BE
5690AC:  VMOV.F32        S0, #0.5
5690B0:  VLDR            S2, [R5,#0x18]
5690B4:  VCMPE.F32       S2, S0
5690B8:  VMRS            APSR_nzcv, FPSCR
5690BC:  BGE             loc_5690CA
5690BE:  LDR             R0, [R6]
5690C0:  MOVS            R1, #0xC6
5690C2:  LDR             R0, [R0,#0x18]
5690C4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5690C8:  MOV             R5, R0
5690CA:  LDR             R0, [R6]
5690CC:  MOVS            R1, #0xCA
5690CE:  LDR             R0, [R0,#0x18]
5690D0:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5690D4:  CBZ             R0, loc_5690E8
5690D6:  VMOV.F32        S2, #0.5
5690DA:  VLDR            S0, [R0,#0x18]
5690DE:  VCMPE.F32       S0, S2
5690E2:  VMRS            APSR_nzcv, FPSCR
5690E6:  BGE             loc_5690F8
5690E8:  LDR             R0, [R6]
5690EA:  MOVS            R1, #0xCB
5690EC:  LDR             R0, [R0,#0x18]
5690EE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5690F2:  CBZ             R0, loc_569106
5690F4:  VLDR            S0, [R0,#0x18]
5690F8:  VMOV.F32        S2, #0.5
5690FC:  VCMPE.F32       S0, S2
569100:  VMRS            APSR_nzcv, FPSCR
569104:  BGE             loc_569110
569106:  LDR             R0, [R6]
569108:  MOVS            R1, #0xCC
56910A:  LDR             R0, [R0,#0x18]
56910C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569110:  CBZ             R5, loc_569124
569112:  VMOV.F32        S0, #0.5
569116:  VLDR            S2, [R5,#0x18]
56911A:  VCMPE.F32       S2, S0
56911E:  VMRS            APSR_nzcv, FPSCR
569122:  BGT             loc_56913A
569124:  CMP             R0, #0
569126:  BEQ             loc_5691C0
569128:  VMOV.F32        S0, #0.5
56912C:  VLDR            S2, [R0,#0x18]
569130:  VCMPE.F32       S2, S0
569134:  VMRS            APSR_nzcv, FPSCR
569138:  BLE             loc_5691C0
56913A:  LDRB.W          R0, [R4,#0x42C]
56913E:  MOVS            R1, #0
569140:  STR.W           R1, [R4,#0x4A0]
569144:  LSLS            R0, R0, #0x1A
569146:  BMI.W           loc_5692EA
56914A:  VMOV.F32        S0, #1.0
56914E:  ADDW            R0, R4, #0x724
569152:  VLDR            S2, [R0]
569156:  VCMPE.F32       S2, S0
56915A:  VMRS            APSR_nzcv, FPSCR
56915E:  BLT             loc_569198
569160:  ADD.W           R0, R4, #0x728
569164:  VLDR            S2, [R0]
569168:  VCMPE.F32       S2, S0
56916C:  VMRS            APSR_nzcv, FPSCR
569170:  BLT             loc_569198
569172:  ADDW            R0, R4, #0x72C
569176:  VLDR            S2, [R0]
56917A:  VCMPE.F32       S2, S0
56917E:  VMRS            APSR_nzcv, FPSCR
569182:  BLT             loc_569198
569184:  ADD.W           R0, R4, #0x730
569188:  VLDR            S2, [R0]
56918C:  VCMPE.F32       S2, S0
569190:  VMRS            APSR_nzcv, FPSCR
569194:  BGE.W           loc_5692EA
569198:  MOVS            R0, #1
56919A:  STRB.W          R0, [R4,#0x848]
56919E:  B               loc_5692EA
5691A0:  DCFS 0.7
5691A4:  DCFS 0.3
5691A8:  DCFS 50.0
5691AC:  DCFS 0.01
5691B0:  DCFS 0.02
5691B4:  DCFS 2.4
5691B8:  DCFS 0.0
5691BC:  DCFS 0.008
5691C0:  VMOV.F32        S0, #5.0
5691C4:  ADDW            R0, R4, #0x82C
5691C8:  VLDR            S2, [R0]
5691CC:  VCMPE.F32       S2, S0
5691D0:  VMRS            APSR_nzcv, FPSCR
5691D4:  BLE.W           loc_5692EA
5691D8:  VMOV.F32        S0, #1.0
5691DC:  ADDW            R0, R4, #0x72C
5691E0:  VLDR            S2, [R0]
5691E4:  VCMPE.F32       S2, S0
5691E8:  VMRS            APSR_nzcv, FPSCR
5691EC:  BLT             loc_569200
5691EE:  ADD.W           R0, R4, #0x730
5691F2:  VLDR            S2, [R0]
5691F6:  VCMPE.F32       S2, S0
5691FA:  VMRS            APSR_nzcv, FPSCR
5691FE:  BGE             loc_5692EA
569200:  LDR             R0, [R4,#0x14]
569202:  VMOV.F32        S16, #2.0
569206:  VLDR            S6, [R4,#0x48]
56920A:  VLDR            S8, [R4,#0x4C]
56920E:  VLDR            S0, [R0,#0x10]
569212:  VLDR            S2, [R0,#0x14]
569216:  VMUL.F32        S6, S6, S0
56921A:  VLDR            S4, [R0,#0x18]
56921E:  VMUL.F32        S8, S8, S2
569222:  VLDR            S10, [R4,#0x50]
569226:  LDR.W           R0, [R4,#0x388]
56922A:  VMUL.F32        S10, S10, S4
56922E:  VADD.F32        S6, S6, S8
569232:  VLDR            S8, [R0,#0x88]
569236:  VADD.F32        S6, S6, S10
56923A:  VDIV.F32        S6, S6, S8
56923E:  VMOV.F32        S8, #-1.5
569242:  VMUL.F32        S6, S6, S8
569246:  VLDR            S8, =2.4
56924A:  VADD.F32        S6, S6, S8
56924E:  VCMPE.F32       S6, S16
569252:  VMRS            APSR_nzcv, FPSCR
569256:  BGT             loc_56926A
569258:  VCMPE.F32       S6, #0.0
56925C:  VMRS            APSR_nzcv, FPSCR
569260:  VMOV.F32        S16, S6
569264:  IT LT
569266:  VLDRLT          S16, =0.0
56926A:  LDRB.W          R0, [R4,#0x3A]
56926E:  CMP             R0, #7
569270:  BHI             loc_569290
569272:  MOVS            R0, #5
569274:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
569278:  VMOV            S0, R0
56927C:  LDR             R0, [R4,#0x14]
56927E:  VMUL.F32        S6, S16, S0
569282:  VLDR            S0, [R0,#0x10]
569286:  VLDR            S2, [R0,#0x14]
56928A:  VLDR            S4, [R0,#0x18]
56928E:  B               loc_5692A4
569290:  VMOV.F32        S6, #1.25
569294:  LDRB.W          R0, [R4,#0x433]
569298:  LSLS            R0, R0, #0x1E
56929A:  VMUL.F32        S6, S16, S6
56929E:  IT PL
5692A0:  VMOVPL.F32      S6, S16
5692A4:  VMOV.F32        S8, #0.25
5692A8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5692B0)
5692AC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5692AE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5692B0:  VMUL.F32        S6, S6, S8
5692B4:  VLDR            S8, [R4,#0x90]
5692B8:  VMUL.F32        S6, S6, S8
5692BC:  VLDR            S8, =0.008
5692C0:  VMUL.F32        S6, S6, S8
5692C4:  VLDR            S8, [R0]
5692C8:  MOV             R0, R4
5692CA:  VMUL.F32        S6, S8, S6
5692CE:  VMUL.F32        S0, S0, S6
5692D2:  VMUL.F32        S2, S6, S2
5692D6:  VMUL.F32        S4, S6, S4
5692DA:  VMOV            R1, S0
5692DE:  VMOV            R2, S2
5692E2:  VMOV            R3, S4
5692E6:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5692EA:  MOVS            R0, #1
5692EC:  ADD             SP, SP, #0x10
5692EE:  VPOP            {D8-D9}
5692F2:  POP.W           {R8,R9,R11}
5692F6:  POP             {R4-R7,PC}
5692F8:  LDR.W           R2, [R4,#0x468]
5692FC:  CMP             R2, #0
5692FE:  IT EQ
569300:  ANDSEQ.W        R2, R1, #0x80000
569304:  BNE.W           loc_568FF6
569308:  ADD.W           R3, R4, #0x628
56930C:  MOVS            R6, #0
56930E:  ADDW            R2, R4, #0x42C
569312:  STR.W           R6, [R4,#0x668]
569316:  STR.W           R6, [R4,#0x66C]
56931A:  LDRB            R5, [R3]
56931C:  AND.W           R5, R5, #0x7F
569320:  STRB            R5, [R3]
569322:  LSLS            R3, R1, #0xC
569324:  STR.W           R6, [R4,#0x82C]
569328:  BPL.W           def_568D24; jumptable 00568D24 default case, cases 6-8
56932C:  ADD.W           R5, R4, #0x4A0
569330:  ADDW            R3, R4, #0x4A4
569334:  ORR.W           R1, R1, #0x20 ; ' '
569338:  STR             R6, [R5]
56933A:  MOV.W           R6, #0x3F800000
56933E:  STR             R6, [R3]
569340:  STRD.W          R1, R0, [R2]
569344:  B               def_568D24; jumptable 00568D24 default case, cases 6-8
569346:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x569354)
56934A:  ADR.W           R3, dword_5697B0
56934E:  LSLS            R1, R1, #6
569350:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
569352:  IT MI
569354:  ADDMI           R3, #4
569356:  VLDR            S2, [R3]
56935A:  LDR             R1, [R2]; CTimer::ms_fTimeStep ...
56935C:  VLDR            S4, [R1]
569360:  VMUL.F32        S2, S4, S2
569364:  VSUB.F32        S0, S0, S2
569368:  VCMPE.F32       S0, #0.0
56936C:  VSTR            S0, [R0]
569370:  VMRS            APSR_nzcv, FPSCR
569374:  ITT LT
569376:  MOVLT           R1, #0
569378:  STRLT           R1, [R0]
56937A:  B               def_568D24; jumptable 00568D24 default case, cases 6-8
56937C:  VLDR            S4, [R0,#4]
569380:  ADDW            R1, R4, #0x4A4
569384:  VMUL.F32        S4, S2, S4
569388:  VADD.F32        S0, S0, S4
56938C:  VLDR            S4, [R1]
569390:  VCMPE.F32       S4, #0.0
569394:  VMRS            APSR_nzcv, FPSCR
569398:  VSTR            S0, [R4,#0xAC]
56939C:  BLT             loc_5693A6
56939E:  LDRB.W          R1, [R4,#0x818]
5693A2:  CMP             R1, #0
5693A4:  BNE             loc_569494
5693A6:  VLDR            S4, [R4,#0x48]
5693AA:  VLDR            S6, [R4,#0x4C]
5693AE:  VMUL.F32        S4, S4, S4
5693B2:  VLDR            S8, [R4,#0x50]
5693B6:  VMUL.F32        S6, S6, S6
5693BA:  VMUL.F32        S8, S8, S8
5693BE:  VADD.F32        S4, S4, S6
5693C2:  VLDR            S6, [R4,#0x94]
5693C6:  VMUL.F32        S2, S2, S6
5693CA:  VLDR            S6, [R0,#8]
5693CE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5693D6)
5693D2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5693D4:  VADD.F32        S4, S4, S8
5693D8:  VMUL.F32        S2, S2, S6
5693DC:  B               loc_569422
5693DE:  VMOV.F32        S6, #0.5
5693E2:  VMUL.F32        S4, S4, S6
5693E6:  VADD.F32        S4, S4, S6
5693EA:  VLDR            S6, [R4,#0x4C]
5693EE:  VLDR            S8, [R4,#0x50]
5693F2:  VMUL.F32        S6, S6, S6
5693F6:  VLDR            S10, [R4,#0x94]
5693FA:  VMUL.F32        S2, S4, S2
5693FE:  VLDR            S4, [R4,#0x48]
569402:  VMUL.F32        S12, S4, S4
569406:  VMUL.F32        S4, S8, S8
56940A:  VMUL.F32        S2, S2, S10
56940E:  VLDR            S10, [R0,#0x10]
569412:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56941C)
569414:  VADD.F32        S6, S12, S6
569418:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56941A:  VMUL.F32        S2, S2, S10
56941E:  VADD.F32        S4, S4, S6
569422:  VSQRT.F32       S4, S4
569426:  VLDR            S6, =0.1
56942A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56942C:  VMIN.F32        D2, D2, D3
569430:  VMUL.F32        S2, S2, S4
569434:  VLDR            S4, [R0]
569438:  LDR             R0, [R4,#0x14]
56943A:  VLDR            S10, [R0,#0x20]
56943E:  VLDR            S12, [R0,#0x24]
569442:  VLDR            S14, [R0,#0x28]
569446:  VMUL.F32        S2, S4, S2
56944A:  VLDR            S6, [R0,#0x14]
56944E:  VLDR            S4, [R0,#0x10]
569452:  VLDR            S8, [R0,#0x18]
569456:  VADD.F32        S0, S0, S6
56945A:  MOV             R0, R4
56945C:  VNMUL.F32       S10, S2, S10
569460:  VNMUL.F32       S12, S2, S12
569464:  VNMUL.F32       S2, S2, S14
569468:  VMOV            R1, S10
56946C:  VLDR            S10, [R4,#0xA8]
569470:  VMOV            R2, S12
569474:  VMOV            R3, S2
569478:  VLDR            S2, [R4,#0xB0]
56947C:  VADD.F32        S4, S10, S4
569480:  VADD.F32        S2, S2, S8
569484:  VSTR            S4, [SP,#0x38+var_38]
569488:  VSTR            S0, [SP,#0x38+var_34]
56948C:  VSTR            S2, [SP,#0x38+var_30]
569490:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
569494:  MOV             R0, R4; this
569496:  BLX             j__ZN7CEntity15PruneReferencesEv; CEntity::PruneReferences(void)
56949A:  LDRB.W          R0, [R4,#0x3A]
56949E:  CMP             R0, #7
5694A0:  ITT LS
5694A2:  MOVLS           R0, R4; this
5694A4:  BLXLS           j__ZN8CVehicle18DoDriveByShootingsEv; CVehicle::DoDriveByShootings(void)
5694A8:  MOV             R0, R4; this
5694AA:  MOV             R1, R5; unsigned int *
5694AC:  BLX             j__ZN5CBike22DoSoftGroundResistanceERj; CBike::DoSoftGroundResistance(uint &)
5694B0:  VMOV.F32        S16, #1.0
5694B4:  ADDW            R0, R4, #0x724
5694B8:  VLDR            S0, [R0]
5694BC:  VCMP.F32        S0, S16
5694C0:  VMRS            APSR_nzcv, FPSCR
5694C4:  BNE.W           loc_5695C8
5694C8:  ADD.W           R0, R4, #0x728
5694CC:  VLDR            S0, [R0]
5694D0:  VCMP.F32        S0, S16
5694D4:  VMRS            APSR_nzcv, FPSCR
5694D8:  BNE             loc_5695C8
5694DA:  ADDW            R0, R4, #0x72C
5694DE:  VLDR            S0, [R0]
5694E2:  VCMP.F32        S0, S16
5694E6:  VMRS            APSR_nzcv, FPSCR
5694EA:  BNE             loc_5695C8
5694EC:  ADD.W           R0, R4, #0x730
5694F0:  VLDR            S0, [R0]
5694F4:  VCMP.F32        S0, S16
5694F8:  VMRS            APSR_nzcv, FPSCR
5694FC:  BNE             loc_5695C8
5694FE:  LDR             R0, [R4,#0x14]
569500:  VLDR            S0, [R4,#0x54]
569504:  VLDR            S2, [R4,#0x58]
569508:  VLDR            S6, [R0,#0x20]
56950C:  VLDR            S8, [R0,#0x24]
569510:  VMUL.F32        S0, S0, S6
569514:  VLDR            S4, [R4,#0x5C]
569518:  VMUL.F32        S2, S2, S8
56951C:  VLDR            S10, [R0,#0x28]
569520:  VMUL.F32        S4, S4, S10
569524:  VADD.F32        S0, S0, S2
569528:  VADD.F32        S18, S0, S4
56952C:  VLDR            S0, =0.04
569530:  VCMPE.F32       S18, S0
569534:  VMRS            APSR_nzcv, FPSCR
569538:  BGE             loc_569544
56953A:  MOV             R0, R8; this
56953C:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
569540:  CMP             R0, #0
569542:  BLT             loc_56955C
569544:  VLDR            S0, =-0.04
569548:  VCMPE.F32       S18, S0
56954C:  VMRS            APSR_nzcv, FPSCR
569550:  BLE             loc_5695C8
569552:  MOV             R0, R8; this
569554:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
569558:  CMP             R0, #1
56955A:  BLT             loc_5695C8
56955C:  MOV             R0, R8; this
56955E:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
569562:  VMOV            S0, R0
569566:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x569574)
569568:  VLDR            S2, =0.0078125
56956C:  VCVT.F32.S32    S0, S0
569570:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
569572:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
569574:  VMUL.F32        S0, S0, S2
569578:  VLDR            S2, [R0]
56957C:  LDR             R0, [R4,#0x14]
56957E:  VLDR            S4, [R0,#4]
569582:  VLDR            S6, [R0,#8]
569586:  VMUL.F32        S0, S2, S0
56958A:  VLDR            S2, =0.002
56958E:  VMUL.F32        S0, S0, S2
569592:  VLDR            S2, [R4,#0x94]
569596:  VMUL.F32        S0, S2, S0
56959A:  VLDR            S2, [R0]
56959E:  LDRD.W          R6, R5, [R0,#0x10]
5695A2:  LDR             R0, [R0,#0x18]
5695A4:  STRD.W          R6, R5, [SP,#0x38+var_38]
5695A8:  STR             R0, [SP,#0x38+var_30]
5695AA:  MOV             R0, R4
5695AC:  VMUL.F32        S2, S2, S0
5695B0:  VMUL.F32        S4, S4, S0
5695B4:  VMUL.F32        S0, S0, S6
5695B8:  VMOV            R1, S2
5695BC:  VMOV            R2, S4
5695C0:  VMOV            R3, S0
5695C4:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5695C8:  LDR             R0, =(dword_A0257C - 0x5695CE)
5695CA:  ADD             R0, PC; dword_A0257C
5695CC:  VLDR            S0, [R0]
5695D0:  VCMP.F32        S0, #0.0
5695D4:  VMRS            APSR_nzcv, FPSCR
5695D8:  ITT EQ
5695DA:  MOVEQ           R0, R4; this
5695DC:  BLXEQ           j__ZN4CBmx15ProcessBunnyHopEv; CBmx::ProcessBunnyHop(void)
5695E0:  ADD.W           R5, R4, #0x498
5695E4:  VLDR            S2, =0.0001
5695E8:  VLDR            S0, [R5]
5695EC:  VABS.F32        S0, S0
5695F0:  VCMPE.F32       S0, S2
5695F4:  VMRS            APSR_nzcv, FPSCR
5695F8:  ITT LT
5695FA:  MOVLT           R0, #0
5695FC:  STRLT           R0, [R5]
5695FE:  MOV             R0, R9; this
569600:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
569604:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
569608:  CBZ             R0, loc_56961E
56960A:  VLDR            S0, [R5]
56960E:  VCMP.F32        S0, #0.0
569612:  VMRS            APSR_nzcv, FPSCR
569616:  ITE EQ
569618:  MOVEQ           R6, #1
56961A:  MOVNE           R6, #0
56961C:  B               loc_569620
56961E:  MOVS            R6, #0
569620:  LDR.W           R0, [R4,#0x464]
569624:  MOVS            R1, #0xD0
569626:  LDR             R0, [R0,#0x18]
569628:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
56962C:  MOV             R5, R0
56962E:  MOV             R0, R9
569630:  MOVS            R1, #1
569632:  BLX             j__ZN10CPlayerPed19ControlButtonSprintE11eSprintType; CPlayerPed::ControlButtonSprint(eSprintType)
569636:  VLDR            S0, =1.2
56963A:  VMOV            S2, R0
56963E:  VCMPE.F32       S2, S0
569642:  VMRS            APSR_nzcv, FPSCR
569646:  BLE             loc_569660
569648:  LDRB.W          R0, [R4,#0x628]
56964C:  ORR.W           R0, R0, #0x20 ; ' '
569650:  STRB.W          R0, [R4,#0x628]
569654:  LDR.W           R0, [R9,#0x444]
569658:  LDR             R0, [R0,#0x1C]
56965A:  STR.W           R0, [R4,#0x82C]
56965E:  B               loc_56976E
569660:  MOV             R0, R9
569662:  MOVS            R1, #1
569664:  BLX             j__ZN10CPlayerPed22GetButtonSprintResultsE11eSprintType; CPlayerPed::GetButtonSprintResults(eSprintType)
569668:  CBZ             R5, loc_56968A
56966A:  VMOV            S0, R0
56966E:  VCMPE.F32       S0, S16
569672:  VMRS            APSR_nzcv, FPSCR
569676:  BLE             loc_56968A
569678:  VMOV.F32        S0, #0.5
56967C:  VLDR            S2, [R5,#0x18]
569680:  VCMPE.F32       S2, S0
569684:  VMRS            APSR_nzcv, FPSCR
569688:  BGT             loc_569648
56968A:  CMP             R6, #1
56968C:  BNE             loc_5696A6
56968E:  LDRB.W          R0, [R4,#0x628]
569692:  MOVS            R1, #0x40A000D2
569698:  STR.W           R1, [R4,#0x82C]
56969C:  ORR.W           R0, R0, #0x20 ; ' '
5696A0:  STRB.W          R0, [R4,#0x628]
5696A4:  B               loc_56976E
5696A6:  MOV             R0, R8; this
5696A8:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
5696AC:  VMOV            S0, R0
5696B0:  VLDR            S2, =-255.0
5696B4:  MOV             R0, R9; this
5696B6:  MOVS            R1, #0; bool
5696B8:  VCVT.F32.S32    S0, S0
5696BC:  VDIV.F32        S0, S0, S2
5696C0:  VMOV.F32        S2, #0.5
5696C4:  VMUL.F32        S0, S0, S2
5696C8:  VADD.F32        S0, S0, S16
5696CC:  VMAX.F32        D0, D0, D1
5696D0:  VMOV            R2, S0; float
5696D4:  BLX             j__ZN10CPlayerPed18HandleSprintEnergyEbf; CPlayerPed::HandleSprintEnergy(bool,float)
5696D8:  MOV             R0, R9
5696DA:  MOVS            R1, #1
5696DC:  BLX             j__ZN10CPlayerPed22GetButtonSprintResultsE11eSprintType; CPlayerPed::GetButtonSprintResults(eSprintType)
5696E0:  VMOV            S0, R0
5696E4:  VCMPE.F32       S0, #0.0
5696E8:  VMRS            APSR_nzcv, FPSCR
5696EC:  BLE             loc_569726
5696EE:  ADD.W           R0, R4, #0x4A0
5696F2:  MOV             R1, #0x409CCCCD
5696FA:  VLDR            S0, [R0]
5696FE:  STR.W           R1, [R4,#0x82C]
569702:  VCMP.F32        S0, #0.0
569706:  VMRS            APSR_nzcv, FPSCR
56970A:  BNE             loc_56976E
56970C:  ADDW            R1, R4, #0x4A4
569710:  VLDR            S0, [R1]
569714:  VCMP.F32        S0, #0.0
569718:  VMRS            APSR_nzcv, FPSCR
56971C:  ITT EQ
56971E:  MOVEQ.W         R1, #0x3F800000
569722:  STREQ           R1, [R0]
569724:  B               loc_56976E
569726:  LDR.W           R0, [R9,#0x444]
56972A:  VLDR            S0, [R0,#0x18]
56972E:  VCMPE.F32       S0, #0.0
569732:  VMRS            APSR_nzcv, FPSCR
569736:  BGE             loc_569752
569738:  MOV             R0, R8; this
56973A:  BLX             j__ZN4CPad21GetAccelerateJustDownEv; CPad::GetAccelerateJustDown(void)
56973E:  ADDW            R1, R4, #0x82C
569742:  CMP             R0, #1
569744:  BNE             loc_569756
569746:  MOV             R0, #0x409CCCCD
56974E:  STR             R0, [R1]
569750:  B               loc_56976E
569752:  MOVS            R0, #0
569754:  B               loc_56965A
569756:  VLDR            S0, =-0.4
56975A:  VLDR            S2, [R1]
56975E:  VLDR            S4, =0.0
569762:  VADD.F32        S0, S2, S0
569766:  VMAX.F32        D0, D0, D2
56976A:  VSTR            S0, [R1]
56976E:  LDRB.W          R0, [R4,#0x628]
569772:  MOV             R1, R4; bool
569774:  UBFX.W          R0, R0, #5, #1; this
569778:  BLX             j__ZN6CStats22UpdateStatsWhenCyclingEbP4CBmx; CStats::UpdateStatsWhenCycling(bool,CBmx *)
56977C:  LDRB.W          R0, [R4,#0x4B2]
569780:  AND.W           R0, R0, #7
569784:  SUBS            R0, #1
569786:  UXTB            R0, R0
569788:  CMP             R0, #1
56978A:  BHI.W           def_568D24; jumptable 00568D24 default case, cases 6-8
56978E:  MOVS            R0, #0; this
569790:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
569794:  BLX             j__ZN4CPad7UseBombEv; CPad::UseBomb(void)
569798:  CMP             R0, #1
56979A:  BNE.W           def_568D24; jumptable 00568D24 default case, cases 6-8
56979E:  MOV             R0, R4; this
5697A0:  BLX             j__ZN8CVehicle12ActivateBombEv; CVehicle::ActivateBomb(void)
5697A4:  B               def_568D24; jumptable 00568D24 default case, cases 6-8
