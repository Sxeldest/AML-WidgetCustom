; =========================================================
; Game Engine Function: sub_13630C
; Address            : 0x13630C - 0x136452
; =========================================================

13630C:  PUSH            {R4-R7,LR}
13630E:  ADD             R7, SP, #0xC
136310:  PUSH.W          {R8}
136314:  VPUSH           {D8}
136318:  SUB             SP, SP, #0x28; float
13631A:  MOV             R4, R0
13631C:  LDR             R0, =(off_23496C - 0x136322)
13631E:  ADD             R0, PC; off_23496C
136320:  LDR             R0, [R0]; dword_23DEF4
136322:  LDR             R0, [R0]
136324:  CMP             R0, #0
136326:  BEQ.W           loc_136446
13632A:  BL              sub_144204
13632E:  LDRB.W          R0, [R4,#0x50]
136332:  CMP             R0, #0
136334:  BNE.W           loc_136446
136338:  MOVS            R0, #0x78 ; 'x'; unsigned int
13633A:  BLX             j__Znwj; operator new(uint)
13633E:  LDR             R1, =(byte_8F794 - 0x136346)
136340:  MOV             R5, R0
136342:  ADD             R1, PC; byte_8F794 ; s
136344:  ADD             R0, SP, #0x40+var_24; int
136346:  BL              sub_DC6DC
13634A:  LDR             R0, =(off_234980 - 0x13635C)
13634C:  VMOV.F32        S16, #0.5
136350:  VMOV.F32        Q8, #1.0
136354:  ADD.W           R8, SP, #0x40+var_38
136358:  ADD             R0, PC; off_234980
13635A:  LDR             R6, [R0]; dword_238EC0
13635C:  VST1.64         {D16-D17}, [R8]
136360:  VLDR            S0, [R6]
136364:  VMUL.F32        S0, S0, S16
136368:  ADD             R1, SP, #0x40+var_24; int
13636A:  MOV             R0, R5; int
13636C:  MOV             R2, R8; int
13636E:  MOVS            R3, #0; int
136370:  VSTR            S0, [SP,#0x40+var_40]
136374:  BL              sub_13D3DC
136378:  LDRB.W          R0, [SP,#0x40+var_24]
13637C:  STR             R5, [R4,#0x58]
13637E:  LSLS            R0, R0, #0x1F
136380:  BEQ             loc_13638A
136382:  LDR             R0, [SP,#0x40+var_1C]; void *
136384:  BLX             j__ZdlPv; operator delete(void *)
136388:  LDR             R5, [R4,#0x58]
13638A:  MOV             R0, R4
13638C:  MOV             R1, R5
13638E:  BL              sub_12BDF6
136392:  MOVS            R0, #0x78 ; 'x'; unsigned int
136394:  BLX             j__Znwj; operator new(uint)
136398:  LDR             R1, =(byte_8F794 - 0x1363A0)
13639A:  MOV             R5, R0
13639C:  ADD             R1, PC; byte_8F794 ; s
13639E:  ADD             R0, SP, #0x40+var_24; int
1363A0:  BL              sub_DC6DC
1363A4:  VMOV.F32        Q8, #1.0
1363A8:  VLDR            S0, [R6]
1363AC:  VMUL.F32        S0, S0, S16
1363B0:  VST1.64         {D16-D17}, [R8]
1363B4:  ADD             R1, SP, #0x40+var_24; int
1363B6:  MOV             R0, R5; int
1363B8:  MOV             R2, R8; int
1363BA:  MOVS            R3, #0; int
1363BC:  VSTR            S0, [SP,#0x40+var_40]
1363C0:  BL              sub_13D3DC
1363C4:  LDRB.W          R0, [SP,#0x40+var_24]
1363C8:  STR             R5, [R4,#0x5C]
1363CA:  LSLS            R0, R0, #0x1F
1363CC:  BEQ             loc_1363D6
1363CE:  LDR             R0, [SP,#0x40+var_1C]; void *
1363D0:  BLX             j__ZdlPv; operator delete(void *)
1363D4:  LDR             R5, [R4,#0x5C]
1363D6:  MOV             R0, R4
1363D8:  MOV             R1, R5
1363DA:  BL              sub_12BDF6
1363DE:  MOVS            R0, #0x6C ; 'l'; unsigned int
1363E0:  BLX             j__Znwj; operator new(uint)
1363E4:  MOV             R5, R0
1363E6:  BL              sub_13C5A8
1363EA:  MOV             R0, R4
1363EC:  MOV             R1, R5
1363EE:  STR             R5, [R4,#0x54]
1363F0:  BL              sub_12BDF6
1363F4:  MOV             R0, R4
1363F6:  BL              sub_13648C
1363FA:  LDR             R0, [R4]
1363FC:  LDR             R1, [R0,#8]
1363FE:  MOV             R0, R4
136400:  BLX             R1
136402:  LDR             R0, =(off_234A24 - 0x13640C)
136404:  MOVS            R6, #0
136406:  LDR             R1, =(off_234970 - 0x13640E)
136408:  ADD             R0, PC; off_234A24
13640A:  ADD             R1, PC; off_234970
13640C:  LDR             R0, [R0]; dword_23DEEC
13640E:  LDR             R1, [R1]; dword_23DEF0
136410:  LDR             R0, [R0]
136412:  LDR             R5, [R0,#0x58]
136414:  LDR             R0, [R1]
136416:  LDRB.W          R1, [R5,#0x50]
13641A:  STRB.W          R6, [R0,#0x54]
13641E:  CBZ             R1, loc_13642A
136420:  LDR             R0, [R5]
136422:  MOVS            R1, #0
136424:  LDR             R2, [R0,#0x24]
136426:  MOV             R0, R5
136428:  BLX             R2
13642A:  STRB.W          R6, [R5,#0x50]
13642E:  LDRB.W          R0, [R4,#0x50]
136432:  CMP             R0, #1
136434:  BEQ             loc_136440
136436:  LDR             R0, [R4]
136438:  MOVS            R1, #1
13643A:  LDR             R2, [R0,#0x24]
13643C:  MOV             R0, R4
13643E:  BLX             R2
136440:  MOVS            R0, #1
136442:  STRB.W          R0, [R4,#0x50]
136446:  ADD             SP, SP, #0x28 ; '('
136448:  VPOP            {D8}
13644C:  POP.W           {R8}
136450:  POP             {R4-R7,PC}
