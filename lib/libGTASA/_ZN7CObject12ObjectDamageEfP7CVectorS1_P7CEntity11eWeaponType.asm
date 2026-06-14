; =========================================================
; Game Engine Function: _ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType
; Address            : 0x453F0C - 0x454330
; =========================================================

453F0C:  PUSH            {R4-R7,LR}
453F0E:  ADD             R7, SP, #0xC
453F10:  PUSH.W          {R8-R11}
453F14:  SUB             SP, SP, #4
453F16:  VPUSH           {D8}
453F1A:  SUB             SP, SP, #0x80
453F1C:  MOV             R4, R0
453F1E:  MOV             R8, R3
453F20:  MOV             R10, R4
453F22:  MOV             R9, R2
453F24:  LDRB.W          R0, [R10,#0x1C]!
453F28:  MOV             R6, R1
453F2A:  TST.W           R0, #1
453F2E:  BEQ.W           loc_454322
453F32:  LDRD.W          R11, R5, [R7,#arg_0]
453F36:  CMP.W           R11, #0
453F3A:  BEQ             loc_453F50
453F3C:  CMP             R5, #0x37 ; '7'
453F3E:  BNE             loc_453F50
453F40:  LDRB.W          R0, [R11,#0x3A]
453F44:  MOVS            R5, #0x37 ; '7'
453F46:  AND.W           R0, R0, #7
453F4A:  CMP             R0, #2
453F4C:  IT EQ
453F4E:  MOVEQ           R5, #0x32 ; '2'
453F50:  MOV             R0, R4
453F52:  MOV             R1, R5
453F54:  MOVS            R2, #0
453F56:  BLX             j__ZN9CPhysical20CanPhysicalBeDamagedE11eWeaponTypePh; CPhysical::CanPhysicalBeDamaged(eWeaponType,uchar *)
453F5A:  CMP             R0, #0
453F5C:  BEQ.W           loc_454322
453F60:  LDR.W           R0, [R4,#0x164]
453F64:  VMOV            S16, R6
453F68:  VLDR            S2, [R4,#0x158]
453F6C:  VLDR            S4, =0.0
453F70:  VLDR            S0, [R0,#0x18]
453F74:  LDRB.W          R0, [R4,#0x148]
453F78:  VMUL.F32        S0, S0, S16
453F7C:  CMP             R0, #0
453F7E:  VSUB.F32        S0, S2, S0
453F82:  VMAX.F32        D0, D0, D2
453F86:  VSTR            S0, [R4,#0x158]
453F8A:  BEQ.W           loc_454322
453F8E:  LDRB.W          R0, [R4,#0x46]
453F92:  LSLS            R0, R0, #0x19
453F94:  BPL             loc_453FB2
453F96:  MOV.W           R0, #0xFFFFFFFF; int
453F9A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
453F9E:  CMP             R0, R11
453FA0:  BEQ             loc_453FB2
453FA2:  MOV.W           R0, #0xFFFFFFFF; int
453FA6:  MOVS            R1, #0; bool
453FA8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
453FAC:  CMP             R0, R11
453FAE:  BNE.W           loc_454322
453FB2:  LDR             R0, =(MI_IMY_SHASH_WALL_ptr - 0x453FBC)
453FB4:  LDRSH.W         R1, [R4,#0x26]
453FB8:  ADD             R0, PC; MI_IMY_SHASH_WALL_ptr
453FBA:  LDR             R0, [R0]; MI_IMY_SHASH_WALL
453FBC:  LDRH            R0, [R0]
453FBE:  CMP             R1, R0
453FC0:  BNE             loc_453FEA
453FC2:  CMP.W           R11, #0
453FC6:  BEQ.W           loc_454322
453FCA:  LDRB.W          R0, [R11,#0x3A]
453FCE:  AND.W           R0, R0, #7
453FD2:  CMP             R0, #3
453FD4:  BNE             loc_454074
453FD6:  LDRB.W          R0, [R11,#0x485]
453FDA:  LSLS            R0, R0, #0x1F
453FDC:  BEQ.W           loc_454322
453FE0:  LDR.W           R0, [R11,#0x590]
453FE4:  CMP             R0, #0
453FE6:  BNE             loc_454082
453FE8:  B               loc_454322
453FEA:  CMP.W           R11, #0
453FEE:  BEQ             loc_453FFE
453FF0:  LDRH.W          R0, [R11,#0x26]
453FF4:  MOVW            R1, #0x212
453FF8:  CMP             R0, R1
453FFA:  BEQ.W           loc_454322
453FFE:  LDR.W           R1, [R4,#0x164]
454002:  STRB.W          R5, [R4,#0x14C]
454006:  VLDR            S2, =150.0
45400A:  VLDR            S0, [R1,#0x18]
45400E:  VMUL.F32        S0, S0, S16
454012:  VCMPE.F32       S0, S2
454016:  VMRS            APSR_nzcv, FPSCR
45401A:  BGT             loc_45402C
45401C:  VLDR            S4, [R4,#0x158]
454020:  VCMP.F32        S4, #0.0
454024:  VMRS            APSR_nzcv, FPSCR
454028:  BNE.W           loc_4541E2
45402C:  LDRB.W          R2, [R4,#0x148]
454030:  MOVS            R0, #0
454032:  CMP             R2, #0x14
454034:  BLE             loc_45408E
454036:  CMP             R2, #0x15
454038:  BEQ             loc_4540DA
45403A:  CMP             R2, #0xCA
45403C:  IT NE
45403E:  CMPNE           R2, #0xC8
454040:  BNE.W           loc_4541A0
454044:  ADD.W           R3, R1, #0x38 ; '8'
454048:  ADD.W           R12, SP, #0xA8+var_80
45404C:  LDM             R3, {R0,R2,R3}
45404E:  STM.W           R12, {R0,R2,R3}
454052:  VLDR            S4, [R1,#0x44]
454056:  VLDR            S6, [R1,#0x34]
45405A:  VMOV            R3, S4
45405E:  VMUL.F32        S2, S6, S2
454062:  VCMPE.F32       S0, S2
454066:  VMRS            APSR_nzcv, FPSCR
45406A:  BLE             loc_4540FC
45406C:  LDR             R0, =(g_breakMan_ptr - 0x454074)
45406E:  MOVS            R1, #1
454070:  ADD             R0, PC; g_breakMan_ptr
454072:  B               loc_454102
454074:  CMP             R0, #2
454076:  MOV             R0, R11
454078:  BNE.W           loc_454322
45407C:  CMP             R0, #0
45407E:  BEQ.W           loc_454322
454082:  LDRH            R0, [R0,#0x26]
454084:  MOVW            R1, #0x259
454088:  CMP             R0, R1
45408A:  BEQ             loc_453FF0
45408C:  B               loc_454322
45408E:  CMP             R2, #1
454090:  BEQ             loc_454164
454092:  CMP             R2, #0x14
454094:  BNE.W           loc_4541A0
454098:  LDRD.W          R2, R0, [R10]
45409C:  BIC.W           R1, R2, #0x81
4540A0:  STR.W           R1, [R10]
4540A4:  TST.W           R2, #0x40004
4540A8:  BNE             loc_4540B4
4540AA:  MOV             R0, R4; this
4540AC:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
4540B0:  LDRD.W          R1, R0, [R10]
4540B4:  VMOV.I32        Q8, #0
4540B8:  ORR.W           R1, R1, #4
4540BC:  STRD.W          R1, R0, [R10]
4540C0:  ADD.W           R0, R4, #0x48 ; 'H'
4540C4:  MOVS            R2, #0
4540C6:  VST1.32         {D16-D17}, [R0]
4540CA:  LDR             R0, [R4]
4540CC:  LDR             R1, [R4,#0x44]
4540CE:  STR             R2, [R4,#0x58]
4540D0:  STR             R2, [R4,#0x5C]
4540D2:  ORR.W           R1, R1, #0x800000
4540D6:  STR             R1, [R4,#0x44]
4540D8:  B               loc_45415A
4540DA:  LDR.W           R2, [R10]
4540DE:  TST.W           R2, #0x200
4540E2:  BNE             loc_45417E
4540E4:  LDR             R0, [R4]
4540E6:  LDR             R1, [R0,#0x24]
4540E8:  MOV             R0, R4
4540EA:  BLX             R1
4540EC:  LDR.W           R0, [R10]
4540F0:  ORR.W           R0, R0, #0x200
4540F4:  STR.W           R0, [R10]
4540F8:  MOVS            R0, #0
4540FA:  B               loc_4541A0
4540FC:  LDR             R0, =(g_breakMan_ptr - 0x454104)
4540FE:  MOVS            R1, #0
454100:  ADD             R0, PC; g_breakMan_ptr
454102:  LDR             R0, [R0]; g_breakMan
454104:  ADD             R2, SP, #0xA8+var_80
454106:  STR             R1, [SP,#0xA8+var_A8]
454108:  MOV             R1, R4
45410A:  BLX             j__ZN14BreakManager_c3AddEP7CObjectP5RwV3dfi; BreakManager_c::Add(CObject *,RwV3d *,float,int)
45410E:  LDRD.W          R2, R0, [R10]
454112:  BIC.W           R1, R2, #0x81
454116:  TST.W           R2, #0x40004
45411A:  STR.W           R1, [R10]
45411E:  BNE             loc_45412A
454120:  MOV             R0, R4; this
454122:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
454126:  LDRD.W          R1, R0, [R10]
45412A:  ORR.W           R1, R1, #4
45412E:  STRD.W          R1, R0, [R10]
454132:  VMOV.I32        Q8, #0
454136:  LDR             R1, [R4,#0x44]
454138:  ADD.W           R3, R4, #0x48 ; 'H'
45413C:  LDR.W           R2, [R4,#0x144]
454140:  LDR             R0, [R4]
454142:  ORR.W           R1, R1, #0x800000
454146:  VST1.32         {D16-D17}, [R3]
45414A:  MOVS            R3, #0
45414C:  STRD.W          R3, R3, [R4,#0x58]
454150:  STR             R1, [R4,#0x44]
454152:  ORR.W           R1, R2, #0x400
454156:  STR.W           R1, [R4,#0x144]
45415A:  LDR             R1, [R0,#0x24]
45415C:  MOV             R0, R4
45415E:  BLX             R1
454160:  MOVS            R0, #1
454162:  B               loc_4541A0
454164:  LDR.W           R1, [R10]
454168:  TST.W           R1, #0x200
45416C:  BNE             loc_454192
45416E:  LDR             R0, [R4]
454170:  LDR             R1, [R0,#0x24]
454172:  MOV             R0, R4
454174:  BLX             R1
454176:  LDRD.W          R1, R2, [R10]
45417A:  MOVS            R0, #1
45417C:  B               loc_454198
45417E:  LDR.W           R0, [R10,#4]
454182:  BIC.W           R1, R2, #0x81
454186:  STRD.W          R1, R0, [R10]
45418A:  TST.W           R2, #0x40004
45418E:  BNE             loc_4540B4
454190:  B               loc_4540AA
454192:  LDR.W           R2, [R10,#4]
454196:  MOVS            R0, #0
454198:  ORR.W           R1, R1, #0x200
45419C:  STRD.W          R1, R2, [R10]
4541A0:  LDRB.W          R1, [R10]
4541A4:  TST.W           R1, #0x81
4541A8:  ITT EQ
4541AA:  MOVEQ           R1, #0
4541AC:  STREQ.W         R1, [R4,#0x158]
4541B0:  CMP             R0, #1
4541B2:  BNE             loc_4541E2
4541B4:  LDR.W           R0, [R4,#0x164]
4541B8:  LDRB            R0, [R0,#0x1F]
4541BA:  CBZ             R0, loc_4541E6
4541BC:  LDR.W           R0, [R4,#0x144]
4541C0:  TST.W           R0, #0x40
4541C4:  BNE             loc_4541E6
4541C6:  ORR.W           R0, R0, #0x40 ; '@'
4541CA:  STR.W           R0, [R4,#0x144]
4541CE:  MOV             R0, R4; this
4541D0:  BLX             j__ZN7CObject7ExplodeEv; CObject::Explode(void)
4541D4:  LDR             R0, =(AudioEngine_ptr - 0x4541DC)
4541D6:  MOV             R1, R4; CEntity *
4541D8:  ADD             R0, PC; AudioEngine_ptr
4541DA:  LDR             R0, [R0]; AudioEngine ; this
4541DC:  BLX             j__ZN12CAudioEngine23ReportObjectDestructionEP7CEntity; CAudioEngine::ReportObjectDestruction(CEntity *)
4541E0:  B               loc_454322
4541E2:  MOVS            R0, #0
4541E4:  B               loc_4541F4
4541E6:  LDR             R0, =(AudioEngine_ptr - 0x4541EE)
4541E8:  MOV             R1, R4; CEntity *
4541EA:  ADD             R0, PC; AudioEngine_ptr
4541EC:  LDR             R0, [R0]; AudioEngine ; this
4541EE:  BLX             j__ZN12CAudioEngine23ReportObjectDestructionEP7CEntity; CAudioEngine::ReportObjectDestruction(CEntity *)
4541F2:  MOVS            R0, #1
4541F4:  LDR.W           R1, [R4,#0x164]
4541F8:  LDRB.W          R2, [R1,#0x20]
4541FC:  CMP             R2, #0
4541FE:  BEQ.W           loc_454322
454202:  CMP             R2, #3
454204:  BEQ             loc_454240
454206:  CBZ             R0, loc_454218
454208:  MOVS            R3, #0
45420A:  CMP             R2, #2
45420C:  IT EQ
45420E:  MOVEQ           R3, #1
454210:  ANDS            R0, R3
454212:  CMP             R0, #1
454214:  BEQ             loc_454240
454216:  B               loc_454322
454218:  VMOV.F32        S0, #30.0
45421C:  MOVS            R6, #0
45421E:  MOVS            R3, #0
454220:  VCMPE.F32       S16, S0
454224:  VMRS            APSR_nzcv, FPSCR
454228:  IT GT
45422A:  MOVGT           R6, #1
45422C:  CMP             R2, #2
45422E:  IT EQ
454230:  MOVEQ           R3, #1
454232:  CMP             R2, #1
454234:  IT NE
454236:  MOVNE           R2, #0
454238:  TST             R6, R2
45423A:  BNE             loc_454240
45423C:  ANDS            R0, R3
45423E:  BEQ             loc_454322
454240:  VLDR            S0, =-500.0
454244:  VLDR            S2, [R1,#0x24]
454248:  VCMPE.F32       S2, S0
45424C:  VMRS            APSR_nzcv, FPSCR
454250:  BGE             loc_45428C
454252:  CMP.W           R9, #0
454256:  BEQ             loc_454322
454258:  LDR             R0, =(g_fx_ptr - 0x454264)
45425A:  ADD             R5, SP, #0xA8+var_80
45425C:  MOV             R2, R9
45425E:  MOV             R3, R8
454260:  ADD             R0, PC; g_fx_ptr
454262:  MOV             R1, R5
454264:  LDR             R0, [R0]; g_fx
454266:  BLX             j__ZN4Fx_c16CreateMatFromVecEP11RwMatrixTagP7CVectorS3_; Fx_c::CreateMatFromVec(RwMatrixTag *,CVector *,CVector *)
45426A:  LDR             R0, =(g_fxMan_ptr - 0x454278)
45426C:  MOVS            R2, #0
45426E:  LDR.W           R1, [R4,#0x164]
454272:  MOVS            R3, #0
454274:  ADD             R0, PC; g_fxMan_ptr
454276:  LDR             R1, [R1,#0x30]
454278:  LDR             R0, [R0]; g_fxMan
45427A:  STR             R2, [SP,#0xA8+var_A8]
45427C:  MOV             R2, R5
45427E:  BLX             j__ZN11FxManager_c14CreateFxSystemEP12FxSystemBP_cP11RwMatrixTagS3_h; FxManager_c::CreateFxSystem(FxSystemBP_c *,RwMatrixTag *,RwMatrixTag *,uchar)
454282:  MOV             R4, R0
454284:  B               loc_454318
454286:  ALIGN 4
454288:  DCFS 0.0
45428C:  ADD             R5, SP, #0xA8+var_80
45428E:  LDR             R1, [R4,#0x14]; CMatrix *
454290:  MOV             R0, R5; this
454292:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
454296:  LDR.W           R0, [R4,#0x164]
45429A:  ADD             R2, SP, #0xA8+var_A0
45429C:  MOV             R1, R5; CVector *
45429E:  VLDR            D16, [R0,#0x24]
4542A2:  LDR             R0, [R0,#0x2C]
4542A4:  STR             R0, [SP,#0xA8+var_98]
4542A6:  ADD             R0, SP, #0xA8+var_90; CMatrix *
4542A8:  VSTR            D16, [SP,#0xA8+var_A0]
4542AC:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4542B0:  VLDR            D16, [SP,#0xA8+var_90]
4542B4:  MOVS            R2, #0
4542B6:  LDR             R0, [SP,#0xA8+var_88]
4542B8:  MOVS            R3, #0
4542BA:  STR             R0, [SP,#0xA8+var_30]
4542BC:  VSTR            D16, [SP,#0xA8+var_38]
4542C0:  LDR             R0, [R4,#0x14]
4542C2:  VLDR            S0, [SP,#0xA8+var_38]
4542C6:  ADD.W           R1, R0, #0x30 ; '0'
4542CA:  CMP             R0, #0
4542CC:  VLDR            S2, [SP,#0xA8+var_38+4]
4542D0:  VLDR            S4, [SP,#0xA8+var_30]
4542D4:  IT EQ
4542D6:  ADDEQ           R1, R4, #4
4542D8:  VLDR            S6, [R1]
4542DC:  VLDR            S8, [R1,#4]
4542E0:  VADD.F32        S0, S6, S0
4542E4:  VLDR            S10, [R1,#8]
4542E8:  LDR             R0, =(g_fxMan_ptr - 0x4542EE)
4542EA:  ADD             R0, PC; g_fxMan_ptr
4542EC:  LDR             R0, [R0]; g_fxMan
4542EE:  VSTR            S0, [SP,#0xA8+var_38]
4542F2:  VADD.F32        S0, S8, S2
4542F6:  VSTR            S0, [SP,#0xA8+var_38+4]
4542FA:  VADD.F32        S0, S10, S4
4542FE:  VSTR            S0, [SP,#0xA8+var_30]
454302:  LDR.W           R1, [R4,#0x164]
454306:  LDR             R1, [R1,#0x30]
454308:  STR             R2, [SP,#0xA8+var_A8]
45430A:  ADD             R2, SP, #0xA8+var_38
45430C:  BLX             j__ZN11FxManager_c14CreateFxSystemEP12FxSystemBP_cP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(FxSystemBP_c *,RwV3d *,RwMatrixTag *,uchar)
454310:  MOV             R4, R0
454312:  MOV             R0, R5; this
454314:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
454318:  CMP             R4, #0
45431A:  ITT NE
45431C:  MOVNE           R0, R4; this
45431E:  BLXNE           j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
454322:  ADD             SP, SP, #0x80
454324:  VPOP            {D8}
454328:  ADD             SP, SP, #4
45432A:  POP.W           {R8-R11}
45432E:  POP             {R4-R7,PC}
