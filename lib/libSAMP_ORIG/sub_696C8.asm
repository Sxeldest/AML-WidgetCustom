; =========================================================
; Game Engine Function: sub_696C8
; Address            : 0x696C8 - 0x69880
; =========================================================

696C8:  PUSH            {R4-R7,LR}
696CA:  ADD             R7, SP, #0xC
696CC:  PUSH.W          {R8-R11}
696D0:  SUB             SP, SP, #0x2C
696D2:  MOV             R6, R3
696D4:  MOV             R9, R2
696D6:  STR             R1, [SP,#0x48+var_20]
696D8:  MOV             R5, R0
696DA:  BL              sub_68E3C
696DE:  CMP             R0, #0
696E0:  BEQ.W           loc_697E4
696E4:  MOV             R4, R0
696E6:  LDRD.W          R0, R11, [R7,#arg_0]
696EA:  STR             R0, [SP,#0x48+var_24]
696EC:  LDR             R0, [R4]
696EE:  LDR             R1, =(aJavaLangString - 0x696F6); "java/lang/String" ...
696F0:  LDR             R2, [R0,#0x18]
696F2:  ADD             R1, PC; "java/lang/String"
696F4:  MOV             R0, R4
696F6:  BLX             R2
696F8:  MOV             R10, R0
696FA:  LDR             R0, [R4]
696FC:  LDR             R2, =(aInit - 0x69708); "<init>" ...
696FE:  MOV             R1, R10
69700:  LDR             R3, =(aBljavaLangStri - 0x6970E); "([BLjava/lang/String;)V" ...
69702:  STR             R6, [SP,#0x48+var_28]
69704:  ADD             R2, PC; "<init>"
69706:  LDR.W           R6, [R0,#0x84]
6970A:  ADD             R3, PC; "([BLjava/lang/String;)V"
6970C:  MOV             R0, R4
6970E:  BLX             R6
69710:  STR             R0, [SP,#0x48+var_30]
69712:  LDR             R0, [R4]
69714:  LDR             R1, =(aUtf8 - 0x6971E); "UTF-8" ...
69716:  LDR.W           R2, [R0,#0x29C]
6971A:  ADD             R1, PC; "UTF-8"
6971C:  MOV             R0, R4
6971E:  BLX             R2
69720:  STR             R5, [SP,#0x48+var_2C]
69722:  MOV             R8, R0
69724:  STR             R0, [SP,#0x48+var_34]
69726:  MOV             R0, R9; s
69728:  BLX             strlen
6972C:  MOV             R1, R0
6972E:  LDR             R0, [R4]
69730:  LDR.W           R2, [R0,#0x2C0]
69734:  MOV             R0, R4
69736:  BLX             R2
69738:  MOV             R5, R0
6973A:  MOV             R0, R9; s
6973C:  BLX             strlen
69740:  MOV             R3, R0
69742:  LDR             R0, [R4]
69744:  MOV             R1, R5
69746:  MOVS            R2, #0
69748:  LDR.W           R6, [R0,#0x340]
6974C:  MOV             R0, R4
6974E:  STR.W           R9, [SP,#0x48+var_48]
69752:  BLX             R6
69754:  STR.W           R8, [SP,#0x48+var_48]
69758:  MOV             R0, R4
6975A:  LDR.W           R8, [SP,#0x48+var_30]
6975E:  MOV             R1, R10
69760:  MOV             R3, R5
69762:  MOV             R2, R8
69764:  BL              sub_6918C
69768:  MOV             R9, R0
6976A:  MOV             R0, R11; s
6976C:  BLX             strlen
69770:  MOV             R1, R0
69772:  LDR             R0, [R4]
69774:  LDR.W           R2, [R0,#0x2C0]
69778:  MOV             R0, R4
6977A:  BLX             R2
6977C:  MOV             R6, R0
6977E:  MOV             R0, R11; s
69780:  BLX             strlen
69784:  MOV             R3, R0
69786:  LDR             R0, [R4]
69788:  MOV             R1, R6
6978A:  MOVS            R2, #0
6978C:  LDR.W           R5, [R0,#0x340]
69790:  MOV             R0, R4
69792:  STR.W           R11, [SP,#0x48+var_48]
69796:  BLX             R5
69798:  LDR             R0, [SP,#0x48+var_34]
6979A:  MOV             R1, R10
6979C:  STR             R0, [SP,#0x48+var_48]
6979E:  MOV             R0, R4
697A0:  MOV             R2, R8
697A2:  MOV             R3, R6
697A4:  BL              sub_6918C
697A8:  MOV             R6, R0
697AA:  LDR             R0, [SP,#0x48+var_2C]
697AC:  LDR             R1, [R0,#4]
697AE:  LDR             R2, [R0,#0x34]
697B0:  STR.W           R9, [SP,#0x48+var_48]
697B4:  LDR             R0, [SP,#0x48+var_28]
697B6:  STR             R0, [SP,#0x48+var_44]
697B8:  LDR             R0, [SP,#0x48+var_24]
697BA:  STRD.W          R0, R6, [SP,#0x48+var_40]
697BE:  MOV             R0, R4
697C0:  LDR             R3, [SP,#0x48+var_20]
697C2:  BL              sub_69070
697C6:  LDR             R0, [R4]
697C8:  MOV             R1, R9
697CA:  LDR             R2, [R0,#0x5C]
697CC:  MOV             R0, R4
697CE:  BLX             R2
697D0:  LDR             R0, [R4]
697D2:  MOV             R1, R6
697D4:  LDR             R2, [R0,#0x5C]
697D6:  MOV             R0, R4
697D8:  ADD             SP, SP, #0x2C ; ','
697DA:  POP.W           {R8-R11}
697DE:  POP.W           {R4-R7,LR}
697E2:  BX              R2
697E4:  LDR             R0, =(byte_1A4294 - 0x697EA)
697E6:  ADD             R0, PC; byte_1A4294
697E8:  LDRB            R0, [R0]
697EA:  DMB.W           ISH
697EE:  LDR             R4, =(dword_1A428C - 0x697F4)
697F0:  ADD             R4, PC; dword_1A428C
697F2:  LSLS            R0, R0, #0x1F
697F4:  BEQ             loc_69848
697F6:  LDRB            R0, [R4,#(byte_1A4292 - 0x1A428C)]
697F8:  CBZ             R0, loc_69830
697FA:  LDRB            R1, [R4]
697FC:  EOR.W           R0, R0, #0x5A ; 'Z'
69800:  LDRB            R2, [R4,#(dword_1A428C+1 - 0x1A428C)]
69802:  STRB            R0, [R4,#(byte_1A4292 - 0x1A428C)]
69804:  EOR.W           R1, R1, #0x5A ; 'Z'
69808:  LDRB            R0, [R4,#(word_1A4290 - 0x1A428C)]
6980A:  LDRB            R3, [R4,#(dword_1A428C+2 - 0x1A428C)]
6980C:  STRB            R1, [R4]
6980E:  EOR.W           R1, R2, #0x5A ; 'Z'
69812:  LDRB            R6, [R4,#(dword_1A428C+3 - 0x1A428C)]
69814:  EOR.W           R0, R0, #0x5A ; 'Z'
69818:  LDRB            R5, [R4,#(word_1A4290+1 - 0x1A428C)]
6981A:  STRB            R1, [R4,#(dword_1A428C+1 - 0x1A428C)]
6981C:  EOR.W           R1, R3, #0x5A ; 'Z'
69820:  STRB            R1, [R4,#(dword_1A428C+2 - 0x1A428C)]
69822:  EOR.W           R1, R6, #0x5A ; 'Z'
69826:  STRB            R0, [R4,#(word_1A4290 - 0x1A428C)]
69828:  EOR.W           R0, R5, #0x5A ; 'Z'
6982C:  STRB            R1, [R4,#(dword_1A428C+3 - 0x1A428C)]
6982E:  STRB            R0, [R4,#(word_1A4290+1 - 0x1A428C)]
69830:  LDR             R1, =(aSampOrig - 0x6983A); "SAMP_ORIG" ...
69832:  MOVS            R0, #4
69834:  LDR             R2, =(dword_1A428C - 0x6983C)
69836:  ADD             R1, PC; "SAMP_ORIG"
69838:  ADD             R2, PC; dword_1A428C
6983A:  ADD             SP, SP, #0x2C ; ','
6983C:  POP.W           {R8-R11}
69840:  POP.W           {R4-R7,LR}
69844:  B.W             sub_10C158
69848:  LDR             R0, =(byte_1A4294 - 0x6984E)
6984A:  ADD             R0, PC; byte_1A4294 ; __guard *
6984C:  BLX             j___cxa_guard_acquire
69850:  CMP             R0, #0
69852:  BEQ             loc_697F6
69854:  MOVS            R1, #0x5A ; 'Z'
69856:  LDR             R0, =(sub_66E8E+1 - 0x6986E)
69858:  LDR             R2, =(off_110560 - 0x69870)
6985A:  STRB            R1, [R4,#(byte_1A4292 - 0x1A428C)]
6985C:  MOVW            R1, #0x2C34
69860:  STRH            R1, [R4,#(word_1A4290 - 0x1A428C)]
69862:  MOV             R1, #0x3F7A3514
6986A:  ADD             R0, PC; sub_66E8E ; lpfunc
6986C:  ADD             R2, PC; off_110560 ; lpdso_handle
6986E:  STR             R1, [R4]
69870:  MOV             R1, R4; obj
69872:  BLX             __cxa_atexit
69876:  LDR             R0, =(byte_1A4294 - 0x6987C)
69878:  ADD             R0, PC; byte_1A4294 ; __guard *
6987A:  BLX             j___cxa_guard_release
6987E:  B               loc_697F6
