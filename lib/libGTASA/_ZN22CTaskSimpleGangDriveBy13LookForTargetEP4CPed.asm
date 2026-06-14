; =========================================================
; Game Engine Function: _ZN22CTaskSimpleGangDriveBy13LookForTargetEP4CPed
; Address            : 0x4E4FB0 - 0x4E5398
; =========================================================

4E4FB0:  PUSH            {R4-R7,LR}
4E4FB2:  ADD             R7, SP, #0xC
4E4FB4:  PUSH.W          {R11}
4E4FB8:  VPUSH           {D8-D14}
4E4FBC:  SUB             SP, SP, #0x10
4E4FBE:  MOV             R4, R0
4E4FC0:  MOV             R5, R1
4E4FC2:  LDRD.W          R0, R6, [R4,#0x30]
4E4FC6:  CMP             R6, #0
4E4FC8:  VLDR            S16, [R0,#8]
4E4FCC:  BEQ             loc_4E4FFC
4E4FCE:  LDR             R1, [R6,#0x14]
4E4FD0:  CBNZ            R1, loc_4E4FE2
4E4FD2:  MOV             R0, R6; this
4E4FD4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4E4FD8:  LDR             R1, [R6,#0x14]; CMatrix *
4E4FDA:  ADDS            R0, R6, #4; this
4E4FDC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4E4FE0:  LDR             R1, [R6,#0x14]
4E4FE2:  ADD.W           R2, R4, #0x38 ; '8'
4E4FE6:  ADD             R0, SP, #0x58+var_54
4E4FE8:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4E4FEC:  LDR             R0, [R5,#0x14]
4E4FEE:  VLDR            S0, [SP,#0x58+var_54]
4E4FF2:  VLDR            S2, [SP,#0x58+var_50]
4E4FF6:  VLDR            S4, [SP,#0x58+var_4C]
4E4FFA:  B               loc_4E500A
4E4FFC:  LDR             R0, [R5,#0x14]
4E4FFE:  VLDR            S0, [R4,#0x38]
4E5002:  VLDR            S2, [R4,#0x3C]
4E5006:  VLDR            S4, [R4,#0x40]
4E500A:  ADD.W           R1, R0, #0x30 ; '0'
4E500E:  CMP             R0, #0
4E5010:  IT EQ
4E5012:  ADDEQ           R1, R5, #4
4E5014:  VLDR            S6, [R1]
4E5018:  VLDR            S8, [R1,#4]
4E501C:  VSUB.F32        S26, S0, S6
4E5020:  VLDR            S10, [R1,#8]
4E5024:  VSUB.F32        S24, S2, S8
4E5028:  VSUB.F32        S22, S4, S10
4E502C:  VMOV            R0, S26
4E5030:  VMOV            R1, S24; x
4E5034:  VMUL.F32        S0, S24, S24
4E5038:  VMUL.F32        S2, S26, S26
4E503C:  VMUL.F32        S4, S22, S22
4E5040:  VADD.F32        S0, S2, S0
4E5044:  VADD.F32        S18, S0, S4
4E5048:  EOR.W           R0, R0, #0x80000000; y
4E504C:  BLX             atan2f
4E5050:  LDR.W           R1, [R5,#0x590]
4E5054:  VMOV            S28, R0
4E5058:  LDR             R0, [R1,#0x14]
4E505A:  CBZ             R0, loc_4E506E
4E505C:  LDRD.W          R2, R1, [R0,#0x10]; x
4E5060:  EOR.W           R0, R2, #0x80000000; y
4E5064:  BLX             atan2f
4E5068:  VMOV            S0, R0
4E506C:  B               loc_4E5072
4E506E:  VLDR            S0, [R1,#0x10]
4E5072:  VSQRT.F32       S20, S18
4E5076:  VSUB.F32        S18, S28, S0
4E507A:  VLDR            S0, =3.1416
4E507E:  VCMPE.F32       S18, S0
4E5082:  VMRS            APSR_nzcv, FPSCR
4E5086:  BLE             loc_4E508E
4E5088:  VLDR            S0, =-6.2832
4E508C:  B               loc_4E50A0
4E508E:  VLDR            S0, =-3.1416
4E5092:  VCMPE.F32       S18, S0
4E5096:  VMRS            APSR_nzcv, FPSCR
4E509A:  BGE             loc_4E50A4
4E509C:  VLDR            S0, =6.2832
4E50A0:  VADD.F32        S18, S18, S0
4E50A4:  VCMPE.F32       S20, S16
4E50A8:  VLDR            S0, [R4,#0x20]
4E50AC:  VMRS            APSR_nzcv, FPSCR
4E50B0:  LDRB            R1, [R4,#0xD]
4E50B2:  MOV.W           R2, #0
4E50B6:  MOV.W           R0, #0
4E50BA:  VCMPE.F32       S20, S0
4E50BE:  IT LT
4E50C0:  MOVLT           R2, #1
4E50C2:  CMP             R1, #0
4E50C4:  STRB            R2, [R4,#0xC]
4E50C6:  STRB            R0, [R4,#0xB]
4E50C8:  BEQ             loc_4E50D2
4E50CA:  VMRS            APSR_nzcv, FPSCR
4E50CE:  BLE             loc_4E50DC
4E50D0:  B               loc_4E517C
4E50D2:  VMRS            APSR_nzcv, FPSCR
4E50D6:  ITT LT
4E50D8:  MOVLT           R0, #1
4E50DA:  STRBLT          R0, [R4,#0xD]
4E50DC:  LDR             R0, [R4,#0x34]
4E50DE:  CBZ             R0, loc_4E5108
4E50E0:  LDRB.W          R1, [R0,#0x3A]
4E50E4:  AND.W           R1, R1, #7
4E50E8:  CMP             R1, #2
4E50EA:  BEQ             loc_4E50F6
4E50EC:  CMP             R1, #3
4E50EE:  BNE             loc_4E5108
4E50F0:  ADDW            R0, R0, #0x544
4E50F4:  B               loc_4E50FA
4E50F6:  ADDW            R0, R0, #0x4CC
4E50FA:  VLDR            S0, [R0]
4E50FE:  VCMPE.F32       S0, #0.0
4E5102:  VMRS            APSR_nzcv, FPSCR
4E5106:  BLE             loc_4E517C
4E5108:  LDR             R0, [R5,#0x14]
4E510A:  ADD             R2, SP, #0x58+var_54; CVector *
4E510C:  ADD.W           R1, R0, #0x30 ; '0'
4E5110:  CMP             R0, #0
4E5112:  IT EQ
4E5114:  ADDEQ           R1, R5, #4
4E5116:  MOV             R0, R4; this
4E5118:  VLDR            S0, [R1]
4E511C:  VLDR            S2, [R1,#4]
4E5120:  VLDR            S4, [R1,#8]
4E5124:  VADD.F32        S0, S26, S0
4E5128:  VADD.F32        S2, S24, S2
4E512C:  MOV             R1, R5; CPed *
4E512E:  VADD.F32        S4, S22, S4
4E5132:  VSTR            S2, [SP,#0x58+var_50]
4E5136:  VSTR            S0, [SP,#0x58+var_54]
4E513A:  VSTR            S4, [SP,#0x58+var_4C]
4E513E:  BLX             j__ZN22CTaskSimpleGangDriveBy25LineOfSightClearForAttackEP4CPedR7CVector; CTaskSimpleGangDriveBy::LineOfSightClearForAttack(CPed *,CVector &)
4E5142:  CBZ             R0, loc_4E5182
4E5144:  LDRB            R0, [R4,#0x12]
4E5146:  CMP             R0, #6
4E5148:  SXTB            R1, R0
4E514A:  BHI             loc_4E5186
4E514C:  MOVS            R2, #1
4E514E:  LSL.W           R0, R2, R0
4E5152:  TST.W           R0, #0x63
4E5156:  BEQ             loc_4E5186
4E5158:  MOVS            R2, #0
4E515A:  MOVS            R0, #0xFF
4E515C:  MOVS            R3, #0
4E515E:  CMP             R1, #8; switch 9 cases
4E5160:  BHI.W           def_4E5164; jumptable 004E5164 default case
4E5164:  TBB.W           [PC,R1]; switch jump
4E5168:  DCB 8; jump table for switch statement
4E5169:  DCB 0x3A
4E516A:  DCB 5
4E516B:  DCB 0x37
4E516C:  DCB 0x3C
4E516D:  DCB 0x54
4E516E:  DCB 0x56
4E516F:  DCB 0x58
4E5170:  DCB 0xAC
4E5171:  ALIGN 2
4E5172:  LDR             R1, [R4,#0x24]; jumptable 004E5164 case 2
4E5174:  CMP             R1, #0xBF
4E5176:  BNE             loc_4E5200
4E5178:  MOVS            R0, #1; jumptable 004E5164 case 0
4E517A:  B               loc_4E52C0; jumptable 004E5164 case 8
4E517C:  MOVS            R0, #7
4E517E:  STRB            R0, [R4,#0xF]
4E5180:  B               def_4E52C6; jumptable 004E52C6 default case
4E5182:  MOVS            R0, #0
4E5184:  B               loc_4E538A
4E5186:  VLDR            S0, =0.7854
4E518A:  VLDR            S2, =6.2832
4E518E:  VADD.F32        S0, S18, S0
4E5192:  VCMPE.F32       S0, #0.0
4E5196:  VMRS            APSR_nzcv, FPSCR
4E519A:  VADD.F32        S2, S0, S2
4E519E:  IT LT
4E51A0:  VMOVLT.F32      S0, S2
4E51A4:  VLDR            S2, =1.5708
4E51A8:  VDIV.F32        S0, S0, S2
4E51AC:  VCVT.S32.F32    S0, S0
4E51B0:  VLDR            S2, =0.2618
4E51B4:  VCMPE.F32       S18, S2
4E51B8:  VMRS            APSR_nzcv, FPSCR
4E51BC:  VMOV            R0, S0
4E51C0:  BLE             loc_4E5230
4E51C2:  VLDR            S0, =2.8798
4E51C6:  VCMPE.F32       S18, S0
4E51CA:  VMRS            APSR_nzcv, FPSCR
4E51CE:  BGE             loc_4E5230
4E51D0:  MOV.W           R2, #0xFF000000
4E51D4:  B               loc_4E5256
4E51D6:  LDR             R1, [R4,#0x24]; jumptable 004E5164 case 3
4E51D8:  CMP             R1, #0xBF
4E51DA:  BNE             loc_4E5200
4E51DC:  MOVS            R0, #3; jumptable 004E5164 case 1
4E51DE:  B               loc_4E52C0; jumptable 004E5164 case 8
4E51E0:  LDR             R1, [R4,#0x24]; jumptable 004E5164 case 4
4E51E2:  CMP             R1, #0xBF
4E51E4:  BNE             loc_4E5200
4E51E6:  MOVS            R1, #1
4E51E8:  CMP.W           R1, R2,ASR#24
4E51EC:  MOV.W           R0, #0xFFFFFFFF
4E51F0:  MOV.W           R1, R2,ASR#24
4E51F4:  IT EQ
4E51F6:  MOVEQ           R0, #3
4E51F8:  ADDS            R1, #1
4E51FA:  IT EQ
4E51FC:  MOVEQ           R0, #1
4E51FE:  B               loc_4E52C0; jumptable 004E5164 case 8
4E5200:  UXTB            R1, R0
4E5202:  CMP             R1, #3
4E5204:  MOV             R0, R1
4E5206:  IT NE
4E5208:  MOVNE.W         R0, #0xFFFFFFFF
4E520C:  CMP             R1, #1
4E520E:  B               loc_4E52BC
4E5210:  MOVS            R0, #0; jumptable 004E5164 case 5
4E5212:  B               loc_4E52C0; jumptable 004E5164 case 8
4E5214:  MOVS            R0, #2; jumptable 004E5164 case 6
4E5216:  B               loc_4E52C0; jumptable 004E5164 case 8
4E5218:  LDR             R1, [R4,#0x24]; jumptable 004E5164 case 7
4E521A:  CMP             R1, #0xBF
4E521C:  BNE             loc_4E52AE
4E521E:  MOV.W           R0, #0xFFFFFFFF
4E5222:  CMP             R3, #1
4E5224:  IT EQ
4E5226:  MOVEQ           R0, #2
4E5228:  ADDS            R1, R3, #1
4E522A:  IT EQ
4E522C:  MOVEQ           R0, #0
4E522E:  B               loc_4E52C0; jumptable 004E5164 case 8
4E5230:  VLDR            S0, =-2.8798
4E5234:  MOVS            R2, #0
4E5236:  VLDR            S2, =-0.2618
4E523A:  MOVS            R3, #0
4E523C:  VCMPE.F32       S18, S0
4E5240:  VMRS            APSR_nzcv, FPSCR
4E5244:  VCMPE.F32       S18, S2
4E5248:  IT GT
4E524A:  MOVGT.W         R2, #0x1000000
4E524E:  VMRS            APSR_nzcv, FPSCR
4E5252:  IT GE
4E5254:  MOVGE           R2, R3
4E5256:  VLDR            S0, =1.309
4E525A:  VCMPE.F32       S18, S0
4E525E:  VMRS            APSR_nzcv, FPSCR
4E5262:  BGE             loc_4E527E
4E5264:  VLDR            S0, =-1.309
4E5268:  VCMPE.F32       S18, S0
4E526C:  VMRS            APSR_nzcv, FPSCR
4E5270:  BLE             loc_4E527E
4E5272:  MOV.W           R3, #0xFFFFFFFF
4E5276:  CMP             R1, #8
4E5278:  BLS.W           loc_4E5164
4E527C:  B               def_4E5164; jumptable 004E5164 default case
4E527E:  VLDR            S0, =-1.8326
4E5282:  MOVS            R6, #0
4E5284:  VLDR            S2, =1.8326
4E5288:  MOVS            R3, #0
4E528A:  VCMPE.F32       S18, S0
4E528E:  VMRS            APSR_nzcv, FPSCR
4E5292:  VCMPE.F32       S18, S2
4E5296:  IT LT
4E5298:  MOVLT           R6, #1
4E529A:  VMRS            APSR_nzcv, FPSCR
4E529E:  IT GT
4E52A0:  MOVGT           R3, #1
4E52A2:  ANDS            R3, R6
4E52A4:  CMP             R1, #8
4E52A6:  BLS.W           loc_4E5164
4E52AA:  MOVS            R0, #0xFF; jumptable 004E5164 default case
4E52AC:  B               loc_4E52C0; jumptable 004E5164 case 8
4E52AE:  UXTB            R1, R0
4E52B0:  CMP             R1, #2
4E52B2:  MOV             R0, R1
4E52B4:  IT NE
4E52B6:  MOVNE.W         R0, #0xFFFFFFFF
4E52BA:  CMP             R1, #0
4E52BC:  IT EQ
4E52BE:  MOVEQ           R0, R1
4E52C0:  SXTB            R0, R0; jumptable 004E5164 case 8
4E52C2:  CMP             R0, #3; switch 4 cases
4E52C4:  BHI             def_4E52C6; jumptable 004E52C6 default case
4E52C6:  TBB.W           [PC,R0]; switch jump
4E52CA:  DCB 2; jump table for switch statement
4E52CB:  DCB 0x17
4E52CC:  DCB 0x2C
4E52CD:  DCB 0x46
4E52CE:  LDRB            R0, [R4,#0xA]; jumptable 004E52C6 case 0
4E52D0:  MOVS            R1, #0xE9
4E52D2:  VLDR            S0, =0.7854
4E52D6:  CMP             R0, #0
4E52D8:  VCMPE.F32       S18, S0
4E52DC:  IT NE
4E52DE:  MOVNE           R1, #0xED
4E52E0:  VMRS            APSR_nzcv, FPSCR
4E52E4:  STR             R1, [R4,#0x24]
4E52E6:  ITT LE
4E52E8:  VCMPELE.F32     S20, S16
4E52EC:  VMRSLE          APSR_nzcv, FPSCR
4E52F0:  BGE             def_4E52C6; jumptable 004E52C6 default case
4E52F2:  VLDR            S0, =-0.7854
4E52F6:  B               loc_4E537E
4E52F8:  LDRB            R0, [R4,#0xA]; jumptable 004E52C6 case 1
4E52FA:  MOVS            R1, #0xE7
4E52FC:  VLDR            S0, =2.3562
4E5300:  CMP             R0, #0
4E5302:  VCMPE.F32       S18, S0
4E5306:  IT NE
4E5308:  MOVNE           R1, #0xEC
4E530A:  VMRS            APSR_nzcv, FPSCR
4E530E:  STR             R1, [R4,#0x24]
4E5310:  ITT LE
4E5312:  VCMPELE.F32     S20, S16
4E5316:  VMRSLE          APSR_nzcv, FPSCR
4E531A:  BGE             def_4E52C6; jumptable 004E52C6 default case
4E531C:  VLDR            S0, =0.7854
4E5320:  B               loc_4E537E
4E5322:  LDRB            R0, [R4,#0xA]; jumptable 004E52C6 case 2
4E5324:  MOVS            R1, #0xEA
4E5326:  VCMPE.F32       S20, S16
4E532A:  CMP             R0, #0
4E532C:  IT NE
4E532E:  MOVNE           R1, #0xEE
4E5330:  VMRS            APSR_nzcv, FPSCR
4E5334:  STR             R1, [R4,#0x24]
4E5336:  BGE             def_4E52C6; jumptable 004E52C6 default case
4E5338:  VLDR            S0, =-2.3562
4E533C:  VCMPE.F32       S18, S0
4E5340:  VMRS            APSR_nzcv, FPSCR
4E5344:  BGE             loc_4E5388
4E5346:  VLDR            S0, =2.3562
4E534A:  VCMPE.F32       S18, S0
4E534E:  VMRS            APSR_nzcv, FPSCR
4E5352:  BGT             def_4E52C6; jumptable 004E52C6 default case
4E5354:  B               loc_4E5388
4E5356:  LDRB            R0, [R4,#0xA]; jumptable 004E52C6 case 3
4E5358:  MOVS            R1, #0xE8
4E535A:  VLDR            S0, =-0.7854
4E535E:  CMP             R0, #0
4E5360:  VCMPE.F32       S18, S0
4E5364:  IT NE
4E5366:  MOVNE           R1, #0xEB
4E5368:  VMRS            APSR_nzcv, FPSCR
4E536C:  STR             R1, [R4,#0x24]
4E536E:  ITT LE
4E5370:  VCMPELE.F32     S20, S16
4E5374:  VMRSLE          APSR_nzcv, FPSCR
4E5378:  BGE             def_4E52C6; jumptable 004E52C6 default case
4E537A:  VLDR            S0, =-2.3562
4E537E:  VCMPE.F32       S18, S0
4E5382:  VMRS            APSR_nzcv, FPSCR
4E5386:  BLT             def_4E52C6; jumptable 004E52C6 default case
4E5388:  MOVS            R0, #1
4E538A:  STRB            R0, [R4,#0xB]
4E538C:  ADD             SP, SP, #0x10; jumptable 004E52C6 default case
4E538E:  VPOP            {D8-D14}
4E5392:  POP.W           {R11}
4E5396:  POP             {R4-R7,PC}
