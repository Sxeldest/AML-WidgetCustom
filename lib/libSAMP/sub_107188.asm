; =========================================================
; Game Engine Function: sub_107188
; Address            : 0x107188 - 0x107314
; =========================================================

107188:  SUB             SP, SP, #0xC
10718A:  PUSH            {R4-R7,LR}
10718C:  ADD             R7, SP, #0xC
10718E:  PUSH.W          {R8-R11}
107192:  SUB             SP, SP, #0x18
107194:  LDR             R5, =(dword_25D988 - 0x1071A4)
107196:  MOV             R4, R0
107198:  LDR             R6, =(word_25D98C - 0x1071A6)
10719A:  ADD.W           R0, R7, #8
10719E:  STM             R0!, {R1-R3}
1071A0:  ADD             R5, PC; dword_25D988
1071A2:  ADD             R6, PC; word_25D98C
1071A4:  LDRH.W          R0, [R4],#2
1071A8:  MOVS            R1, #0
1071AA:  STRH            R0, [R6]
1071AC:  ADD.W           R0, R7, #8
1071B0:  STR             R0, [SP,#0x34+var_20]
1071B2:  LDR             R0, [R5]
1071B4:  STRH.W          R1, [R7,#var_22]
1071B8:  MOVS            R1, #0x48 ; 'H'; n
1071BA:  ADDS            R0, #0x3C ; '<'; int
1071BC:  BLX             sub_22178C
1071C0:  LDRH.W          R3, [R7,#var_22]
1071C4:  MOV.W           R9, #2
1071C8:  LDR             R0, [R5]
1071CA:  MOV.W           R10, #0
1071CE:  STR             R5, [SP,#0x34+var_34]
1071D0:  STR             R0, [SP,#0x34+var_30]
1071D2:  LDRB            R0, [R4]
1071D4:  CMP             R0, #0x72 ; 'r'
1071D6:  BLE             loc_1071F2
1071D8:  CMP             R0, #0x73 ; 's'
1071DA:  BEQ             loc_107216
1071DC:  CMP             R0, #0x76 ; 'v'
1071DE:  BEQ             loc_107250
1071E0:  CMP             R0, #0x7A ; 'z'
1071E2:  BNE.W           loc_107300
1071E6:  MOVS            R0, #0
1071E8:  STRB.W          R0, [R6,R9]
1071EC:  ADD.W           R9, R9, #1
1071F0:  B               loc_1072B6
1071F2:  CMP             R0, #0x66 ; 'f'
1071F4:  BEQ             loc_10728C
1071F6:  CMP             R0, #0x69 ; 'i'
1071F8:  BNE             loc_1072BA
1071FA:  LDR             R0, [SP,#0x34+var_20]
1071FC:  ADDS            R1, R0, #4
1071FE:  STR             R1, [SP,#0x34+var_20]
107200:  MOVS            R1, #1
107202:  LDR             R0, [R0]
107204:  STRB.W          R1, [R6,R9]
107208:  ADD.W           R1, R6, R9
10720C:  ADD.W           R9, R9, #5
107210:  STR.W           R0, [R1,#1]
107214:  B               loc_1072B6
107216:  LDR             R0, [SP,#0x34+var_20]
107218:  STR             R3, [SP,#0x34+var_2C]
10721A:  ADDS            R1, R0, #4
10721C:  STR             R1, [SP,#0x34+var_20]
10721E:  LDR.W           R11, [R0]
107222:  MOV             R0, R11; s
107224:  BLX             strlen
107228:  MOV             R8, R0
10722A:  MOVS            R0, #0xE
10722C:  STRB.W          R0, [R6,R9]
107230:  ADD.W           R0, R6, R9
107234:  ADD.W           R5, R9, #2
107238:  STRB.W          R8, [R0,#1]
10723C:  ADDS            R0, R6, R5; dest
10723E:  UXTB.W          R2, R8; n
107242:  MOV             R1, R11; src
107244:  BLX             j_memcpy
107248:  LDR             R3, [SP,#0x34+var_2C]
10724A:  UXTAB.W         R9, R5, R8
10724E:  B               loc_1072B6
107250:  LDR             R0, [SP,#0x34+var_20]
107252:  LDR             R1, =(dword_25DA8C - 0x10726C)
107254:  ADDS            R2, R0, #4
107256:  STR             R2, [SP,#0x34+var_20]
107258:  MOVS            R2, #3
10725A:  LDR             R0, [R0]
10725C:  STRB.W          R2, [R6,R9]
107260:  MOV             R2, #0x3FFFC
107268:  ADD             R1, PC; dword_25DA8C
10726A:  AND.W           R2, R2, R10,LSL#2
10726E:  STR             R0, [R1,R2]
107270:  LDR             R1, [SP,#0x34+var_30]
107272:  LDR             R0, [R0]
107274:  ADD             R1, R2
107276:  STR             R0, [R1,#0x3C]
107278:  ADD.W           R0, R6, R9
10727C:  ADD.W           R9, R9, #3
107280:  STRH.W          R3, [R0,#1]
107284:  ADD.W           R3, R10, #1
107288:  MOV             R10, R3
10728A:  B               loc_1072B6
10728C:  LDR             R0, [SP,#0x34+var_20]
10728E:  MOVS            R1, #6
107290:  ADD.W           R2, R6, R9
107294:  ADDS            R0, #7
107296:  BIC.W           R0, R0, #7
10729A:  VLDM            R0!, {D16}
10729E:  STRB.W          R1, [R6,R9]
1072A2:  ADD.W           R9, R9, #5
1072A6:  VCVT.F32.F64    S0, D16
1072AA:  STR             R0, [SP,#0x34+var_20]
1072AC:  VSTR            S0, [SP,#0x34+var_28]
1072B0:  LDR             R1, [SP,#0x34+var_28]
1072B2:  STR.W           R1, [R2,#1]
1072B6:  ADDS            R4, #1
1072B8:  B               loc_1071D2
1072BA:  CBNZ            R0, loc_107300
1072BC:  LDR             R1, =(off_23494C - 0x1072CC)
1072BE:  MOVW            R2, #:lower16:unk_32B6B9
1072C2:  LDR             R4, [SP,#0x34+var_34]
1072C4:  MOVT            R2, #:upper16:unk_32B6B9
1072C8:  ADD             R1, PC; off_23494C
1072CA:  STRH.W          R3, [R7,#var_22]
1072CE:  LDR             R1, [R1]; dword_23DF24
1072D0:  LDR             R0, [R4]
1072D2:  LDR             R1, [R1]
1072D4:  STR             R6, [R0,#0x14]
1072D6:  ADD             R1, R2
1072D8:  BLX             R1
1072DA:  LDR             R2, [R4]
1072DC:  MOVS.W          R1, R10,LSL#16
1072E0:  LDRB.W          R0, [R2,#0xE5]
1072E4:  BEQ             loc_107306
1072E6:  LDR             R1, =(dword_25DA8C - 0x1072F2)
1072E8:  ADDS            R2, #0x3C ; '<'
1072EA:  UXTH.W          R3, R10
1072EE:  ADD             R1, PC; dword_25DA8C
1072F0:  LDR.W           R6, [R1],#4
1072F4:  SUBS            R3, #1
1072F6:  LDR.W           R5, [R2],#4
1072FA:  STR             R5, [R6]
1072FC:  BNE             loc_1072F0
1072FE:  B               loc_107306
107300:  MOVS            R0, #0
107302:  STRH.W          R3, [R7,#var_22]
107306:  ADD             SP, SP, #0x18
107308:  POP.W           {R8-R11}
10730C:  POP.W           {R4-R7,LR}
107310:  ADD             SP, SP, #0xC
107312:  BX              LR
