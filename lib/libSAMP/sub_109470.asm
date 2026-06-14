; =========================================================
; Game Engine Function: sub_109470
; Address            : 0x109470 - 0x109816
; =========================================================

109470:  PUSH            {R4-R7,LR}
109472:  ADD             R7, SP, #0xC
109474:  PUSH.W          {R8-R11}
109478:  SUB             SP, SP, #4
10947A:  VPUSH           {D8-D11}
10947E:  SUB             SP, SP, #0x88
109480:  MOV             R9, R0
109482:  LDR             R0, =(word_263040 - 0x10948C)
109484:  MOV             R5, R1
109486:  LDR             R1, =(_ZTV8CVehicle - 0x1094A0); `vtable for'CVehicle ...
109488:  ADD             R0, PC; word_263040
10948A:  VLDR            S22, [R7,#arg_4]
10948E:  VLDR            S16, [R7,#arg_0]
109492:  VMOV            S18, R3
109496:  VMOV            S20, R2
10949A:  MOVS            R6, #0
10949C:  ADD             R1, PC; `vtable for'CVehicle
10949E:  CMP.W           R5, #0x238
1094A2:  ADD.W           R1, R1, #8
1094A6:  STRH            R5, [R0]
1094A8:  STR             R6, [SP,#0xC8+var_44]
1094AA:  STRD.W          R1, R6, [R9]
1094AE:  STRD.W          R6, R6, [R9,#8]
1094B2:  STR.W           R6, [R9,#0x10]
1094B6:  BGT             loc_1094D8
1094B8:  MOVW            R0, #0x1C1
1094BC:  CMP             R5, R0
1094BE:  BEQ             loc_10950C
1094C0:  MOVW            R0, #0x219
1094C4:  CMP             R5, R0
1094C6:  BEQ             loc_109512
1094C8:  MOVW            R0, #0x21A
1094CC:  CMP             R5, R0
1094CE:  BNE.W           loc_109684
1094D2:  MOV.W           R8, #5
1094D6:  B               loc_109516
1094D8:  SUBW            R0, R5, #0x239
1094DC:  CMP             R0, #2
1094DE:  BCS.W           loc_109684
1094E2:  LDR             R4, =(dword_263044 - 0x1094E8)
1094E4:  ADD             R4, PC; dword_263044
1094E6:  LDR             R0, [R4]
1094E8:  CMP             R0, #0
1094EA:  BEQ.W           loc_1097A8
1094EE:  LDR.W           R0, [R0,#0x5E8]
1094F2:  STR.W           R0, [R9,#0xC]
1094F6:  CMP             R0, #0
1094F8:  BEQ.W           loc_109808
1094FC:  BL              sub_10833C
109500:  LDR.W           R1, [R9,#0xC]
109504:  STRD.W          R1, R0, [R9,#4]
109508:  STR             R1, [R4]
10950A:  B               loc_109646
10950C:  MOV.W           R8, #9
109510:  B               loc_109516
109512:  MOV.W           R8, #3
109516:  MOVW            R0, #0x21A
10951A:  BL              sub_F9CBC
10951E:  MOVW            R0, #0x23A
109522:  BL              sub_F9CBC
109526:  MOVW            R0, #0x219
10952A:  BL              sub_F9CBC
10952E:  MOVW            R0, #0x239
109532:  BL              sub_F9CBC
109536:  MOVW            R0, #0x1C1
10953A:  BL              sub_F9CBC
10953E:  VLDR            S0, =180.0
109542:  MOV.W           R10, #0
109546:  MOVS            R6, #0
109548:  VCMP.F32        S22, S0
10954C:  VMRS            APSR_nzcv, FPSCR
109550:  IT GT
109552:  MOVGT.W         R10, #1
109556:  BL              sub_F9CCC
10955A:  LDR             R0, =(aAxl - 0x109562); "AXL" ...
10955C:  LDR             R5, =(aCanTLoadTrainM - 0x109564); "Can't load train model %d" ...
10955E:  ADD             R0, PC; "AXL"
109560:  ADD             R5, PC; "Can't load train model %d"
109562:  MOV             R11, R0
109564:  MOVW            R0, #0x21A
109568:  MOVW            R1, #0x1388
10956C:  BL              sub_F9CD8
109570:  MOV             R4, R0
109572:  CBNZ            R0, loc_109582
109574:  MOVS            R0, #5; prio
109576:  MOV             R1, R11; tag
109578:  MOV             R2, R5; fmt
10957A:  MOVW            R3, #0x21A
10957E:  BLX             __android_log_print
109582:  MOVW            R0, #0x23A
109586:  MOVW            R1, #0x1388
10958A:  BL              sub_F9CD8
10958E:  CBNZ            R0, loc_1095A0
109590:  MOVS            R0, #5; prio
109592:  MOV             R1, R11; tag
109594:  MOV             R2, R5; fmt
109596:  MOVW            R3, #0x23A
10959A:  BLX             __android_log_print
10959E:  MOVS            R4, #0
1095A0:  MOVW            R0, #0x219
1095A4:  MOVW            R1, #0x1388
1095A8:  BL              sub_F9CD8
1095AC:  CBNZ            R0, loc_1095BE
1095AE:  MOVS            R0, #5; prio
1095B0:  MOV             R1, R11; tag
1095B2:  MOV             R2, R5; fmt
1095B4:  MOVW            R3, #0x219
1095B8:  BLX             __android_log_print
1095BC:  MOVS            R4, #0
1095BE:  MOVW            R0, #0x239
1095C2:  MOVW            R1, #0x1388
1095C6:  BL              sub_F9CD8
1095CA:  CBNZ            R0, loc_1095DC
1095CC:  MOVS            R0, #5; prio
1095CE:  MOV             R1, R11; tag
1095D0:  MOV             R2, R5; fmt
1095D2:  MOVW            R3, #0x239
1095D6:  BLX             __android_log_print
1095DA:  MOVS            R4, #0
1095DC:  MOVW            R0, #0x1C1
1095E0:  MOVW            R1, #0x1388
1095E4:  BL              sub_F9CD8
1095E8:  CBZ             R0, loc_1095F2
1095EA:  CBNZ            R4, loc_109608
1095EC:  CMP             R6, #5
1095EE:  BCC             loc_109604
1095F0:  B               loc_109608
1095F2:  MOVS            R0, #5; prio
1095F4:  MOV             R1, R11; tag
1095F6:  MOV             R2, R5; fmt
1095F8:  MOVW            R3, #0x1C1
1095FC:  BLX             __android_log_print
109600:  CMP             R6, #4
109602:  BHI             loc_109608
109604:  ADDS            R6, #1
109606:  B               loc_109564
109608:  VCVT.F64.F32    D16, S20
10960C:  LDR             R0, =(unk_B3D5A - 0x109614)
10960E:  ADD             R1, SP, #0xC8+var_44
109610:  ADD             R0, PC; unk_B3D5A
109612:  STRD.W          R10, R1, [SP,#0xC8+var_B8]
109616:  MOV             R1, R8
109618:  VMOV            R2, R3, D16
10961C:  VCVT.F64.F32    D16, S18
109620:  VCVT.F64.F32    D17, S16
109624:  VSTMEA          SP, {D16-D17}
109628:  BL              sub_107188
10962C:  LDR             R0, [SP,#0xC8+var_44]
10962E:  BL              sub_108354
109632:  LDR             R1, =(dword_263044 - 0x10963A)
109634:  LDR             R2, [SP,#0xC8+var_44]
109636:  ADD             R1, PC; dword_263044
109638:  STR.W           R0, [R9,#0xC]
10963C:  STR             R0, [R1]
10963E:  STRD.W          R0, R2, [R9,#4]
109642:  BL              sub_108EF8
109646:  VMOV.I32        Q8, #0
10964A:  MOV.W           R1, #0xFFFFFFFF
10964E:  STRD.W          R1, R1, [R9,#0x18]
109652:  ADD.W           R1, R9, #0x29 ; ')'
109656:  MOVS            R2, #0x13
109658:  MOVS            R0, #0
10965A:  VST1.8          {D16-D17}, [R1]!
10965E:  VST1.8          {D16-D17}, [R1],R2
109662:  STRB.W          R0, [R9,#0x24]
109666:  STRB.W          R0, [R9,#0x20]
10966A:  STRB.W          R0, [R9,#0x27]
10966E:  STRH.W          R0, [R9,#0x22]
109672:  STR             R0, [R1]
109674:  MOV             R0, R9
109676:  ADD             SP, SP, #0x88
109678:  VPOP            {D8-D11}
10967C:  ADD             SP, SP, #4
10967E:  POP.W           {R8-R11}
109682:  POP             {R4-R7,PC}
109684:  MOV             R0, R5
109686:  BL              sub_F9C94
10968A:  CMP             R0, #0
10968C:  BEQ.W           loc_1097B4
109690:  VCVT.F64.F32    D16, S20
109694:  LDR             R0, =(unk_B3CF6 - 0x10969E)
109696:  ADD             R1, SP, #0xC8+var_44
109698:  STR             R1, [SP,#0xC8+var_B8]
10969A:  ADD             R0, PC; unk_B3CF6
10969C:  MOV             R1, R5
10969E:  VMOV            R2, R3, D16
1096A2:  VCVT.F64.F32    D16, S16
1096A6:  VCVT.F64.F32    D17, S18
1096AA:  VSTR            D17, [SP,#0xC8+var_C8]
1096AE:  VSTR            D16, [SP,#0xC8+var_C0]
1096B2:  BL              sub_107188
1096B6:  VCVT.F64.F32    D16, S22
1096BA:  LDR             R0, =(unk_B3D0A - 0x1096C2)
1096BC:  LDR             R1, [SP,#0xC8+var_44]
1096BE:  ADD             R0, PC; unk_B3D0A
1096C0:  VMOV            R2, R3, D16
1096C4:  BL              sub_107188
1096C8:  LDR             R1, [SP,#0xC8+var_44]
1096CA:  MOVS            R2, #0
1096CC:  LDR             R0, =(unk_B3D1E - 0x1096D4)
1096CE:  MOVS            R5, #0
1096D0:  ADD             R0, PC; unk_B3D1E
1096D2:  BL              sub_107188
1096D6:  LDR             R0, =(unk_B3D32 - 0x1096E0)
1096D8:  MOVS            R2, #0
1096DA:  LDR             R1, [SP,#0xC8+var_44]
1096DC:  ADD             R0, PC; unk_B3D32
1096DE:  BL              sub_107188
1096E2:  LDR             R0, =(unk_B3D46 - 0x1096EC)
1096E4:  MOVS            R2, #0
1096E6:  LDR             R1, [SP,#0xC8+var_44]
1096E8:  ADD             R0, PC; unk_B3D46
1096EA:  BL              sub_107188
1096EE:  LDR             R0, [SP,#0xC8+var_44]
1096F0:  BL              sub_108354
1096F4:  LDR             R1, [SP,#0xC8+var_44]
1096F6:  MOVS            R2, #0
1096F8:  STR.W           R0, [R9,#0xC]
1096FC:  MOVS            R3, #0
1096FE:  STRD.W          R0, R1, [R9,#4]
109702:  MOV             R0, R9
109704:  MOVS            R1, #0
109706:  BL              sub_F89BC
10970A:  LDR.W           R0, [R9,#0xC]
10970E:  CMP             R0, #0
109710:  BEQ             loc_109646
109712:  ADD             R1, SP, #0xC8+var_84
109714:  STR.W           R5, [R0,#0x4BC]
109718:  STR.W           R5, [R0,#0x508]
10971C:  MOV             R0, R9
10971E:  STRB.W          R5, [R9,#0x21]
109722:  BL              sub_F8910
109726:  LDR.W           R0, [R9,#0xC]
10972A:  CBZ             R0, loc_109742
10972C:  BL              sub_10837C
109730:  CMP             R0, #2
109732:  BEQ             loc_109752
109734:  LDR.W           R0, [R9,#0xC]
109738:  CBZ             R0, loc_109742
10973A:  BL              sub_10837C
10973E:  CMP             R0, #6
109740:  BEQ             loc_109752
109742:  VMOV.F32        S0, #0.25
109746:  VLDR            S2, [SP,#0xC8+var_4C]
10974A:  VADD.F32        S0, S2, S0
10974E:  VSTR            S0, [SP,#0xC8+var_4C]
109752:  LDR             R0, [SP,#0xC8+var_84]
109754:  ADD             R3, SP, #0xC8+var_50
109756:  STR             R0, [SP,#0xC8+var_88]
109758:  ADD.W           LR, SP, #0xC8+var_6C
10975C:  LDR             R0, [SP,#0xC8+var_80]
10975E:  STR             R0, [SP,#0xC8+var_8C]
109760:  LDR             R0, [SP,#0xC8+var_7C]
109762:  STR             R0, [SP,#0xC8+var_90]
109764:  LDR             R0, [SP,#0xC8+var_78]
109766:  LDM             R3, {R1-R3}
109768:  STR             R0, [SP,#0xC8+var_94]
10976A:  LDRD.W          R8, R0, [SP,#0xC8+var_58]
10976E:  STRD.W          R8, R0, [SP,#0xC8+var_A8]
109772:  ADD             R0, SP, #0xC8+var_A0
109774:  LDRD.W          R6, R5, [SP,#0xC8+var_74]
109778:  STM             R0!, {R1-R3}
10977A:  LDM.W           LR, {R4,R12,LR}
10977E:  LDR             R1, [SP,#0xC8+var_88]
109780:  LDRD.W          R3, R2, [SP,#0xC8+var_90]
109784:  LDR             R0, [SP,#0xC8+var_94]
109786:  LDRD.W          R10, R11, [SP,#0xC8+var_60]
10978A:  STRD.W          R0, R6, [SP,#0xC8+var_C8]
10978E:  MOV             R0, R9
109790:  STRD.W          R5, R4, [SP,#0xC8+var_C0]
109794:  STRD.W          R12, LR, [SP,#0xC8+var_B8]
109798:  STRD.W          R10, R11, [SP,#0xC8+var_B0]
10979C:  BL              sub_F894A
1097A0:  LDR             R0, [R7,#arg_8]
1097A2:  STRB.W          R0, [R9,#0x14]
1097A6:  B               loc_109646
1097A8:  MOVS            R0, #0
1097AA:  STR.W           R0, [R9,#0xC]
1097AE:  STR.W           R0, [R9,#4]
1097B2:  B               loc_109674
1097B4:  MOV             R0, R5
1097B6:  BL              sub_F9CBC
1097BA:  BL              sub_F9CCC
1097BE:  LDR             R4, =(dword_263048 - 0x1097C4)
1097C0:  ADD             R4, PC; dword_263048
1097C2:  MOV             R0, R5
1097C4:  BL              sub_F9C94
1097C8:  CMP             R0, #0
1097CA:  BNE.W           loc_109690
1097CE:  MOV.W           R0, #0x3E8; useconds
1097D2:  BLX             usleep
1097D6:  LDR             R0, [R4]
1097D8:  CMP             R0, #0xC8
1097DA:  ADD.W           R1, R0, #1
1097DE:  STR             R1, [R4]
1097E0:  BLT             loc_1097C2
1097E2:  MOVS            R0, #0
1097E4:  STR             R0, [R4]
1097E6:  MOVS            R0, #8; thrown_size
1097E8:  BLX             j___cxa_allocate_exception
1097EC:  LDR             R1, =(aErrorLoadingVe - 0x1097F4); "error loading vehicle model" ...
1097EE:  MOV             R4, R0
1097F0:  ADD             R1, PC; "error loading vehicle model"
1097F2:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
1097F6:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x1097FE)
1097F8:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x109800)
1097FA:  ADD             R0, PC; _ZTISt13runtime_error_ptr
1097FC:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
1097FE:  LDR             R1, [R0]; lptinfo
109800:  MOV             R0, R4; void *
109802:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
109804:  BLX             j___cxa_throw
109808:  MOVS            R0, #0
10980A:  STR.W           R0, [R9,#0xC]
10980E:  STR.W           R0, [R9,#4]
109812:  STR             R0, [R4]
109814:  B               loc_109674
