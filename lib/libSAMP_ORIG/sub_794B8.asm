; =========================================================
; Game Engine Function: sub_794B8
; Address            : 0x794B8 - 0x797B0
; =========================================================

794B8:  PUSH            {R4-R7,LR}
794BA:  ADD             R7, SP, #0xC
794BC:  PUSH.W          {R8-R11}
794C0:  SUB             SP, SP, #4
794C2:  VPUSH           {D8-D10}
794C6:  SUB             SP, SP, #0x170
794C8:  LDR             R0, =(__stack_chk_guard_ptr - 0x794CE)
794CA:  ADD             R0, PC; __stack_chk_guard_ptr
794CC:  LDR             R0, [R0]; __stack_chk_guard
794CE:  LDR             R0, [R0]
794D0:  STR             R0, [SP,#0x1A8+var_3C]
794D2:  BL              sub_6C844
794D6:  MOV             R4, R0
794D8:  LDR             R0, [R0,#8]
794DA:  CBNZ            R0, loc_79506
794DC:  MOV.W           R0, #0x2F0; unsigned int
794E0:  BLX             j__Znwj; operator new(uint)
794E4:  MOV             R5, R0
794E6:  LDR             R0, =(off_114AB0 - 0x794EE)
794E8:  LDR             R1, =(_ZTV10CPlayerPed - 0x794F0); `vtable for'CPlayerPed ...
794EA:  ADD             R0, PC; off_114AB0
794EC:  ADD             R1, PC; `vtable for'CPlayerPed
794EE:  LDR             R0, [R0]; dword_1A4408
794F0:  ADDS            R1, #8
794F2:  STR             R1, [R5]
794F4:  MOV             R1, #0x103B89
794FC:  LDR             R0, [R0]
794FE:  ADD             R1, R0
79500:  MOV             R0, R5
79502:  BLX             R1
79504:  STR             R5, [R4,#8]
79506:  LDR             R0, =(off_114AD8 - 0x7950C)
79508:  ADD             R0, PC; off_114AD8
7950A:  LDR.W           R8, [R0]; dword_1A4434
7950E:  LDR.W           R0, [R8]
79512:  LDR.W           R1, [R0,#0x3B0]
79516:  LDR             R5, =(dword_116D38 - 0x7951C)
79518:  ADD             R5, PC; dword_116D38
7951A:  LDR.W           R9, [R5]
7951E:  LDR             R3, =(dword_1A4548 - 0x79524)
79520:  ADD             R3, PC; dword_1A4548
79522:  LDR             R3, [R3]
79524:  CMP             R3, #1
79526:  BNE             loc_795B6
79528:  LDR             R1, [R1]
7952A:  MOV.W           R6, #0x13A0
7952E:  LDR             R3, =(off_114B58 - 0x79538)
79530:  STR             R0, [SP,#0x1A8+var_168]
79532:  LDRH            R1, [R1,R6]
79534:  ADD             R3, PC; off_114B58
79536:  MOV.W           R6, #0x23C
7953A:  LDR             R3, [R3]; unk_1176A0
7953C:  MLA.W           R2, R1, R6, R3
79540:  MOVS            R1, #0x34 ; '4'
79542:  MLA.W           R1, R9, R1, R2
79546:  STR             R2, [SP,#0x1A8+var_16C]
79548:  LDRD.W          R12, R3, [R1,#0x10]
7954C:  LDRD.W          R11, R5, [R1,#8]
79550:  STR             R3, [SP,#0x1A8+var_170]
79552:  LDRD.W          R8, R4, [R1,#0x18]
79556:  LDR             R2, [R1,#4]
79558:  STR             R2, [SP,#0x1A8+var_164]
7955A:  LDRD.W          LR, R10, [R1,#0x20]
7955E:  LDR             R6, [R1,#0x28]
79560:  LDR             R0, =(dword_1A4574 - 0x7956A)
79562:  LDR             R2, =(dword_116D3C - 0x7956C)
79564:  LDR             R1, =(dword_1A4580 - 0x7956E)
79566:  ADD             R0, PC; dword_1A4574
79568:  ADD             R2, PC; dword_116D3C
7956A:  ADD             R1, PC; dword_1A4580
7956C:  STRD.W          R11, R5, [R0]
79570:  STR.W           R12, [R0,#(dword_1A457C - 0x1A4574)]
79574:  STRD.W          R3, R8, [R1]
79578:  STR             R4, [R1,#(dword_1A4588 - 0x1A4580)]
7957A:  MOVS            R1, #1
7957C:  STRD.W          LR, R10, [R2]
79580:  STR             R6, [R2,#(dword_116D44 - 0x116D3C)]
79582:  MOV             R2, R9
79584:  LDR             R0, =(byte_1A458C - 0x7958E)
79586:  STRD.W          R10, R6, [SP,#0x1A8+var_188]
7958A:  ADD             R0, PC; byte_1A458C
7958C:  STRD.W          R5, R12, [SP,#0x1A8+var_1A0]
79590:  STRD.W          R4, LR, [SP,#0x1A8+var_190]
79594:  STRB            R1, [R0]
79596:  MOVS            R0, #0x34 ; '4'
79598:  MUL.W           R0, R9, R0
7959C:  LDR             R1, [SP,#0x1A8+var_16C]
7959E:  LDR             R3, [R1,R0]
795A0:  MOVS            R1, #1
795A2:  LDR             R0, [SP,#0x1A8+var_164]
795A4:  STRD.W          R0, R11, [SP,#0x1A8+var_1A8]
795A8:  LDR             R0, [SP,#0x1A8+var_170]
795AA:  STRD.W          R0, R8, [SP,#0x1A8+var_198]
795AE:  LDR             R0, [SP,#0x1A8+var_168]
795B0:  BL              sub_79824
795B4:  B               loc_7976A
795B6:  UXTH.W          R0, R9
795BA:  CMP.W           R0, #0x3E8
795BE:  BHI.W           loc_7976A
795C2:  LDR             R1, [R1,#0x10]
795C4:  ADD.W           R0, R1, R0,LSL#2
795C8:  LDR.W           R0, [R0,#0x3EC]
795CC:  CMP             R0, #0
795CE:  BEQ.W           loc_7976A
795D2:  LDR             R1, [R0,#4]
795D4:  VLDR            S16, =0.0
795D8:  CBZ             R1, loc_795FE
795DA:  LDR             R1, [R1,#0x14]
795DC:  VMOV.F32        S18, S16
795E0:  VMOV.F32        S20, S16
795E4:  CMP             R1, #0
795E6:  ITTTT NE
795E8:  LDRNE           R2, [R1,#0x30]
795EA:  LDRNE           R3, [R1,#0x34]
795EC:  LDRNE           R1, [R1,#0x38]
795EE:  VMOVNE          S20, R1
795F2:  ITT NE
795F4:  VMOVNE          S18, R3
795F8:  VMOVNE          S16, R2
795FC:  B               loc_79606
795FE:  VMOV.F32        S18, S16
79602:  VMOV.F32        S20, S16
79606:  LDR             R1, =(off_114AB0 - 0x79612)
79608:  MOVS            R2, #0
7960A:  STRD.W          R2, R2, [SP,#0x1A8+var_160+4]
7960E:  ADD             R1, PC; off_114AB0
79610:  STR             R2, [SP,#0x1A8+var_160]
79612:  MOVW            R2, #:lower16:(loc_1021EE+3); jumptable 00101F8A case 101
79616:  LDR             R1, [R1]; dword_1A4408
79618:  MOVT            R2, #:upper16:(loc_1021EE+3); jumptable 00101F8A case 101
7961C:  LDR             R1, [R1]
7961E:  ADDS            R6, R1, R2
79620:  ADD             R1, SP, #0x1A8+var_160
79622:  ADDS            R2, R1, #4
79624:  ADD.W           R3, R1, #8
79628:  BLX             R6
7962A:  LDR             R0, =(unk_1A4558 - 0x79636)
7962C:  MOVS            R3, #1
7962E:  LDR             R1, =(byte_1A458C - 0x79638)
79630:  LDR             R2, =(unk_1A4568 - 0x7963E)
79632:  ADD             R0, PC; unk_1A4558
79634:  ADD             R1, PC; byte_1A458C
79636:  VLDR            D16, [SP,#0x1A8+var_160]
7963A:  ADD             R2, PC; unk_1A4568
7963C:  VSTR            S16, [R0]
79640:  VSTR            S18, [R0,#4]
79644:  VSTR            S20, [R0,#8]
79648:  LDR             R0, [SP,#0x1A8+var_158]
7964A:  STR             R0, [R2,#(dword_1A4570 - 0x1A4568)]
7964C:  ADD             R0, SP, #0x1A8+var_150
7964E:  STRB            R3, [R1]
79650:  VSTR            D16, [R2]
79654:  BL              sub_86B90
79658:  BL              sub_86F46
7965C:  LDR             R0, [R5]
7965E:  STRH.W          R0, [SP,#0x1A8+var_154]
79662:  ADD             R0, SP, #0x1A8+var_150
79664:  ADD             R1, SP, #0x1A8+var_154
79666:  MOVS            R2, #0x10
79668:  MOVS            R3, #1
7966A:  MOVS            R6, #1
7966C:  BL              sub_86D52
79670:  STR             R6, [SP,#0x1A8+var_154]
79672:  ADD             R0, SP, #0x1A8+var_150
79674:  ADD             R1, SP, #0x1A8+var_154
79676:  MOVS            R2, #0x20 ; ' '
79678:  MOVS            R3, #1
7967A:  BL              sub_86D52
7967E:  VSTR            S16, [SP,#0x1A8+var_154]
79682:  ADD             R0, SP, #0x1A8+var_150
79684:  ADD             R1, SP, #0x1A8+var_154
79686:  MOVS            R2, #0x20 ; ' '
79688:  MOVS            R3, #1
7968A:  BL              sub_86D52
7968E:  VSTR            S18, [SP,#0x1A8+var_154]
79692:  ADD             R0, SP, #0x1A8+var_150
79694:  ADD             R1, SP, #0x1A8+var_154
79696:  MOVS            R2, #0x20 ; ' '
79698:  MOVS            R3, #1
7969A:  BL              sub_86D52
7969E:  VSTR            S20, [SP,#0x1A8+var_154]
796A2:  ADD             R0, SP, #0x1A8+var_150
796A4:  ADD             R1, SP, #0x1A8+var_154
796A6:  MOVS            R2, #0x20 ; ' '
796A8:  MOVS            R3, #1
796AA:  BL              sub_86D52
796AE:  LDR             R0, [SP,#0x1A8+var_160]
796B0:  STR             R0, [SP,#0x1A8+var_154]
796B2:  ADD             R0, SP, #0x1A8+var_150
796B4:  ADD             R1, SP, #0x1A8+var_154
796B6:  MOVS            R2, #0x20 ; ' '
796B8:  MOVS            R3, #1
796BA:  BL              sub_86D52
796BE:  LDR             R0, [SP,#0x1A8+var_160+4]
796C0:  STR             R0, [SP,#0x1A8+var_154]
796C2:  ADD             R0, SP, #0x1A8+var_150
796C4:  ADD             R1, SP, #0x1A8+var_154
796C6:  MOVS            R2, #0x20 ; ' '
796C8:  MOVS            R3, #1
796CA:  BL              sub_86D52
796CE:  LDR             R0, [SP,#0x1A8+var_158]
796D0:  STR             R0, [SP,#0x1A8+var_154]
796D2:  ADD             R0, SP, #0x1A8+var_150
796D4:  ADD             R1, SP, #0x1A8+var_154
796D6:  MOVS            R2, #0x20 ; ' '
796D8:  MOVS            R3, #1
796DA:  BL              sub_86D52
796DE:  VLDR            S0, [SP,#0x1A8+var_160]
796E2:  VLDR            S2, [SP,#0x1A8+var_160+4]
796E6:  VLDR            S4, [SP,#0x1A8+var_158]
796EA:  LDR             R0, =(byte_1A458D - 0x796F6)
796EC:  VCVT.F64.F32    D16, S2
796F0:  LDR             R1, =(aSampOrig - 0x796F8); "SAMP_ORIG" ...
796F2:  ADD             R0, PC; byte_1A458D
796F4:  ADD             R1, PC; "SAMP_ORIG"
796F6:  LDRB            R3, [R0]
796F8:  LDR             R2, =(aPlayerObjDEdit - 0x79704); "Player Obj: %d | Edited ID: %d | Pos X:"... ...
796FA:  VCVT.F64.F32    D17, S0
796FE:  LDR             R0, [R5]
79700:  ADD             R2, PC; "Player Obj: %d | Edited ID: %d | Pos X:"...
79702:  VCVT.F64.F32    D18, S20
79706:  VCVT.F64.F32    D19, S18
7970A:  VCVT.F64.F32    D20, S16
7970E:  VCVT.F64.F32    D21, S4
79712:  STR             R0, [SP,#0x1A8+var_1A8]
79714:  MOVS            R0, #4; prio
79716:  VSTR            D20, [SP,#0x1A8+var_1A0]
7971A:  VSTR            D19, [SP,#0x1A8+var_198]
7971E:  VSTR            D18, [SP,#0x1A8+var_190]
79722:  VSTR            D17, [SP,#0x1A8+var_188]
79726:  VSTR            D16, [SP,#0x1A8+var_180]
7972A:  VSTR            D21, [SP,#0x1A8+var_178]
7972E:  BLX             __android_log_print
79732:  LDR.W           R0, [R8]
79736:  MOVS            R3, #0
79738:  LDR.W           R0, [R0,#0x210]
7973C:  LDR             R1, =(off_114C64 - 0x79742)
7973E:  ADD             R1, PC; off_114C64
79740:  LDR             R2, [R0]
79742:  LDR             R1, [R1]; unk_116E40
79744:  LDR             R6, [R2,#0x6C]
79746:  MOV.W           R12, #0xFFFFFFFF
7974A:  MOVS            R4, #8
7974C:  ADD             R2, SP, #0x1A8+var_150
7974E:  MOVW            R5, #0xFFFF
79752:  STRD.W          R4, R3, [SP,#0x1A8+var_1A8]
79756:  STRD.W          R3, R12, [SP,#0x1A8+var_1A0]
7975A:  STR             R3, [SP,#0x1A8+var_190]
7975C:  MOVS            R3, #1
7975E:  STRD.W          R5, R5, [SP,#0x1A8+var_198]
79762:  BLX             R6
79764:  ADD             R0, SP, #0x1A8+var_150
79766:  BL              sub_86BF8
7976A:  LDR             R0, =(off_114B10 - 0x79772)
7976C:  MOVS            R6, #0
7976E:  ADD             R0, PC; off_114B10
79770:  LDR             R0, [R0]; dword_1A442C
79772:  LDR             R0, [R0]
79774:  LDRD.W          R1, R2, [R0,#0x94]
79778:  LDR.W           R0, [R0,#0x9C]
7977C:  LDR             R3, =(byte_1A44AD - 0x79784)
7977E:  LDR             R4, =(dword_1A454C - 0x79788)
79780:  ADD             R3, PC; byte_1A44AD
79782:  STRB            R6, [R2,#8]
79784:  ADD             R4, PC; dword_1A454C
79786:  STRB            R6, [R1,#8]
79788:  STRB            R6, [R3]
7978A:  STR             R6, [R4]
7978C:  STRB            R6, [R0,#8]
7978E:  LDR             R0, [SP,#0x1A8+var_3C]
79790:  LDR             R1, =(__stack_chk_guard_ptr - 0x79796)
79792:  ADD             R1, PC; __stack_chk_guard_ptr
79794:  LDR             R1, [R1]; __stack_chk_guard
79796:  LDR             R1, [R1]
79798:  CMP             R1, R0
7979A:  ITTTT EQ
7979C:  ADDEQ           SP, SP, #0x170
7979E:  VPOPEQ          {D8-D10}
797A2:  ADDEQ           SP, SP, #4
797A4:  POPEQ.W         {R8-R11}
797A8:  IT EQ
797AA:  POPEQ           {R4-R7,PC}
797AC:  BLX             __stack_chk_fail
