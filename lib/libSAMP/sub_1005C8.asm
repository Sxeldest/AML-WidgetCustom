; =========================================================
; Game Engine Function: sub_1005C8
; Address            : 0x1005C8 - 0x1007E6
; =========================================================

1005C8:  PUSH            {R4-R7,LR}
1005CA:  ADD             R7, SP, #0xC
1005CC:  PUSH.W          {R8-R10}
1005D0:  MOVS            R0, #1; unsigned int
1005D2:  BLX             j__Znwj; operator new(uint)
1005D6:  MOV             R4, R0
1005D8:  BL              sub_127168
1005DC:  LDR             R0, =(off_23494C - 0x1005EA)
1005DE:  MOV             R6, #0x6753A4
1005E6:  ADD             R0, PC; off_23494C
1005E8:  LDR             R4, [R0]; dword_23DF24
1005EA:  LDR             R0, [R4]
1005EC:  LDR             R1, =(sub_FB5AC+1 - 0x1005F6)
1005EE:  LDR             R2, =(off_2473F0 - 0x1005F8)
1005F0:  ADD             R0, R6
1005F2:  ADD             R1, PC; sub_FB5AC
1005F4:  ADD             R2, PC; off_2473F0
1005F6:  BL              sub_164196
1005FA:  LDR             R0, [R4]
1005FC:  MOVW            R5, #0x4C68
100600:  LDR             R1, =(sub_FB7D8+1 - 0x10060E)
100602:  MOVT            R5, #0x67 ; 'g'
100606:  LDR             R2, =(unk_2473F8 - 0x100610)
100608:  ADD             R0, R5
10060A:  ADD             R1, PC; sub_FB7D8
10060C:  ADD             R2, PC; unk_2473F8
10060E:  BL              sub_164196
100612:  LDR             R0, [R4]
100614:  MOVW            R8, #0xF2D0
100618:  LDR             R1, =(sub_FB94C+1 - 0x100626)
10061A:  MOVT            R8, #0x66 ; 'f'
10061E:  LDR             R2, =(off_2473FC - 0x100628)
100620:  ADD             R0, R8
100622:  ADD             R1, PC; sub_FB94C
100624:  ADD             R2, PC; off_2473FC
100626:  BL              sub_164196
10062A:  LDR             R0, [R4]
10062C:  LDR             R1, =(sub_FBB9C+1 - 0x100636)
10062E:  LDR             R2, =(unk_247408 - 0x10063C)
100630:  ADD             R0, R6
100632:  ADD             R1, PC; sub_FBB9C
100634:  ADD.W           R0, R0, #0x3F8
100638:  ADD             R2, PC; unk_247408
10063A:  BL              sub_164196
10063E:  LDR             R0, [R4]
100640:  MOVW            R3, #0x5D98
100644:  LDR             R1, =(sub_FBCF4+1 - 0x100652)
100646:  MOVT            R3, #0x67 ; 'g'
10064A:  LDR             R2, =(unk_247418 - 0x100654)
10064C:  ADD             R0, R3
10064E:  ADD             R1, PC; sub_FBCF4
100650:  ADD             R2, PC; unk_247418
100652:  BL              sub_164196
100656:  LDR             R0, [R4]
100658:  MOVW            R3, #0x2468
10065C:  LDR             R1, =(sub_FBD6C+1 - 0x10066A)
10065E:  MOVT            R3, #0x67 ; 'g'
100662:  LDR             R2, =(unk_24741C - 0x10066C)
100664:  ADD             R0, R3
100666:  ADD             R1, PC; sub_FBD6C
100668:  ADD             R2, PC; unk_24741C
10066A:  BL              sub_164196
10066E:  LDR             R0, [R4]
100670:  LDR             R1, =(loc_FC564+1 - 0x10067A)
100672:  LDR             R2, =(unk_2474B0 - 0x100680)
100674:  ADD             R0, R6
100676:  ADD             R1, PC; loc_FC564
100678:  ADD.W           R0, R0, #0x1B0
10067C:  ADD             R2, PC; unk_2474B0
10067E:  BL              sub_164196
100682:  LDR             R0, [R4]
100684:  LDR             R1, =(sub_FDD3C+1 - 0x10068E)
100686:  LDR             R2, =(off_247568 - 0x100694)
100688:  ADD             R0, R8
10068A:  ADD             R1, PC; sub_FDD3C
10068C:  ADD.W           R0, R0, #0x2DC
100690:  ADD             R2, PC; off_247568
100692:  BL              sub_164196
100696:  LDR             R0, [R4]
100698:  LDR             R1, =(loc_FE13C+1 - 0x1006A2)
10069A:  LDR             R2, =(off_24758C - 0x1006A8)
10069C:  ADD             R0, R5
10069E:  ADD             R1, PC; loc_FE13C
1006A0:  ADD.W           R0, R0, #0x698
1006A4:  ADD             R2, PC; off_24758C
1006A6:  BL              sub_164196
1006AA:  LDR             R0, [R4]
1006AC:  MOVW            R3, #0x6FBC
1006B0:  LDR             R1, =(sub_FE324+1 - 0x1006BE)
1006B2:  MOVT            R3, #0x67 ; 'g'
1006B6:  LDR             R2, =(off_2475E4 - 0x1006C0)
1006B8:  ADD             R0, R3
1006BA:  ADD             R1, PC; sub_FE324
1006BC:  ADD             R2, PC; off_2475E4
1006BE:  BL              sub_164196
1006C2:  LDR             R0, [R4]
1006C4:  MOVW            R9, #0x7B6C
1006C8:  LDR             R1, =(sub_FE38A+1 - 0x1006D6)
1006CA:  MOVT            R9, #0x67 ; 'g'
1006CE:  LDR             R2, =(unk_2475E8 - 0x1006DC)
1006D0:  ADD             R0, R9
1006D2:  ADD             R1, PC; sub_FE38A
1006D4:  ADD.W           R0, R0, #0x334
1006D8:  ADD             R2, PC; unk_2475E8
1006DA:  BL              sub_164196
1006DE:  LDR             R0, [R4]
1006E0:  MOVW            R10, #0x332C
1006E4:  LDR             R1, =(sub_FE398+1 - 0x1006F2)
1006E6:  MOVT            R10, #0x67 ; 'g'
1006EA:  LDR             R2, =(off_2475EC - 0x1006F4)
1006EC:  ADD             R0, R10
1006EE:  ADD             R1, PC; sub_FE398
1006F0:  ADD             R2, PC; off_2475EC
1006F2:  BL              sub_164196
1006F6:  LDR             R0, [R4]
1006F8:  LDR             R1, =(sub_FE3B0+1 - 0x100704)
1006FA:  LDR             R2, =(unk_2475F0 - 0x10070A)
1006FC:  ADD.W           R0, R0, #0x670000
100700:  ADD             R1, PC; sub_FE3B0
100702:  ADD.W           R0, R0, #0x268
100706:  ADD             R2, PC; unk_2475F0
100708:  BL              sub_164196
10070C:  LDR             R0, [R4]
10070E:  MOVW            R3, #0x9B14
100712:  LDR             R1, =(sub_FF248+1 - 0x100720)
100714:  MOVT            R3, #0x67 ; 'g'
100718:  LDR             R2, =(unk_25B160 - 0x100722)
10071A:  ADD             R0, R3
10071C:  ADD             R1, PC; sub_FF248
10071E:  ADD             R2, PC; unk_25B160
100720:  BL              sub_164196
100724:  LDR             R0, [R4]
100726:  MOVW            R3, #0x7498
10072A:  LDR             R1, =(sub_FF274+1 - 0x100738)
10072C:  MOVT            R3, #0x67 ; 'g'
100730:  LDR             R2, =(unk_25B164 - 0x10073A)
100732:  ADD             R0, R3
100734:  ADD             R1, PC; sub_FF274
100736:  ADD             R2, PC; unk_25B164
100738:  BL              sub_164196
10073C:  LDR             R0, [R4]
10073E:  MOVW            R5, #0x1458
100742:  LDR             R1, =(loc_FF400+1 - 0x100750)
100744:  MOVT            R5, #0x67 ; 'g'
100748:  LDR             R2, =(off_25B174 - 0x100754)
10074A:  ADD             R0, R5
10074C:  ADD             R1, PC; loc_FF400
10074E:  ADDS            R0, #0x4C ; 'L'
100750:  ADD             R2, PC; off_25B174
100752:  BL              sub_164196
100756:  LDR             R0, [R4]
100758:  LDR             R1, =(sub_FF538+1 - 0x100762)
10075A:  LDR             R2, =(off_25B194 - 0x100768)
10075C:  ADD             R0, R8
10075E:  ADD             R1, PC; sub_FF538
100760:  ADD.W           R0, R0, #0x718
100764:  ADD             R2, PC; off_25B194
100766:  BL              sub_164196
10076A:  LDR             R1, =(sub_FBBF8+1 - 0x10077C)
10076C:  MOVW            R6, #0x18FC
100770:  LDR             R0, [R4]
100772:  MOVT            R6, #0x67 ; 'g'
100776:  LDR             R2, =(unk_24740C - 0x100780)
100778:  ADD             R1, PC; sub_FBBF8
10077A:  ADD             R0, R6
10077C:  ADD             R2, PC; unk_24740C
10077E:  BL              sub_164196
100782:  LDR             R0, [R4]
100784:  LDR             R1, =(sub_FBC70+1 - 0x10078E)
100786:  LDR             R2, =(unk_247410 - 0x100792)
100788:  ADD             R0, R10
10078A:  ADD             R1, PC; sub_FBC70
10078C:  ADDS            R0, #0x1C
10078E:  ADD             R2, PC; unk_247410
100790:  BL              sub_164196
100794:  LDR             R0, [R4]
100796:  LDR             R1, =(sub_FF1B8+1 - 0x1007A0)
100798:  LDR             R2, =(off_25B154 - 0x1007A2)
10079A:  ADD             R0, R9
10079C:  ADD             R1, PC; sub_FF1B8
10079E:  ADD             R2, PC; off_25B154
1007A0:  BL              sub_164196
1007A4:  LDR             R0, [R4]
1007A6:  LDR             R1, =(sub_FF5C4+1 - 0x1007B0)
1007A8:  LDR             R2, =(off_25B19C - 0x1007B2)
1007AA:  ADD             R0, R5
1007AC:  ADD             R1, PC; sub_FF5C4
1007AE:  ADD             R2, PC; off_25B19C
1007B0:  BL              sub_164196
1007B4:  LDR             R0, [R4]
1007B6:  LDR             R1, =(sub_FF5FE+1 - 0x1007C0)
1007B8:  LDR             R2, =(unk_25B1A0 - 0x1007C4)
1007BA:  ADD             R0, R6
1007BC:  ADD             R1, PC; sub_FF5FE
1007BE:  ADDS            R0, #0x40 ; '@'
1007C0:  ADD             R2, PC; unk_25B1A0
1007C2:  BL              sub_164196
1007C6:  LDR             R0, [R4]
1007C8:  LDR             R1, =(loc_FBCE0+1 - 0x1007D2)
1007CA:  LDR             R2, =(off_247414 - 0x1007D8)
1007CC:  ADD             R0, R10
1007CE:  ADD             R1, PC; loc_FBCE0
1007D0:  ADD.W           R0, R0, #0x3E0
1007D4:  ADD             R2, PC; off_247414
1007D6:  BL              sub_164196
1007DA:  POP.W           {R8-R10}
1007DE:  POP.W           {R4-R7,LR}
1007E2:  B.W             sub_FFA98
