; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight18FindTargetOnGroundEP4CPed
; Address            : 0x4DAF98 - 0x4DB390
; =========================================================

4DAF98:  PUSH            {R4-R7,LR}
4DAF9A:  ADD             R7, SP, #0xC
4DAF9C:  PUSH.W          {R8-R11}
4DAFA0:  SUB             SP, SP, #4
4DAFA2:  VPUSH           {D8-D15}
4DAFA6:  SUB             SP, SP, #0x10
4DAFA8:  MOV             R10, R1
4DAFAA:  MOV             R5, R0
4DAFAC:  BLX             j__ZN13CLocalisation15KickingWhenDownEv; CLocalisation::KickingWhenDown(void)
4DAFB0:  MOV             R1, R0
4DAFB2:  MOVS            R0, #0
4DAFB4:  CMP             R1, #0
4DAFB6:  BEQ.W           loc_4DB382
4DAFBA:  LDR.W           R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DAFC8)
4DAFBE:  STRD.W          R0, R0, [SP,#0x70+var_6C]
4DAFC2:  STR             R0, [SP,#0x70+var_64]
4DAFC4:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DAFC6:  LDR.W           R2, =(_ZN16CTaskSimpleFight12m_aHitOffsetE_ptr - 0x4DAFD2)
4DAFCA:  LDRSB.W         R0, [R5,#0x24]
4DAFCE:  ADD             R2, PC; _ZN16CTaskSimpleFight12m_aHitOffsetE_ptr
4DAFD0:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4DAFD2:  VLDR            S4, =0.2
4DAFD6:  ADD.W           R0, R0, R0,LSL#4
4DAFDA:  LDR             R2, [R2]; CTaskSimpleFight::m_aHitOffset ...
4DAFDC:  ADD.W           R0, R1, R0,LSL#3
4DAFE0:  VLDR            S0, [R2,#0x1C]
4DAFE4:  VLDR            S2, [R0,#-0x1E4]
4DAFE8:  LDR             R0, [R5,#0x18]; this
4DAFEA:  VADD.F32        S0, S0, S2
4DAFEE:  VLDR            S2, =0.4
4DAFF2:  CMP             R0, #0
4DAFF4:  VADD.F32        S16, S0, S2
4DAFF8:  VADD.F32        S18, S0, S4
4DAFFC:  BEQ.W           loc_4DB190
4DB000:  LDRB.W          R1, [R0,#0x3A]
4DB004:  AND.W           R1, R1, #7
4DB008:  CMP             R1, #3
4DB00A:  BNE.W           loc_4DB17E
4DB00E:  ADD             R1, SP, #0x70+var_6C
4DB010:  MOVS            R2, #3
4DB012:  MOVS            R3, #0
4DB014:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4DB018:  LDR             R0, [R5,#0x18]; this
4DB01A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4DB01E:  CMP             R0, #1
4DB020:  BNE             loc_4DB060
4DB022:  LDR.W           R0, [R10,#0x14]
4DB026:  VLDR            S0, =-0.2
4DB02A:  ADD.W           R1, R0, #0x30 ; '0'
4DB02E:  CMP             R0, #0
4DB030:  IT EQ
4DB032:  ADDEQ.W         R1, R10, #4
4DB036:  VLDR            S2, [R1,#8]
4DB03A:  VADD.F32        S0, S2, S0
4DB03E:  VLDR            S2, [SP,#0x70+var_64]
4DB042:  VCMPE.F32       S2, S0
4DB046:  VMRS            APSR_nzcv, FPSCR
4DB04A:  BLT             loc_4DB060
4DB04C:  LDR             R0, [R5,#0x18]
4DB04E:  LDRB.W          R0, [R0,#0x487]
4DB052:  LSLS            R0, R0, #0x1D
4DB054:  BPL.W           loc_4DB188
4DB058:  VLDR            S0, =-0.4
4DB05C:  VADD.F32        S16, S16, S0
4DB060:  LDR             R0, [R5,#0x18]
4DB062:  LDR.W           R0, [R0,#0x440]
4DB066:  ADDS            R0, #4; this
4DB068:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4DB06C:  MOV             R6, R0
4DB06E:  CBZ             R6, loc_4DB096
4DB070:  LDR             R0, [R6]
4DB072:  LDR             R1, [R0,#0x14]
4DB074:  MOV             R0, R6
4DB076:  BLX             R1
4DB078:  CMP             R0, #0xCF
4DB07A:  BNE             loc_4DB096
4DB07C:  LDR             R0, [R6,#0x14]
4DB07E:  CBZ             R0, loc_4DB096
4DB080:  LDR             R1, [R0,#0x14]
4DB082:  VLDR            S0, [R0,#0x20]
4DB086:  VLDR            S2, [R1,#0x10]
4DB08A:  VCMPE.F32       S0, S2
4DB08E:  VMRS            APSR_nzcv, FPSCR
4DB092:  BLT.W           loc_4DB380
4DB096:  LDR             R6, [R5,#0x18]
4DB098:  ADD.W           R4, R10, #4
4DB09C:  LDR.W           R1, [R10,#0x14]
4DB0A0:  ADD.W           R8, R6, #4
4DB0A4:  MOV             R2, R4
4DB0A6:  LDR             R0, [R6,#0x14]
4DB0A8:  CMP             R1, #0
4DB0AA:  IT NE
4DB0AC:  ADDNE.W         R2, R1, #0x30 ; '0'
4DB0B0:  MOV             R1, R8
4DB0B2:  CMP             R0, #0
4DB0B4:  VLDR            S0, [R2]
4DB0B8:  IT NE
4DB0BA:  ADDNE.W         R1, R0, #0x30 ; '0'
4DB0BE:  VLDR            D16, [R2,#4]
4DB0C2:  VLDR            S2, [R1]
4DB0C6:  CMP             R0, #0
4DB0C8:  VLDR            D17, [R1,#4]
4DB0CC:  VSUB.F32        S20, S2, S0
4DB0D0:  VSUB.F32        D11, D17, D16
4DB0D4:  BNE             loc_4DB0E6
4DB0D6:  MOV             R0, R6; this
4DB0D8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4DB0DC:  LDR             R1, [R6,#0x14]; CMatrix *
4DB0DE:  MOV             R0, R8; this
4DB0E0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4DB0E4:  LDR             R0, [R6,#0x14]
4DB0E6:  VLDR            S0, [R0,#0x10]
4DB0EA:  VLDR            D16, [R0,#0x14]
4DB0EE:  VMUL.F32        S0, S20, S0
4DB0F2:  VMUL.F32        D1, D11, D16
4DB0F6:  VADD.F32        S0, S0, S2
4DB0FA:  VADD.F32        S0, S0, S3
4DB0FE:  VABS.F32        S0, S0
4DB102:  VCMPE.F32       S0, S16
4DB106:  VMRS            APSR_nzcv, FPSCR
4DB10A:  BGE             loc_4DB188
4DB10C:  LDR             R6, [R5,#0x18]
4DB10E:  LDR.W           R1, [R10,#0x14]
4DB112:  ADD.W           R8, R6, #4
4DB116:  LDR             R0, [R6,#0x14]
4DB118:  CMP             R1, #0
4DB11A:  IT NE
4DB11C:  ADDNE.W         R4, R1, #0x30 ; '0'
4DB120:  MOV             R1, R8
4DB122:  CMP             R0, #0
4DB124:  VLDR            S0, [R4]
4DB128:  IT NE
4DB12A:  ADDNE.W         R1, R0, #0x30 ; '0'
4DB12E:  VLDR            D16, [R4,#4]
4DB132:  VLDR            S2, [R1]
4DB136:  CMP             R0, #0
4DB138:  VLDR            D17, [R1,#4]
4DB13C:  VSUB.F32        S20, S2, S0
4DB140:  VSUB.F32        D11, D17, D16
4DB144:  BNE             loc_4DB156
4DB146:  MOV             R0, R6; this
4DB148:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4DB14C:  LDR             R1, [R6,#0x14]; CMatrix *
4DB14E:  MOV             R0, R8; this
4DB150:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4DB154:  LDR             R0, [R6,#0x14]
4DB156:  VLDR            S0, [R0]
4DB15A:  VLDR            D16, [R0,#4]
4DB15E:  VMUL.F32        S0, S20, S0
4DB162:  VMUL.F32        D1, D11, D16
4DB166:  VADD.F32        S0, S0, S2
4DB16A:  VADD.F32        S0, S0, S3
4DB16E:  VABS.F32        S0, S0
4DB172:  VCMPE.F32       S0, S18
4DB176:  VMRS            APSR_nzcv, FPSCR
4DB17A:  BGE             loc_4DB188
4DB17C:  B               loc_4DB362
4DB17E:  LDR.W           R1, [R10,#0x56C]
4DB182:  CMP             R0, R1
4DB184:  BEQ.W           loc_4DB362
4DB188:  LDR             R0, [R5,#0x18]
4DB18A:  CMP             R0, #0
4DB18C:  BNE.W           loc_4DB380
4DB190:  MOV             R0, R10; this
4DB192:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DB196:  CMP             R0, #1
4DB198:  BNE.W           loc_4DB380
4DB19C:  VLDR            S22, =3.1416
4DB1A0:  ADD.W           R11, R10, #4
4DB1A4:  LDR.W           R0, [R10,#0x440]
4DB1A8:  ADD.W           R9, SP, #0x70+var_6C
4DB1AC:  VMOV.F32        S19, S22
4DB1B0:  VLDR            S20, =0.0
4DB1B4:  ADD.W           R4, R0, #0x130
4DB1B8:  VLDR            S24, =-3.1416
4DB1BC:  VLDR            S26, =6.2832
4DB1C0:  MOVS            R5, #0
4DB1C2:  VLDR            S28, =1.0472
4DB1C6:  MOV.W           R8, #0
4DB1CA:  VLDR            S30, =-6.2832
4DB1CE:  ADDW            R1, R10, #0x55C
4DB1D2:  VLDR            S17, =-0.2
4DB1D6:  STR             R1, [SP,#0x70+var_70]
4DB1D8:  LDR.W           R6, [R4,R5,LSL#2]
4DB1DC:  CMP             R6, #0
4DB1DE:  BEQ.W           loc_4DB34C
4DB1E2:  MOV             R0, R6; this
4DB1E4:  MOV             R1, R9
4DB1E6:  MOVS            R2, #3
4DB1E8:  MOVS            R3, #0
4DB1EA:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4DB1EE:  LDR.W           R0, [R6,#0x44C]
4DB1F2:  CMP             R0, #0x37 ; '7'
4DB1F4:  BNE             loc_4DB1FC
4DB1F6:  LDR.W           R1, [R10,#0x14]
4DB1FA:  B               loc_4DB222
4DB1FC:  LDR.W           R1, [R10,#0x14]
4DB200:  MOV             R0, R11
4DB202:  CMP             R1, #0
4DB204:  IT NE
4DB206:  ADDNE.W         R0, R1, #0x30 ; '0'
4DB20A:  VLDR            S2, [SP,#0x70+var_64]
4DB20E:  VLDR            S0, [R0,#8]
4DB212:  VADD.F32        S0, S0, S17
4DB216:  VCMPE.F32       S2, S0
4DB21A:  VMRS            APSR_nzcv, FPSCR
4DB21E:  BGE.W           loc_4DB34C
4DB222:  LDR             R0, [R6,#0x14]
4DB224:  CMP             R1, #0
4DB226:  MOV             R2, R11
4DB228:  IT NE
4DB22A:  ADDNE.W         R2, R1, #0x30 ; '0'
4DB22E:  ADD.W           R1, R0, #0x30 ; '0'
4DB232:  CMP             R0, #0
4DB234:  VLDR            S2, [R2]
4DB238:  VLDR            S0, [R2,#4]
4DB23C:  VLDR            S4, [R2,#8]
4DB240:  IT EQ
4DB242:  ADDEQ           R1, R6, #4
4DB244:  VLDR            S6, [R1]
4DB248:  VLDR            S8, [R1,#4]
4DB24C:  VSUB.F32        S2, S6, S2
4DB250:  VLDR            S6, [R0,#0x10]
4DB254:  VSUB.F32        S0, S8, S0
4DB258:  VLDR            S8, [R0,#0x14]
4DB25C:  VLDR            S10, [R1,#8]
4DB260:  VLDR            S12, [R0,#0x18]
4DB264:  VSUB.F32        S4, S10, S4
4DB268:  VMUL.F32        S6, S2, S6
4DB26C:  VMUL.F32        S8, S0, S8
4DB270:  VMUL.F32        S10, S4, S12
4DB274:  VADD.F32        S6, S6, S8
4DB278:  VADD.F32        S6, S6, S10
4DB27C:  VABS.F32        S6, S6
4DB280:  VCMPE.F32       S6, S16
4DB284:  VMRS            APSR_nzcv, FPSCR
4DB288:  BGE             loc_4DB34C
4DB28A:  VLDR            S6, [R0]
4DB28E:  VLDR            S8, [R0,#4]
4DB292:  VMUL.F32        S6, S2, S6
4DB296:  VLDR            S10, [R0,#8]
4DB29A:  VMUL.F32        S8, S0, S8
4DB29E:  VMUL.F32        S4, S4, S10
4DB2A2:  VADD.F32        S6, S6, S8
4DB2A6:  VADD.F32        S4, S6, S4
4DB2AA:  VABS.F32        S4, S4
4DB2AE:  VCMPE.F32       S4, S18
4DB2B2:  VMRS            APSR_nzcv, FPSCR
4DB2B6:  BGE             loc_4DB34C
4DB2B8:  VMOV            R0, S2
4DB2BC:  VMOV            R1, S0; x
4DB2C0:  EOR.W           R0, R0, #0x80000000; y
4DB2C4:  BLX             atan2f
4DB2C8:  VMOV            S0, R0
4DB2CC:  LDR             R0, [SP,#0x70+var_70]
4DB2CE:  VLDR            S2, [R0]
4DB2D2:  VSUB.F32        S2, S0, S2
4DB2D6:  VCMPE.F32       S2, S24
4DB2DA:  VMRS            APSR_nzcv, FPSCR
4DB2DE:  BGE             loc_4DB2E6
4DB2E0:  VADD.F32        S2, S2, S26
4DB2E4:  B               loc_4DB2F4
4DB2E6:  VCMPE.F32       S2, S22
4DB2EA:  VMRS            APSR_nzcv, FPSCR
4DB2EE:  IT GT
4DB2F0:  VADDGT.F32      S2, S2, S30
4DB2F4:  VABS.F32        S2, S2
4DB2F8:  VCMPE.F32       S2, S28
4DB2FC:  VMRS            APSR_nzcv, FPSCR
4DB300:  BGE             loc_4DB34C
4DB302:  CMP.W           R8, #0
4DB306:  BEQ             loc_4DB342
4DB308:  ADDW            R0, R8, #0x544
4DB30C:  VLDR            S4, [R0]
4DB310:  VCMPE.F32       S4, #0.0
4DB314:  VMRS            APSR_nzcv, FPSCR
4DB318:  BLE             loc_4DB326
4DB31A:  VCMPE.F32       S2, S19
4DB31E:  VMRS            APSR_nzcv, FPSCR
4DB322:  BLT             loc_4DB342
4DB324:  B               loc_4DB34C
4DB326:  VCMPE.F32       S2, S19
4DB32A:  VMRS            APSR_nzcv, FPSCR
4DB32E:  BLT             loc_4DB342
4DB330:  ADDW            R0, R6, #0x544
4DB334:  VLDR            S4, [R0]
4DB338:  VCMPE.F32       S4, #0.0
4DB33C:  VMRS            APSR_nzcv, FPSCR
4DB340:  BLE             loc_4DB34C
4DB342:  VMOV.F32        S20, S0
4DB346:  MOV             R8, R6
4DB348:  VMOV.F32        S19, S2
4DB34C:  ADDS            R5, #1
4DB34E:  CMP             R5, #0x10
4DB350:  BNE.W           loc_4DB1D8
4DB354:  CMP.W           R8, #0
4DB358:  BEQ             loc_4DB366
4DB35A:  ADD.W           R0, R10, #0x560
4DB35E:  VSTR            S20, [R0]
4DB362:  MOVS            R0, #1
4DB364:  B               loc_4DB382
4DB366:  LDR.W           R0, [R10,#0x56C]
4DB36A:  CBZ             R0, loc_4DB380
4DB36C:  LDRB.W          R1, [R0,#0x3A]
4DB370:  AND.W           R1, R1, #7
4DB374:  CMP             R1, #2
4DB376:  ITT EQ
4DB378:  LDREQ.W         R0, [R0,#0x5A0]
4DB37C:  CMPEQ           R0, #0
4DB37E:  BEQ             loc_4DB362
4DB380:  MOVS            R0, #0
4DB382:  ADD             SP, SP, #0x10
4DB384:  VPOP            {D8-D15}
4DB388:  ADD             SP, SP, #4
4DB38A:  POP.W           {R8-R11}
4DB38E:  POP             {R4-R7,PC}
