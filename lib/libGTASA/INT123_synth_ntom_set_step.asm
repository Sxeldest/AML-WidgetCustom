; =========================================================
; Game Engine Function: INT123_synth_ntom_set_step
; Address            : 0x230130 - 0x23027A
; =========================================================

230130:  PUSH            {R4-R7,LR}
230132:  ADD             R7, SP, #0xC
230134:  PUSH.W          {R8}
230138:  SUB             SP, SP, #8
23013A:  MOV             R4, R0
23013C:  LDR             R0, =(unk_5F11C0 - 0x23014C)
23013E:  MOVW            R3, #0x92E8
230142:  MOVW            R1, #0xB33C
230146:  LDR             R3, [R4,R3]
230148:  ADD             R0, PC; unk_5F11C0
23014A:  MOVW            R6, #0xB2BC
23014E:  LDRB            R2, [R4,R1]
230150:  ADD.W           R8, R4, R1
230154:  LDR.W           R5, [R0,R3,LSL#2]
230158:  LDR             R6, [R4,R6]
23015A:  LSLS            R0, R2, #0x1A
23015C:  BMI             loc_230168
23015E:  MOVW            R0, #0xB338
230162:  LDR             R0, [R4,R0]
230164:  CMP             R0, #2
230166:  BGE             loc_230246
230168:  MOVW            R0, #:lower16:(elf_hash_chain+0x7597)
23016C:  SUBS            R1, R5, #1
23016E:  MOVT            R0, #:upper16:(elf_hash_chain+0x7597)
230172:  CMP             R1, R0
230174:  ITT LS
230176:  SUBLS           R1, R6, #1
230178:  CMPLS           R1, R0
23017A:  BLS             loc_230198
23017C:  LDRB.W          R0, [R8]
230180:  LSLS            R0, R0, #0x1A
230182:  BMI             loc_2301B4
230184:  LDR             R0, =(off_677664 - 0x23018E)
230186:  MOVS            R2, #0x16
230188:  LDR             R1, =(aCProjectsOswra_37 - 0x230190); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23018A:  ADD             R0, PC; off_677664
23018C:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23018E:  LDR             R0, [R0]
230190:  LDR             R0, [R0]; stream
230192:  BLX             fprintf
230196:  B               loc_2301B4
230198:  LSLS            R0, R6, #0xF
23019A:  MOV             R1, R5
23019C:  BLX             __aeabi_uidiv
2301A0:  MOVW            R1, #0x9190
2301A4:  CMP.W           R0, #0x40000
2301A8:  STR             R0, [R4,R1]
2301AA:  BLS             loc_2301C2
2301AC:  LDRB.W          R1, [R8]
2301B0:  LSLS            R1, R1, #0x1A
2301B2:  BPL             loc_23025A
2301B4:  MOVW            R0, #0xB468
2301B8:  MOVS            R1, #3
2301BA:  STR             R1, [R4,R0]
2301BC:  MOV.W           R0, #0xFFFFFFFF
2301C0:  B               loc_23023E
2301C2:  MOVW            R1, #0x9314
2301C6:  LDR             R1, [R4,R1]
2301C8:  CMP             R1, #1
2301CA:  BLT             loc_23022C
2301CC:  MOVW            R2, #0x92D8
2301D0:  MOVW            R3, #0x92CC
2301D4:  LDR             R2, [R4,R2]
2301D6:  ADD.W           R12, R4, R3
2301DA:  MOVW            R3, #0x92C8
2301DE:  ADD.W           LR, R4, R3
2301E2:  MOV.W           R3, #0x4000
2301E6:  MOVW            R6, #0x7FFF
2301EA:  CMP             R2, #1
2301EC:  BEQ             loc_2301F8
2301EE:  CMP             R2, #2
2301F0:  BNE             loc_2301FE
2301F2:  MOV.W           R5, #0x480
2301F6:  B               loc_230212
2301F8:  MOV.W           R5, #0x180
2301FC:  B               loc_230212
2301FE:  LDR.W           R5, [LR]
230202:  CMP             R5, #0
230204:  ITT EQ
230206:  LDREQ.W         R5, [R12]
23020A:  CMPEQ           R5, #0
23020C:  BEQ             loc_2301F2
23020E:  MOV.W           R5, #0x240
230212:  MLA.W           R3, R5, R0, R3
230216:  SUBS            R1, #1
230218:  MOV.W           R5, R3,ASR#31
23021C:  ADD.W           R5, R3, R5,LSR#17
230220:  BIC.W           R5, R5, R6
230224:  SUB.W           R3, R3, R5
230228:  BNE             loc_2301EA
23022A:  B               loc_230230
23022C:  MOV.W           R3, #0x4000
230230:  MOVW            R0, #0x9188
230234:  STR             R3, [R4,R0]
230236:  MOVW            R0, #0x918C
23023A:  STR             R3, [R4,R0]
23023C:  MOVS            R0, #0
23023E:  ADD             SP, SP, #8
230240:  POP.W           {R8}
230244:  POP             {R4-R7,PC}
230246:  LDR             R0, =(off_677664 - 0x230252)
230248:  ADR             R1, aInitRateConver; "Init rate converter: %ld->%ld\n"
23024A:  MOV             R2, R5
23024C:  MOV             R3, R6
23024E:  ADD             R0, PC; off_677664
230250:  LDR             R0, [R0]
230252:  LDR             R0, [R0]; stream
230254:  BLX             fprintf
230258:  B               loc_230168
23025A:  LDR             R1, =(off_677664 - 0x230264)
23025C:  MOV.W           R3, #0x40000
230260:  ADD             R1, PC; off_677664
230262:  LDR             R1, [R1]
230264:  LDR             R2, [R1]
230266:  LDR             R1, =(aCProjectsOswra_38 - 0x230272); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230268:  STRD.W          R0, R3, [SP,#0x18+var_18]
23026C:  MOVS            R3, #8
23026E:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230270:  MOV             R0, R2; stream
230272:  MOVS            R2, #0x1F
230274:  BLX             fprintf
230278:  B               loc_2301B4
