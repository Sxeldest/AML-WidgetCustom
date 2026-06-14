; =========================================================
; Game Engine Function: sub_25A180
; Address            : 0x25A180 - 0x25A450
; =========================================================

25A180:  PUSH            {R4-R7,LR}
25A182:  ADD             R7, SP, #0xC
25A184:  PUSH.W          {R8,R9,R11}
25A188:  SUB             SP, SP, #0x28
25A18A:  MOV             R4, R2
25A18C:  MOV             R9, R3
25A18E:  MOV             R5, R1
25A190:  MOV             R6, R0
25A192:  CMP.W           R4, #0x1200
25A196:  BGE.W           loc_25A230
25A19A:  MOVW            R0, #0x1001
25A19E:  SUBS            R0, R4, R0
25A1A0:  CMP             R0, #0x32 ; '2'; switch 51 cases
25A1A2:  BHI.W           def_25A1A6; jumptable 0025A1A6 default case
25A1A6:  TBH.W           [PC,R0,LSL#1]; switch jump
25A1AA:  DCW 0x33; jump table for switch statement
25A1AC:  DCW 0x33
25A1AE:  DCW 0x113
25A1B0:  DCW 0x78
25A1B2:  DCW 0x78
25A1B4:  DCW 0x78
25A1B6:  DCW 0x103
25A1B8:  DCW 0x113
25A1BA:  DCW 0xB3
25A1BC:  DCW 0x113
25A1BE:  DCW 0x113
25A1C0:  DCW 0x113
25A1C2:  DCW 0x113
25A1C4:  DCW 0x113
25A1C6:  DCW 0x113
25A1C8:  DCW 0x103
25A1CA:  DCW 0x113
25A1CC:  DCW 0x113
25A1CE:  DCW 0x113
25A1D0:  DCW 0x113
25A1D2:  DCW 0x103
25A1D4:  DCW 0x103
25A1D6:  DCW 0x113
25A1D8:  DCW 0x113
25A1DA:  DCW 0x113
25A1DC:  DCW 0x113
25A1DE:  DCW 0x113
25A1E0:  DCW 0x113
25A1E2:  DCW 0x113
25A1E4:  DCW 0x113
25A1E6:  DCW 0x113
25A1E8:  DCW 0x33
25A1EA:  DCW 0x33
25A1EC:  DCW 0x113
25A1EE:  DCW 0x33
25A1F0:  DCW 0x33
25A1F2:  DCW 0x33
25A1F4:  DCW 0x33
25A1F6:  DCW 0x103
25A1F8:  DCW 0x113
25A1FA:  DCW 0x113
25A1FC:  DCW 0x113
25A1FE:  DCW 0x113
25A200:  DCW 0x113
25A202:  DCW 0x113
25A204:  DCW 0x113
25A206:  DCW 0x113
25A208:  DCW 0x113
25A20A:  DCW 0x9A
25A20C:  DCW 0x9A
25A20E:  DCW 0x103
25A210:  ADD             R3, SP, #0x40+var_30; jumptable 0025A1A6 cases 0,1,31,32,34-37
25A212:  MOV             R0, R6
25A214:  MOV             R1, R5
25A216:  MOV             R2, R4
25A218:  BL              sub_258E98
25A21C:  CMP             R0, #0
25A21E:  BNE.W           loc_25A3C8
25A222:  VLDR            D16, [SP,#0x40+var_30]
25A226:  VMOV            R0, R1, D16
25A22A:  BLX             j___fixdfdi
25A22E:  B               loc_25A3C2
25A230:  MOVS            R0, #0x20004
25A236:  CMP             R4, R0
25A238:  BGT             loc_25A250
25A23A:  CMP.W           R4, #0x1200
25A23E:  BEQ             loc_25A32A
25A240:  CMP.W           R4, #0xC000
25A244:  BEQ             loc_25A210; jumptable 0025A1A6 cases 0,1,31,32,34-37
25A246:  CMP.W           R4, #0xD000
25A24A:  BEQ.W           loc_25A3B0; jumptable 0025A1A6 cases 6,15,20,21,38,50
25A24E:  B               loc_25A3D0; jumptable 0025A1A6 cases 2,7,9-14,16-19,22-30,33,39-47
25A250:  SUB.W           R0, R4, #0x20000
25A254:  SUBS            R0, #0xA
25A256:  CMP             R0, #3
25A258:  BCC.W           loc_25A3B0; jumptable 0025A1A6 cases 6,15,20,21,38,50
25A25C:  MOVS            R0, #0x20005
25A262:  CMP             R4, R0
25A264:  BEQ             loc_25A310; jumptable 0025A1A6 case 8
25A266:  MOVS            R0, #0x20006
25A26C:  CMP             R4, R0
25A26E:  BNE.W           loc_25A3D0; jumptable 0025A1A6 cases 2,7,9-14,16-19,22-30,33,39-47
25A272:  MOVS            R2, #:lower16:(elf_hash_chain+0xFE9E)
25A274:  MOV             R8, SP
25A276:  MOVT            R2, #:upper16:(elf_hash_chain+0xFE9E)
25A27A:  MOV             R0, R6
25A27C:  MOV             R1, R5
25A27E:  MOV             R3, R8
25A280:  BL              sub_259AC0
25A284:  CMP             R0, #0
25A286:  BNE.W           loc_25A3C8
25A28A:  VLD1.32         {D16}, [R8@64,#0x40+var_40]
25A28E:  VMOVL.U32       Q8, D16
25A292:  VST1.64         {D16-D17}, [R9]!
25A296:  LDR             R1, [SP,#0x40+var_38]
25A298:  B               loc_25A322
25A29A:  ADD             R3, SP, #0x40+var_30; jumptable 0025A1A6 cases 3-5
25A29C:  MOV             R0, R6
25A29E:  MOV             R1, R5
25A2A0:  MOV             R2, R4
25A2A2:  BL              sub_258E98
25A2A6:  CMP             R0, #0
25A2A8:  BNE.W           loc_25A3C8
25A2AC:  VLDR            D16, [SP,#0x40+var_30]
25A2B0:  VMOV            R0, R1, D16
25A2B4:  BLX             j___fixdfdi
25A2B8:  STRD.W          R0, R1, [R9]
25A2BC:  VLDR            D16, [SP,#0x40+var_28]
25A2C0:  VMOV            R0, R1, D16
25A2C4:  BLX             j___fixdfdi
25A2C8:  STRD.W          R0, R1, [R9,#8]
25A2CC:  VLDR            D16, [SP,#0x40+var_20]
25A2D0:  VMOV            R0, R1, D16
25A2D4:  BLX             j___fixdfdi
25A2D8:  STRD.W          R0, R1, [R9,#0x10]
25A2DC:  B               loc_25A3C6
25A2DE:  ADD             R3, SP, #0x40+var_30; jumptable 0025A1A6 cases 48,49
25A2E0:  MOV             R0, R6
25A2E2:  MOV             R1, R5
25A2E4:  MOV             R2, R4
25A2E6:  BL              sub_258E98
25A2EA:  CMP             R0, #0
25A2EC:  BNE             loc_25A3C8
25A2EE:  VLDR            D16, [SP,#0x40+var_30]
25A2F2:  VMOV            R0, R1, D16
25A2F6:  BLX             j___fixdfdi
25A2FA:  STRD.W          R0, R1, [R9]
25A2FE:  VLDR            D16, [SP,#0x40+var_28]
25A302:  VMOV            R0, R1, D16
25A306:  BLX             j___fixdfdi
25A30A:  STRD.W          R0, R1, [R9,#8]
25A30E:  B               loc_25A3C6
25A310:  MOV             R3, SP; jumptable 0025A1A6 case 8
25A312:  MOV             R0, R6
25A314:  MOV             R1, R5
25A316:  MOV             R2, R4
25A318:  BL              sub_259AC0
25A31C:  CMP             R0, #0
25A31E:  BNE             loc_25A3C8
25A320:  LDR             R1, [SP,#0x40+var_40]
25A322:  MOVS            R0, #0
25A324:  STRD.W          R1, R0, [R9]
25A328:  B               loc_25A3C8
25A32A:  LDR.W           R0, [R5,#0x88]
25A32E:  MOV             R8, #0x161AC
25A336:  LDR.W           R1, [R0,R8]
25A33A:  LDR             R1, [R1,#0x2C]
25A33C:  BLX             R1
25A33E:  LDR.W           R0, [R6,#0x80]
25A342:  MOVW            R1, #0x1012
25A346:  CMP             R0, R1
25A348:  BEQ             loc_25A356
25A34A:  LDR.W           R0, [R6,#0x80]
25A34E:  MOVW            R1, #0x1013
25A352:  CMP             R0, R1
25A354:  BNE             loc_25A42A
25A356:  LDRD.W          R0, R3, [R6,#0x88]
25A35A:  LDR.W           R2, [R6,#0x90]
25A35E:  ORR.W           R1, R0, R3,LSR#14
25A362:  LSLS            R0, R3, #0x12
25A364:  CMP             R2, #0
25A366:  ITT NE
25A368:  LDRNE.W         R3, [R6,#0x98]
25A36C:  CMPNE           R3, #0
25A36E:  BEQ             loc_25A388
25A370:  MOVS            R6, #1
25A372:  LDR             R4, [R2]
25A374:  CMP             R4, #0
25A376:  ITT NE
25A378:  LDRNE           R4, [R4,#0xC]
25A37A:  ADDNE           R1, R4
25A37C:  CMP             R6, R3
25A37E:  BCS             loc_25A388
25A380:  LDR             R2, [R2,#4]
25A382:  ADDS            R6, #1
25A384:  CMP             R2, #0
25A386:  BNE             loc_25A372
25A388:  SUBS.W          R6, R0, #0xFFFFFFFF
25A38C:  MOV             R2, #0x7FFFFFFF
25A390:  MOV.W           R3, #0
25A394:  SBCS.W          R6, R1, R2
25A398:  IT CC
25A39A:  MOVCC           R3, #1
25A39C:  CMP             R3, #0
25A39E:  ITE NE
25A3A0:  MOVNE           R2, R1
25A3A2:  MOVEQ.W         R0, #0xFFFFFFFF
25A3A6:  B               loc_25A42E
25A3A8:  MOVW            R0, #0x202; jumptable 0025A1A6 default case
25A3AC:  CMP             R4, R0
25A3AE:  BNE             loc_25A3D0; jumptable 0025A1A6 cases 2,7,9-14,16-19,22-30,33,39-47
25A3B0:  MOV             R3, SP; jumptable 0025A1A6 cases 6,15,20,21,38,50
25A3B2:  MOV             R0, R6
25A3B4:  MOV             R1, R5
25A3B6:  MOV             R2, R4
25A3B8:  BL              sub_259AC0
25A3BC:  CBNZ            R0, loc_25A3C8
25A3BE:  LDR             R0, [SP,#0x40+var_40]
25A3C0:  ASRS            R1, R0, #0x1F
25A3C2:  STRD.W          R0, R1, [R9]
25A3C6:  MOVS            R0, #0
25A3C8:  ADD             SP, SP, #0x28 ; '('
25A3CA:  POP.W           {R8,R9,R11}
25A3CE:  POP             {R4-R7,PC}
25A3D0:  LDR             R0, =(LogLevel_ptr - 0x25A3D6); jumptable 0025A1A6 cases 2,7,9-14,16-19,22-30,33,39-47
25A3D2:  ADD             R0, PC; LogLevel_ptr
25A3D4:  LDR             R0, [R0]; LogLevel
25A3D6:  LDR             R0, [R0]
25A3D8:  CBZ             R0, loc_25A3EA
25A3DA:  LDR             R0, =(aEe - 0x25A3E6); "(EE)"
25A3DC:  ADR             R1, aGetsourcei64v; "GetSourcei64v"
25A3DE:  LDR             R2, =(aUnexpectedProp - 0x25A3E8); "Unexpected property: 0x%04x\n"
25A3E0:  MOV             R3, R4
25A3E2:  ADD             R0, PC; "(EE)"
25A3E4:  ADD             R2, PC; "Unexpected property: 0x%04x\n"
25A3E6:  BLX             j_al_print
25A3EA:  LDR             R0, =(TrapALError_ptr - 0x25A3F0)
25A3EC:  ADD             R0, PC; TrapALError_ptr
25A3EE:  LDR             R0, [R0]; TrapALError
25A3F0:  LDRB            R0, [R0]
25A3F2:  CMP             R0, #0
25A3F4:  ITT NE
25A3F6:  MOVNE           R0, #5; sig
25A3F8:  BLXNE           raise
25A3FC:  LDREX.W         R0, [R5,#0x50]
25A400:  CBNZ            R0, loc_25A41C
25A402:  ADD.W           R0, R5, #0x50 ; 'P'
25A406:  MOVW            R1, #0xA002
25A40A:  DMB.W           ISH
25A40E:  STREX.W         R2, R1, [R0]
25A412:  CBZ             R2, loc_25A420
25A414:  LDREX.W         R2, [R0]
25A418:  CMP             R2, #0
25A41A:  BEQ             loc_25A40E
25A41C:  CLREX.W
25A420:  DMB.W           ISH
25A424:  MOVW            R0, #0xA002
25A428:  B               loc_25A3C8
25A42A:  MOVS            R0, #0
25A42C:  MOVS            R2, #0
25A42E:  STRD.W          R0, R2, [R9]
25A432:  LDR.W           R0, [R5,#0x88]
25A436:  LDR.W           R1, [R0,R8]
25A43A:  LDR             R1, [R1,#0x34]
25A43C:  BLX             R1
25A43E:  STRD.W          R0, R1, [R9,#8]
25A442:  LDR.W           R0, [R5,#0x88]
25A446:  LDR.W           R1, [R0,R8]
25A44A:  LDR             R1, [R1,#0x30]
25A44C:  BLX             R1
25A44E:  B               loc_25A3C6
