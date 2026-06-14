; =========================================================
; Game Engine Function: sub_9D108
; Address            : 0x9D108 - 0x9D430
; =========================================================

9D108:  PUSH            {R4-R7,LR}
9D10A:  ADD             R7, SP, #0xC
9D10C:  PUSH.W          {R8,R9,R11}
9D110:  VPUSH           {D8-D9}
9D114:  SUB             SP, SP, #0x18
9D116:  MOV             R4, R0
9D118:  LDR             R0, =(__stack_chk_guard_ptr - 0x9D124)
9D11A:  VMOV.F32        S4, #1.0
9D11E:  LDR             R5, [R7,#arg_0]
9D120:  ADD             R0, PC; __stack_chk_guard_ptr
9D122:  VMOV.F32        S16, #-1.0
9D126:  VMOV.F32        S10, #0.5
9D12A:  MOV             R6, R2
9D12C:  LDR             R0, [R0]; __stack_chk_guard
9D12E:  MOV             R9, R1
9D130:  LDR             R0, [R0]
9D132:  STR             R0, [SP,#0x40+var_2C]
9D134:  AND.W           R0, R5, #0xC
9D138:  VLDR            S0, [R1]
9D13C:  CMP             R0, #0xC
9D13E:  VLDR            S6, [R2]
9D142:  VMOV.F32        S12, S4
9D146:  VLDR            S2, [R1,#4]
9D14A:  AND.W           R0, R5, #0xA
9D14E:  VLDR            S8, [R2,#4]
9D152:  VSUB.F32        S6, S6, S0
9D156:  IT EQ
9D158:  VMOVEQ.F32      S12, S10
9D15C:  CMP             R0, #0xA
9D15E:  VSUB.F32        S8, S8, S2
9D162:  AND.W           R0, R5, #3
9D166:  IT EQ
9D168:  VMOVEQ.F32      S4, S10
9D16C:  CMP             R0, #3
9D16E:  AND.W           R0, R5, #5
9D172:  IT EQ
9D174:  VMOVEQ.F32      S12, S10
9D178:  CMP             R0, #5
9D17A:  IT EQ
9D17C:  VMOVEQ.F32      S4, S10
9D180:  VMOV.F32        S10, S16
9D184:  VABS.F32        S6, S6
9D188:  VABS.F32        S8, S8
9D18C:  VMLA.F32        S10, S6, S12
9D190:  VMOV            S6, R3
9D194:  VMLA.F32        S16, S8, S4
9D198:  VCMP.F32        S10, S6
9D19C:  VMRS            APSR_nzcv, FPSCR
9D1A0:  IT GT
9D1A2:  VMOVGT.F32      S10, S6
9D1A6:  VCMP.F32        S10, S16
9D1AA:  VMRS            APSR_nzcv, FPSCR
9D1AE:  IT MI
9D1B0:  VMOVMI.F32      S16, S10
9D1B4:  CMP             R5, #0
9D1B6:  ITT NE
9D1B8:  VCMPNE.F32      S16, #0.0
9D1BC:  VMRSNE          APSR_nzcv, FPSCR
9D1C0:  BHI.W           loc_9D33E
9D1C4:  LDRD.W          R0, R1, [R4,#0x58]
9D1C8:  CMP             R0, R1
9D1CA:  BNE             loc_9D20A
9D1CC:  CMP             R0, #0
9D1CE:  ADD.W           R5, R0, #1
9D1D2:  ITTE NE
9D1D4:  ADDNE.W         R1, R0, R0,LSR#31
9D1D8:  ADDNE.W         R1, R0, R1,ASR#1
9D1DC:  MOVEQ           R1, #8
9D1DE:  CMP             R1, R5
9D1E0:  IT GT
9D1E2:  MOVGT           R5, R1
9D1E4:  CMP             R0, R5
9D1E6:  BGE             loc_9D20A
9D1E8:  LSLS            R0, R5, #3
9D1EA:  BL              sub_885E4
9D1EE:  LDR             R1, [R4,#0x60]; src
9D1F0:  MOV             R8, R0
9D1F2:  CBZ             R1, loc_9D204
9D1F4:  LDR             R0, [R4,#0x58]
9D1F6:  LSLS            R2, R0, #3; n
9D1F8:  MOV             R0, R8; dest
9D1FA:  BLX             j_memcpy
9D1FE:  LDR             R0, [R4,#0x60]
9D200:  BL              sub_88614
9D204:  LDR             R0, [R4,#0x58]
9D206:  STRD.W          R5, R8, [R4,#0x5C]
9D20A:  LDR             R1, [R4,#0x60]
9D20C:  LDRD.W          R2, R3, [R9]
9D210:  STR.W           R2, [R1,R0,LSL#3]
9D214:  ADD.W           R0, R1, R0,LSL#3
9D218:  STR             R3, [R0,#4]
9D21A:  LDR             R1, [R4,#0x58]
9D21C:  LDR             R2, [R4,#0x5C]
9D21E:  ADDS            R0, R1, #1
9D220:  STR             R0, [R4,#0x58]
9D222:  LDR.W           R3, [R9,#4]
9D226:  CMP             R0, R2
9D228:  LDR             R5, [R6]
9D22A:  STRD.W          R5, R3, [SP,#0x40+var_38]
9D22E:  BNE             loc_9D26C
9D230:  ADDS            R5, R1, #2
9D232:  CMP             R0, #0
9D234:  ITTE NE
9D236:  ADDNE.W         R1, R0, R0,LSR#31
9D23A:  ADDNE.W         R1, R0, R1,ASR#1
9D23E:  MOVEQ           R1, #8
9D240:  CMP             R1, R5
9D242:  IT GT
9D244:  MOVGT           R5, R1
9D246:  CMP             R0, R5
9D248:  BGE             loc_9D26C
9D24A:  LSLS            R0, R5, #3
9D24C:  BL              sub_885E4
9D250:  LDR             R1, [R4,#0x60]; src
9D252:  MOV             R8, R0
9D254:  CBZ             R1, loc_9D266
9D256:  LDR             R0, [R4,#0x58]
9D258:  LSLS            R2, R0, #3; n
9D25A:  MOV             R0, R8; dest
9D25C:  BLX             j_memcpy
9D260:  LDR             R0, [R4,#0x60]
9D262:  BL              sub_88614
9D266:  LDR             R0, [R4,#0x58]
9D268:  STRD.W          R5, R8, [R4,#0x5C]
9D26C:  LDR             R1, [R4,#0x60]
9D26E:  LDRD.W          R2, R3, [SP,#0x40+var_38]
9D272:  STR.W           R2, [R1,R0,LSL#3]
9D276:  ADD.W           R0, R1, R0,LSL#3
9D27A:  STR             R3, [R0,#4]
9D27C:  LDR             R1, [R4,#0x58]
9D27E:  LDR             R2, [R4,#0x5C]
9D280:  ADDS            R0, R1, #1
9D282:  STR             R0, [R4,#0x58]
9D284:  CMP             R0, R2
9D286:  BNE             loc_9D2C4
9D288:  ADDS            R5, R1, #2
9D28A:  CMP             R0, #0
9D28C:  ITTE NE
9D28E:  ADDNE.W         R1, R0, R0,LSR#31
9D292:  ADDNE.W         R1, R0, R1,ASR#1
9D296:  MOVEQ           R1, #8
9D298:  CMP             R1, R5
9D29A:  IT GT
9D29C:  MOVGT           R5, R1
9D29E:  CMP             R0, R5
9D2A0:  BGE             loc_9D2C4
9D2A2:  LSLS            R0, R5, #3
9D2A4:  BL              sub_885E4
9D2A8:  LDR             R1, [R4,#0x60]; src
9D2AA:  MOV             R8, R0
9D2AC:  CBZ             R1, loc_9D2BE
9D2AE:  LDR             R0, [R4,#0x58]
9D2B0:  LSLS            R2, R0, #3; n
9D2B2:  MOV             R0, R8; dest
9D2B4:  BLX             j_memcpy
9D2B8:  LDR             R0, [R4,#0x60]
9D2BA:  BL              sub_88614
9D2BE:  LDR             R0, [R4,#0x58]
9D2C0:  STRD.W          R5, R8, [R4,#0x5C]
9D2C4:  LDR             R1, [R4,#0x60]
9D2C6:  LDRD.W          R2, R3, [R6]
9D2CA:  STR.W           R2, [R1,R0,LSL#3]
9D2CE:  ADD.W           R0, R1, R0,LSL#3
9D2D2:  STR             R3, [R0,#4]
9D2D4:  LDR             R1, [R4,#0x58]
9D2D6:  LDR             R2, [R4,#0x5C]
9D2D8:  ADDS            R0, R1, #1
9D2DA:  STR             R0, [R4,#0x58]
9D2DC:  LDR             R3, [R6,#4]
9D2DE:  CMP             R0, R2
9D2E0:  LDR.W           R6, [R9]
9D2E4:  STRD.W          R6, R3, [SP,#0x40+var_38]
9D2E8:  BNE             loc_9D326
9D2EA:  ADDS            R6, R1, #2
9D2EC:  CMP             R0, #0
9D2EE:  ITTE NE
9D2F0:  ADDNE.W         R1, R0, R0,LSR#31
9D2F4:  ADDNE.W         R1, R0, R1,ASR#1
9D2F8:  MOVEQ           R1, #8
9D2FA:  CMP             R1, R6
9D2FC:  IT GT
9D2FE:  MOVGT           R6, R1
9D300:  CMP             R0, R6
9D302:  BGE             loc_9D326
9D304:  LSLS            R0, R6, #3
9D306:  BL              sub_885E4
9D30A:  LDR             R1, [R4,#0x60]; src
9D30C:  MOV             R5, R0
9D30E:  CBZ             R1, loc_9D320
9D310:  LDR             R0, [R4,#0x58]
9D312:  LSLS            R2, R0, #3; n
9D314:  MOV             R0, R5; dest
9D316:  BLX             j_memcpy
9D31A:  LDR             R0, [R4,#0x60]
9D31C:  BL              sub_88614
9D320:  LDR             R0, [R4,#0x58]
9D322:  STRD.W          R6, R5, [R4,#0x5C]
9D326:  LDR             R1, [R4,#0x60]
9D328:  LDRD.W          R2, R3, [SP,#0x40+var_38]
9D32C:  STR.W           R2, [R1,R0,LSL#3]
9D330:  ADD.W           R0, R1, R0,LSL#3
9D334:  STR             R3, [R0,#4]
9D336:  LDR             R0, [R4,#0x58]
9D338:  ADDS            R0, #1
9D33A:  STR             R0, [R4,#0x58]
9D33C:  B               loc_9D412
9D33E:  VMOV.F32        S4, S16
9D342:  LSLS            R0, R5, #0x1F
9D344:  VLDR            S18, =0.0
9D348:  IT EQ
9D34A:  VMOVEQ.F32      S4, S18
9D34E:  VMOV            R2, S4
9D352:  MOVS            R0, #9
9D354:  VADD.F32        S2, S2, S4
9D358:  ADD             R1, SP, #0x40+var_38
9D35A:  VADD.F32        S0, S0, S4
9D35E:  STR             R0, [SP,#0x40+var_40]
9D360:  MOV             R0, R4
9D362:  MOVS            R3, #6
9D364:  MOV.W           R8, #6
9D368:  VSTR            S2, [SP,#0x40+var_34]
9D36C:  VSTR            S0, [SP,#0x40+var_38]
9D370:  BL              sub_9CE08
9D374:  VMOV.F32        S0, S16
9D378:  LSLS            R0, R5, #0x1E
9D37A:  IT PL
9D37C:  VMOVPL.F32      S0, S18
9D380:  VMOV            R2, S0
9D384:  VLDR            S2, [R9,#4]
9D388:  MOVS            R0, #0xC
9D38A:  VLDR            S4, [R6]
9D38E:  ADD             R1, SP, #0x40+var_38
9D390:  VADD.F32        S2, S0, S2
9D394:  STR             R0, [SP,#0x40+var_40]
9D396:  VSUB.F32        S0, S4, S0
9D39A:  MOV             R0, R4
9D39C:  MOVS            R3, #9
9D39E:  VSTR            S2, [SP,#0x40+var_34]
9D3A2:  VSTR            S0, [SP,#0x40+var_38]
9D3A6:  BL              sub_9CE08
9D3AA:  VMOV.F32        S0, S16
9D3AE:  LSLS            R0, R5, #0x1C
9D3B0:  IT PL
9D3B2:  VMOVPL.F32      S0, S18
9D3B6:  VMOV            R2, S0
9D3BA:  VLDR            S4, [R6,#4]
9D3BE:  MOVS            R0, #3
9D3C0:  VLDR            S2, [R6]
9D3C4:  ADD             R1, SP, #0x40+var_38
9D3C6:  VSUB.F32        S4, S4, S0
9D3CA:  STR             R0, [SP,#0x40+var_40]
9D3CC:  VSUB.F32        S0, S2, S0
9D3D0:  MOV             R0, R4
9D3D2:  MOVS            R3, #0
9D3D4:  VSTR            S4, [SP,#0x40+var_34]
9D3D8:  VSTR            S0, [SP,#0x40+var_38]
9D3DC:  BL              sub_9CE08
9D3E0:  LSLS            R0, R5, #0x1D
9D3E2:  IT PL
9D3E4:  VMOVPL.F32      S16, S18
9D3E8:  VMOV            R2, S16
9D3EC:  VLDR            S0, [R6,#4]
9D3F0:  VLDR            S2, [R9]
9D3F4:  ADD             R1, SP, #0x40+var_38
9D3F6:  VSUB.F32        S0, S0, S16
9D3FA:  MOV             R0, R4
9D3FC:  VADD.F32        S2, S16, S2
9D400:  MOVS            R3, #3
9D402:  STR.W           R8, [SP,#0x40+var_40]
9D406:  VSTR            S0, [SP,#0x40+var_34]
9D40A:  VSTR            S2, [SP,#0x40+var_38]
9D40E:  BL              sub_9CE08
9D412:  LDR             R0, [SP,#0x40+var_2C]
9D414:  LDR             R1, =(__stack_chk_guard_ptr - 0x9D41A)
9D416:  ADD             R1, PC; __stack_chk_guard_ptr
9D418:  LDR             R1, [R1]; __stack_chk_guard
9D41A:  LDR             R1, [R1]
9D41C:  CMP             R1, R0
9D41E:  ITTTT EQ
9D420:  ADDEQ           SP, SP, #0x18
9D422:  VPOPEQ          {D8-D9}
9D426:  POPEQ.W         {R8,R9,R11}
9D42A:  POPEQ           {R4-R7,PC}
9D42C:  BLX             __stack_chk_fail
