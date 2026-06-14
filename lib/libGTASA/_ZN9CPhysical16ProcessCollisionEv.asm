; =========================================================
; Game Engine Function: _ZN9CPhysical16ProcessCollisionEv
; Address            : 0x3FEEF8 - 0x3FF58C
; =========================================================

3FEEF8:  PUSH            {R4-R7,LR}
3FEEFA:  ADD             R7, SP, #0xC
3FEEFC:  PUSH.W          {R8-R11}
3FEF00:  SUB             SP, SP, #4
3FEF02:  VPUSH           {D8-D13}
3FEF06:  SUB             SP, SP, #0x70
3FEF08:  MOV             R10, R0
3FEF0A:  MOVS            R3, #0
3FEF0C:  MOV             R5, R10
3FEF0E:  LDR.W           R1, [R5,#0x1C]!
3FEF12:  LDR             R2, [R5,#0x28]
3FEF14:  LDR             R0, [R5,#4]
3FEF16:  TST.W           R2, #0x20000
3FEF1A:  STR.W           R3, [R5,#0xBC]
3FEF1E:  BIC.W           R3, R2, #0x9000
3FEF22:  STR             R3, [R5,#0x28]
3FEF24:  BNE             loc_3FEF62
3FEF26:  ANDS.W          R2, R1, #1
3FEF2A:  BEQ             loc_3FEF62
3FEF2C:  LDRB.W          R2, [R10,#0x3A]
3FEF30:  MOVS            R3, #0xC
3FEF32:  STR.W           R10, [SP,#0xC0+var_AC]
3FEF36:  CMP.W           R3, R2,LSR#3
3FEF3A:  BEQ             loc_3FEF6E
3FEF3C:  LSRS            R2, R2, #3
3FEF3E:  CMP             R2, #2
3FEF40:  BNE             loc_3FEF90
3FEF42:  LDR.W           R2, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FEF56)
3FEF46:  BIC.W           R1, R1, #2
3FEF4A:  STRD.W          R1, R0, [R5]
3FEF4E:  MOVW            R1, #0xFFFF
3FEF52:  ADD             R2, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
3FEF54:  LDR             R2, [R2]; CWorld::ms_nCurrentScanCode ...
3FEF56:  LDRH            R0, [R2]; this
3FEF58:  CMP             R0, R1
3FEF5A:  BEQ.W           loc_3FF21C
3FEF5E:  ADDS            R0, #1
3FEF60:  B               loc_3FF222
3FEF62:  MOVS            R2, #2
3FEF64:  BFI.W           R1, R2, #4, #2
3FEF68:  STRD.W          R1, R0, [R5]
3FEF6C:  B               loc_3FF442
3FEF6E:  LDR.W           R0, [R10,#0x5A4]
3FEF72:  VMOV.I32        Q8, #0
3FEF76:  STR             R5, [SP,#0xC0+var_BC]
3FEF78:  CMP             R0, #0
3FEF7A:  BEQ.W           loc_3FF24A
3FEF7E:  ADDW            R0, R10, #0x7D4
3FEF82:  ADDW            R4, R10, #0x7E4
3FEF86:  ADDW            R5, R10, #0x674
3FEF8A:  ADDW            R6, R10, #0x724
3FEF8E:  B               loc_3FF25A
3FEF90:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FEF9E)
3FEF94:  MOVS            R1, #0
3FEF96:  LDR.W           R8, [R10,#0xA0]
3FEF9A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FEF9C:  STRB.W          R1, [R7,#var_51]
3FEFA0:  STRB.W          R1, [R7,#var_52]
3FEFA4:  VLDR            D16, [R10,#0x48]
3FEFA8:  LDR.W           R1, [R10,#0x50]
3FEFAC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FEFAE:  STR             R1, [SP,#0xC0+var_58]
3FEFB0:  VSTR            D16, [SP,#0xC0+var_60]
3FEFB4:  LDR.W           R1, [R10,#0x14]; CMatrix *
3FEFB8:  VLDR            S16, [R0]
3FEFBC:  ADD             R0, SP, #0xC0+var_A8; this
3FEFBE:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
3FEFC2:  LDR.W           R0, [R10]
3FEFC6:  SUB.W           R1, R7, #-var_51
3FEFCA:  SUB.W           R2, R7, #-var_52
3FEFCE:  LDR             R3, [R0,#0x44]
3FEFD0:  MOV             R0, R10
3FEFD2:  BLX             R3
3FEFD4:  MOV             R11, R0
3FEFD6:  VMOV            S0, R11
3FEFDA:  VCVT.F32.U32    S18, S0
3FEFDE:  LDRB.W          R0, [R7,#var_51]
3FEFE2:  CMP             R0, #0
3FEFE4:  BEQ             loc_3FF076
3FEFE6:  MOV             R0, R10; this
3FEFE8:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
3FEFEC:  LDR.W           R0, [R10,#0x14]; this
3FEFF0:  BLX             j__ZN7CMatrix15ReorthogonaliseEv; CMatrix::Reorthogonalise(void)
3FEFF4:  LDRD.W          R4, R0, [R5]
3FEFF8:  LDR.W           R1, [R10,#0x44]
3FEFFC:  BIC.W           R2, R4, #1
3FF000:  STRD.W          R2, R0, [R5]
3FF004:  BIC.W           R0, R1, #0x19000
3FF008:  ORR.W           R0, R0, #0x10000
3FF00C:  STR.W           R0, [R10,#0x44]
3FF010:  MOV             R0, R10; this
3FF012:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
3FF016:  LDR             R1, [R5]
3FF018:  CMP             R0, #1
3FF01A:  BFI.W           R1, R4, #0, #1
3FF01E:  STR             R1, [R5]
3FF020:  LDR.W           R1, [R10,#0x44]
3FF024:  BIC.W           R1, R1, #0x10000
3FF028:  STR.W           R1, [R10,#0x44]
3FF02C:  BNE.W           loc_3FF45C
3FF030:  LDR.W           R0, [R10,#0x14]
3FF034:  ADD             R1, SP, #0xC0+var_A8
3FF036:  ADD.W           R4, R10, #0x48 ; 'H'
3FF03A:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3FF03E:  VLDR            D16, [SP,#0xC0+var_60]
3FF042:  LDR             R0, [SP,#0xC0+var_58]
3FF044:  STR             R0, [R4,#8]
3FF046:  VSTR            D16, [R4]
3FF04A:  LDRB.W          R0, [R10,#0x3A]
3FF04E:  AND.W           R0, R0, #7
3FF052:  CMP             R0, #2
3FF054:  BNE             loc_3FF076
3FF056:  LDRB.W          R0, [R10,#0x42C]
3FF05A:  LSLS            R0, R0, #0x1F
3FF05C:  BEQ             loc_3FF076
3FF05E:  LDR.W           R0, =(HIGHSPEED_ELASTICITY_MULT_COPCAR_ptr - 0x3FF06A)
3FF062:  VLDR            S0, [R10,#0xA0]
3FF066:  ADD             R0, PC; HIGHSPEED_ELASTICITY_MULT_COPCAR_ptr
3FF068:  LDR             R0, [R0]; HIGHSPEED_ELASTICITY_MULT_COPCAR
3FF06A:  VLDR            S2, [R0]
3FF06E:  VMUL.F32        S0, S2, S0
3FF072:  VSTR            S0, [R10,#0xA0]
3FF076:  CMP.W           R11, #2
3FF07A:  STRD.W          R5, R8, [SP,#0xC0+var_BC]
3FF07E:  BCC             loc_3FF164
3FF080:  VDIV.F32        S18, S16, S18
3FF084:  LDR             R0, [SP,#0xC0+var_AC]
3FF086:  ADD             R5, SP, #0xC0+var_A8
3FF088:  MOVS            R4, #1
3FF08A:  ADDW            R1, R0, #0x724
3FF08E:  STR             R1, [SP,#0xC0+var_C0]
3FF090:  ADD.W           R1, R0, #0x7E8
3FF094:  ADDW            R0, R0, #0x484
3FF098:  STR             R1, [SP,#0xC0+var_B4]
3FF09A:  STR             R0, [SP,#0xC0+var_B0]
3FF09C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FF0A4)
3FF0A0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FF0A2:  LDR.W           R9, [R0]; CTimer::ms_fTimeStep ...
3FF0A6:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FF0AE)
3FF0AA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FF0AC:  LDR.W           R8, [R0]; CTimer::ms_fTimeStep ...
3FF0B0:  VLDR            S20, =0.00001
3FF0B4:  VMOV.F32        Q6, #1.0
3FF0B8:  VMAX.F32        D8, D8, D10
3FF0BC:  UXTH            R0, R4
3FF0BE:  VMOV            S0, R0
3FF0C2:  VCVT.F32.U32    S0, S0
3FF0C6:  VMUL.F32        S0, S18, S0
3FF0CA:  VMAX.F32        D0, D0, D10
3FF0CE:  VSTR            S0, [R9]
3FF0D2:  LDR.W           R10, [SP,#0xC0+var_AC]
3FF0D6:  MOV             R0, R10; this
3FF0D8:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
3FF0DC:  MOV             R0, R10; this
3FF0DE:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
3FF0E2:  LDRB.W          R1, [R10,#0x3A]
3FF0E6:  CMP             R0, #1
3FF0E8:  AND.W           R1, R1, #7
3FF0EC:  BEQ.W           loc_3FF4E2
3FF0F0:  CMP             R1, #3
3FF0F2:  BNE             loc_3FF11A
3FF0F4:  LDR             R0, [SP,#0xC0+var_AC]
3FF0F6:  VLDR            S0, [R0,#0x50]
3FF0FA:  VCMP.F32        S0, #0.0
3FF0FE:  VMRS            APSR_nzcv, FPSCR
3FF102:  BNE             loc_3FF11A
3FF104:  LDR             R0, [SP,#0xC0+var_B0]
3FF106:  LDR             R0, [R0]
3FF108:  AND.W           R0, R0, #3
3FF10C:  TEQ.W           R0, #1
3FF110:  ITTTT EQ
3FF112:  LDREQ           R0, [SP,#0xC0+var_AC]
3FF114:  LDREQ           R0, [R0,#0x14]
3FF116:  LDREQ           R0, [R0,#0x38]
3FF118:  STREQ           R0, [SP,#0xC0+var_70]
3FF11A:  LDR             R6, [SP,#0xC0+var_AC]
3FF11C:  MOV             R1, R5
3FF11E:  LDR             R0, [R6,#0x14]
3FF120:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3FF124:  VSTR            S16, [R8]
3FF128:  LDRB.W          R0, [R6,#0x3A]
3FF12C:  AND.W           R0, R0, #7
3FF130:  CMP             R0, #2
3FF132:  BNE             loc_3FF15C
3FF134:  LDR             R0, [SP,#0xC0+var_AC]
3FF136:  LDR.W           R0, [R0,#0x5A0]
3FF13A:  CBZ             R0, loc_3FF152
3FF13C:  CMP             R0, #9
3FF13E:  BEQ             loc_3FF156
3FF140:  CMP             R0, #0xB
3FF142:  BNE             loc_3FF15C
3FF144:  LDR             R0, [SP,#0xC0+var_B4]
3FF146:  MOV.W           R1, #0x3F800000
3FF14A:  STRD.W          R1, R1, [R0]
3FF14E:  STR             R1, [R0,#8]
3FF150:  B               loc_3FF15C
3FF152:  LDR             R0, [SP,#0xC0+var_B4]
3FF154:  B               loc_3FF158
3FF156:  LDR             R0, [SP,#0xC0+var_C0]
3FF158:  VST1.32         {D12-D13}, [R0]
3FF15C:  ADDS            R4, #1
3FF15E:  UXTH            R0, R4
3FF160:  CMP             R0, R11
3FF162:  BCC             loc_3FF0BC
3FF164:  LDR.W           R10, [SP,#0xC0+var_AC]
3FF168:  MOV             R0, R10; this
3FF16A:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
3FF16E:  LDR.W           R0, [R10,#0x14]; this
3FF172:  BLX             j__ZN7CMatrix15ReorthogonaliseEv; CMatrix::Reorthogonalise(void)
3FF176:  LDR.W           R0, [R10,#0x44]
3FF17A:  VLDR            S0, [R10,#0x48]
3FF17E:  BIC.W           R1, R0, #0x9000
3FF182:  STR.W           R1, [R10,#0x44]
3FF186:  LDRD.W          R5, R8, [SP,#0xC0+var_BC]
3FF18A:  VCMP.F32        S0, #0.0
3FF18E:  VMRS            APSR_nzcv, FPSCR
3FF192:  BNE             loc_3FF1E8
3FF194:  VLDR            S0, [R10,#0x4C]
3FF198:  VCMP.F32        S0, #0.0
3FF19C:  VMRS            APSR_nzcv, FPSCR
3FF1A0:  ITTT EQ
3FF1A2:  VLDREQ          S0, [R10,#0x50]
3FF1A6:  VCMPEQ.F32      S0, #0.0
3FF1AA:  VMRSEQ          APSR_nzcv, FPSCR
3FF1AE:  BNE             loc_3FF1E8
3FF1B0:  VLDR            S0, [R10,#0x54]
3FF1B4:  VCMP.F32        S0, #0.0
3FF1B8:  VMRS            APSR_nzcv, FPSCR
3FF1BC:  ITTT EQ
3FF1BE:  VLDREQ          S0, [R10,#0x58]
3FF1C2:  VCMPEQ.F32      S0, #0.0
3FF1C6:  VMRSEQ          APSR_nzcv, FPSCR
3FF1CA:  BNE             loc_3FF1E8
3FF1CC:  LSLS            R0, R0, #0x14
3FF1CE:  BMI             loc_3FF1E8
3FF1D0:  VLDR            S0, [R10,#0x5C]
3FF1D4:  VCMP.F32        S0, #0.0
3FF1D8:  VMRS            APSR_nzcv, FPSCR
3FF1DC:  BNE             loc_3FF1E8
3FF1DE:  LDRB.W          R0, [R10,#0x3A]
3FF1E2:  CMP             R0, #8
3FF1E4:  BCS.W           loc_3FF536
3FF1E8:  LDRB.W          R0, [R10,#0x3A]
3FF1EC:  AND.W           R0, R0, #7
3FF1F0:  CMP             R0, #2
3FF1F2:  ITTT EQ
3FF1F4:  LDREQ.W         R0, [R10,#0x42C]
3FF1F8:  ORREQ.W         R0, R0, #0x1000000
3FF1FC:  STREQ.W         R0, [R10,#0x42C]
3FF200:  MOV             R0, R10; this
3FF202:  BLX             j__ZN9CPhysical14CheckCollisionEv; CPhysical::CheckCollision(void)
3FF206:  CMP             R0, #1
3FF208:  BNE.W           loc_3FF474
3FF20C:  LDR.W           R0, [R10,#0x14]
3FF210:  ADD             R1, SP, #0xC0+var_A8
3FF212:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3FF216:  STR.W           R8, [R10,#0xA0]
3FF21A:  B               loc_3FF522
3FF21C:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
3FF220:  MOVS            R0, #1
3FF222:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FF228)
3FF224:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
3FF226:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
3FF228:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
3FF22A:  LDR.W           R4, [R10,#0xB4]
3FF22E:  CMP             R4, #0
3FF230:  BEQ.W           loc_3FF438
3FF234:  LDR             R1, [R4,#8]
3FF236:  MOV             R0, R10; this
3FF238:  BLX             j__ZN9CPhysical36ProcessCollisionSectorList_SimpleCarEP13CRepeatSector; CPhysical::ProcessCollisionSectorList_SimpleCar(CRepeatSector *)
3FF23C:  CMP             R0, #1
3FF23E:  BEQ.W           loc_3FF416
3FF242:  LDR             R4, [R4,#0x10]
3FF244:  CMP             R4, #0
3FF246:  BNE             loc_3FF234
3FF248:  B               loc_3FF438
3FF24A:  ADDW            R0, R10, #0x8FC
3FF24E:  ADDW            R4, R10, #0x90C
3FF252:  ADD.W           R5, R10, #0x738
3FF256:  ADD.W           R6, R10, #0x7E8
3FF25A:  VST1.32         {D16-D17}, [R0]
3FF25E:  MOV             R0, R10; this
3FF260:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3FF264:  LDR             R2, [R0,#0x2C]
3FF266:  ADD.W           R11, R4, #8
3FF26A:  MOVS            R3, #0
3FF26C:  MOVS            R4, #0
3FF26E:  MOV.W           R8, #0
3FF272:  STR             R2, [SP,#0xC0+var_B8]
3FF274:  B               loc_3FF2C8
3FF276:  LDR             R3, [SP,#0xC0+var_B0]
3FF278:  ADDS            R6, #4
3FF27A:  LDRD.W          R2, R4, [SP,#0xC0+var_B8]
3FF27E:  VSTR            S16, [R5]
3FF282:  ADDS            R3, #0x20 ; ' '
3FF284:  VSTR            S18, [R5,#4]
3FF288:  ADDS            R4, #1
3FF28A:  VSTR            S20, [R5,#8]
3FF28E:  ADDS            R5, #0x2C ; ','
3FF290:  LDR.W           R0, [R10,#0x14]
3FF294:  ADD.W           R1, R0, #0x30 ; '0'
3FF298:  CMP             R0, #0
3FF29A:  IT EQ
3FF29C:  ADDEQ.W         R1, R10, #4
3FF2A0:  VLDR            S0, [R1]
3FF2A4:  VLDR            S2, [R1,#4]
3FF2A8:  VLDR            S4, [R1,#8]
3FF2AC:  VSUB.F32        S0, S16, S0
3FF2B0:  VSUB.F32        S2, S18, S2
3FF2B4:  VSUB.F32        S4, S20, S4
3FF2B8:  VSTR            S0, [R11,#-8]
3FF2BC:  VSTR            S2, [R11,#-4]
3FF2C0:  VSTR            S4, [R11]
3FF2C4:  ADD.W           R11, R11, #0xC
3FF2C8:  LDRB            R0, [R2,#7]
3FF2CA:  LSLS            R0, R0, #0x1F
3FF2CC:  ITE EQ
3FF2CE:  LDRSBEQ.W       R0, [R2,#6]
3FF2D2:  MOVNE           R0, #0
3FF2D4:  CMP             R4, R0
3FF2D6:  BGE             loc_3FF3A6
3FF2D8:  STR             R4, [SP,#0xC0+var_B4]
3FF2DA:  MOV             R9, R6
3FF2DC:  LDR             R0, [R2,#0x10]
3FF2DE:  ADD             R4, SP, #0xC0+var_A8
3FF2E0:  STR             R3, [SP,#0xC0+var_B0]
3FF2E2:  ADDS            R6, R0, R3
3FF2E4:  LDR             R0, [SP,#0xC0+var_AC]
3FF2E6:  MOV             R2, R6
3FF2E8:  LDR             R1, [R0,#0x14]
3FF2EA:  MOV             R0, R4
3FF2EC:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3FF2F0:  ADD.W           R2, R6, #0x10
3FF2F4:  LDR             R6, [SP,#0xC0+var_AC]
3FF2F6:  MOV             R0, R4
3FF2F8:  VLDR            S16, [SP,#0xC0+var_A8]
3FF2FC:  VLDR            S18, [SP,#0xC0+var_A4]
3FF300:  LDR             R1, [R6,#0x14]
3FF302:  VLDR            S20, [SP,#0xC0+var_A0]
3FF306:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3FF30A:  MOV.W           R0, #0x3F800000
3FF30E:  VLDR            S22, [SP,#0xC0+var_A8]
3FF312:  VLDR            S24, [SP,#0xC0+var_A4]
3FF316:  MOV             R10, R6
3FF318:  VLDR            S26, [SP,#0xC0+var_A0]
3FF31C:  STRD.W          R8, R8, [R5,#0x10]
3FF320:  STR             R0, [R5,#0x18]
3FF322:  MOVS            R0, #0x3C ; '<'
3FF324:  STRB.W          R0, [R5,#0x20]
3FF328:  MOVS            R0, #1
3FF32A:  STRB.W          R0, [R5,#0x23]
3FF32E:  MOV             R0, R6; this
3FF330:  STR.W           R8, [R5,#0x28]
3FF334:  BLX             j__ZN8CCarCtrl19FindGhostRoadHeightEP8CVehicle; CCarCtrl::FindGhostRoadHeight(CVehicle *)
3FF338:  VMOV            S0, R0
3FF33C:  VCMPE.F32       S0, S20
3FF340:  VMRS            APSR_nzcv, FPSCR
3FF344:  BLE             loc_3FF34E
3FF346:  STR.W           R8, [R9]
3FF34A:  MOV             R6, R9
3FF34C:  B               loc_3FF276
3FF34E:  VCMPE.F32       S0, S26
3FF352:  VMRS            APSR_nzcv, FPSCR
3FF356:  BLE             loc_3FF390
3FF358:  VSUB.F32        S2, S20, S26
3FF35C:  MOV             R6, R9
3FF35E:  VSUB.F32        S0, S20, S0
3FF362:  VSUB.F32        S4, S24, S18
3FF366:  VSUB.F32        S6, S22, S16
3FF36A:  VDIV.F32        S0, S0, S2
3FF36E:  VSUB.F32        S2, S26, S20
3FF372:  VSTR            S0, [R6]
3FF376:  VMUL.F32        S4, S4, S0
3FF37A:  VMUL.F32        S6, S6, S0
3FF37E:  VMUL.F32        S2, S2, S0
3FF382:  VADD.F32        S18, S18, S4
3FF386:  VADD.F32        S16, S16, S6
3FF38A:  VADD.F32        S20, S20, S2
3FF38E:  B               loc_3FF276
3FF390:  VMOV.F32        S16, S22
3FF394:  MOV             R6, R9
3FF396:  VMOV.F32        S18, S24
3FF39A:  MOV.W           R0, #0x3F800000
3FF39E:  VMOV.F32        S20, S26
3FF3A2:  STR             R0, [R6]
3FF3A4:  B               loc_3FF276
3FF3A6:  LDR             R2, [SP,#0xC0+var_BC]
3FF3A8:  MOVS            R1, #2
3FF3AA:  MOV.W           R3, #0x3F800000
3FF3AE:  LDR             R0, [R2]
3FF3B0:  BFI.W           R0, R1, #4, #2
3FF3B4:  STR             R0, [R2]
3FF3B6:  LDR.W           R0, [R10,#0x14]
3FF3BA:  MOVS            R1, #0
3FF3BC:  STRD.W          R1, R1, [R10,#0x50]
3FF3C0:  MOVS            R2, #0
3FF3C2:  STR.W           R1, [R10,#0x58]
3FF3C6:  MOVS            R1, #0
3FF3C8:  BLX             j__ZN7CMatrix13ForceUpVectorE7CVector; CMatrix::ForceUpVector(CVector)
3FF3CC:  MOV             R0, R10; this
3FF3CE:  BLX             j__ZN8CCarCtrl19FindGhostRoadHeightEP8CVehicle; CCarCtrl::FindGhostRoadHeight(CVehicle *)
3FF3D2:  MOV             R5, R0
3FF3D4:  LDR.W           R0, [R10]
3FF3D8:  LDR.W           R1, [R0,#0xD8]
3FF3DC:  MOV             R0, R10
3FF3DE:  BLX             R1
3FF3E0:  VMOV            S2, R0
3FF3E4:  LDR.W           R0, [R10,#0x14]
3FF3E8:  VMOV            S0, R5
3FF3EC:  VADD.F32        S0, S0, S2
3FF3F0:  VSTR            S0, [R0,#0x38]
3FF3F4:  MOV             R0, R10; this
3FF3F6:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
3FF3FA:  LDR.W           R0, [R10,#0x14]; this
3FF3FE:  BLX             j__ZN7CMatrix15ReorthogonaliseEv; CMatrix::Reorthogonalise(void)
3FF402:  MOV             R0, R10; this
3FF404:  BLX             j__ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
3FF408:  LDR.W           R0, [R10,#0x42C]
3FF40C:  ORR.W           R0, R0, #0x1000000
3FF410:  STR.W           R0, [R10,#0x42C]
3FF414:  B               loc_3FF528
3FF416:  LDRB.W          R0, [R10,#0x3A]
3FF41A:  AND.W           R1, R0, #0xF8
3FF41E:  CMP             R1, #0x10
3FF420:  BNE             loc_3FF438
3FF422:  AND.W           R0, R0, #7
3FF426:  CMP             R0, #2
3FF428:  ORR.W           R1, R0, #0x18; CVehicle *
3FF42C:  STRB.W          R1, [R10,#0x3A]
3FF430:  ITT EQ
3FF432:  MOVEQ           R0, R10; this
3FF434:  BLXEQ           j__ZN8CCarCtrl26SwitchVehicleToRealPhysicsEP8CVehicle; CCarCtrl::SwitchVehicleToRealPhysics(CVehicle *)
3FF438:  LDR             R0, [R5]
3FF43A:  MOVS            R1, #2
3FF43C:  BFI.W           R0, R1, #4, #2
3FF440:  STR             R0, [R5]
3FF442:  MOV             R0, R10; this
3FF444:  ADD             SP, SP, #0x70 ; 'p'
3FF446:  VPOP            {D8-D13}
3FF44A:  ADD             SP, SP, #4
3FF44C:  POP.W           {R8-R11}
3FF450:  POP.W           {R4-R7,LR}
3FF454:  B.W             _ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
3FF458:  DCFS 0.00001
3FF45C:  LDRB.W          R0, [R10,#0x3A]
3FF460:  AND.W           R0, R0, #7
3FF464:  CMP             R0, #2
3FF466:  ITTT EQ
3FF468:  LDREQ.W         R0, [R10,#0x42C]
3FF46C:  ORREQ.W         R0, R0, #0x1000000
3FF470:  STREQ.W         R0, [R10,#0x42C]
3FF474:  LDR             R0, [R5]
3FF476:  MOVS            R1, #2
3FF478:  BFI.W           R0, R1, #4, #2
3FF47C:  STR             R0, [R5]
3FF47E:  LDR.W           R1, [R10,#0x44]
3FF482:  LDR.W           R0, [R10,#0x14]
3FF486:  BIC.W           R2, R1, #0x800
3FF48A:  STR.W           R2, [R10,#0x44]
3FF48E:  VLDR            S6, [SP,#0xC0+var_78]
3FF492:  VLDR            S0, [R0,#0x30]
3FF496:  VLDR            S2, [R0,#0x34]
3FF49A:  VLDR            S8, [SP,#0xC0+var_74]
3FF49E:  VSUB.F32        S0, S0, S6
3FF4A2:  VLDR            S4, [R0,#0x38]
3FF4A6:  BIC.W           R0, R1, #0x1800
3FF4AA:  VSUB.F32        S2, S2, S8
3FF4AE:  VLDR            S10, [SP,#0xC0+var_70]
3FF4B2:  STR.W           R0, [R10,#0x44]
3FF4B6:  MOV             R0, R10; this
3FF4B8:  VSUB.F32        S4, S4, S10
3FF4BC:  STR.W           R8, [R10,#0xA0]
3FF4C0:  VMUL.F32        S0, S0, S0
3FF4C4:  VMUL.F32        S2, S2, S2
3FF4C8:  VMUL.F32        S4, S4, S4
3FF4CC:  VADD.F32        S0, S0, S2
3FF4D0:  VADD.F32        S0, S0, S4
3FF4D4:  VSQRT.F32       S0, S0
3FF4D8:  VSTR            S0, [R10,#0xD8]
3FF4DC:  BLX             j__ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
3FF4E0:  B               loc_3FF522
3FF4E2:  LDR             R4, [SP,#0xC0+var_AC]
3FF4E4:  CMP             R1, #3
3FF4E6:  BNE             loc_3FF50A
3FF4E8:  VLDR            S0, [R4,#0x50]
3FF4EC:  VCMP.F32        S0, #0.0
3FF4F0:  VMRS            APSR_nzcv, FPSCR
3FF4F4:  BNE             loc_3FF50A
3FF4F6:  LDR             R0, [SP,#0xC0+var_B0]
3FF4F8:  LDR             R0, [R0]
3FF4FA:  AND.W           R0, R0, #3
3FF4FE:  TEQ.W           R0, #1
3FF502:  ITTT EQ
3FF504:  LDREQ           R0, [R4,#0x14]
3FF506:  LDREQ           R0, [R0,#0x38]
3FF508:  STREQ           R0, [SP,#0xC0+var_70]
3FF50A:  LDR             R0, [R4,#0x14]
3FF50C:  ADD             R1, SP, #0xC0+var_A8
3FF50E:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3FF512:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FF518)
3FF514:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FF516:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FF518:  VSTR            S16, [R0]
3FF51C:  LDR             R0, [SP,#0xC0+var_B8]
3FF51E:  STR.W           R0, [R4,#0xA0]
3FF522:  ADD             R0, SP, #0xC0+var_A8; this
3FF524:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3FF528:  ADD             SP, SP, #0x70 ; 'p'
3FF52A:  VPOP            {D8-D13}
3FF52E:  ADD             SP, SP, #4
3FF530:  POP.W           {R8-R11}
3FF534:  POP             {R4-R7,PC}
3FF536:  AND.W           R1, R0, #7
3FF53A:  CMP             R1, #3
3FF53C:  BEQ             loc_3FF54E
3FF53E:  CMP             R1, #2
3FF540:  BNE             loc_3FF576
3FF542:  LDRB.W          R1, [R10,#0x430]
3FF546:  LSLS            R1, R1, #0x1E
3FF548:  BMI.W           loc_3FF1E8
3FF54C:  B               loc_3FF576
3FF54E:  MOV             R0, R10; this
3FF550:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3FF554:  CMP             R0, #0
3FF556:  BNE.W           loc_3FF1E8
3FF55A:  LDR.W           R1, [R10,#0x48C]
3FF55E:  MOVS            R2, #1
3FF560:  LDR.W           R0, [R10,#0x484]
3FF564:  AND.W           R1, R1, #0x8000
3FF568:  BIC.W           R0, R2, R0
3FF56C:  ORRS            R0, R1
3FF56E:  BNE.W           loc_3FF1E8
3FF572:  LDRB.W          R0, [R10,#0x3A]
3FF576:  AND.W           R0, R0, #7
3FF57A:  CMP             R0, #3
3FF57C:  ITTT EQ
3FF57E:  LDREQ.W         R0, [R10,#0x484]
3FF582:  ORREQ.W         R0, R0, #1
3FF586:  STREQ.W         R0, [R10,#0x484]
3FF58A:  B               loc_3FF474
