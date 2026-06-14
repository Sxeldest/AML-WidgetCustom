; =========================================================
; Game Engine Function: sub_671A4
; Address            : 0x671A4 - 0x67512
; =========================================================

671A4:  PUSH            {R4-R7,LR}
671A6:  ADD             R7, SP, #0xC
671A8:  PUSH.W          {R8-R11}
671AC:  SUB             SP, SP, #4
671AE:  VPUSH           {D8-D10}
671B2:  SUB             SP, SP, #0x98
671B4:  MOV             R6, R0
671B6:  LDR             R0, =(__stack_chk_guard_ptr - 0x671BC)
671B8:  ADD             R0, PC; __stack_chk_guard_ptr
671BA:  LDR             R0, [R0]; __stack_chk_guard
671BC:  LDR             R0, [R0]
671BE:  STR             R0, [SP,#0xD0+var_3C]
671C0:  LDR             R0, [R6,#0x5C]
671C2:  CMP             R0, #0
671C4:  BEQ.W           loc_674F0
671C8:  LDR             R0, [R6,#8]
671CA:  MOV             R5, R1
671CC:  BL              sub_685E0
671D0:  CMP             R0, #0
671D2:  BEQ.W           loc_674F0
671D6:  MOV.W           R0, #0x23C
671DA:  LDR             R4, =(unk_1176A0 - 0x671E6)
671DC:  MUL.W           R12, R5, R0
671E0:  ADD             R0, SP, #0xD0+var_80
671E2:  ADD             R4, PC; unk_1176A0
671E4:  VMOV.I32        D8, #0
671E8:  MOVW            LR, #0x7D24
671EC:  ADDS            R0, #0x30 ; '0'
671EE:  ADD.W           R8, R4, #0x208
671F2:  ADD.W           R11, R4, #0x214
671F6:  VLDR            S18, =10000.0
671FA:  VLDR            S20, =-10000.0
671FE:  MOVS            R1, #0
67200:  STR             R0, [SP,#0xD0+var_A4]
67202:  MOVS            R0, #0
67204:  MOV.W           R10, #0xA
67208:  MOVT            LR, #0x66 ; 'f'
6720C:  STR             R1, [SP,#0xD0+var_78]
6720E:  STR             R1, [SP,#0xD0+var_68]
67210:  STRD.W          R1, R1, [SP,#0xD0+var_80]
67214:  STR             R1, [SP,#0xD0+var_58]
67216:  STRD.W          R1, R1, [SP,#0xD0+var_70]
6721A:  STR             R1, [SP,#0xD0+var_48]
6721C:  STRD.W          R1, R1, [SP,#0xD0+var_60]
67220:  STRD.W          R1, R1, [SP,#0xD0+var_50]
67224:  STR             R1, [SP,#0xD0+var_88]
67226:  STRD.W          R1, R1, [SP,#0xD0+var_90]
6722A:  STR             R0, [SP,#0xD0+var_A0]
6722C:  STRD.W          R12, R6, [SP,#0xD0+var_98]
67230:  B               loc_6726A
67232:  VMOV            R2, R3, D8
67236:  LDR.W           R1, [R9,#8]
6723A:  LDR             R0, =(unk_50D7E - 0x67246)
6723C:  MOVS            R5, #0
6723E:  STRD.W          R5, R5, [SP,#0xD0+var_D0]
67242:  ADD             R0, PC; unk_50D7E
67244:  STRD.W          R5, R5, [SP,#0xD0+var_C8]
67248:  BL              sub_682E8
6724C:  LDR.W           R12, [SP,#0xD0+var_98]
67250:  MOV             LR, #0x667D24
67258:  ADDS            R4, #0x34 ; '4'
6725A:  ADD.W           R11, R11, #4
6725E:  ADD.W           R8, R8, #1
67262:  SUBS.W          R10, R10, #1
67266:  BEQ.W           loc_674F0
6726A:  LDRB.W          R0, [R8,R12]
6726E:  CMP             R0, #0
67270:  BEQ             loc_67258
67272:  LDR.W           R9, [R11,R12]
67276:  CMP.W           R9, #0
6727A:  ITT NE
6727C:  LDRNE.W         R0, [R9,#4]
67280:  CMPNE           R0, #0
67282:  BEQ             loc_67258
67284:  LDR             R1, [R6,#4]
67286:  LDR             R3, =(off_114AA8 - 0x6728C)
67288:  ADD             R3, PC; off_114AA8
6728A:  CBZ             R1, loc_672AC
6728C:  LDR             R2, [R3]; dword_1A4404
6728E:  STR             R2, [SP,#0xD0+var_9C]
67290:  LDR             R6, [R1]
67292:  LDR             R2, [R2]
67294:  ADD.W           R5, R2, LR
67298:  CMP             R6, R5
6729A:  LDR             R6, [SP,#0xD0+var_94]
6729C:  BEQ             loc_672AC
6729E:  LDR.W           R6, [R1,#0xB8]
672A2:  CMP             R6, #0
672A4:  LDR             R6, [SP,#0xD0+var_94]
672A6:  IT NE
672A8:  CMPNE           R5, R0
672AA:  BNE             loc_672D8
672AC:  LDR             R1, [R3]; dword_1A4404
672AE:  LDR             R2, [R1]
672B0:  LDR             R1, [R0]
672B2:  ADD             R2, LR
672B4:  CMP             R1, R2
672B6:  BEQ             loc_67258
672B8:  LDRH            R2, [R0,#0x26]
672BA:  SUBW            R3, R2, #0x219
672BE:  CMP             R3, #2
672C0:  BCC             loc_67232
672C2:  MOVW            R3, #0x1C1
672C6:  CMP             R2, R3
672C8:  BEQ             loc_67232
672CA:  LDR             R6, [R1,#0x3C]
672CC:  MOVS            R1, #0
672CE:  MOVS            R2, #0
672D0:  MOVS            R3, #0
672D2:  BLX             R6
672D4:  LDR             R6, [SP,#0xD0+var_94]
672D6:  B               loc_6724C
672D8:  LDR             R3, [SP,#0xD0+var_A0]
672DA:  LSLS            R3, R3, #0x1F
672DC:  BNE             loc_672F4
672DE:  MOV             R0, #0x3EBFE9
672E6:  ADD             R0, R2
672E8:  ADD.W           R2, R0, #0xE
672EC:  MOV             R0, R1
672EE:  BLX             R2
672F0:  LDR.W           R0, [R9,#4]
672F4:  LDR             R1, [R0]
672F6:  LDR             R1, [R1,#0x10]
672F8:  BLX             R1
672FA:  LDR             R0, [R6,#4]
672FC:  MOV             R2, #0x5D1021
67304:  CMP             R0, #0
67306:  ITE NE
67308:  LDRNE           R0, [R0,#0x18]
6730A:  MOVEQ           R0, #0
6730C:  LDR             R5, [SP,#0xD0+var_9C]
6730E:  LDR             R1, [R5]
67310:  ADD             R1, R2
67312:  BLX             R1
67314:  MOVW            R2, #0x2C91
67318:  LDR             R1, [R5]
6731A:  MOVT            R2, #0x1C
6731E:  ADD             R2, R1
67320:  MOVS            R1, #4
67322:  BLX             R2
67324:  LDR             R0, [SP,#0xD0+var_98]
67326:  LDR             R1, [R6,#0x5C]
67328:  ADDS            R5, R4, R0
6732A:  LDR             R0, [R5,#4]
6732C:  ADD.W           R0, R1, R0,LSL#2
67330:  LDR.W           R0, [R0,#0x494]
67334:  LDR             R2, [R0,#0x14]
67336:  MOV             R0, R6
67338:  ADD             R6, SP, #0xD0+var_80
6733A:  MOV             R1, R6
6733C:  BL              sub_67530
67340:  ADD.W           R2, R5, #8
67344:  ADD             R0, SP, #0xD0+var_90
67346:  MOV             R1, R6
67348:  BL              sub_686A0
6734C:  VLDR            S0, [R5,#0x14]
67350:  LDR             R1, [SP,#0xD0+var_A4]
67352:  VLDR            D16, [SP,#0xD0+var_90]
67356:  VCMP.F32        S0, #0.0
6735A:  LDR             R0, [SP,#0xD0+var_88]
6735C:  VMRS            APSR_nzcv, FPSCR
67360:  STR             R0, [R1,#8]
67362:  VSTR            D16, [R1]
67366:  BEQ             loc_67374
67368:  VMOV            R2, S0
6736C:  ADD             R0, SP, #0xD0+var_80
6736E:  MOVS            R1, #0
67370:  BL              sub_6875C
67374:  VLDR            S0, [R5,#0x18]
67378:  VCMP.F32        S0, #0.0
6737C:  VMRS            APSR_nzcv, FPSCR
67380:  BEQ             loc_6738E
67382:  VMOV            R2, S0
67386:  ADD             R0, SP, #0xD0+var_80
67388:  MOVS            R1, #1
6738A:  BL              sub_6875C
6738E:  VLDR            S0, [R5,#0x1C]
67392:  ADD             R0, SP, #0xD0+var_80
67394:  LDR             R6, [SP,#0xD0+var_94]
67396:  VCMP.F32        S0, #0.0
6739A:  VMRS            APSR_nzcv, FPSCR
6739E:  BEQ             loc_673AC
673A0:  VMOV            R2, S0
673A4:  MOVS            R1, #2
673A6:  BL              sub_6875C
673AA:  ADD             R0, SP, #0xD0+var_80
673AC:  ADD.W           R1, R5, #0x20 ; ' '
673B0:  BL              sub_68790
673B4:  VLDR            S0, [SP,#0xD0+var_50]
673B8:  VCMP.F32        S0, S18
673BC:  VMRS            APSR_nzcv, FPSCR
673C0:  BLE             loc_673C8
673C2:  MOVS            R0, #1
673C4:  STR             R0, [SP,#0xD0+var_A0]
673C6:  B               loc_6724C
673C8:  VLDR            S2, [SP,#0xD0+var_4C]
673CC:  MOVW            LR, #0x7D24
673D0:  LDR.W           R12, [SP,#0xD0+var_98]
673D4:  MOVT            LR, #0x66 ; 'f'
673D8:  VCMP.F32        S2, S18
673DC:  VMRS            APSR_nzcv, FPSCR
673E0:  BLE             loc_673E8
673E2:  MOVS            R0, #1
673E4:  STR             R0, [SP,#0xD0+var_A0]
673E6:  B               loc_67258
673E8:  VLDR            S4, [SP,#0xD0+var_48]
673EC:  MOVS            R0, #1
673EE:  STR             R0, [SP,#0xD0+var_A0]
673F0:  VCMP.F32        S4, S18
673F4:  VMRS            APSR_nzcv, FPSCR
673F8:  BGT.W           loc_67258
673FC:  VCMP.F32        S0, S20
67400:  VMRS            APSR_nzcv, FPSCR
67404:  BMI.W           loc_67258
67408:  VCMP.F32        S2, S20
6740C:  VMRS            APSR_nzcv, FPSCR
67410:  ITT PL
67412:  VCMPPL.F32      S4, S20
67416:  VMRSPL          APSR_nzcv, FPSCR
6741A:  BMI.W           loc_67258
6741E:  LDR.W           R1, [R9,#4]
67422:  CMP             R1, #0
67424:  BEQ             loc_674CA
67426:  LDR             R0, [R1,#0x14]
67428:  CBZ             R0, loc_6748C
6742A:  VMOV            R5, S4
6742E:  LDR             R2, [SP,#0xD0+var_58]
67430:  VMOV            LR, S2
67434:  STR             R2, [SP,#0xD0+var_B8]
67436:  LDR             R2, [SP,#0xD0+var_80]
67438:  STR             R2, [SP,#0xD0+var_A0]
6743A:  LDR             R2, [SP,#0xD0+var_7C]
6743C:  STR             R2, [SP,#0xD0+var_A8]
6743E:  LDR             R2, [SP,#0xD0+var_78]
67440:  STR             R2, [SP,#0xD0+var_AC]
67442:  LDR             R2, [SP,#0xD0+var_70]
67444:  STR             R2, [SP,#0xD0+var_B0]
67446:  LDRD.W          R2, R6, [SP,#0xD0+var_60]
6744A:  STR             R2, [R0,#0x20]
6744C:  LDR             R2, [SP,#0xD0+var_B0]
6744E:  LDRD.W          R12, R3, [SP,#0xD0+var_6C]
67452:  STR             R2, [R0,#0x10]
67454:  LDR             R2, [SP,#0xD0+var_AC]
67456:  STR             R2, [R0,#8]
67458:  LDR             R2, [SP,#0xD0+var_A8]
6745A:  STR             R5, [SP,#0xD0+var_BC]
6745C:  VMOV            R5, S0
67460:  STR             R2, [R0,#4]
67462:  LDR             R2, [SP,#0xD0+var_A0]
67464:  STR.W           LR, [SP,#0xD0+var_B4]
67468:  MOVW            LR, #0x7D24
6746C:  STR             R2, [R0]
6746E:  MOVT            LR, #0x66 ; 'f'
67472:  LDR             R2, [SP,#0xD0+var_BC]
67474:  STR             R2, [R0,#0x38]
67476:  LDR             R2, [SP,#0xD0+var_B4]
67478:  STR             R2, [R0,#0x34]
6747A:  STR             R6, [R0,#0x24]
6747C:  STR             R3, [R0,#0x18]
6747E:  STR.W           R12, [R0,#0x14]
67482:  STR             R5, [SP,#0xD0+var_C0]
67484:  LDR             R5, [SP,#0xD0+var_B8]
67486:  LDR             R2, [SP,#0xD0+var_C0]
67488:  STR             R5, [R0,#0x28]
6748A:  STR             R2, [R0,#0x30]
6748C:  LDR             R2, [SP,#0xD0+var_9C]
6748E:  LDR             R3, [R1]
67490:  LDR             R2, [R2]
67492:  ADD.W           R6, R2, LR
67496:  CMP             R3, R6
67498:  LDR             R6, [SP,#0xD0+var_94]
6749A:  BEQ             loc_674CA
6749C:  LDR             R1, [R1,#0x18]
6749E:  CMP             R1, #0
674A0:  IT NE
674A2:  CMPNE           R0, #0
674A4:  BEQ             loc_674CA
674A6:  LDR             R1, [R1,#4]
674A8:  MOV             R3, #0x44EDEF
674B0:  ADD             R2, R3
674B2:  ADDS            R1, #0x10
674B4:  BLX             R2
674B6:  LDR             R0, [SP,#0xD0+var_9C]
674B8:  MOV             R2, #0x3EBFE9
674C0:  LDR             R1, [R0]
674C2:  LDR.W           R0, [R9,#4]
674C6:  ADD             R1, R2
674C8:  BLX             R1
674CA:  ADD             R3, SP, #0xD0+var_50
674CC:  MOV             R0, R9
674CE:  LDM             R3, {R1-R3}
674D0:  BL              sub_66064
674D4:  LDR.W           R0, [R9,#4]
674D8:  LDR             R1, [R0]
674DA:  LDR             R1, [R1,#8]
674DC:  BLX             R1
674DE:  MOVW            LR, #0x7D24
674E2:  MOVS            R0, #1
674E4:  MOVT            LR, #0x66 ; 'f'
674E8:  STR             R0, [SP,#0xD0+var_A0]
674EA:  LDR.W           R12, [SP,#0xD0+var_98]
674EE:  B               loc_67258
674F0:  LDR             R0, [SP,#0xD0+var_3C]
674F2:  LDR             R1, =(__stack_chk_guard_ptr - 0x674F8)
674F4:  ADD             R1, PC; __stack_chk_guard_ptr
674F6:  LDR             R1, [R1]; __stack_chk_guard
674F8:  LDR             R1, [R1]
674FA:  CMP             R1, R0
674FC:  ITTTT EQ
674FE:  ADDEQ           SP, SP, #0x98
67500:  VPOPEQ          {D8-D10}
67504:  ADDEQ           SP, SP, #4
67506:  POPEQ.W         {R8-R11}
6750A:  IT EQ
6750C:  POPEQ           {R4-R7,PC}
6750E:  BLX             __stack_chk_fail
