; =========================================================
; Game Engine Function: sub_105204
; Address            : 0x105204 - 0x10535E
; =========================================================

105204:  PUSH            {R4-R7,LR}
105206:  ADD             R7, SP, #0xC
105208:  PUSH.W          {R8}
10520C:  MOV             R4, R0
10520E:  LDR             R0, [R0,#0x5C]
105210:  CMP             R0, #0
105212:  BEQ.W           loc_105358
105216:  MOV             R0, R1
105218:  MOV             R5, R2
10521A:  MOV             R6, R1
10521C:  BL              sub_108354
105220:  CMP             R0, #0
105222:  BEQ.W           loc_105358
105226:  LDR             R0, [R4,#8]
105228:  BL              sub_1082F4
10522C:  CMP             R0, #0
10522E:  BEQ.W           loc_105358
105232:  MOV             R0, R4
105234:  BL              sub_104648
105238:  CMP             R0, #0x2E ; '.'
10523A:  BNE             loc_105246
10523C:  MOV             R0, R4
10523E:  MOVS            R1, #0
105240:  MOVS            R2, #0
105242:  BL              sub_10479C
105246:  MOV             R0, R6
105248:  BL              sub_108354
10524C:  MOV             R8, R0
10524E:  LDR.W           R0, [R0,#0x4CC]
105252:  VMOV            S0, R0
105256:  VCMP.F32        S0, #0.0
10525A:  VMRS            APSR_nzcv, FPSCR
10525E:  BEQ             loc_105358
105260:  LDR             R0, =(off_23494C - 0x105272)
105262:  MOVW            R2, #0x7D24
105266:  LDR.W           R1, [R8]
10526A:  MOVT            R2, #0x66 ; 'f'
10526E:  ADD             R0, PC; off_23494C
105270:  LDR             R0, [R0]; dword_23DF24
105272:  LDR             R0, [R0]
105274:  ADD             R0, R2
105276:  CMP             R1, R0
105278:  BEQ             loc_105358
10527A:  MOV             R0, R8
10527C:  BL              sub_10837C
105280:  CMP             R0, #1
105282:  BEQ             loc_10528E
105284:  MOV             R0, R8
105286:  BL              sub_10837C
10528A:  CMP             R0, #2
10528C:  BNE             loc_105296
10528E:  LDRB.W          R0, [R8,#0x48C]
105292:  CMP             R0, R5
105294:  BCC             loc_105358
105296:  CBZ             R5, loc_1052A8
105298:  LDR             R1, [R4,#8]
10529A:  SUBS            R3, R5, #1
10529C:  LDR             R0, =(unk_B382A - 0x1052A4)
10529E:  MOV             R2, R6
1052A0:  ADD             R0, PC; unk_B382A
1052A2:  BL              sub_107188
1052A6:  B               loc_1052C2
1052A8:  LDR.W           R0, [R8,#0x464]
1052AC:  CBZ             R0, loc_1052B6
1052AE:  LDRB.W          R0, [R0,#0x485]
1052B2:  LSLS            R0, R0, #0x1F
1052B4:  BNE             loc_105358
1052B6:  LDR             R0, =(unk_B383E - 0x1052C0)
1052B8:  MOV             R2, R6
1052BA:  LDR             R1, [R4,#8]
1052BC:  ADD             R0, PC; unk_B383E
1052BE:  BL              sub_107188
1052C2:  LDR             R5, [R4,#0x5C]
1052C4:  BL              sub_1082E4
1052C8:  CMP             R5, R0
1052CA:  BNE             loc_1052E4
1052CC:  LDR             R0, [R4,#0x5C]
1052CE:  LDRB.W          R0, [R0,#0x485]
1052D2:  LSLS            R0, R0, #0x1F
1052D4:  BEQ             loc_1052E4
1052D6:  LDR             R0, =(off_234970 - 0x1052DC)
1052D8:  ADD             R0, PC; off_234970
1052DA:  LDR             R0, [R0]; dword_23DEF0
1052DC:  LDR             R0, [R0]
1052DE:  LDR             R0, [R0,#4]
1052E0:  BL              sub_F85F0
1052E4:  LDR             R0, =(off_23496C - 0x1052EA)
1052E6:  ADD             R0, PC; off_23496C
1052E8:  LDR             R0, [R0]; dword_23DEF4
1052EA:  LDR             R0, [R0]
1052EC:  CBZ             R0, loc_105358
1052EE:  LDR.W           R0, [R0,#0x3B0]
1052F2:  MOVW            R1, #0xEA60
1052F6:  LDR             R5, [R0,#4]
1052F8:  LDR             R0, [R5,R1]
1052FA:  ADD             R1, R5
1052FC:  LDR             R1, [R1,#4]
1052FE:  CMP             R0, R1
105300:  BEQ             loc_10531A
105302:  MOV.W           R2, #0x1F40
105306:  LDR             R3, [R0]
105308:  ADD.W           R3, R5, R3,LSL#2
10530C:  LDR             R3, [R3,R2]
10530E:  CMP             R3, R8
105310:  BEQ             loc_10531A
105312:  ADDS            R0, #4
105314:  CMP             R0, R1
105316:  BNE             loc_105306
105318:  B               loc_105358
10531A:  CMP             R0, R1
10531C:  BEQ             loc_105358
10531E:  LDRH            R6, [R0]
105320:  CMP.W           R6, #0x7D0
105324:  BHI             loc_105358
105326:  BEQ             loc_105358
105328:  MOV             R0, R5
10532A:  MOV             R1, R6
10532C:  BL              sub_F2396
105330:  CBZ             R0, loc_105358
105332:  LDR.W           R5, [R5,R6,LSL#2]
105336:  CBZ             R5, loc_105358
105338:  MOV             R0, R5
10533A:  BL              sub_109F36
10533E:  CBZ             R0, loc_105358
105340:  LDR             R4, [R4,#0x5C]
105342:  BL              sub_1082E4
105346:  CMP             R4, R0
105348:  BNE             loc_105358
10534A:  LDR             R1, [R5,#8]
10534C:  MOVS            R2, #3
10534E:  LDR             R0, =(unk_B3852 - 0x105356)
105350:  MOVS            R3, #2
105352:  ADD             R0, PC; unk_B3852
105354:  BL              sub_107188
105358:  POP.W           {R8}
10535C:  POP             {R4-R7,PC}
