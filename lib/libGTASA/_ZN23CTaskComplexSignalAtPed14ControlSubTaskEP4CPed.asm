; =========================================================
; Game Engine Function: _ZN23CTaskComplexSignalAtPed14ControlSubTaskEP4CPed
; Address            : 0x51A14C - 0x51A25A
; =========================================================

51A14C:  PUSH            {R4-R7,LR}
51A14E:  ADD             R7, SP, #0xC
51A150:  PUSH.W          {R11}; float
51A154:  MOV             R4, R0
51A156:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x51A160)
51A158:  MOV             R5, R1
51A15A:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x51A166)
51A15C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
51A15E:  MOV.W           R2, #0x194
51A162:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
51A164:  LDRB            R6, [R4,#0x15]
51A166:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
51A168:  LDR             R1, [R1]; CWorld::Players ...
51A16A:  LDR             R0, [R0]; CWorld::PlayerInFocus
51A16C:  SMULBB.W        R0, R0, R2
51A170:  LDR             R1, [R1,R0]
51A172:  LDR.W           R0, [R1,#0x590]; this
51A176:  CMP             R0, #0
51A178:  ITT NE
51A17A:  LDRNE.W         R1, [R1,#0x484]
51A17E:  ANDSNE.W        R1, R1, #0x100; char *
51A182:  BEQ             loc_51A1DA
51A184:  VLDR            S0, [R0,#0x48]
51A188:  VLDR            S2, [R0,#0x4C]
51A18C:  VMUL.F32        S0, S0, S0
51A190:  VLDR            S4, [R0,#0x50]
51A194:  VMUL.F32        S2, S2, S2
51A198:  VMUL.F32        S4, S4, S4
51A19C:  VADD.F32        S0, S0, S2
51A1A0:  VLDR            S2, =0.04
51A1A4:  VADD.F32        S0, S0, S4
51A1A8:  VCMPE.F32       S0, S2
51A1AC:  VMRS            APSR_nzcv, FPSCR
51A1B0:  BLE             loc_51A1DA
51A1B2:  MOVS            R0, #0
51A1B4:  CBNZ            R6, loc_51A1E6
51A1B6:  CMP             R0, #1
51A1B8:  BNE             loc_51A206
51A1BA:  LDR             R0, =(aGangs - 0x51A1C0); "gangs"
51A1BC:  ADD             R0, PC; "gangs"
51A1BE:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51A1C2:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x51A1C8)
51A1C4:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
51A1C6:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
51A1C8:  ADD.W           R1, R1, R0,LSL#5
51A1CC:  LDRB            R1, [R1,#0x10]; int
51A1CE:  CMP             R1, #1
51A1D0:  BNE             loc_51A1FA
51A1D2:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
51A1D6:  MOVS            R0, #1
51A1D8:  B               loc_51A1F6
51A1DA:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
51A1DE:  EOR.W           R0, R0, #1
51A1E2:  CMP             R6, #0
51A1E4:  BEQ             loc_51A1B6
51A1E6:  CBNZ            R0, loc_51A206
51A1E8:  LDR             R0, =(aGangs - 0x51A1EE); "gangs"
51A1EA:  ADD             R0, PC; "gangs"
51A1EC:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51A1F0:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
51A1F4:  MOVS            R0, #0
51A1F6:  STRB            R0, [R4,#0x15]
51A1F8:  B               loc_51A206
51A1FA:  MOVW            R1, #0x63E7
51A1FE:  ADD             R0, R1; this
51A200:  MOVS            R1, #8; int
51A202:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
51A206:  LDR             R0, [R4,#0xC]
51A208:  CBZ             R0, loc_51A252
51A20A:  LDR             R1, [R5,#0x14]
51A20C:  LDR             R2, [R0,#0x14]
51A20E:  ADD.W           R3, R1, #0x30 ; '0'
51A212:  CMP             R1, #0
51A214:  IT EQ
51A216:  ADDEQ           R3, R5, #4
51A218:  ADD.W           R1, R2, #0x30 ; '0'
51A21C:  CMP             R2, #0
51A21E:  VLDR            S0, [R3]
51A222:  VLDR            S2, [R3,#4]
51A226:  IT EQ
51A228:  ADDEQ           R1, R0, #4
51A22A:  VLDR            S4, [R1]
51A22E:  MOVS            R2, #0; float
51A230:  VLDR            S6, [R1,#4]
51A234:  MOVS            R3, #0; float
51A236:  VSUB.F32        S0, S4, S0
51A23A:  VSUB.F32        S2, S6, S2
51A23E:  VMOV            R0, S0; this
51A242:  VMOV            R1, S2; float
51A246:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
51A24A:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
51A24E:  STR.W           R0, [R5,#0x560]
51A252:  LDR             R0, [R4,#8]
51A254:  POP.W           {R11}
51A258:  POP             {R4-R7,PC}
