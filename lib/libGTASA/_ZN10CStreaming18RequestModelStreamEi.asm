; =========================================================
; Game Engine Function: _ZN10CStreaming18RequestModelStreamEi
; Address            : 0x2D3F5C - 0x2D433A
; =========================================================

2D3F5C:  PUSH            {R4-R7,LR}
2D3F5E:  ADD             R7, SP, #0xC
2D3F60:  PUSH.W          {R8-R11}
2D3F64:  SUB             SP, SP, #0x54
2D3F66:  STR             R0, [SP,#0x70+var_4C]
2D3F68:  BLX             j__Z19CdStreamGetLastPosnv; CdStreamGetLastPosn(void)
2D3F6C:  MOVS            R1, #1; int
2D3F6E:  BLX             j__ZN10CStreaming15GetNextFileOnCdEib; CStreaming::GetNextFileOnCd(int,bool)
2D3F72:  MOV             R6, R0
2D3F74:  ADDS            R0, R6, #1
2D3F76:  BEQ.W           loc_2D432C
2D3F7A:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D3F86)
2D3F7E:  LDR.W           R1, =(_ZN10CStreaming8ms_filesE_ptr - 0x2D3F88)
2D3F82:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D3F84:  ADD             R1, PC; _ZN10CStreaming8ms_filesE_ptr
2D3F86:  LDR             R4, [R0]; CStreaming::ms_aInfoForModel ...
2D3F88:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D3F94)
2D3F8C:  LDR.W           R10, [R1]; CStreaming::ms_files ...
2D3F90:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D3F92:  LDR.W           R11, [R0]; CStreaming::ms_aInfoForModel ...
2D3F96:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D3F9E)
2D3F9A:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D3F9C:  LDR.W           R9, [R0]; CStreaming::ms_aInfoForModel ...
2D3FA0:  STR             R0, [SP,#0x70+var_20]
2D3FA2:  MOVW            R0, #0x63E7
2D3FA6:  ADD.W           R5, R6, R6,LSL#2
2D3FAA:  SUBS            R0, R6, R0; this
2D3FAC:  CMP             R0, #0xB3
2D3FAE:  BHI             loc_2D3FFE
2D3FB0:  ADD.W           R1, R4, R5,LSL#2
2D3FB4:  LDRB            R1, [R1,#6]
2D3FB6:  ANDS.W          R1, R1, #0xE; int
2D3FBA:  BNE             loc_2D3FFE
2D3FBC:  BLX             j__ZN10CStreaming29AreAnimsUsedByRequestedModelsEi; CStreaming::AreAnimsUsedByRequestedModels(int)
2D3FC0:  CBNZ            R0, loc_2D3FFE
2D3FC2:  MOV             R0, R6; this
2D3FC4:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D3FC8:  ADD.W           R0, R11, R5,LSL#2
2D3FCC:  MOV             R1, R8
2D3FCE:  LDR             R0, [R0,#0xC]
2D3FD0:  CBZ             R0, loc_2D3FEA
2D3FD2:  ADD.W           R1, R9, R5,LSL#2
2D3FD6:  BL              sub_439768
2D3FDA:  ADD.W           R2, R2, R2,LSL#1
2D3FDE:  ADD.W           R2, R10, R2,LSL#4
2D3FE2:  LDR             R2, [R2,#0x2C]; bool
2D3FE4:  ADD             R1, R2
2D3FE6:  STR             R1, [SP,#0x70+var_20]
2D3FE8:  MOV             R1, R0
2D3FEA:  LDR             R0, [SP,#0x70+var_20]
2D3FEC:  MOV             R8, R1
2D3FEE:  ADD             R0, R1; this
2D3FF0:  MOVS            R1, #1; int
2D3FF2:  BLX             j__ZN10CStreaming15GetNextFileOnCdEib; CStreaming::GetNextFileOnCd(int,bool)
2D3FF6:  MOV             R6, R0
2D3FF8:  ADDS            R0, R6, #1
2D3FFA:  BNE             loc_2D3FA2
2D3FFC:  B               loc_2D432C
2D3FFE:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D4006)
2D4000:  MOV             R12, R8
2D4002:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D4004:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D4006:  ADD.W           R0, R0, R5,LSL#2
2D400A:  LDR             R0, [R0,#0xC]
2D400C:  CBZ             R0, loc_2D4032
2D400E:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D4018)
2D4010:  MOV             R12, R0
2D4012:  LDR             R2, =(_ZN10CStreaming8ms_filesE_ptr - 0x2D401A)
2D4014:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D4016:  ADD             R2, PC; _ZN10CStreaming8ms_filesE_ptr
2D4018:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2D401A:  LDR             R2, [R2]; CStreaming::ms_files ...
2D401C:  ADD.W           R1, R1, R5,LSL#2
2D4020:  BL              sub_43977A
2D4024:  ADD.W           R3, R3, R3,LSL#1
2D4028:  ADD.W           R2, R2, R3,LSL#4
2D402C:  LDR             R2, [R2,#0x2C]
2D402E:  ADD             R1, R2
2D4030:  STR             R1, [SP,#0x70+var_20]
2D4032:  LDR             R0, =(_ZN10CStreaming22ms_streamingBufferSizeE_ptr - 0x2D4038)
2D4034:  ADD             R0, PC; _ZN10CStreaming22ms_streamingBufferSizeE_ptr
2D4036:  LDR             R0, [R0]; CStreaming::ms_streamingBufferSize ...
2D4038:  LDR             R0, [R0]; CStreaming::ms_streamingBufferSize
2D403A:  CMP             R12, R0
2D403C:  BLS             loc_2D4060
2D403E:  LDR             R0, [SP,#0x70+var_4C]
2D4040:  CMP             R0, #1
2D4042:  BEQ.W           loc_2D432C
2D4046:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D404C)
2D4048:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D404A:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D404C:  LDR.W           R0, [R0,#(dword_792D50 - 0x792C38)]
2D4050:  CMP             R0, #0
2D4052:  BNE.W           loc_2D432C
2D4056:  LDR             R0, =(_ZN10CStreaming19ms_bLoadingBigModelE_ptr - 0x2D405E)
2D4058:  MOVS            R1, #1
2D405A:  ADD             R0, PC; _ZN10CStreaming19ms_bLoadingBigModelE_ptr
2D405C:  LDR             R0, [R0]; CStreaming::ms_bLoadingBigModel ...
2D405E:  STRB            R1, [R0]; CStreaming::ms_bLoadingBigModel
2D4060:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D406C)
2D4062:  MOVS            R1, #0x98
2D4064:  LDR             R2, [SP,#0x70+var_4C]
2D4066:  MOVS            R3, #0
2D4068:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D406A:  MOVW            LR, #0xFFFF
2D406E:  MOV.W           R8, #0
2D4072:  MOV.W           R10, #0
2D4076:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D4078:  MLA.W           R0, R2, R1, R0
2D407C:  LDR             R1, =(_ZN10CStreaming22ms_numPriorityRequestsE_ptr - 0x2D4086)
2D407E:  MOVW            R2, #0x4E1F
2D4082:  ADD             R1, PC; _ZN10CStreaming22ms_numPriorityRequestsE_ptr
2D4084:  STR             R0, [SP,#0x70+var_38]
2D4086:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D408C)
2D4088:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D408A:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D408C:  STR             R0, [SP,#0x70+var_2C]
2D408E:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D4094)
2D4090:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D4092:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D4094:  STR             R0, [SP,#0x70+var_30]
2D4096:  LDR             R0, [R1]; CStreaming::ms_numPriorityRequests ...
2D4098:  STR             R0, [SP,#0x70+var_34]
2D409A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D40A2)
2D409C:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D40A4)
2D409E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D40A0:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D40A2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2D40A4:  STR             R0, [SP,#0x70+var_54]
2D40A6:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D40AC)
2D40A8:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D40AA:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D40AC:  STR             R0, [SP,#0x70+var_64]
2D40AE:  LDR             R0, =(_ZN10CStreaming22ms_streamingBufferSizeE_ptr - 0x2D40B4)
2D40B0:  ADD             R0, PC; _ZN10CStreaming22ms_streamingBufferSizeE_ptr
2D40B2:  LDR             R0, [R0]; CStreaming::ms_streamingBufferSize ...
2D40B4:  STR             R0, [SP,#0x70+var_58]
2D40B6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D40BC)
2D40B8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D40BA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2D40BC:  STR             R0, [SP,#0x70+var_5C]
2D40BE:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D40C4)
2D40C0:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D40C2:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D40C4:  STR             R0, [SP,#0x70+var_3C]
2D40C6:  LDR             R0, [R1]; CStreamingInfo::ms_pArrayBase ...
2D40C8:  STR             R0, [SP,#0x70+var_40]
2D40CA:  LDR             R0, =(_ZN10CStreaming21ms_numModelsRequestedE_ptr - 0x2D40D2)
2D40CC:  LDR             R1, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x2D40D4)
2D40CE:  ADD             R0, PC; _ZN10CStreaming21ms_numModelsRequestedE_ptr
2D40D0:  ADD             R1, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
2D40D2:  LDR             R0, [R0]; CStreaming::ms_numModelsRequested ...
2D40D4:  STR             R0, [SP,#0x70+var_44]
2D40D6:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D40DC)
2D40D8:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D40DA:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D40DC:  STR             R0, [SP,#0x70+var_48]
2D40DE:  LDR             R0, =(_ZN10CStreaming22ms_numPriorityRequestsE_ptr - 0x2D40E4)
2D40E0:  ADD             R0, PC; _ZN10CStreaming22ms_numPriorityRequestsE_ptr
2D40E2:  LDR             R0, [R0]; CStreaming::ms_numPriorityRequests ...
2D40E4:  STR             R0, [SP,#0x70+var_60]
2D40E6:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D40EC)
2D40E8:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D40EA:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D40EC:  STR             R0, [SP,#0x70+var_6C]
2D40EE:  LDR             R0, [R1]; CCutsceneMgr::ms_cutsceneProcessing ...
2D40F0:  STR             R0, [SP,#0x70+var_68]
2D40F2:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D40F8)
2D40F4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D40F6:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D40F8:  STR             R0, [SP,#0x70+var_50]
2D40FA:  MOVS            R0, #0
2D40FC:  STR             R0, [SP,#0x70+var_28]
2D40FE:  ADD.W           R9, R6, R6,LSL#2
2D4102:  LDR             R0, [SP,#0x70+var_2C]
2D4104:  ADD.W           R11, R0, R9,LSL#2
2D4108:  LDRB.W          R0, [R11,#0x10]!
2D410C:  CMP             R0, #2
2D410E:  BNE.W           loc_2D42C4
2D4112:  LDR             R0, [SP,#0x70+var_30]
2D4114:  LDR             R1, [SP,#0x70+var_34]
2D4116:  ADD.W           R0, R0, R9,LSL#2
2D411A:  LDR             R0, [R0,#0xC]
2D411C:  LDR             R1, [R1]
2D411E:  CMP             R0, #0
2D4120:  IT NE
2D4122:  MOVNE           R12, R0
2D4124:  CBZ             R1, loc_2D4134
2D4126:  LDR             R0, [SP,#0x70+var_50]
2D4128:  ADD.W           R0, R0, R9,LSL#2
2D412C:  LDRB            R0, [R0,#6]
2D412E:  LSLS            R0, R0, #0x1B
2D4130:  BPL.W           loc_2D42C4
2D4134:  CMP             R6, R2
2D4136:  BGT             loc_2D41A0
2D4138:  LDR             R0, [SP,#0x70+var_54]
2D413A:  MOV             R5, R12
2D413C:  STR             R3, [SP,#0x70+var_24]
2D413E:  LDR.W           R4, [R0,R6,LSL#2]
2D4142:  LDR             R0, [SP,#0x70+var_28]
2D4144:  LSLS            R0, R0, #0x1F
2D4146:  BEQ             loc_2D4156
2D4148:  LDR             R0, [R4]
2D414A:  LDR             R1, [R0,#0x14]
2D414C:  MOV             R0, R4
2D414E:  BLX             R1
2D4150:  CMP             R0, #7
2D4152:  BEQ.W           loc_2D4334
2D4156:  MOVS.W          R0, R8,LSL#31
2D415A:  BEQ             loc_2D416A
2D415C:  LDR             R0, [R4]
2D415E:  LDR             R1, [R0,#0x14]
2D4160:  MOV             R0, R4
2D4162:  BLX             R1
2D4164:  CMP             R0, #6
2D4166:  BEQ.W           loc_2D4334
2D416A:  LDR             R0, [R4]
2D416C:  LDR             R1, [R0,#0x3C]
2D416E:  MOV             R0, R4
2D4170:  BLX             R1
2D4172:  LDR             R3, [SP,#0x70+var_24]
2D4174:  ADDS            R1, R0, #1
2D4176:  MOV             R12, R5
2D4178:  MOVW            R2, #0x4E1F
2D417C:  MOVW            LR, #0xFFFF
2D4180:  BEQ             loc_2D41D0
2D4182:  ADD.W           R0, R0, R0,LSL#2
2D4186:  LDR             R1, [SP,#0x70+var_64]
2D4188:  ADD.W           R0, R1, R0,LSL#2
2D418C:  MOV             R1, #0x7CE1C
2D4194:  LDRB            R0, [R0,R1]
2D4196:  ORR.W           R0, R0, #2
2D419A:  CMP             R0, #3
2D419C:  BEQ             loc_2D41D0
2D419E:  B               loc_2D42C4
2D41A0:  MOVW            R0, #0x63E7
2D41A4:  SUBS            R0, R6, R0
2D41A6:  CMP             R0, #0xB3
2D41A8:  BHI             loc_2D41BE
2D41AA:  LDR             R0, [SP,#0x70+var_68]
2D41AC:  LDRB            R0, [R0]
2D41AE:  CMP             R0, #0
2D41B0:  ITTT EQ
2D41B2:  LDREQ           R0, [SP,#0x70+var_6C]
2D41B4:  LDRBEQ.W        R0, [R0,#0x9C]
2D41B8:  CMPEQ           R0, #1
2D41BA:  BEQ             loc_2D41D0
2D41BC:  B               loc_2D42C4
2D41BE:  CMP.W           R12, #0xC8
2D41C2:  MOV.W           R0, #0
2D41C6:  IT HI
2D41C8:  MOVHI           R0, #1
2D41CA:  TST.W           R8, R0
2D41CE:  BNE             loc_2D42C4
2D41D0:  LDR             R0, [SP,#0x70+var_38]
2D41D2:  ADD.W           R1, R12, R3
2D41D6:  CMP.W           R10, #1
2D41DA:  STR.W           R6, [R0,R10,LSL#2]
2D41DE:  ADD.W           R0, R0, R10,LSL#2
2D41E2:  STR             R3, [R0,#0x40]
2D41E4:  BLT             loc_2D41EE
2D41E6:  LDR             R0, [SP,#0x70+var_58]
2D41E8:  LDR             R0, [R0]
2D41EA:  CMP             R1, R0
2D41EC:  BGT             loc_2D42C4
2D41EE:  CMP             R6, R2
2D41F0:  STR             R1, [SP,#0x70+var_24]
2D41F2:  BGT             loc_2D4234
2D41F4:  LDR             R5, [SP,#0x70+var_5C]
2D41F6:  MOV             R4, R12
2D41F8:  LDR.W           R0, [R5,R6,LSL#2]
2D41FC:  LDR             R1, [R0]
2D41FE:  LDR             R1, [R1,#0x14]
2D4200:  BLX             R1
2D4202:  LDR.W           R1, [R5,R6,LSL#2]
2D4206:  CMP             R0, #7
2D4208:  MOV.W           R0, #0
2D420C:  LDR             R2, [R1]
2D420E:  IT EQ
2D4210:  MOVEQ           R0, #1
2D4212:  LDR             R3, [SP,#0x70+var_28]
2D4214:  LDR             R2, [R2,#0x14]
2D4216:  ORRS            R3, R0
2D4218:  MOV             R0, R1
2D421A:  STR             R3, [SP,#0x70+var_28]
2D421C:  BLX             R2
2D421E:  CMP             R0, #6
2D4220:  MOV.W           R0, #0
2D4224:  MOVW            LR, #0xFFFF
2D4228:  MOVW            R1, #0x4E1F
2D422C:  MOV             R12, R4
2D422E:  IT EQ
2D4230:  MOVEQ           R0, #1
2D4232:  B               loc_2D4240
2D4234:  CMP.W           R12, #0xC8
2D4238:  MOV.W           R0, #0
2D423C:  IT HI
2D423E:  MOVHI           R0, #1
2D4240:  LDR             R5, [SP,#0x70+var_3C]
2D4242:  MOVS            R1, #3
2D4244:  STRB.W          R1, [R11]
2D4248:  LDR             R4, [SP,#0x70+var_40]
2D424A:  ADD.W           R1, R5, R9,LSL#2
2D424E:  LDRSH.W         R2, [R5,R9,LSL#2]
2D4252:  LDRH            R6, [R1,#2]
2D4254:  LDR             R3, [R4]
2D4256:  ADD.W           R2, R2, R2,LSL#2
2D425A:  ADD.W           R2, R3, R2,LSL#2
2D425E:  STRH            R6, [R2,#2]
2D4260:  LDRSH.W         R2, [R1,#2]
2D4264:  LDR             R3, [R4]
2D4266:  LDRH.W          R6, [R5,R9,LSL#2]
2D426A:  ADD.W           R2, R2, R2,LSL#2
2D426E:  STRH.W          R6, [R3,R2,LSL#2]
2D4272:  LDR             R3, [SP,#0x70+var_44]
2D4274:  STRH.W          LR, [R5,R9,LSL#2]
2D4278:  LDR             R2, [R3]
2D427A:  STRH.W          LR, [R1,#2]
2D427E:  SUBS            R2, #1
2D4280:  STR             R2, [R3]
2D4282:  LDRB.W          R2, [R1,#6]!
2D4286:  TST.W           R2, #0x10
2D428A:  BEQ             loc_2D429A
2D428C:  AND.W           R2, R2, #0xEF
2D4290:  STRB            R2, [R1]
2D4292:  LDR             R2, [SP,#0x70+var_60]
2D4294:  LDR             R1, [R2]
2D4296:  SUBS            R1, #1
2D4298:  STR             R1, [R2]
2D429A:  LDR             R5, [SP,#0x70+var_24]
2D429C:  ADD.W           R1, R10, #1
2D42A0:  CMP.W           R10, #0xE
2D42A4:  BGT             loc_2D42C8
2D42A6:  ORR.W           R8, R8, R0
2D42AA:  LDR             R0, [SP,#0x70+var_48]
2D42AC:  MOV             R3, R5
2D42AE:  MOV             R10, R1
2D42B0:  ADD.W           R0, R0, R9,LSL#2
2D42B4:  MOVW            R2, #0x4E1F
2D42B8:  LDRH            R0, [R0,#4]
2D42BA:  CMP             R0, LR
2D42BC:  SXTH            R6, R0
2D42BE:  BNE.W           loc_2D40FE
2D42C2:  B               loc_2D42C8
2D42C4:  MOV             R1, R10
2D42C6:  MOV             R5, R3
2D42C8:  LDR             R4, [SP,#0x70+var_4C]
2D42CA:  CMP             R1, #0xF
2D42CC:  BGT             loc_2D42EA
2D42CE:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D42D6)
2D42D0:  MOVS            R2, #0x98
2D42D2:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D42D4:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D42D6:  MLA.W           R0, R4, R2, R0
2D42DA:  MOVS            R2, #0xFF
2D42DC:  ADD.W           R0, R0, R1,LSL#2
2D42E0:  RSB.W           R1, R1, #0x10
2D42E4:  LSLS            R1, R1, #2
2D42E6:  BLX             j___aeabi_memset8_0
2D42EA:  LDR             R0, =(_ZN10CStreaming19ms_pStreamingBufferE_ptr - 0x2D42F4)
2D42EC:  MOV             R3, R5; unsigned int
2D42EE:  LDR             R6, [SP,#0x70+var_20]
2D42F0:  ADD             R0, PC; _ZN10CStreaming19ms_pStreamingBufferE_ptr
2D42F2:  LDR             R0, [R0]; CStreaming::ms_pStreamingBuffer ...
2D42F4:  MOV             R2, R6; unsigned int
2D42F6:  LDR.W           R1, [R0,R4,LSL#2]; void *
2D42FA:  MOV             R0, R4; int
2D42FC:  BLX             j__Z12CdStreamReadiPvjj; CdStreamRead(int,void *,uint,uint)
2D4300:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D430C)
2D4302:  MOVS            R1, #0x98
2D4304:  LDR             R2, =(byte_792FB4 - 0x2D430E)
2D4306:  MOVS            R3, #1
2D4308:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D430A:  ADD             R2, PC; byte_792FB4
2D430C:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D430E:  MLA.W           R1, R4, R1, R0
2D4312:  MOVS            R0, #0
2D4314:  STRD.W          R3, R0, [R1,#0x80]
2D4318:  STRD.W          R6, R5, [R1,#0x88]
2D431C:  STR.W           R0, [R1,#0x90]
2D4320:  LDRB            R1, [R2]
2D4322:  CMP             R1, #1
2D4324:  BNE             loc_2D432C
2D4326:  LDR             R1, =(byte_792FB4 - 0x2D432C)
2D4328:  ADD             R1, PC; byte_792FB4
2D432A:  STRB            R0, [R1]
2D432C:  ADD             SP, SP, #0x54 ; 'T'
2D432E:  POP.W           {R8-R11}
2D4332:  POP             {R4-R7,PC}
2D4334:  MOV             R1, R10
2D4336:  LDR             R5, [SP,#0x70+var_24]
2D4338:  B               loc_2D42C8
