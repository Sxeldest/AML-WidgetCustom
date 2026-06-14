; =========================================================
; Game Engine Function: _ZN30CTaskComplexFollowPedFootsteps14ControlSubTaskEP4CPed
; Address            : 0x545CBC - 0x54618E
; =========================================================

545CBC:  PUSH            {R4-R7,LR}
545CBE:  ADD             R7, SP, #0xC
545CC0:  PUSH.W          {R8-R11}
545CC4:  SUB             SP, SP, #4
545CC6:  VPUSH           {D8-D13}
545CCA:  SUB             SP, SP, #0x30
545CCC:  MOV             R5, R0
545CCE:  MOV             R10, R1
545CD0:  LDRD.W          R8, R0, [R5,#8]; this
545CD4:  CBZ             R0, loc_545CF8
545CD6:  LDR             R1, [R5,#0x18]
545CD8:  CBZ             R1, loc_545CF8
545CDA:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
545CDE:  CMP             R0, #1
545CE0:  BNE             loc_545CF8
545CE2:  LDR             R0, [R5,#8]
545CE4:  LDR             R1, [R0]
545CE6:  LDR             R1, [R1,#0x14]
545CE8:  BLX             R1
545CEA:  MOVW            R1, #0x38B
545CEE:  CMP             R0, R1
545CF0:  BNE             loc_545D2C
545CF2:  LDR.W           R8, [R5,#8]
545CF6:  B               loc_54617E
545CF8:  MOVW            R4, #0x516
545CFC:  LDR             R0, [R5,#8]
545CFE:  MOVS            R2, #1
545D00:  MOVS            R3, #0
545D02:  LDR             R1, [R0]
545D04:  LDR             R6, [R1,#0x1C]
545D06:  MOV             R1, R10
545D08:  BLX             R6
545D0A:  CMP             R0, #1
545D0C:  BNE.W           loc_54617E
545D10:  LDR             R0, [R5]
545D12:  MOV             R1, R4
545D14:  MOV             R2, R10
545D16:  LDR             R3, [R0,#0x34]
545D18:  MOV             R0, R5
545D1A:  ADD             SP, SP, #0x30 ; '0'
545D1C:  VPOP            {D8-D13}
545D20:  ADD             SP, SP, #4
545D22:  POP.W           {R8-R11}
545D26:  POP.W           {R4-R7,LR}
545D2A:  BX              R3
545D2C:  LDR             R2, [R5,#0xC]
545D2E:  LDRB.W          R0, [R2,#0x485]
545D32:  LSLS            R0, R0, #0x1F
545D34:  BNE.W           loc_545E62
545D38:  LDR.W           R0, =(_ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr - 0x545D44)
545D3C:  LDR.W           R1, [R10,#0x440]
545D40:  ADD             R0, PC; _ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr
545D42:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount ...
545D44:  LDR.W           R1, [R1,#0x278]
545D48:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount
545D4A:  CMP             R1, R0
545D4C:  BLE             loc_545D54
545D4E:  MOV.W           R4, #0x1F4
545D52:  B               loc_545CFC
545D54:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x545D5E)
545D58:  LDR             R1, [R5,#0x14]
545D5A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
545D5C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
545D5E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
545D60:  SUBS            R1, R0, R1
545D62:  CMP.W           R1, #0x1F4
545D66:  BLS             loc_545DB0
545D68:  STR             R0, [R5,#0x14]
545D6A:  MOV             R11, R10
545D6C:  LDR.W           R1, [R11,#0x14]!
545D70:  MOVS            R0, #0
545D72:  SUB.W           R9, R11, #0x10
545D76:  LDR             R3, [R2,#0x14]
545D78:  MOVS            R4, #1
545D7A:  CMP             R1, #0
545D7C:  STRD.W          R0, R4, [SP,#0x80+var_80]; bool
545D80:  STRD.W          R0, R0, [SP,#0x80+var_78]; bool
545D84:  STR             R0, [SP,#0x80+var_70]; bool
545D86:  MOV             R0, R9
545D88:  IT NE
545D8A:  ADDNE.W         R0, R1, #0x30 ; '0'; this
545D8E:  ADD.W           R1, R3, #0x30 ; '0'
545D92:  CMP             R3, #0
545D94:  MOV.W           R3, #0; bool
545D98:  IT EQ
545D9A:  ADDEQ           R1, R2, #4; CVector *
545D9C:  MOVS            R2, #(stderr+1); CVector *
545D9E:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
545DA2:  LDRB            R1, [R5,#0x1E]
545DA4:  LDR             R2, [R5,#0xC]
545DA6:  AND.W           R1, R1, #0xFE
545DAA:  ORRS            R0, R1
545DAC:  STRB            R0, [R5,#0x1E]
545DAE:  B               loc_545DB8
545DB0:  ADD.W           R9, R10, #4
545DB4:  ADD.W           R11, R10, #0x14
545DB8:  LDR.W           R0, [R11]
545DBC:  MOV             R3, R9
545DBE:  LDR             R1, [R2,#0x14]
545DC0:  CMP             R0, #0
545DC2:  IT NE
545DC4:  ADDNE.W         R3, R0, #0x30 ; '0'
545DC8:  ADD.W           R0, R1, #0x30 ; '0'
545DCC:  CMP             R1, #0
545DCE:  VLDR            S0, [R3]
545DD2:  VLDR            S2, [R3,#4]
545DD6:  VLDR            S4, [R3,#8]
545DDA:  IT EQ
545DDC:  ADDEQ           R0, R2, #4
545DDE:  VLDR            S20, [R0]
545DE2:  VLDR            S18, [R0,#4]
545DE6:  VSUB.F32        S0, S20, S0
545DEA:  VLDR            S16, [R0,#8]
545DEE:  VSUB.F32        S2, S18, S2
545DF2:  VSUB.F32        S22, S16, S4
545DF6:  VMUL.F32        S8, S0, S0
545DFA:  VMUL.F32        S6, S2, S2
545DFE:  VSTR            S2, [SP,#0x80+var_58]
545E02:  VMUL.F32        S4, S22, S22
545E06:  VSTR            S0, [SP,#0x80+var_5C]
545E0A:  VSTR            S22, [SP,#0x80+var_54]
545E0E:  VADD.F32        S24, S8, S6
545E12:  VADD.F32        S26, S24, S4
545E16:  VLDR            S4, =1.96
545E1A:  VCMPE.F32       S26, S4
545E1E:  VMRS            APSR_nzcv, FPSCR
545E22:  BGE             loc_545E30
545E24:  LDR             R0, [R5,#8]
545E26:  LDR             R1, [R0]
545E28:  LDR             R1, [R1,#0x14]
545E2A:  BLX             R1
545E2C:  CMP             R0, #0xCB
545E2E:  BNE             loc_545E68
545E30:  VLDR            S0, =64.0
545E34:  VCMPE.F32       S26, S0
545E38:  VMRS            APSR_nzcv, FPSCR
545E3C:  BGT             loc_545E62
545E3E:  VSQRT.F32       S0, S24
545E42:  VMOV.F32        S2, #1.0
545E46:  VCMPE.F32       S0, S2
545E4A:  VMRS            APSR_nzcv, FPSCR
545E4E:  BGE             loc_545E7A
545E50:  VABS.F32        S0, S22
545E54:  VMOV.F32        S2, #2.0
545E58:  VCMPE.F32       S0, S2
545E5C:  VMRS            APSR_nzcv, FPSCR
545E60:  BLE             loc_545E7A
545E62:  MOVW            R4, #0x38B
545E66:  B               loc_545CFC
545E68:  LDRB            R0, [R5,#0x1E]
545E6A:  LSLS            R0, R0, #0x1F
545E6C:  BEQ.W           loc_54617E
545E70:  LDR             R0, [R5,#0x18]
545E72:  MOVS            R1, #0
545E74:  MOVS            R4, #0xCB
545E76:  STR             R1, [R0]
545E78:  B               loc_545CFC
545E7A:  LDRB            R0, [R5,#0x1E]
545E7C:  LSLS            R0, R0, #0x1F
545E7E:  BNE             loc_545E86
545E80:  ADD.W           R4, R5, #0x10
545E84:  B               loc_545F66
545E86:  LDR             R0, [R5,#0x18]
545E88:  MOVS            R1, #0
545E8A:  STR             R1, [R0]
545E8C:  LDR             R0, [R5,#0x18]
545E8E:  LDR             R1, [R0]
545E90:  CMP             R1, #7
545E92:  BGT             loc_545EBC
545E94:  LDR             R2, [R5,#0xC]
545E96:  ADD.W           R1, R1, R1,LSL#1
545E9A:  ADD.W           R1, R0, R1,LSL#2
545E9E:  LDR             R3, [R2,#0x14]
545EA0:  ADD.W           R4, R3, #0x30 ; '0'
545EA4:  CMP             R3, #0
545EA6:  IT EQ
545EA8:  ADDEQ           R4, R2, #4
545EAA:  VLDR            D16, [R4]
545EAE:  LDR             R2, [R4,#8]
545EB0:  STR             R2, [R1,#0xC]
545EB2:  VSTR            D16, [R1,#4]
545EB6:  LDR             R1, [R0]
545EB8:  ADDS            R1, #1
545EBA:  STR             R1, [R0]
545EBC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x545EC4)
545EBE:  MOV             R4, R5
545EC0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
545EC2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
545EC4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
545EC6:  SUB.W           R0, R0, #0x14C
545ECA:  STR.W           R0, [R4,#0x10]!
545ECE:  LDR.W           R0, [R10,#0x440]
545ED2:  ADDS            R0, #4; this
545ED4:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
545ED8:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
545EDC:  CMP             R0, #0
545EDE:  BEQ             loc_545F66
545EE0:  LDR.W           R0, [R10,#0x440]
545EE4:  ADDS            R0, #4; this
545EE6:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
545EEA:  LDR             R1, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x545EF2)
545EEC:  LDR             R2, [R5,#0xC]
545EEE:  ADD             R1, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
545EF0:  VLDR            S2, [R0,#0xC]
545EF4:  LDR             R1, [R1]; CTaskSimpleGoTo::ms_fTargetRadius ...
545EF6:  LDR             R3, [R2,#0x14]
545EF8:  VLDR            S0, [R1]
545EFC:  ADD.W           R1, R3, #0x30 ; '0'
545F00:  CMP             R3, #0
545F02:  IT EQ
545F04:  ADDEQ           R1, R2, #4
545F06:  VLDR            S4, [R1]
545F0A:  VCMP.F32        S2, S4
545F0E:  VMRS            APSR_nzcv, FPSCR
545F12:  BNE             loc_545F46
545F14:  VLDR            S2, [R1,#4]
545F18:  VLDR            S4, [R0,#0x10]
545F1C:  VCMP.F32        S4, S2
545F20:  VMRS            APSR_nzcv, FPSCR
545F24:  BNE             loc_545F46
545F26:  VLDR            S2, [R1,#8]
545F2A:  VLDR            S4, [R0,#0x14]
545F2E:  VCMP.F32        S4, S2
545F32:  VMRS            APSR_nzcv, FPSCR
545F36:  BNE             loc_545F46
545F38:  VLDR            S2, [R0,#0x18]
545F3C:  VCMP.F32        S2, S0
545F40:  VMRS            APSR_nzcv, FPSCR
545F44:  BEQ             loc_545F66
545F46:  VLDR            D16, [R1]
545F4A:  ADD.W           R2, R0, #0xC
545F4E:  LDR             R1, [R1,#8]
545F50:  STR             R1, [R2,#8]
545F52:  VSTR            D16, [R2]
545F56:  LDRB            R1, [R0,#0x1C]
545F58:  VSTR            S0, [R0,#0x18]
545F5C:  AND.W           R1, R1, #0xD0
545F60:  ORR.W           R1, R1, #0x20 ; ' '
545F64:  STRB            R1, [R0,#0x1C]
545F66:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x545F6E)
545F68:  LDR             R2, [R4]
545F6A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
545F6C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
545F6E:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds
545F70:  SUBS            R0, R1, R2
545F72:  CMP             R0, #0xA6
545F74:  BCC.W           loc_54607A
545F78:  LDR             R0, [R5,#0x18]
545F7A:  LDR             R2, [R0]
545F7C:  CMP             R2, #7
545F7E:  BGT             loc_54607A
545F80:  STR             R1, [R4]
545F82:  LDR             R1, [R0]
545F84:  CMP             R1, #0
545F86:  BEQ.W           loc_546094
545F8A:  ADD.W           R1, R1, R1,LSL#1
545F8E:  ADD.W           R1, R0, R1,LSL#2
545F92:  VLDR            S0, [R1,#-8]
545F96:  VLDR            S4, [R1,#-4]
545F9A:  VSUB.F32        S8, S20, S0
545F9E:  VLDR            S2, [R1]
545FA2:  VSUB.F32        S6, S18, S4
545FA6:  VSUB.F32        S10, S16, S2
545FAA:  VMUL.F32        S14, S8, S8
545FAE:  VMUL.F32        S12, S6, S6
545FB2:  VSTR            S6, [SP,#0x80+var_58]
545FB6:  VMUL.F32        S1, S10, S10
545FBA:  VSTR            S8, [SP,#0x80+var_5C]
545FBE:  VSTR            S10, [SP,#0x80+var_54]
545FC2:  VADD.F32        S12, S14, S12
545FC6:  VLDR            S14, =0.1225
545FCA:  VADD.F32        S12, S12, S1
545FCE:  VCMPE.F32       S12, S14
545FD2:  VMRS            APSR_nzcv, FPSCR
545FD6:  BLE             loc_5460A4
545FD8:  LDR             R1, [R0]
545FDA:  CMP             R1, #2
545FDC:  BLT             loc_546058
545FDE:  ADD.W           R1, R1, R1,LSL#1
545FE2:  ADD.W           R0, R0, R1,LSL#2
545FE6:  VLDR            S6, [R0,#-0x14]
545FEA:  VLDR            S8, [R0,#-0x10]
545FEE:  VLDR            S10, [R0,#-0xC]
545FF2:  VSUB.F32        S0, S0, S6
545FF6:  VSUB.F32        S4, S4, S8
545FFA:  ADD             R0, SP, #0x80+var_68; this
545FFC:  VSUB.F32        S2, S2, S10
546000:  VSTR            S4, [SP,#0x80+var_64]
546004:  VSTR            S0, [SP,#0x80+var_68]
546008:  VSTR            S2, [SP,#0x80+var_60]
54600C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
546010:  ADD             R0, SP, #0x80+var_5C; this
546012:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
546016:  VLDR            S0, [SP,#0x80+var_5C]
54601A:  VLDR            S6, [SP,#0x80+var_68]
54601E:  VLDR            S2, [SP,#0x80+var_58]
546022:  VLDR            S8, [SP,#0x80+var_64]
546026:  VMUL.F32        S0, S6, S0
54602A:  VLDR            S4, [SP,#0x80+var_54]
54602E:  VMUL.F32        S2, S8, S2
546032:  VLDR            S10, [SP,#0x80+var_60]
546036:  VMUL.F32        S4, S10, S4
54603A:  VADD.F32        S0, S0, S2
54603E:  VLDR            S2, =0.95
546042:  VADD.F32        S0, S0, S4
546046:  VCMPE.F32       S0, S2
54604A:  VMRS            APSR_nzcv, FPSCR
54604E:  ITTTT GE
546050:  LDRGE           R0, [R5,#0x18]
546052:  LDRGE           R1, [R0]
546054:  SUBGE           R1, #1
546056:  STRGE           R1, [R0]
546058:  LDR             R0, [R5,#0x18]
54605A:  LDR             R1, [R0]
54605C:  CMP             R1, #7
54605E:  BGT             loc_5460A4
546060:  ADD.W           R1, R1, R1,LSL#1
546064:  ADD.W           R1, R0, R1,LSL#2
546068:  VSTR            S20, [R1,#4]
54606C:  VSTR            S18, [R1,#8]
546070:  VSTR            S16, [R1,#0xC]
546074:  LDR             R1, [R0]
546076:  ADDS            R1, #1
546078:  B               loc_5460A2
54607A:  LDR             R0, [R5,#8]
54607C:  LDR             R1, [R0]
54607E:  LDR             R1, [R1,#0x14]
546080:  BLX             R1
546082:  CMP             R0, #0xCB
546084:  BNE             loc_54617E
546086:  LDR             R0, [R5,#0x18]
546088:  LDR             R0, [R0]
54608A:  CMP             R0, #1
54608C:  BLE             loc_54617E
54608E:  MOV.W           R4, #0x384
546092:  B               loc_545CFC
546094:  MOVS            R1, #1
546096:  VSTR            S20, [R0,#4]
54609A:  VSTR            S18, [R0,#8]
54609E:  VSTR            S16, [R0,#0xC]
5460A2:  STR             R1, [R0]
5460A4:  LDR             R0, [R5,#0x18]
5460A6:  LDR             R1, [R0]
5460A8:  CMP             R1, #2
5460AA:  BLT             loc_54610A
5460AC:  VLDR            S2, [R0,#4]
5460B0:  ADD.W           R1, R0, #0x10
5460B4:  VLDR            S4, [R0,#8]
5460B8:  MOVS            R2, #1
5460BA:  VLDR            S6, [R0,#0xC]
5460BE:  VLDR            S0, =0.0
5460C2:  VLDR            S8, [R1]
5460C6:  ADDS            R2, #1
5460C8:  VLDR            S10, [R1,#4]
5460CC:  VSUB.F32        S8, S8, S2
5460D0:  VLDR            S12, [R1,#8]
5460D4:  VSUB.F32        S10, S10, S4
5460D8:  ADDS            R1, #0xC
5460DA:  VSUB.F32        S12, S12, S6
5460DE:  VMUL.F32        S1, S8, S8
5460E2:  VMUL.F32        S14, S10, S10
5460E6:  VSTR            S10, [SP,#0x80+var_58]
5460EA:  VMUL.F32        S3, S12, S12
5460EE:  VSTR            S8, [SP,#0x80+var_5C]
5460F2:  VSTR            S12, [SP,#0x80+var_54]
5460F6:  LDR             R3, [R0]
5460F8:  CMP             R2, R3
5460FA:  VADD.F32        S14, S1, S14
5460FE:  VADD.F32        S14, S14, S3
546102:  VADD.F32        S0, S0, S14
546106:  BLT             loc_5460C2
546108:  B               loc_54610E
54610A:  VLDR            S0, =0.0
54610E:  LDRD.W          R0, R1, [R5,#8]
546112:  LDR.W           R2, [R11]
546116:  LDR             R3, [R1,#0x14]
546118:  CMP             R2, #0
54611A:  IT NE
54611C:  ADDNE.W         R9, R2, #0x30 ; '0'
546120:  ADD.W           R2, R3, #0x30 ; '0'
546124:  CMP             R3, #0
546126:  VLDR            S2, [R9]
54612A:  IT EQ
54612C:  ADDEQ           R2, R1, #4
54612E:  VLDR            D16, [R9,#4]
546132:  VLDR            S4, [R2]
546136:  MOVS            R1, #4
546138:  VLDR            D17, [R2,#4]
54613C:  VSUB.F32        S2, S2, S4
546140:  VSUB.F32        D16, D16, D17
546144:  VMUL.F32        D2, D16, D16
546148:  VMUL.F32        S2, S2, S2
54614C:  VADD.F32        S2, S2, S4
546150:  VADD.F32        S2, S2, S5
546154:  VADD.F32        S0, S0, S2
546158:  VLDR            S2, =12.25
54615C:  VCMPE.F32       S0, S2
546160:  VMRS            APSR_nzcv, FPSCR
546164:  IT GT
546166:  MOVGT           R1, #6
546168:  STRH            R1, [R5,#0x1C]
54616A:  LDR             R1, [R0]
54616C:  LDR             R1, [R1,#0x14]
54616E:  BLX             R1
546170:  CMP.W           R0, #0x384
546174:  ITTT EQ
546176:  LDREQ           R0, [R5,#8]
546178:  LDRSHEQ.W       R1, [R5,#0x1C]
54617C:  STREQ           R1, [R0,#8]
54617E:  MOV             R0, R8
546180:  ADD             SP, SP, #0x30 ; '0'
546182:  VPOP            {D8-D13}
546186:  ADD             SP, SP, #4
546188:  POP.W           {R8-R11}
54618C:  POP             {R4-R7,PC}
