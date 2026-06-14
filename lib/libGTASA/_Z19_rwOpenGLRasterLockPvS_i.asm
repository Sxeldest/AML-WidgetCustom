; =========================================================
; Game Engine Function: _Z19_rwOpenGLRasterLockPvS_i
; Address            : 0x1AE0E8 - 0x1AE33E
; =========================================================

1AE0E8:  PUSH            {R4-R7,LR}
1AE0EA:  ADD             R7, SP, #0xC
1AE0EC:  PUSH.W          {R8-R11}
1AE0F0:  SUB             SP, SP, #0x1C
1AE0F2:  MOV             R8, R1
1AE0F4:  MOV             R4, R0
1AE0F6:  MOV             R10, R2
1AE0F8:  MOV             R0, R8
1AE0FA:  MOV             R6, R0
1AE0FC:  LDR             R0, [R6]
1AE0FE:  CMP             R6, R0
1AE100:  BNE             loc_1AE0FA
1AE102:  LDRB.W          R0, [R8,#0x20]
1AE106:  MOV.W           R5, R10,LSR#8
1AE10A:  AND.W           R0, R0, #7
1AE10E:  SUBS            R1, R0, #4
1AE110:  CMP             R1, #2
1AE112:  BCC             loc_1AE1DA
1AE114:  CMP             R0, #0
1AE116:  BEQ             loc_1AE1DA
1AE118:  CMP             R0, #2
1AE11A:  BNE             loc_1AE21A
1AE11C:  LSLS            R0, R5, #0x18
1AE11E:  MOV.W           R5, #0
1AE122:  ITT EQ
1AE124:  LDREQ.W         R0, [R8,#4]
1AE128:  CMPEQ           R0, #0
1AE12A:  BNE             loc_1AE21C
1AE12C:  LDR             R0, =(RasterExtOffset_ptr - 0x1AE134)
1AE12E:  STR             R4, [SP,#0x38+var_28]
1AE130:  ADD             R0, PC; RasterExtOffset_ptr
1AE132:  LDR             R1, [R6,#4]
1AE134:  LDR             R0, [R0]; RasterExtOffset
1AE136:  CMP             R1, #0
1AE138:  LDR             R0, [R0]
1AE13A:  ADD             R0, R6
1AE13C:  STR             R0, [SP,#0x38+var_2C]
1AE13E:  BNE             loc_1AE184
1AE140:  LDR             R0, =(dgGGlobals_ptr - 0x1AE148)
1AE142:  LDR             R1, [R6,#0x10]
1AE144:  ADD             R0, PC; dgGGlobals_ptr
1AE146:  LDR             R2, [R6,#0x18]
1AE148:  LDR             R0, [R0]; dgGGlobals
1AE14A:  LDR             R3, [R0,#(dword_6B31F8 - 0x6B31F4)]
1AE14C:  MUL.W           R0, R1, R2
1AE150:  LDR             R1, [R3]
1AE152:  BLX             R1
1AE154:  MOV             R5, R0
1AE156:  LDR             R0, [R6,#0x10]
1AE158:  STR             R5, [R6,#4]
1AE15A:  CMP             R0, #1
1AE15C:  BLT             loc_1AE184
1AE15E:  ADDS            R4, R0, #1
1AE160:  MOVW            R11, #0x1401
1AE164:  MOVW            R9, #0x1908
1AE168:  LDR             R2, [R6,#0xC]; int
1AE16A:  SUBS            R1, R4, #2; int
1AE16C:  MOVS            R0, #0; int
1AE16E:  MOVS            R3, #1; int
1AE170:  STRD.W          R9, R11, [SP,#0x38+var_38]; unsigned int
1AE174:  STR             R5, [SP,#0x38+var_30]; void *
1AE176:  BLX             j__Z16emu_glReadPixelsiiiijjPv; emu_glReadPixels(int,int,int,int,uint,uint,void *)
1AE17A:  LDR             R0, [R6,#0x18]
1AE17C:  SUBS            R4, #1
1AE17E:  CMP             R4, #1
1AE180:  ADD             R5, R0
1AE182:  BGT             loc_1AE168
1AE184:  LDR             R0, [SP,#0x38+var_2C]
1AE186:  MOV             R1, R0
1AE188:  LDR             R0, [R1,#0x10]
1AE18A:  ADDS            R0, #1
1AE18C:  STR             R0, [R1,#0x10]
1AE18E:  MOVS.W          R0, R10,LSL#30
1AE192:  ITTT MI
1AE194:  LDRHMI.W        R0, [R8,#0x30]
1AE198:  ORRMI.W         R0, R0, #2
1AE19C:  STRHMI.W        R0, [R8,#0x30]
1AE1A0:  MOVS.W          R0, R10,LSL#31
1AE1A4:  LDR             R5, [SP,#0x38+var_28]
1AE1A6:  ITTT NE
1AE1A8:  LDRHNE.W        R0, [R8,#0x30]
1AE1AC:  ORRNE.W         R0, R0, #4
1AE1B0:  STRHNE.W        R0, [R8,#0x30]
1AE1B4:  LDRD.W          R0, R1, [R8,#0x14]
1AE1B8:  LDRSH.W         R2, [R8,#0x1E]
1AE1BC:  LDR             R6, [R6,#4]
1AE1BE:  LDRSH.W         R3, [R8,#0x1C]
1AE1C2:  MLA.W           R1, R1, R2, R6
1AE1C6:  ASRS            R2, R0, #0x1F
1AE1C8:  ADD.W           R0, R0, R2,LSR#29
1AE1CC:  ASRS            R0, R0, #3
1AE1CE:  MLA.W           R0, R0, R3, R1
1AE1D2:  STR.W           R0, [R8,#4]
1AE1D6:  STR             R0, [R5]
1AE1D8:  B               loc_1AE216
1AE1DA:  LDRD.W          R1, R0, [R8]
1AE1DE:  CMP             R1, R8
1AE1E0:  BEQ             loc_1AE1E6
1AE1E2:  CBNZ            R0, loc_1AE1E8
1AE1E4:  B               loc_1AE216
1AE1E6:  CBZ             R0, loc_1AE226
1AE1E8:  LDRD.W          R1, R2, [R8,#0xC]
1AE1EC:  STRD.W          R1, R2, [R8,#0x24]
1AE1F0:  MOVS.W          R1, R10,LSL#30
1AE1F4:  ITTT MI
1AE1F6:  LDRHMI.W        R1, [R8,#0x30]
1AE1FA:  ORRMI.W         R1, R1, #2
1AE1FE:  STRHMI.W        R1, [R8,#0x30]
1AE202:  MOVS.W          R1, R10,LSL#31
1AE206:  ITTT NE
1AE208:  LDRHNE.W        R1, [R8,#0x30]
1AE20C:  ORRNE.W         R1, R1, #4
1AE210:  STRHNE.W        R1, [R8,#0x30]
1AE214:  STR             R0, [R4]
1AE216:  MOVS            R5, #1
1AE218:  B               loc_1AE21C
1AE21A:  MOVS            R5, #0
1AE21C:  MOV             R0, R5
1AE21E:  ADD             SP, SP, #0x1C
1AE220:  POP.W           {R8-R11}
1AE224:  POP             {R4-R7,PC}
1AE226:  LDRB.W          R2, [R8,#0x22]
1AE22A:  MOVS            R0, #0xD
1AE22C:  MOV.W           R1, #0x6000
1AE230:  MOVT            R0, #0x8000
1AE234:  TST.W           R1, R2,LSL#8
1AE238:  BEQ             loc_1AE286
1AE23A:  MOVS            R3, #1; int
1AE23C:  MOV             R6, R8
1AE23E:  UXTB            R0, R5; int
1AE240:  LDR.W           R1, [R6,#0xC]!; int
1AE244:  ADD.W           R9, R6, #0xC
1AE248:  MOV             R11, R6
1AE24A:  LDR.W           R2, [R11,#4]!; int
1AE24E:  STRD.W          R1, R2, [R6,#0x18]
1AE252:  STRD.W          R6, R11, [SP,#0x38+var_38]; int *
1AE256:  STR.W           R9, [SP,#0x38+var_30]; int *
1AE25A:  BLX             j__Z25_rwOpenGLDescribeMipLeveliiiiPiS_S_; _rwOpenGLDescribeMipLevel(int,int,int,int,int *,int *,int *)
1AE25E:  CBZ             R0, loc_1AE2A8
1AE260:  LDR.W           R0, [R8,#4]
1AE264:  CMP             R0, #0
1AE266:  BNE             loc_1AE1E8
1AE268:  LDR             R0, =(dgGGlobals_ptr - 0x1AE272)
1AE26A:  LDRB.W          R2, [R8,#0x20]
1AE26E:  ADD             R0, PC; dgGGlobals_ptr
1AE270:  LDR             R0, [R0]; dgGGlobals
1AE272:  LDR             R0, [R0,#(dword_6B31F8 - 0x6B31F4)]
1AE274:  LDR             R1, [R0]
1AE276:  LSLS            R0, R2, #0x1D
1AE278:  BEQ             loc_1AE2CA
1AE27A:  LDR.W           R0, [R9]
1AE27E:  LDR.W           R2, [R11]
1AE282:  MULS            R0, R2
1AE284:  B               loc_1AE306
1AE286:  LSLS            R1, R2, #8
1AE288:  AND.W           R1, R1, #0xF00
1AE28C:  SUB.W           R3, R1, #0x100
1AE290:  LSRS            R1, R3, #8
1AE292:  CMP             R1, #6
1AE294:  BCS             loc_1AE2A2
1AE296:  UXTB            R1, R1
1AE298:  MOVS            R2, #0x37 ; '7'
1AE29A:  LSR.W           R1, R2, R1
1AE29E:  LSLS            R1, R1, #0x1F
1AE2A0:  BNE             loc_1AE2C2
1AE2A2:  MOVS            R5, #0
1AE2A4:  STR             R5, [SP,#0x38+var_24]
1AE2A6:  B               loc_1AE2B4
1AE2A8:  MOVS            R0, #0xD
1AE2AA:  MOVS            R5, #0
1AE2AC:  MOVT            R0, #0x8000
1AE2B0:  STR             R5, [SP,#0x38+var_24]
1AE2B2:  ADDS            R0, #2; int
1AE2B4:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1AE2B8:  STR             R0, [SP,#0x38+var_20]
1AE2BA:  ADD             R0, SP, #0x38+var_24
1AE2BC:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1AE2C0:  B               loc_1AE21C
1AE2C2:  ADR             R1, dword_1AE340
1AE2C4:  ASRS            R0, R3, #6
1AE2C6:  LDR             R3, [R1,R0]
1AE2C8:  B               loc_1AE23C
1AE2CA:  LDR             R0, [R6]
1AE2CC:  MOVS            R3, #4
1AE2CE:  LDR.W           R2, [R11]
1AE2D2:  SUBS            R0, #1
1AE2D4:  SUBS            R2, #1
1AE2D6:  ORR.W           R0, R0, R0,LSR#16
1AE2DA:  ORR.W           R2, R2, R2,LSR#16
1AE2DE:  ORR.W           R0, R0, R0,LSR#8
1AE2E2:  ORR.W           R2, R2, R2,LSR#8
1AE2E6:  ORR.W           R0, R0, R0,LSR#4
1AE2EA:  ORR.W           R2, R2, R2,LSR#4
1AE2EE:  ORR.W           R0, R0, R0,LSR#2
1AE2F2:  ORR.W           R2, R2, R2,LSR#2
1AE2F6:  ORR.W           R0, R0, R0,LSR#1
1AE2FA:  ORR.W           R2, R2, R2,LSR#1
1AE2FE:  ADD.W           R0, R3, R0,LSL#2
1AE302:  ADDS            R2, #1
1AE304:  MULS            R0, R2
1AE306:  BLX             R1
1AE308:  CMP             R0, #0
1AE30A:  STR.W           R0, [R8,#4]
1AE30E:  BNE.W           loc_1AE1E8
1AE312:  MOVS            R5, #0
1AE314:  STR             R5, [SP,#0x38+var_24]
1AE316:  LDR.W           R0, [R8,#0x10]
1AE31A:  LDR.W           R1, [R8,#0x18]
1AE31E:  MULS            R1, R0
1AE320:  MOVS            R0, #0x80000013; int
1AE328:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1AE32C:  STR             R0, [SP,#0x38+var_20]
1AE32E:  ADD             R0, SP, #0x38+var_24
1AE330:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1AE334:  LDRD.W          R0, R1, [R8,#0x24]
1AE338:  STRD.W          R0, R1, [R8,#0xC]
1AE33C:  B               loc_1AE21C
