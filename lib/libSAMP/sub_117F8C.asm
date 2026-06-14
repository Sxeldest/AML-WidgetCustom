; =========================================================
; Game Engine Function: sub_117F8C
; Address            : 0x117F8C - 0x11840E
; =========================================================

117F8C:  PUSH            {R4-R7,LR}
117F8E:  ADD             R7, SP, #0xC
117F90:  PUSH.W          {R8-R11}
117F94:  SUB             SP, SP, #4
117F96:  VPUSH           {D8-D15}
117F9A:  SUB             SP, SP, #0x50
117F9C:  MOV             R10, R0
117F9E:  LDR             R0, [R0]
117FA0:  ADD             R2, SP, #0xB0+var_70
117FA2:  MOV             R4, R1
117FA4:  MOV             R1, R10
117FA6:  LDR             R3, [R0,#8]
117FA8:  MOVS            R0, #0x42A00000
117FAE:  STRD.W          R0, R0, [SP,#0xB0+var_70]
117FB2:  ADD             R0, SP, #0xB0+var_68
117FB4:  BLX             R3
117FB6:  LDR.W           R0, [R10]
117FBA:  MOV             R1, R10
117FBC:  VLDR            S20, [SP,#0xB0+var_68]
117FC0:  VLDR            S18, [SP,#0xB0+var_64]
117FC4:  LDR             R2, [R0,#0x14]
117FC6:  ADD             R0, SP, #0xB0+var_70
117FC8:  BLX             R2
117FCA:  LDR.W           R0, [R10]
117FCE:  MOV             R1, R10
117FD0:  VLDR            S24, [SP,#0xB0+var_70]
117FD4:  LDR             R2, [R0,#0x4C]
117FD6:  ADD             R0, SP, #0xB0+var_78
117FD8:  BLX             R2
117FDA:  LDR.W           R0, [R10]
117FDE:  MOV             R1, R10
117FE0:  VLDR            S26, [SP,#0xB0+var_68]
117FE4:  VLDR            S28, [SP,#0xB0+var_78]
117FE8:  LDR             R2, [R0,#0x14]
117FEA:  ADD             R0, SP, #0xB0+var_70
117FEC:  MOV             R5, R0
117FEE:  BLX             R2
117FF0:  MOV             R9, R10
117FF2:  MOV             R1, R10
117FF4:  LDR.W           R0, [R9],#0x5C
117FF8:  VLDR            S22, [SP,#0xB0+var_6C]
117FFC:  LDR             R2, [R0,#0x4C]
117FFE:  ADD             R0, SP, #0xB0+var_78
118000:  BLX             R2
118002:  VLDR            S0, =-0.8
118006:  VMOV.F32        S16, #0.5
11800A:  VLDR            S2, =0.35
11800E:  MOV.W           R2, #0xFFFFFFFF
118012:  VMLA.F32        S24, S28, S0
118016:  VLDR            S0, [SP,#0xB0+var_74]
11801A:  VMUL.F32        S26, S26, S2
11801E:  VLDR            S28, [SP,#0xB0+var_68]
118022:  LDR             R0, [SP,#0xB0+var_64]
118024:  VMOV            R3, S28
118028:  STRD.W          R0, R5, [SP,#0xB0+var_B0]
11802C:  STR             R2, [SP,#0xB0+var_70]
11802E:  MOV             R0, R9
118030:  VMLS.F32        S22, S0, S16
118034:  VMLA.F32        S26, S24, S16
118038:  VMOV            R11, S22
11803C:  VMOV            R1, S26
118040:  MOV             R2, R11
118042:  STR             R1, [SP,#0xB0+var_84]
118044:  BL              sub_163176
118048:  VMOV.F32        S0, #0.25
11804C:  MOVW            R1, #0x23FF
118050:  VMOV.F32        S24, S22
118054:  LSLS            R0, R4, #0x1D
118056:  VMOV.F32        S30, S26
11805A:  MOVT            R1, #0xFF23
11805E:  MOV             R5, R10
118060:  ITT PL
118062:  MOVWPL          R1, #0xCA60
118066:  MOVTPL          R1, #0xFF5D
11806A:  LDR.W           R0, [R5,#0x20]!
11806E:  STR             R1, [SP,#0xB0+var_98]
118070:  VMUL.F32        S2, S18, S0
118074:  LDR             R6, [R0,#4]
118076:  VMUL.F32        S0, S20, S0
11807A:  MOVS            R0, #0
11807C:  STRD.W          R1, R0, [SP,#0xB0+var_A8]
118080:  ADD.W           R1, R5, #0x2C ; ','
118084:  MOV             R0, R5
118086:  STR             R1, [SP,#0xB0+var_94]
118088:  VMLA.F32        S24, S2, S16
11808C:  VMLA.F32        S30, S0, S16
118090:  VSUB.F32        S18, S18, S2
118094:  VSUB.F32        S20, S20, S0
118098:  VMOV            R8, S24
11809C:  VMOV            R2, S30
1180A0:  VSTR            S18, [SP,#0xB0+var_AC]
1180A4:  VSTR            S20, [SP,#0xB0+var_B0]
1180A8:  STR             R2, [SP,#0xB0+var_88]
1180AA:  MOV             R3, R8
1180AC:  BLX             R6
1180AE:  VLDR            S0, =1.1
1180B2:  MOV.W           R1, #0xFFFFFFFF
1180B6:  STR             R1, [SP,#0xB0+var_70]
1180B8:  MOV             R2, R11
1180BA:  VMUL.F32        S28, S28, S0
1180BE:  LDRD.W          R3, R0, [SP,#0xB0+var_68]
1180C2:  STR             R0, [SP,#0xB0+var_B0]
1180C4:  ADD             R0, SP, #0xB0+var_70
1180C6:  STR             R0, [SP,#0xB0+var_AC]
1180C8:  MOV             R0, R9
1180CA:  VADD.F32        S0, S26, S28
1180CE:  VMOV            R1, S0
1180D2:  STR             R1, [SP,#0xB0+var_8C]
1180D4:  BL              sub_163176
1180D8:  VADD.F32        S0, S30, S28
1180DC:  MOVW            R1, #0x7B23
1180E0:  LSLS            R0, R4, #0x1E
1180E2:  MOVT            R1, #0xFFFF
1180E6:  IT PL
1180E8:  MOVPL.W         R1, #0xFFFFFFFF
1180EC:  LDR             R0, [R5]
1180EE:  STR             R1, [SP,#0xB0+var_A0]
1180F0:  MOV             R3, R8
1180F2:  MOV             R11, R4
1180F4:  LDR             R6, [R0,#4]
1180F6:  MOVS            R0, #0
1180F8:  STR             R1, [SP,#0xB0+var_A8]
1180FA:  ADD.W           R1, R5, #0x34 ; '4'
1180FE:  VMOV            R2, S0
118102:  STR             R0, [SP,#0xB0+var_A4]
118104:  MOV             R0, R5
118106:  VSTR            S20, [SP,#0xB0+var_B0]
11810A:  VSTR            S18, [SP,#0xB0+var_AC]
11810E:  STR             R1, [SP,#0xB0+var_9C]
118110:  STR             R2, [SP,#0xB0+var_90]
118112:  BLX             R6
118114:  VADD.F32        S0, S22, S28
118118:  LDRD.W          R3, R0, [SP,#0xB0+var_68]
11811C:  MOV.W           R1, #0xFFFFFFFF
118120:  STR             R1, [SP,#0xB0+var_70]
118122:  LDR             R1, [SP,#0xB0+var_84]
118124:  STR             R0, [SP,#0xB0+var_B0]
118126:  ADD             R0, SP, #0xB0+var_70
118128:  STR             R0, [SP,#0xB0+var_AC]
11812A:  MOV             R0, R9
11812C:  VMOV            R6, S0
118130:  MOV             R2, R6
118132:  BL              sub_163176
118136:  VADD.F32        S0, S24, S28
11813A:  LSLS            R0, R4, #0x1C
11813C:  MOV             R0, #0xFF8F827F
118144:  ITT PL
118146:  MOVWPL          R0, #0xCA60
11814A:  MOVTPL          R0, #0xFF5D
11814E:  LDR             R1, [R5]
118150:  LDR             R2, [SP,#0xB0+var_88]
118152:  LDR             R4, [R1,#4]
118154:  ADD.W           R1, R5, #0x38 ; '8'
118158:  VMOV            R8, S0
11815C:  STR             R0, [SP,#0xB0+var_A8]
11815E:  MOVS            R0, #0
118160:  VSTR            S20, [SP,#0xB0+var_B0]
118164:  STR             R0, [SP,#0xB0+var_A4]
118166:  MOV             R0, R5
118168:  VSTR            S18, [SP,#0xB0+var_AC]
11816C:  MOV             R3, R8
11816E:  BLX             R4
118170:  LDRD.W          R3, R0, [SP,#0xB0+var_68]
118174:  MOV.W           R1, #0xFFFFFFFF
118178:  STR             R1, [SP,#0xB0+var_70]
11817A:  MOV             R2, R6
11817C:  LDR             R1, [SP,#0xB0+var_8C]
11817E:  STR             R0, [SP,#0xB0+var_B0]
118180:  ADD             R0, SP, #0xB0+var_70
118182:  STR             R0, [SP,#0xB0+var_AC]
118184:  MOV             R0, R9
118186:  BL              sub_163176
11818A:  MOVW            R6, #0xCA60
11818E:  MOVS.W          R0, R11,LSL#31
118192:  MOVT            R6, #0xFF5D
118196:  ADD.W           R9, R5, #0x30 ; '0'
11819A:  IT EQ
11819C:  MOVEQ.W         R6, #0xFFFFFFFF
1181A0:  LDR             R0, [R5]
1181A2:  LDR             R2, [SP,#0xB0+var_90]
1181A4:  MOV             R1, R9
1181A6:  MOV             R3, R8
1181A8:  LDR             R4, [R0,#4]
1181AA:  MOVS            R0, #0
1181AC:  STR             R0, [SP,#0xB0+var_A4]
1181AE:  MOV             R0, R5
1181B0:  STR             R6, [SP,#0xB0+var_A8]
1181B2:  VSTR            S20, [SP,#0xB0+var_B0]
1181B6:  VSTR            S18, [SP,#0xB0+var_AC]
1181BA:  BLX             R4
1181BC:  ADD             R0, SP, #0xB0+var_70; this
1181BE:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
1181C2:  LDRD.W          R0, R1, [R5,#0x10]
1181C6:  LDRD.W          R2, R3, [SP,#0xB0+var_70]
1181CA:  LDRB.W          R4, [R5,#0x28]
1181CE:  SUBS            R0, R2, R0
1181D0:  MOVW            R2, #:lower16:unk_7C830
1181D4:  SBC.W           R1, R3, R1
1181D8:  MOVT            R2, #:upper16:unk_7C830
1181DC:  CBNZ            R4, loc_1181EA
1181DE:  SUBS            R3, R2, R0
1181E0:  MOV.W           R3, #0
1181E4:  SBCS            R3, R1
1181E6:  BLT.W           loc_118400
1181EA:  SUBS            R2, R0, R2
1181EC:  SBCS.W          R2, R1, #0
1181F0:  BGE             loc_118210
1181F2:  MOV.W           R2, #0x7D0
1181F6:  MOVS            R3, #0
1181F8:  BLX             sub_221404
1181FC:  CMP             R4, #0
1181FE:  IT EQ
118200:  RSBEQ.W         R0, R0, #0xFF
118204:  LSLS            R4, R0, #0x18
118206:  B               loc_118214
118208:  DCFS -0.8
11820C:  DCFS 0.35
118210:  MOV.W           R4, #0xFF000000
118214:  BIC.W           R0, R6, #0xFF000000
118218:  MOV             R1, R10
11821A:  STR             R0, [SP,#0xB0+var_8C]
11821C:  ADD.W           R2, R10, #0x24 ; '$'
118220:  LDR.W           R0, [R1,#0x10]!
118224:  STR.W           R9, [SP,#0xB0+var_84]
118228:  LDR             R3, [R0,#4]
11822A:  ADD             R0, SP, #0xB0+var_78
11822C:  BLX             R3
11822E:  LDR.W           R0, [R10]
118232:  MOV             R1, R10
118234:  LDR             R2, [R0,#0x14]
118236:  ADD             R0, SP, #0xB0+var_80
118238:  BLX             R2
11823A:  LDR.W           R0, [R10]
11823E:  MOV             R1, R10
118240:  VLDR            S18, [SP,#0xB0+var_78]
118244:  VLDR            S20, [SP,#0xB0+var_80]
118248:  LDR             R2, [R0,#0x14]
11824A:  ADD             R0, SP, #0xB0+var_80
11824C:  BLX             R2
11824E:  VDIV.F32        S0, S20, S18
118252:  LDR             R0, [SP,#0xB0+var_80]
118254:  STR             R0, [SP,#0xB0+var_78]
118256:  MOV             R1, R10
118258:  LDR.W           R0, [R10]
11825C:  LDR             R2, [R0,#0x14]
11825E:  ADD             R0, SP, #0xB0+var_80
118260:  VLDR            S2, [SP,#0xB0+var_74]
118264:  VMUL.F32        S0, S0, S2
118268:  VSTR            S0, [SP,#0xB0+var_74]
11826C:  BLX             R2
11826E:  VLDR            S0, [SP,#0xB0+var_74]
118272:  MOVS            R1, #0
118274:  VLDR            S2, [SP,#0xB0+var_7C]
118278:  MOV             R8, R4
11827A:  LDR.W           R0, [R10,#0x20]
11827E:  ORN.W           R4, R4, #0xFF000000
118282:  VSUB.F32        S2, S2, S0
118286:  LDR             R3, [SP,#0xB0+var_78]
118288:  LDR             R6, [R0]
11828A:  MOV             R0, R5
11828C:  STR             R4, [SP,#0xB0+var_AC]
11828E:  VSTR            S0, [SP,#0xB0+var_B0]
118292:  VMUL.F32        S20, S2, S16
118296:  VMOV            R2, S20
11829A:  BLX             R6
11829C:  VMOV.F32        S0, #0.875
1182A0:  VLDR            S4, [SP,#0xB0+var_74]
1182A4:  VLDR            S6, [SP,#0xB0+var_68]
1182A8:  ADD.W           R1, R10, #0x6C ; 'l'
1182AC:  VLDR            S8, [SP,#0xB0+var_64]
1182B0:  VLDR            S2, [SP,#0xB0+var_78]
1182B4:  LDR.W           R0, [R10,#0x20]
1182B8:  STR             R4, [SP,#0xB0+var_88]
1182BA:  VMUL.F32        S0, S4, S0
1182BE:  VDIV.F32        S10, S0, S6
1182C2:  VMUL.F32        S22, S6, S10
1182C6:  VSTR            S0, [SP,#0xB0+var_74]
1182CA:  VDIV.F32        S10, S0, S8
1182CE:  VADD.F32        S6, S22, S22
1182D2:  VSTR            S22, [SP,#0xB0+var_68]
1182D6:  VADD.F32        S18, S6, S22
1182DA:  VLDR            S6, =0.0625
1182DE:  VMLA.F32        S20, S4, S6
1182E2:  VNMLS.F32       S18, S2, S16
1182E6:  VMOV            R11, S20
1182EA:  VMUL.F32        S2, S8, S10
1182EE:  VMOV            R2, S18
1182F2:  VSTR            S2, [SP,#0xB0+var_64]
1182F6:  LDR             R6, [R0,#4]
1182F8:  MOV             R0, #0x3ECCCCCD
118300:  VSTR            S22, [SP,#0xB0+var_B0]
118304:  STRD.W          R4, R0, [SP,#0xB0+var_A8]
118308:  MOV             R0, R5
11830A:  VSTR            S2, [SP,#0xB0+var_AC]
11830E:  MOV             R3, R11
118310:  BLX             R6
118312:  VMOV.F32        S0, #1.25
118316:  VMUL.F32        S16, S22, S0
11831A:  CBZ             R0, loc_118322
11831C:  MOVS            R0, #0x80
11831E:  STR.W           R0, [R10,#0x44]
118322:  VADD.F32        S18, S16, S18
118326:  LDR             R0, [SP,#0xB0+var_A0]
118328:  LDRD.W          R1, R3, [SP,#0xB0+var_68]
11832C:  MOV             R4, R8
11832E:  BIC.W           R9, R0, #0xFF000000
118332:  LDR             R0, [R5]
118334:  LDR             R6, [R0,#4]
118336:  LDR             R0, [SP,#0xB0+var_8C]
118338:  VMOV            R2, S18
11833C:  STRD.W          R1, R3, [SP,#0xB0+var_B0]
118340:  ORR.W           R0, R0, R8
118344:  STR             R0, [SP,#0xB0+var_A8]
118346:  MOVW            R0, #0xCCCD
11834A:  LDR             R1, [SP,#0xB0+var_84]
11834C:  MOVT            R0, #0x3ECC
118350:  MOV             R3, R11
118352:  STR             R0, [SP,#0xB0+var_A4]
118354:  MOV             R0, R5
118356:  BLX             R6
118358:  CBZ             R0, loc_118360
11835A:  MOVS            R0, #1
11835C:  STR.W           R0, [R10,#0x44]
118360:  VADD.F32        S18, S16, S18
118364:  LDR             R0, [SP,#0xB0+var_98]
118366:  MOV             R1, #0x7FEBFF
11836E:  AND.W           R8, R0, R1
118372:  LDR             R0, [R5]
118374:  LDRD.W          R1, R3, [SP,#0xB0+var_68]
118378:  LDR             R6, [R0,#4]
11837A:  ORR.W           R0, R4, R9
11837E:  VMOV            R2, S18
118382:  STRD.W          R1, R3, [SP,#0xB0+var_B0]
118386:  LDR             R1, [SP,#0xB0+var_9C]
118388:  MOVW            R9, #0xCCCD
11838C:  STR             R0, [SP,#0xB0+var_A8]
11838E:  MOVT            R9, #0x3ECC
118392:  MOV             R0, R5
118394:  MOV             R3, R11
118396:  STR.W           R9, [SP,#0xB0+var_A4]
11839A:  BLX             R6
11839C:  CBZ             R0, loc_1183A4
11839E:  MOVS            R0, #2
1183A0:  STR.W           R0, [R10,#0x44]
1183A4:  VADD.F32        S18, S16, S18
1183A8:  LDR             R0, [R5]
1183AA:  LDRD.W          R1, R3, [SP,#0xB0+var_68]
1183AE:  LDR             R6, [R0,#4]
1183B0:  ORR.W           R0, R4, R8
1183B4:  STRD.W          R1, R3, [SP,#0xB0+var_B0]
1183B8:  MOV             R3, R11
1183BA:  LDR             R1, [SP,#0xB0+var_94]
1183BC:  STRD.W          R0, R9, [SP,#0xB0+var_A8]
1183C0:  MOV             R0, R5
1183C2:  VMOV            R2, S18
1183C6:  BLX             R6
1183C8:  CBZ             R0, loc_1183D0
1183CA:  MOVS            R0, #4
1183CC:  STR.W           R0, [R10,#0x44]
1183D0:  VADD.F32        S0, S16, S18
1183D4:  LDR.W           R0, [R10,#0x20]
1183D8:  LDRD.W          R1, R3, [SP,#0xB0+var_68]
1183DC:  LDR             R6, [R0,#4]
1183DE:  STRD.W          R1, R3, [SP,#0xB0+var_B0]
1183E2:  ADD.W           R1, R10, #0x70 ; 'p'
1183E6:  LDR             R0, [SP,#0xB0+var_88]
1183E8:  MOV             R3, R11
1183EA:  STRD.W          R0, R9, [SP,#0xB0+var_A8]
1183EE:  MOV             R0, R5
1183F0:  VMOV            R2, S0
1183F4:  BLX             R6
1183F6:  CBZ             R0, loc_118400
1183F8:  MOV.W           R0, #0x100
1183FC:  STR.W           R0, [R10,#0x44]
118400:  ADD             SP, SP, #0x50 ; 'P'
118402:  VPOP            {D8-D15}
118406:  ADD             SP, SP, #4
118408:  POP.W           {R8-R11}
11840C:  POP             {R4-R7,PC}
