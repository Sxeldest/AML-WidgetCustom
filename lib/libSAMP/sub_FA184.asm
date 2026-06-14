; =========================================================
; Game Engine Function: sub_FA184
; Address            : 0xFA184 - 0xFA250
; =========================================================

FA184:  PUSH            {R4-R7,LR}
FA186:  ADD             R7, SP, #0xC
FA188:  PUSH.W          {R8,R9,R11}
FA18C:  SUB             SP, SP, #0x18
FA18E:  LDR             R0, =(byte_247364 - 0xFA19A)
FA190:  MOV             R8, R3
FA192:  MOV             R9, R2
FA194:  MOV             R6, R1
FA196:  ADD             R0, PC; byte_247364
FA198:  LDRB            R0, [R0]
FA19A:  DMB.W           ISH
FA19E:  LDR             R4, =(dword_247360 - 0xFA1A4)
FA1A0:  ADD             R4, PC; dword_247360
FA1A2:  LSLS            R0, R0, #0x1F
FA1A4:  BEQ             loc_FA208
FA1A6:  LDR             R0, [R4]
FA1A8:  CBZ             R0, loc_FA1E2
FA1AA:  LDR             R0, =(byte_24736C - 0xFA1B0)
FA1AC:  ADD             R0, PC; byte_24736C
FA1AE:  LDRB            R0, [R0]
FA1B0:  DMB.W           ISH
FA1B4:  LDR             R5, =(off_247368 - 0xFA1BA)
FA1B6:  ADD             R5, PC; off_247368
FA1B8:  LSLS            R0, R0, #0x1F
FA1BA:  BEQ             loc_FA22C
FA1BC:  LDR             R5, [R5]
FA1BE:  CBZ             R5, loc_FA1EC
FA1C0:  LDRD.W          R1, R12, [R7,#arg_10]
FA1C4:  LDRD.W          R4, R2, [R7,#arg_8]
FA1C8:  LDRD.W          R3, R0, [R7,#arg_0]
FA1CC:  STRD.W          R2, R1, [SP,#0x30+var_28]
FA1D0:  MOV             R1, R9
FA1D2:  STRD.W          R0, R4, [SP,#0x30+var_30]
FA1D6:  MOV             R0, R6
FA1D8:  MOV             R2, R8
FA1DA:  STR.W           R12, [SP,#0x30+var_20]
FA1DE:  BLX             R5
FA1E0:  B               loc_FA200
FA1E2:  LDR             R1, =(aAxl - 0xFA1EA); "AXL" ...
FA1E4:  LDR             R2, =(aSCanTFindGameL - 0xFA1EC); "%s: can't find game library" ...
FA1E6:  ADD             R1, PC; "AXL"
FA1E8:  ADD             R2, PC; "%s: can't find game library"
FA1EA:  B               loc_FA1F4
FA1EC:  LDR             R1, =(aAxl - 0xFA1F4); "AXL" ...
FA1EE:  LDR             R2, =(aSGameDoNotCont - 0xFA1F6); "%s: game do not contain symbol _ZN6CWor"... ...
FA1F0:  ADD             R1, PC; "AXL"
FA1F2:  ADD             R2, PC; "%s: game do not contain symbol _ZN6CWor"...
FA1F4:  LDR             R3, =(aBoolCgameGetis - 0xFA1FC); "bool CGame::GetIsLineOfSightClear(const"... ...
FA1F6:  MOVS            R0, #3; prio
FA1F8:  ADD             R3, PC; "bool CGame::GetIsLineOfSightClear(const"...
FA1FA:  BLX             __android_log_print
FA1FE:  MOVS            R0, #0
FA200:  ADD             SP, SP, #0x18
FA202:  POP.W           {R8,R9,R11}
FA206:  POP             {R4-R7,PC}
FA208:  LDR             R0, =(byte_247364 - 0xFA20E)
FA20A:  ADD             R0, PC; byte_247364 ; __guard *
FA20C:  BLX             j___cxa_guard_acquire
FA210:  CMP             R0, #0
FA212:  BEQ             loc_FA1A6
FA214:  LDR             R0, =(aLibgtasaSo - 0xFA21A); "libGTASA.so" ...
FA216:  ADD             R0, PC; "libGTASA.so"
FA218:  MOVS            R1, #0; mode
FA21A:  BLX             dlopen
FA21E:  LDR             R1, =(byte_247364 - 0xFA226)
FA220:  STR             R0, [R4]
FA222:  ADD             R1, PC; byte_247364
FA224:  MOV             R0, R1; __guard *
FA226:  BLX             j___cxa_guard_release
FA22A:  B               loc_FA1A6
FA22C:  LDR             R0, =(byte_24736C - 0xFA232)
FA22E:  ADD             R0, PC; byte_24736C ; __guard *
FA230:  BLX             j___cxa_guard_acquire
FA234:  CMP             R0, #0
FA236:  BEQ             loc_FA1BC
FA238:  LDR             R0, [R4]; handle
FA23A:  LDR             R1, =(aZn6cworld21get - 0xFA240); "_ZN6CWorld21GetIsLineOfSightClearERK7CV"... ...
FA23C:  ADD             R1, PC; "_ZN6CWorld21GetIsLineOfSightClearERK7CV"...
FA23E:  BLX             dlsym
FA242:  LDR             R1, =(byte_24736C - 0xFA24A)
FA244:  STR             R0, [R5]
FA246:  ADD             R1, PC; byte_24736C
FA248:  MOV             R0, R1; __guard *
FA24A:  BLX             j___cxa_guard_release
FA24E:  B               loc_FA1BC
