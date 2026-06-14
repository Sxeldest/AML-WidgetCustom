; =========================================================
; Game Engine Function: sub_11C58C
; Address            : 0x11C58C - 0x11C81A
; =========================================================

11C58C:  PUSH            {R4-R7,LR}
11C58E:  ADD             R7, SP, #0xC
11C590:  PUSH.W          {R8,R9,R11}
11C594:  LDR             R1, =(aAxl - 0x11C59E); "AXL" ...
11C596:  MOVS            R0, #4; prio
11C598:  LDR             R2, =(aInitializingRe - 0x11C5A0); "Initializing RenderWare.." ...
11C59A:  ADD             R1, PC; "AXL"
11C59C:  ADD             R2, PC; "Initializing RenderWare.."
11C59E:  BLX             __android_log_print
11C5A2:  LDR             R0, =(off_23494C - 0x11C5AA)
11C5A4:  LDR             R2, =(dword_2636B4 - 0x11C5B0)
11C5A6:  ADD             R0, PC; off_23494C
11C5A8:  LDR             R3, =(off_2636BC - 0x11C5B4)
11C5AA:  LDR             R5, =(dword_2636E8 - 0x11C5B8)
11C5AC:  ADD             R2, PC; dword_2636B4
11C5AE:  LDR             R4, =(off_2636B8 - 0x11C5BC)
11C5B0:  ADD             R3, PC; off_2636BC
11C5B2:  LDR             R1, =(off_2636C0 - 0x11C5BE)
11C5B4:  ADD             R5, PC; dword_2636E8
11C5B6:  LDR             R0, [R0]; dword_23DF24
11C5B8:  ADD             R4, PC; off_2636B8
11C5BA:  ADD             R1, PC; off_2636C0
11C5BC:  MOV             LR, R1
11C5BE:  MOVW            R1, #0xC8FC
11C5C2:  LDR.W           R12, [R0]
11C5C6:  MOVT            R1, #0x9F
11C5CA:  ADD.W           R6, R12, R1
11C5CE:  LDR             R1, =(off_2636C4 - 0x11C5F8)
11C5D0:  STR             R6, [R2]
11C5D2:  MOV             R2, #0x1D5A95
11C5DA:  ADD.W           R0, R12, R2
11C5DE:  MOVW            R2, #:lower16:(loc_1DA938+1)
11C5E2:  STR             R0, [R3]
11C5E4:  MOVT            R2, #:upper16:(loc_1DA938+1)
11C5E8:  LDR             R6, =(off_2636C8 - 0x11C602)
11C5EA:  ADD             R2, R12
11C5EC:  STR             R2, [R5]
11C5EE:  LDR             R5, =(dword_2636CC - 0x11C61E)
11C5F0:  ADDS            R3, R0, #4
11C5F2:  STR             R3, [R4]
11C5F4:  ADD             R1, PC; off_2636C4
11C5F6:  ADD.W           R0, R0, #0x300
11C5FA:  LDR             R3, =(dword_2636D0 - 0x11C628)
11C5FC:  LDR             R4, =(dword_2636D4 - 0x11C612)
11C5FE:  ADD             R6, PC; off_2636C8
11C600:  STR.W           R0, [LR]
11C604:  ADD.W           R0, R2, #0x118
11C608:  STR             R0, [R1]
11C60A:  MOVW            R0, #:lower16:(loc_1DA4D4+1)
11C60E:  ADD             R4, PC; dword_2636D4
11C610:  MOVT            R0, #:upper16:(loc_1DA4D4+1)
11C614:  ADD.W           R1, R12, R0
11C618:  LDR             R0, =(dword_2636D8 - 0x11C62C)
11C61A:  ADD             R5, PC; dword_2636CC
11C61C:  MOV             R8, R4
11C61E:  ADD.W           R4, R1, #0x37C
11C622:  STR             R4, [R6]
11C624:  ADD             R3, PC; dword_2636D0
11C626:  LDR             R4, =(dword_2636DC - 0x11C64C)
11C628:  ADD             R0, PC; dword_2636D8
11C62A:  ADD.W           R6, R1, #0x258
11C62E:  STR             R6, [R5]
11C630:  ADD.W           R6, R2, #0x48 ; 'H'
11C634:  LDR             R5, =(dword_2636E0 - 0x11C650)
11C636:  MOV             LR, R0
11C638:  STR             R6, [R3]
11C63A:  ADD.W           R6, R2, #0xBC
11C63E:  LDR             R3, =(dword_2636E4 - 0x11C656)
11C640:  ADD.W           R0, R1, #0x2E0
11C644:  STR.W           R6, [R8]
11C648:  ADD             R4, PC; dword_2636DC
11C64A:  LDR             R6, =(dword_2636EC - 0x11C65A)
11C64C:  ADD             R5, PC; dword_2636E0
11C64E:  STR.W           R0, [LR]
11C652:  ADD             R3, PC; dword_2636E4
11C654:  LDR             R0, =(dword_2636F0 - 0x11C65C)
11C656:  ADD             R6, PC; dword_2636EC
11C658:  ADD             R0, PC; dword_2636F0
11C65A:  MOV             R8, R0
11C65C:  ADD.W           R0, R1, #0x32C
11C660:  STR             R0, [R4]
11C662:  ADD.W           R4, R1, #0x238
11C666:  LDR             R0, =(dword_2636F4 - 0x11C674)
11C668:  STR             R4, [R5]
11C66A:  ADD.W           R5, R1, #0x3C4
11C66E:  LDR             R4, =(dword_2636FC - 0x11C67E)
11C670:  ADD             R0, PC; dword_2636F4
11C672:  STR             R5, [R3]
11C674:  ADD.W           R5, R1, #0x218
11C678:  LDR             R3, =(dword_2636F8 - 0x11C686)
11C67A:  ADD             R4, PC; dword_2636FC
11C67C:  STR             R5, [R6]
11C67E:  ADD.W           R6, R1, #0x288
11C682:  ADD             R3, PC; dword_2636F8
11C684:  LDR             R5, =(dword_263700 - 0x11C6A4)
11C686:  STR.W           R6, [R8]
11C68A:  LDR             R6, =(dword_263704 - 0x11C6A8)
11C68C:  MOV             LR, R3
11C68E:  ADD.W           R3, R1, #0x30C
11C692:  STR             R3, [R0]
11C694:  LDR             R0, =(dword_263708 - 0x11C6AE)
11C696:  ADD.W           R3, R2, #0x1BC
11C69A:  STR             R3, [R4]
11C69C:  ADDS            R2, #0x84
11C69E:  LDR             R3, =(off_26370C - 0x11C6B2)
11C6A0:  ADD             R5, PC; dword_263700
11C6A2:  LDR             R4, =(off_263710 - 0x11C6B4)
11C6A4:  ADD             R6, PC; dword_263704
11C6A6:  STR.W           R2, [LR]
11C6AA:  ADD             R0, PC; dword_263708
11C6AC:  LDR             R2, =(off_263714 - 0x11C6B6)
11C6AE:  ADD             R3, PC; off_26370C
11C6B0:  ADD             R4, PC; off_263710
11C6B2:  ADD             R2, PC; off_263714
11C6B4:  MOV             LR, R2
11C6B6:  ADD.W           R2, R1, #0x264
11C6BA:  STR             R2, [R5]
11C6BC:  LDR             R2, =(dword_263718 - 0x11C6C2)
11C6BE:  ADD             R2, PC; dword_263718
11C6C0:  MOV             R8, R2
11C6C2:  ADD.W           R2, R1, #0x438
11C6C6:  STR             R2, [R6]
11C6C8:  ADD.W           R2, R1, #0x358
11C6CC:  STR             R2, [R0]
11C6CE:  MOV             R0, #0x1D8EA1
11C6D6:  LDR             R2, =(dword_26371C - 0x11C6F6)
11C6D8:  ADD             R0, R12
11C6DA:  STR             R0, [R3]
11C6DC:  LDR             R3, =(dword_263720 - 0x11C6FA)
11C6DE:  ADD.W           R6, R0, #0x58 ; 'X'
11C6E2:  STR             R6, [R4]
11C6E4:  ADD.W           R4, R0, #0xE4
11C6E8:  LDR             R6, =(dword_263724 - 0x11C700)
11C6EA:  ADD.W           R5, R0, #0xB8
11C6EE:  STR.W           R4, [LR]
11C6F2:  ADD             R2, PC; dword_26371C
11C6F4:  LDR             R4, =(dword_263728 - 0x11C704)
11C6F6:  ADD             R3, PC; dword_263720
11C6F8:  STR.W           R5, [R8]
11C6FC:  ADD             R6, PC; dword_263724
11C6FE:  LDR             R5, =(dword_26372C - 0x11C706)
11C700:  ADD             R4, PC; dword_263728
11C702:  ADD             R5, PC; dword_26372C
11C704:  MOV             R9, R5
11C706:  ADD.W           R5, R0, #0x740
11C70A:  STR             R5, [R2]
11C70C:  ADD.W           R5, R0, #0x180
11C710:  LDR             R2, =(dword_263730 - 0x11C71C)
11C712:  STR             R5, [R3]
11C714:  ADD.W           R5, R0, #0x460
11C718:  ADD             R2, PC; dword_263730
11C71A:  ADD.W           R0, R0, #0x2A8
11C71E:  MOV             LR, R2
11C720:  LDR             R2, =(dword_263734 - 0x11C72A)
11C722:  STR             R5, [R6]
11C724:  LDR             R6, =(dword_263738 - 0x11C73A)
11C726:  ADD             R2, PC; dword_263734
11C728:  STR             R0, [R4]
11C72A:  MOV             R0, #0x1D9DC1
11C732:  MOV             R8, R2
11C734:  ADD             R0, R12
11C736:  ADD             R6, PC; dword_263738
11C738:  ADD.W           R5, R0, #0x9C
11C73C:  STR.W           R5, [R9]
11C740:  MOVW            R5, #:lower16:(loc_1D982C+1)
11C744:  LDR             R4, =(off_26373C - 0x11C758)
11C746:  MOVT            R5, #:upper16:(loc_1D982C+1)
11C74A:  LDR             R2, =(dword_263740 - 0x11C75C)
11C74C:  ADD             R5, R12
11C74E:  STR.W           R5, [LR]
11C752:  LDR             R3, =(dword_263744 - 0x11C762)
11C754:  ADD             R4, PC; off_26373C
11C756:  LDR             R5, =(off_263748 - 0x11C766)
11C758:  ADD             R2, PC; dword_263740
11C75A:  STR.W           R0, [R8]
11C75E:  ADD             R3, PC; dword_263744
11C760:  LDR             R0, =(dword_26374C - 0x11C76C)
11C762:  ADD             R5, PC; off_263748
11C764:  STR             R1, [R6]
11C766:  LDR             R6, =(dword_263750 - 0x11C76E)
11C768:  ADD             R0, PC; dword_26374C
11C76A:  ADD             R6, PC; dword_263750
11C76C:  MOV             LR, R6
11C76E:  ADD.W           R6, R1, #0x24 ; '$'
11C772:  STR             R6, [R4]
11C774:  ADD.W           R6, R1, #0x120
11C778:  LDR             R4, =(dword_263754 - 0x11C782)
11C77A:  STR             R6, [R2]
11C77C:  LDR             R2, =(off_263758 - 0x11C784)
11C77E:  ADD             R4, PC; dword_263754
11C780:  ADD             R2, PC; off_263758
11C782:  MOV             R8, R2
11C784:  ADD.W           R2, R1, #0x1C0
11C788:  STR             R2, [R3]
11C78A:  ADD.W           R2, R1, #0x48 ; 'H'
11C78E:  LDR             R1, =(dword_26375C - 0x11C7B0)
11C790:  STR             R2, [R5]
11C792:  MOVW            R2, #:lower16:(off_1E28F4+1)
11C796:  LDR             R6, =(dword_263760 - 0x11C7C6)
11C798:  MOVT            R2, #:upper16:(off_1E28F4+1)
11C79C:  ADD.W           R5, R12, R2
11C7A0:  STR             R5, [R0]
11C7A2:  LDR             R0, =(dword_263764 - 0x11C7B4)
11C7A4:  ADD.W           R2, R5, #0x10
11C7A8:  STR.W           R2, [LR]
11C7AC:  ADD             R1, PC; dword_26375C
11C7AE:  LDR             R2, =(off_263768 - 0x11C7D2)
11C7B0:  ADD             R0, PC; dword_263764
11C7B2:  ADD.W           R3, R5, #0x54 ; 'T'
11C7B6:  STR             R3, [R4]
11C7B8:  LDR             R3, =(dword_26376C - 0x11C7F4)
11C7BA:  ADD.W           R4, R5, #0x20 ; ' '
11C7BE:  STR.W           R4, [R8]
11C7C2:  ADD             R6, PC; dword_263760
11C7C4:  LDR             R4, =(dword_263770 - 0x11C7F8)
11C7C6:  MOV             R9, R0
11C7C8:  ADD.W           R0, R5, #0x64 ; 'd'
11C7CC:  STR             R0, [R1]
11C7CE:  ADD             R2, PC; off_263768
11C7D0:  LDR             R1, =(dword_263774 - 0x11C80A)
11C7D2:  ADD.W           R0, R5, #0x7C ; '|'
11C7D6:  STR             R0, [R6]
11C7D8:  ADD.W           R6, R5, #0x94
11C7DC:  LDR             R0, =(dword_263778 - 0x11C80C)
11C7DE:  STR.W           R6, [R9]
11C7E2:  ADD.W           R6, R5, #0xA4
11C7E6:  STR             R6, [R2]
11C7E8:  MOV             R2, #(_ZNKSt6__ndk120__codecvt_utf8_utf16IDiE11do_encodingEv+1); std::__codecvt_utf8_utf16<char32_t>::do_encoding(void)
11C7F0:  ADD             R3, PC; dword_26376C
11C7F2:  ADD             R2, R12
11C7F4:  ADD             R4, PC; dword_263770
11C7F6:  STR             R2, [R3]
11C7F8:  ADD.W           R2, R2, #0x2B0
11C7FC:  STR             R2, [R4]
11C7FE:  MOV             R2, #0x1DB765
11C806:  ADD             R1, PC; dword_263774
11C808:  ADD             R0, PC; dword_263778
11C80A:  ADD             R2, R12
11C80C:  ADD.W           R3, R2, #0x358
11C810:  STR             R3, [R1]
11C812:  STR             R2, [R0]
11C814:  POP.W           {R8,R9,R11}
11C818:  POP             {R4-R7,PC}
