; =========================================================
; Game Engine Function: sub_892E0
; Address            : 0x892E0 - 0x89412
; =========================================================

892E0:  PUSH            {R4-R7,LR}
892E2:  ADD             R7, SP, #0xC
892E4:  PUSH.W          {R8-R11}
892E8:  SUB             SP, SP, #0x14
892EA:  MOV             R9, R1
892EC:  LDR             R1, =(dword_1ACF68 - 0x892F8)
892EE:  MOV             R5, R2
892F0:  MOVW            R3, #0x2D38
892F4:  ADD             R1, PC; dword_1ACF68
892F6:  LDR             R2, [R1]
892F8:  MOVW            R1, #0x19AC
892FC:  ADD.W           R10, R2, R3
89300:  LDR             R1, [R2,R1]
89302:  CBNZ            R5, loc_8932A
89304:  ADDS.W          R2, R9, #1
89308:  BEQ             loc_89326
8930A:  MOV             R5, R9
8930C:  B               loc_8931A
8930E:  LDRB            R2, [R5,#1]
89310:  CMP             R2, #0x23 ; '#'
89312:  BEQ             loc_8932A
89314:  ADDS            R5, #1
89316:  ADDS            R2, R5, #1
89318:  BEQ             loc_89326
8931A:  LDRB            R2, [R5]
8931C:  CMP             R2, #0x23 ; '#'
8931E:  BEQ             loc_8930E
89320:  CMP             R2, #0
89322:  BNE             loc_89314
89324:  B               loc_8932A
89326:  MOV.W           R5, #0xFFFFFFFF
8932A:  CBZ             R0, loc_89358
8932C:  VMOV.F32        S0, #1.0
89330:  VLDR            S2, [R10]
89334:  VADD.F32        S0, S2, S0
89338:  VLDR            S2, [R0,#4]
8933C:  VSTR            S2, [R10]
89340:  VCMP.F32        S2, S0
89344:  VMRS            APSR_nzcv, FPSCR
89348:  ITTE GT
8934A:  MOVGT.W         R11, #1
8934E:  STRBGT.W        R11, [R10,#4]
89352:  MOVLE.W         R11, #0
89356:  B               loc_8935C
89358:  MOV.W           R11, #0
8935C:  LDR.W           R0, [R1,#0x100]
89360:  MOV             R4, R9
89362:  LDR.W           R1, [R10,#8]
89366:  CMP             R1, R0
89368:  ITT GT
8936A:  STRGT.W         R0, [R10,#8]
8936E:  MOVGT           R1, R0
89370:  SUBS            R0, R0, R1
89372:  LSLS            R0, R0, #2
89374:  STR             R0, [SP,#0x30+var_20]
89376:  LDR             R0, =(aSS - 0x8937C); "\n%*s%.*s" ...
89378:  ADD             R0, PC; "\n%*s%.*s"
8937A:  STR             R0, [SP,#0x30+var_24]
8937C:  LDR             R0, =(byte_4FDB8 - 0x89382)
8937E:  ADD             R0, PC; byte_4FDB8
89380:  MOV             R8, R0
89382:  LDR             R0, =(aS_1 - 0x89388); " %.*s" ...
89384:  ADD             R0, PC; " %.*s"
89386:  STR             R0, [SP,#0x30+var_2C]
89388:  LDR             R0, =(aSS_0 - 0x8938E); "%*s%.*s" ...
8938A:  ADD             R0, PC; "%*s%.*s"
8938C:  STR             R0, [SP,#0x30+format]
8938E:  B               loc_8939C
89390:  CMP.W           R11, #0
89394:  BNE             loc_89400
89396:  ADDS            R4, R6, #1
89398:  CMP             R6, R5
8939A:  BEQ             loc_893F8
8939C:  SUBS            R2, R5, R4; n
8939E:  MOV             R0, R4; s
893A0:  MOVS            R1, #0xA; c
893A2:  BLX             memchr
893A6:  MOV             R6, R0
893A8:  CMP             R0, #0
893AA:  IT EQ
893AC:  MOVEQ           R6, R5
893AE:  CMP             R6, R5
893B0:  IT EQ
893B2:  CMPEQ           R4, R6
893B4:  BEQ             loc_89390
893B6:  SUB.W           R0, R4, R9
893BA:  SUBS            R3, R6, R4
893BC:  CLZ.W           R0, R0
893C0:  MVN.W           R1, R11
893C4:  LSRS            R0, R0, #5
893C6:  TST             R1, R0
893C8:  BNE             loc_893D0
893CA:  STR             R4, [SP,#0x30+var_30]
893CC:  LDR             R0, [SP,#0x30+var_24]
893CE:  B               loc_893DC
893D0:  LDRB.W          R0, [R10,#4]
893D4:  CBZ             R0, loc_893EC
893D6:  STR.W           R9, [SP,#0x30+var_30]
893DA:  LDR             R0, [SP,#0x30+format]; format
893DC:  LDR             R1, [SP,#0x30+var_20]
893DE:  MOV             R2, R8
893E0:  BL              sub_99FEC
893E4:  MOVS            R0, #0
893E6:  STRB.W          R0, [R10,#4]
893EA:  B               loc_89396
893EC:  LDR             R0, [SP,#0x30+var_2C]; format
893EE:  MOV             R1, R3
893F0:  MOV             R2, R9
893F2:  BL              sub_99FEC
893F6:  B               loc_893E4
893F8:  ADD             SP, SP, #0x14
893FA:  POP.W           {R8-R11}
893FE:  POP             {R4-R7,PC}
89400:  LDR             R0, =(asc_4F02C - 0x89406); "\n" ...
89402:  ADD             R0, PC; "\n"
89404:  ADD             SP, SP, #0x14
89406:  POP.W           {R8-R11}
8940A:  POP.W           {R4-R7,LR}
8940E:  B.W             sub_99FEC
