; =========================================================
; Game Engine Function: _ZN12CHIDKeyboardC2EPKc
; Address            : 0x290620 - 0x294B52
; =========================================================

290620:  PUSH            {R4-R7,LR}
290622:  ADD             R7, SP, #0xC
290624:  PUSH.W          {R8-R11}
290628:  SUB             SP, SP, #0x1C
29062A:  MOV             R10, R0
29062C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x290636)
290630:  STR             R1, [SP,#0x38+var_34]
290632:  ADD             R0, PC; __stack_chk_guard_ptr
290634:  LDR             R0, [R0]; __stack_chk_guard
290636:  LDR             R0, [R0]
290638:  STR             R0, [SP,#0x38+var_20]
29063A:  MOV             R0, R10; this
29063C:  BLX             j__ZN4CHIDC2Ev; CHID::CHID(void)
290640:  LDR.W           R0, =(_ZTV12CHIDKeyboard_ptr - 0x29064A)
290644:  MOVS            R4, #0
290646:  ADD             R0, PC; _ZTV12CHIDKeyboard_ptr
290648:  LDR             R0, [R0]; `vtable for'CHIDKeyboard ...
29064A:  ADDS            R0, #8
29064C:  STRD.W          R0, R4, [R10]
290650:  ADD.W           R0, R10, #0x10; this
290654:  STRD.W          R4, R4, [R10,#8]
290658:  STR             R0, [SP,#0x38+var_38]
29065A:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
29065E:  VMOV.I32        Q8, #0
290662:  ADDW            R0, R10, #0x978
290666:  MOVS            R1, #0x18
290668:  MOV.W           R2, #0xFFFFFFFF
29066C:  ADD.W           R3, R10, R1
290670:  STR.W           R2, [R10,R1]
290674:  ADDS            R6, R3, #4
290676:  STRB            R4, [R3,#0x14]
290678:  ADDS            R3, #0x18
29067A:  ADDS            R1, #0x18
29067C:  CMP             R3, R0
29067E:  VST1.32         {D16-D17}, [R6]
290682:  BNE             loc_29066C
290684:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290696)
290688:  MOVW            R2, #:lower16:(aZn27ctaskcompl_167+0x20); "17CreateNextSubTaskEP4CPed"
29068C:  MOVW            R3, #:lower16:(loc_303144+2)
290690:  MOVS            R1, #0
290692:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290694:  STR.W           R1, [R10,#0x14]
290698:  MOVT            R2, #:upper16:(aZn27ctaskcompl_167+0x20); "17CreateNextSubTaskEP4CPed"
29069C:  MOVT            R3, #:upper16:(loc_303144+2)
2906A0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2906A2:  ADD             R2, R3
2906A4:  ADD             R3, SP, #0x38+var_30
2906A6:  MOVW            R8, #0x454B
2906AA:  ORR.W           R11, R3, #4
2906AE:  MOVT            R8, #0x5F59
2906B2:  STR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2906B4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs
2906B6:  STR.W           R2, [R11,#4]
2906BA:  CMP             R0, #0
2906BC:  STRD.W          R1, R8, [SP,#0x38+var_30]
2906C0:  BEQ             loc_2906D0
2906C2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2906CA)
2906C6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2906C8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2906CA:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2906CC:  MOVS            R0, #0
2906CE:  B               loc_290704
2906D0:  MOVS            R0, #0x30 ; '0'; byte_count
2906D2:  BLX             malloc
2906D6:  MOV             R5, R0
2906D8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2906E0)
2906DC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2906DE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2906E0:  LDR             R0, [R0,#(dword_6E0034 - 0x6E002C)]; p
2906E2:  CBZ             R0, loc_2906F4
2906E4:  BLX             free
2906E8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2906F0)
2906EC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2906EE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2906F0:  LDR             R0, [R0,#(dword_6E0030 - 0x6E002C)]
2906F2:  B               loc_2906F6
2906F4:  MOVS            R0, #0
2906F6:  LDR.W           R1, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290700)
2906FA:  MOVS            R2, #4
2906FC:  ADD             R1, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2906FE:  LDR             R1, [R1]; CHIDKeyboard::m_KeyPairs ...
290700:  STR             R5, [R1,#(dword_6E0034 - 0x6E002C)]
290702:  STR             R2, [R1]; CHIDKeyboard::m_KeyPairs
290704:  LDR.W           R1, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290714)
290708:  ADD.W           R0, R0, R0,LSL#1
29070C:  VLDR            D16, [SP,#0x38+var_30]
290710:  ADD             R1, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290712:  ADD.W           R0, R5, R0,LSL#2
290716:  LDR             R2, [SP,#0x38+var_28]
290718:  LDR             R1, [R1]; CHIDKeyboard::m_KeyPairs ...
29071A:  STR             R2, [R0,#8]
29071C:  MOVS            R2, #0
29071E:  VSTR            D16, [R0]
290722:  LDR             R0, [R1,#(dword_6E0030 - 0x6E002C)]
290724:  STRB.W          R2, [SP,#0x38+var_28+2]
290728:  MOVW            R2, #0x3146
29072C:  ADDS            R4, R0, #1
29072E:  STR             R4, [R1,#(dword_6E0030 - 0x6E002C)]
290730:  LDR             R1, [R1]; CHIDKeyboard::m_KeyPairs
290732:  ADDS            R0, #2
290734:  STRH.W          R2, [SP,#0x38+var_28]
290738:  MOVS            R2, #1
29073A:  CMP             R1, R0
29073C:  STR.W           R8, [SP,#0x38+var_30+4]
290740:  STR             R2, [SP,#0x38+var_30]
290742:  BCS             loc_29079E
290744:  MOVW            R1, #0xAAAB
290748:  LSLS            R0, R0, #2
29074A:  MOVT            R1, #0xAAAA
29074E:  UMULL.W         R0, R1, R0, R1
290752:  MOVS            R0, #3
290754:  ADD.W           R9, R0, R1,LSR#1
290758:  ADD.W           R0, R9, R9,LSL#1
29075C:  LSLS            R0, R0, #2; byte_count
29075E:  BLX             malloc
290762:  MOV             R5, R0
290764:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29076C)
290768:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29076A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29076C:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29076E:  CBZ             R6, loc_29078E
290770:  ADD.W           R0, R4, R4,LSL#1
290774:  MOV             R1, R6; void *
290776:  LSLS            R2, R0, #2; size_t
290778:  MOV             R0, R5; void *
29077A:  BLX             memcpy_0
29077E:  MOV             R0, R6; p
290780:  BLX             free
290784:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29078C)
290788:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29078A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29078C:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29078E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290796)
290792:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290794:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290796:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290798:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29079C:  B               loc_2907A8
29079E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2907A6)
2907A2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2907A4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2907A6:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2907A8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2907B8)
2907AC:  ADD.W           R2, R4, R4,LSL#1
2907B0:  VLDR            D16, [SP,#0x38+var_30]
2907B4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2907B6:  ADD.W           R2, R5, R2,LSL#2
2907BA:  LDR             R1, [SP,#0x38+var_28]
2907BC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2907BE:  STR             R1, [R2,#8]
2907C0:  VSTR            D16, [R2]
2907C4:  MOVS            R2, #0
2907C6:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2907C8:  STRB.W          R2, [SP,#0x38+var_28+2]
2907CC:  MOVW            R2, #0x3246
2907D0:  STRH.W          R2, [SP,#0x38+var_28]
2907D4:  ADDS            R4, R1, #1
2907D6:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2907D8:  MOVS            R2, #2
2907DA:  STR.W           R8, [SP,#0x38+var_30+4]
2907DE:  STR             R2, [SP,#0x38+var_30]
2907E0:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2907E2:  ADDS            R0, R1, #2
2907E4:  CMP             R2, R0
2907E6:  BCS             loc_290842
2907E8:  MOVW            R1, #0xAAAB
2907EC:  LSLS            R0, R0, #2
2907EE:  MOVT            R1, #0xAAAA
2907F2:  UMULL.W         R0, R1, R0, R1
2907F6:  MOVS            R0, #3
2907F8:  ADD.W           R9, R0, R1,LSR#1
2907FC:  ADD.W           R0, R9, R9,LSL#1
290800:  LSLS            R0, R0, #2; byte_count
290802:  BLX             malloc
290806:  MOV             R5, R0
290808:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290810)
29080C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29080E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290810:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290812:  CBZ             R6, loc_290832
290814:  ADD.W           R0, R4, R4,LSL#1
290818:  MOV             R1, R6; void *
29081A:  LSLS            R2, R0, #2; size_t
29081C:  MOV             R0, R5; void *
29081E:  BLX             memcpy_0
290822:  MOV             R0, R6; p
290824:  BLX             free
290828:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290830)
29082C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29082E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290830:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290832:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29083A)
290836:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290838:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29083A:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29083C:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290840:  B               loc_29084C
290842:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29084A)
290846:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290848:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29084A:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29084C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29085C)
290850:  ADD.W           R2, R4, R4,LSL#1
290854:  VLDR            D16, [SP,#0x38+var_30]
290858:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29085A:  LDR             R1, [SP,#0x38+var_28]
29085C:  LDR             R3, [R0]; CHIDKeyboard::m_KeyPairs ...
29085E:  ADD.W           R0, R5, R2,LSL#2
290862:  STR             R1, [R0,#8]
290864:  VSTR            D16, [R0]
290868:  MOVS            R0, #0
29086A:  LDR             R1, [R3,#(dword_6E0030 - 0x6E002C)]
29086C:  STRB.W          R0, [SP,#0x38+var_28+2]
290870:  MOVW            R0, #0x3346
290874:  ADDS            R4, R1, #1
290876:  STR             R4, [R3,#(dword_6E0030 - 0x6E002C)]
290878:  LDR             R2, [R3]; CHIDKeyboard::m_KeyPairs
29087A:  ADDS            R1, #2
29087C:  STRH.W          R0, [SP,#0x38+var_28]
290880:  MOVS            R0, #3
290882:  CMP             R2, R1
290884:  STR.W           R8, [SP,#0x38+var_30+4]
290888:  STR             R0, [SP,#0x38+var_30]
29088A:  BCS             loc_2908E4
29088C:  MOVW            R2, #0xAAAB
290890:  LSLS            R1, R1, #2
290892:  MOVT            R2, #0xAAAA
290896:  UMULL.W         R1, R2, R1, R2
29089A:  ADD.W           R9, R0, R2,LSR#1
29089E:  ADD.W           R0, R9, R9,LSL#1
2908A2:  LSLS            R0, R0, #2; byte_count
2908A4:  BLX             malloc
2908A8:  MOV             R5, R0
2908AA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908B2)
2908AE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2908B0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2908B2:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2908B4:  CBZ             R6, loc_2908D4
2908B6:  ADD.W           R0, R4, R4,LSL#1
2908BA:  MOV             R1, R6; void *
2908BC:  LSLS            R2, R0, #2; size_t
2908BE:  MOV             R0, R5; void *
2908C0:  BLX             memcpy_0
2908C4:  MOV             R0, R6; p
2908C6:  BLX             free
2908CA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908D2)
2908CE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2908D0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2908D2:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2908D4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908DC)
2908D8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2908DA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2908DC:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2908DE:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2908E2:  B               loc_2908EE
2908E4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908EC)
2908E8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2908EA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2908EC:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2908EE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908FE)
2908F2:  ADD.W           R2, R4, R4,LSL#1
2908F6:  VLDR            D16, [SP,#0x38+var_30]
2908FA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2908FC:  ADD.W           R2, R5, R2,LSL#2
290900:  LDR             R1, [SP,#0x38+var_28]
290902:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290904:  STR             R1, [R2,#8]
290906:  VSTR            D16, [R2]
29090A:  MOVS            R2, #0
29090C:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29090E:  STRB.W          R2, [SP,#0x38+var_28+2]
290912:  MOVW            R2, #0x3446
290916:  STRH.W          R2, [SP,#0x38+var_28]
29091A:  ADDS            R4, R1, #1
29091C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29091E:  MOVS            R2, #4
290920:  STR.W           R8, [SP,#0x38+var_30+4]
290924:  STR             R2, [SP,#0x38+var_30]
290926:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290928:  ADDS            R0, R1, #2
29092A:  CMP             R2, R0
29092C:  BCS             loc_290988
29092E:  MOVW            R1, #0xAAAB
290932:  LSLS            R0, R0, #2
290934:  MOVT            R1, #0xAAAA
290938:  UMULL.W         R0, R1, R0, R1
29093C:  MOVS            R0, #3
29093E:  ADD.W           R9, R0, R1,LSR#1
290942:  ADD.W           R0, R9, R9,LSL#1
290946:  LSLS            R0, R0, #2; byte_count
290948:  BLX             malloc
29094C:  MOV             R5, R0
29094E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290956)
290952:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290954:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290956:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290958:  CBZ             R6, loc_290978
29095A:  ADD.W           R0, R4, R4,LSL#1
29095E:  MOV             R1, R6; void *
290960:  LSLS            R2, R0, #2; size_t
290962:  MOV             R0, R5; void *
290964:  BLX             memcpy_0
290968:  MOV             R0, R6; p
29096A:  BLX             free
29096E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290976)
290972:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290974:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290976:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290978:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290980)
29097C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29097E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290980:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290982:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290986:  B               loc_290992
290988:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290990)
29098C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29098E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290990:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290992:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2909A2)
290996:  ADD.W           R2, R4, R4,LSL#1
29099A:  VLDR            D16, [SP,#0x38+var_30]
29099E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2909A0:  ADD.W           R2, R5, R2,LSL#2
2909A4:  LDR             R1, [SP,#0x38+var_28]
2909A6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2909A8:  STR             R1, [R2,#8]
2909AA:  VSTR            D16, [R2]
2909AE:  MOVS            R2, #0
2909B0:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2909B2:  STRB.W          R2, [SP,#0x38+var_28+2]
2909B6:  MOVW            R2, #0x3546
2909BA:  STRH.W          R2, [SP,#0x38+var_28]
2909BE:  ADDS            R4, R1, #1
2909C0:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2909C2:  MOVS            R2, #5
2909C4:  STR.W           R8, [SP,#0x38+var_30+4]
2909C8:  STR             R2, [SP,#0x38+var_30]
2909CA:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2909CC:  ADDS            R0, R1, #2
2909CE:  CMP             R2, R0
2909D0:  BCS             loc_290A2C
2909D2:  MOVW            R1, #0xAAAB
2909D6:  LSLS            R0, R0, #2
2909D8:  MOVT            R1, #0xAAAA
2909DC:  UMULL.W         R0, R1, R0, R1
2909E0:  MOVS            R0, #3
2909E2:  ADD.W           R9, R0, R1,LSR#1
2909E6:  ADD.W           R0, R9, R9,LSL#1
2909EA:  LSLS            R0, R0, #2; byte_count
2909EC:  BLX             malloc
2909F0:  MOV             R5, R0
2909F2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2909FA)
2909F6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2909F8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2909FA:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2909FC:  CBZ             R6, loc_290A1C
2909FE:  ADD.W           R0, R4, R4,LSL#1
290A02:  MOV             R1, R6; void *
290A04:  LSLS            R2, R0, #2; size_t
290A06:  MOV             R0, R5; void *
290A08:  BLX             memcpy_0
290A0C:  MOV             R0, R6; p
290A0E:  BLX             free
290A12:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A1A)
290A16:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290A18:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290A1A:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290A1C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A24)
290A20:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290A22:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290A24:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290A26:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290A2A:  B               loc_290A36
290A2C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A34)
290A30:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290A32:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290A34:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290A36:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A46)
290A3A:  ADD.W           R2, R4, R4,LSL#1
290A3E:  VLDR            D16, [SP,#0x38+var_30]
290A42:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290A44:  ADD.W           R2, R5, R2,LSL#2
290A48:  LDR             R1, [SP,#0x38+var_28]
290A4A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290A4C:  STR             R1, [R2,#8]
290A4E:  VSTR            D16, [R2]
290A52:  MOVS            R2, #0
290A54:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
290A56:  STRB.W          R2, [SP,#0x38+var_28+2]
290A5A:  MOVW            R2, #0x3646
290A5E:  STRH.W          R2, [SP,#0x38+var_28]
290A62:  ADDS            R4, R1, #1
290A64:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290A66:  MOVS            R2, #6
290A68:  STR.W           R8, [SP,#0x38+var_30+4]
290A6C:  STR             R2, [SP,#0x38+var_30]
290A6E:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290A70:  ADDS            R0, R1, #2
290A72:  CMP             R2, R0
290A74:  BCS             loc_290AD0
290A76:  MOVW            R1, #0xAAAB
290A7A:  LSLS            R0, R0, #2
290A7C:  MOVT            R1, #0xAAAA
290A80:  UMULL.W         R0, R1, R0, R1
290A84:  MOVS            R0, #3
290A86:  ADD.W           R9, R0, R1,LSR#1
290A8A:  ADD.W           R0, R9, R9,LSL#1
290A8E:  LSLS            R0, R0, #2; byte_count
290A90:  BLX             malloc
290A94:  MOV             R5, R0
290A96:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A9E)
290A9A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290A9C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290A9E:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290AA0:  CBZ             R6, loc_290AC0
290AA2:  ADD.W           R0, R4, R4,LSL#1
290AA6:  MOV             R1, R6; void *
290AA8:  LSLS            R2, R0, #2; size_t
290AAA:  MOV             R0, R5; void *
290AAC:  BLX             memcpy_0
290AB0:  MOV             R0, R6; p
290AB2:  BLX             free
290AB6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290ABE)
290ABA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290ABC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290ABE:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290AC0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290AC8)
290AC4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290AC6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290AC8:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290ACA:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290ACE:  B               loc_290ADA
290AD0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290AD8)
290AD4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290AD6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290AD8:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290ADA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290AEA)
290ADE:  ADD.W           R2, R4, R4,LSL#1
290AE2:  VLDR            D16, [SP,#0x38+var_30]
290AE6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290AE8:  ADD.W           R2, R5, R2,LSL#2
290AEC:  LDR             R1, [SP,#0x38+var_28]
290AEE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290AF0:  STR             R1, [R2,#8]
290AF2:  VSTR            D16, [R2]
290AF6:  MOVS            R2, #0
290AF8:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
290AFA:  STRB.W          R2, [SP,#0x38+var_28+2]
290AFE:  MOVW            R2, #0x3746
290B02:  STRH.W          R2, [SP,#0x38+var_28]
290B06:  ADDS            R4, R1, #1
290B08:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290B0A:  MOVS            R2, #7
290B0C:  STR.W           R8, [SP,#0x38+var_30+4]
290B10:  STR             R2, [SP,#0x38+var_30]
290B12:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290B14:  ADDS            R0, R1, #2
290B16:  CMP             R2, R0
290B18:  BCS             loc_290B74
290B1A:  MOVW            R1, #0xAAAB
290B1E:  LSLS            R0, R0, #2
290B20:  MOVT            R1, #0xAAAA
290B24:  UMULL.W         R0, R1, R0, R1
290B28:  MOVS            R0, #3
290B2A:  ADD.W           R9, R0, R1,LSR#1
290B2E:  ADD.W           R0, R9, R9,LSL#1
290B32:  LSLS            R0, R0, #2; byte_count
290B34:  BLX             malloc
290B38:  MOV             R5, R0
290B3A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B42)
290B3E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290B40:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290B42:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290B44:  CBZ             R6, loc_290B64
290B46:  ADD.W           R0, R4, R4,LSL#1
290B4A:  MOV             R1, R6; void *
290B4C:  LSLS            R2, R0, #2; size_t
290B4E:  MOV             R0, R5; void *
290B50:  BLX             memcpy_0
290B54:  MOV             R0, R6; p
290B56:  BLX             free
290B5A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B62)
290B5E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290B60:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290B62:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290B64:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B6C)
290B68:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290B6A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290B6C:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290B6E:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290B72:  B               loc_290B7E
290B74:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B7C)
290B78:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290B7A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290B7C:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290B7E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B8E)
290B82:  ADD.W           R2, R4, R4,LSL#1
290B86:  VLDR            D16, [SP,#0x38+var_30]
290B8A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290B8C:  ADD.W           R2, R5, R2,LSL#2
290B90:  LDR             R1, [SP,#0x38+var_28]
290B92:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290B94:  STR             R1, [R2,#8]
290B96:  VSTR            D16, [R2]
290B9A:  MOVS            R2, #0
290B9C:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
290B9E:  STRB.W          R2, [SP,#0x38+var_28+2]
290BA2:  MOVW            R2, #0x3846
290BA6:  STRH.W          R2, [SP,#0x38+var_28]
290BAA:  ADD.W           R9, R1, #1
290BAE:  STR.W           R9, [R0,#(dword_6E0030 - 0x6E002C)]
290BB2:  MOVS            R2, #8
290BB4:  STR.W           R8, [SP,#0x38+var_30+4]
290BB8:  STR             R2, [SP,#0x38+var_30]
290BBA:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290BBC:  ADDS            R0, R1, #2
290BBE:  CMP             R2, R0
290BC0:  BCS             loc_290C1C
290BC2:  MOVW            R1, #0xAAAB
290BC6:  LSLS            R0, R0, #2
290BC8:  MOVT            R1, #0xAAAA
290BCC:  UMULL.W         R0, R1, R0, R1
290BD0:  MOVS            R0, #3
290BD2:  ADD.W           R4, R0, R1,LSR#1
290BD6:  ADD.W           R0, R4, R4,LSL#1
290BDA:  LSLS            R0, R0, #2; byte_count
290BDC:  BLX             malloc
290BE0:  MOV             R5, R0
290BE2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290BEA)
290BE6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290BE8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290BEA:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290BEC:  CBZ             R6, loc_290C0E
290BEE:  ADD.W           R0, R9, R9,LSL#1
290BF2:  MOV             R1, R6; void *
290BF4:  LSLS            R2, R0, #2; size_t
290BF6:  MOV             R0, R5; void *
290BF8:  BLX             memcpy_0
290BFC:  MOV             R0, R6; p
290BFE:  BLX             free
290C02:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C0A)
290C06:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290C08:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290C0A:  LDR.W           R9, [R0,#(dword_6E0030 - 0x6E002C)]
290C0E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C16)
290C12:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290C14:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290C16:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290C18:  STR             R4, [R0]; CHIDKeyboard::m_KeyPairs
290C1A:  B               loc_290C26
290C1C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C24)
290C20:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290C22:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290C24:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290C26:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C36)
290C2A:  ADD.W           R2, R9, R9,LSL#1
290C2E:  VLDR            D16, [SP,#0x38+var_30]
290C32:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290C34:  ADD.W           R2, R5, R2,LSL#2
290C38:  LDR             R1, [SP,#0x38+var_28]
290C3A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290C3C:  STR             R1, [R2,#8]
290C3E:  VSTR            D16, [R2]
290C42:  MOVS            R2, #0
290C44:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
290C46:  STRB.W          R2, [SP,#0x38+var_28+2]
290C4A:  MOVW            R2, #0x3946
290C4E:  STRH.W          R2, [SP,#0x38+var_28]
290C52:  ADDS            R4, R1, #1
290C54:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290C56:  MOVS            R2, #9
290C58:  STR.W           R8, [SP,#0x38+var_30+4]
290C5C:  STR             R2, [SP,#0x38+var_30]
290C5E:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290C60:  ADDS            R0, R1, #2
290C62:  CMP             R2, R0
290C64:  BCS             loc_290CC0
290C66:  MOVW            R1, #0xAAAB
290C6A:  LSLS            R0, R0, #2
290C6C:  MOVT            R1, #0xAAAA
290C70:  UMULL.W         R0, R1, R0, R1
290C74:  MOVS            R0, #3
290C76:  ADD.W           R9, R0, R1,LSR#1
290C7A:  ADD.W           R0, R9, R9,LSL#1
290C7E:  LSLS            R0, R0, #2; byte_count
290C80:  BLX             malloc
290C84:  MOV             R5, R0
290C86:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C8E)
290C8A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290C8C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290C8E:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290C90:  CBZ             R6, loc_290CB0
290C92:  ADD.W           R0, R4, R4,LSL#1
290C96:  MOV             R1, R6; void *
290C98:  LSLS            R2, R0, #2; size_t
290C9A:  MOV             R0, R5; void *
290C9C:  BLX             memcpy_0
290CA0:  MOV             R0, R6; p
290CA2:  BLX             free
290CA6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290CAE)
290CAA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290CAC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290CAE:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290CB0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290CB8)
290CB4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290CB6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290CB8:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290CBA:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290CBE:  B               loc_290CCA
290CC0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290CC8)
290CC4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290CC6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290CC8:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290CCA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290CDA)
290CCE:  ADD.W           R2, R4, R4,LSL#1
290CD2:  VLDR            D16, [SP,#0x38+var_30]
290CD6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290CD8:  ADD.W           R2, R5, R2,LSL#2
290CDC:  LDR             R1, [SP,#0x38+var_28]
290CDE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290CE0:  STR             R1, [R2,#8]
290CE2:  VSTR            D16, [R2]
290CE6:  MOVW            R2, #:lower16:(loc_303144+2)
290CEA:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
290CEC:  MOVT            R2, #:upper16:(loc_303144+2)
290CF0:  STR.W           R2, [R11,#4]
290CF4:  MOVS            R2, #0xA
290CF6:  ADDS            R4, R1, #1
290CF8:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290CFA:  STR.W           R8, [SP,#0x38+var_30+4]
290CFE:  STR             R2, [SP,#0x38+var_30]
290D00:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290D02:  ADDS            R0, R1, #2
290D04:  CMP             R2, R0
290D06:  BCS             loc_290D62
290D08:  MOVW            R1, #0xAAAB
290D0C:  LSLS            R0, R0, #2
290D0E:  MOVT            R1, #0xAAAA
290D12:  UMULL.W         R0, R1, R0, R1
290D16:  MOVS            R0, #3
290D18:  ADD.W           R9, R0, R1,LSR#1
290D1C:  ADD.W           R0, R9, R9,LSL#1
290D20:  LSLS            R0, R0, #2; byte_count
290D22:  BLX             malloc
290D26:  MOV             R5, R0
290D28:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D30)
290D2C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290D2E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290D30:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290D32:  CBZ             R6, loc_290D52
290D34:  ADD.W           R0, R4, R4,LSL#1
290D38:  MOV             R1, R6; void *
290D3A:  LSLS            R2, R0, #2; size_t
290D3C:  MOV             R0, R5; void *
290D3E:  BLX             memcpy_0
290D42:  MOV             R0, R6; p
290D44:  BLX             free
290D48:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D50)
290D4C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290D4E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290D50:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290D52:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D5A)
290D56:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290D58:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290D5A:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290D5C:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290D60:  B               loc_290D6C
290D62:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D6A)
290D66:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290D68:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290D6A:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290D6C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D7C)
290D70:  ADD.W           R2, R4, R4,LSL#1
290D74:  VLDR            D16, [SP,#0x38+var_30]
290D78:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290D7A:  ADD.W           R2, R5, R2,LSL#2
290D7E:  LDR             R1, [SP,#0x38+var_28]
290D80:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290D82:  STR             R1, [R2,#8]
290D84:  VSTR            D16, [R2]
290D88:  MOV             R2, #0x303146
290D90:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
290D92:  ADD.W           R2, R2, #0x10000
290D96:  STR.W           R2, [R11,#4]
290D9A:  ADDS            R4, R1, #1
290D9C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290D9E:  MOVS            R2, #0xB
290DA0:  STR.W           R8, [SP,#0x38+var_30+4]
290DA4:  STR             R2, [SP,#0x38+var_30]
290DA6:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290DA8:  ADDS            R0, R1, #2
290DAA:  CMP             R2, R0
290DAC:  BCS             loc_290E08
290DAE:  MOVW            R1, #0xAAAB
290DB2:  LSLS            R0, R0, #2
290DB4:  MOVT            R1, #0xAAAA
290DB8:  UMULL.W         R0, R1, R0, R1
290DBC:  MOVS            R0, #3
290DBE:  ADD.W           R9, R0, R1,LSR#1
290DC2:  ADD.W           R0, R9, R9,LSL#1
290DC6:  LSLS            R0, R0, #2; byte_count
290DC8:  BLX             malloc
290DCC:  MOV             R5, R0
290DCE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290DD6)
290DD2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290DD4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290DD6:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290DD8:  CBZ             R6, loc_290DF8
290DDA:  ADD.W           R0, R4, R4,LSL#1
290DDE:  MOV             R1, R6; void *
290DE0:  LSLS            R2, R0, #2; size_t
290DE2:  MOV             R0, R5; void *
290DE4:  BLX             memcpy_0
290DE8:  MOV             R0, R6; p
290DEA:  BLX             free
290DEE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290DF6)
290DF2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290DF4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290DF6:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290DF8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E00)
290DFC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290DFE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290E00:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290E02:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290E06:  B               loc_290E12
290E08:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E10)
290E0C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290E0E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290E10:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290E12:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E22)
290E16:  ADD.W           R2, R4, R4,LSL#1
290E1A:  VLDR            D16, [SP,#0x38+var_30]
290E1E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290E20:  ADD.W           R2, R5, R2,LSL#2
290E24:  LDR             R1, [SP,#0x38+var_28]
290E26:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290E28:  STR             R1, [R2,#8]
290E2A:  VSTR            D16, [R2]
290E2E:  MOV             R2, #0x303146
290E36:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
290E38:  ADD.W           R2, R2, #0x20000
290E3C:  STR.W           R2, [R11,#4]
290E40:  ADDS            R4, R1, #1
290E42:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290E44:  MOVS            R2, #0xC
290E46:  STR.W           R8, [SP,#0x38+var_30+4]
290E4A:  STR             R2, [SP,#0x38+var_30]
290E4C:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290E4E:  ADDS            R0, R1, #2
290E50:  CMP             R2, R0
290E52:  BCS             loc_290EAE
290E54:  MOVW            R1, #0xAAAB
290E58:  LSLS            R0, R0, #2
290E5A:  MOVT            R1, #0xAAAA
290E5E:  UMULL.W         R0, R1, R0, R1
290E62:  MOVS            R0, #3
290E64:  ADD.W           R9, R0, R1,LSR#1
290E68:  ADD.W           R0, R9, R9,LSL#1
290E6C:  LSLS            R0, R0, #2; byte_count
290E6E:  BLX             malloc
290E72:  MOV             R5, R0
290E74:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E7C)
290E78:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290E7A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290E7C:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290E7E:  CBZ             R6, loc_290E9E
290E80:  ADD.W           R0, R4, R4,LSL#1
290E84:  MOV             R1, R6; void *
290E86:  LSLS            R2, R0, #2; size_t
290E88:  MOV             R0, R5; void *
290E8A:  BLX             memcpy_0
290E8E:  MOV             R0, R6; p
290E90:  BLX             free
290E94:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E9C)
290E98:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290E9A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290E9C:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290E9E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290EA6)
290EA2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290EA4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290EA6:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290EA8:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290EAC:  B               loc_290EB8
290EAE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290EB6)
290EB2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290EB4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290EB6:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290EB8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290ECC)
290EBC:  ADD.W           R2, R4, R4,LSL#1
290EC0:  VLDR            D16, [SP,#0x38+var_30]
290EC4:  MOVW            R3, #:lower16:(loc_303144+2)
290EC8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290ECA:  ADD.W           R2, R5, R2,LSL#2
290ECE:  LDR             R1, [SP,#0x38+var_28]
290ED0:  MOVT            R3, #:upper16:(loc_303144+2)
290ED4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290ED6:  STR             R1, [R2,#8]
290ED8:  VSTR            D16, [R2]
290EDC:  MOV             R2, #0x141B0E
290EE4:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
290EE6:  ADD             R2, R3
290EE8:  STR.W           R2, [R11,#4]
290EEC:  ADDS            R4, R1, #1
290EEE:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290EF0:  MOVS            R2, #0xD
290EF2:  STR.W           R8, [SP,#0x38+var_30+4]
290EF6:  STR             R2, [SP,#0x38+var_30]
290EF8:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290EFA:  ADDS            R0, R1, #2
290EFC:  CMP             R2, R0
290EFE:  BCS             loc_290F5A
290F00:  MOVW            R1, #0xAAAB
290F04:  LSLS            R0, R0, #2
290F06:  MOVT            R1, #0xAAAA
290F0A:  UMULL.W         R0, R1, R0, R1
290F0E:  MOVS            R0, #3
290F10:  ADD.W           R9, R0, R1,LSR#1
290F14:  ADD.W           R0, R9, R9,LSL#1
290F18:  LSLS            R0, R0, #2; byte_count
290F1A:  BLX             malloc
290F1E:  MOV             R5, R0
290F20:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F28)
290F24:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290F26:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290F28:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290F2A:  CBZ             R6, loc_290F4A
290F2C:  ADD.W           R0, R4, R4,LSL#1
290F30:  MOV             R1, R6; void *
290F32:  LSLS            R2, R0, #2; size_t
290F34:  MOV             R0, R5; void *
290F36:  BLX             memcpy_0
290F3A:  MOV             R0, R6; p
290F3C:  BLX             free
290F40:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F48)
290F44:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290F46:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290F48:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290F4A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F52)
290F4E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290F50:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290F52:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290F54:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290F58:  B               loc_290F64
290F5A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F62)
290F5E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290F60:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290F62:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290F64:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F74)
290F68:  ADD.W           R2, R4, R4,LSL#1
290F6C:  VLDR            D16, [SP,#0x38+var_30]
290F70:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290F72:  ADD.W           R2, R5, R2,LSL#2
290F76:  LDR             R1, [SP,#0x38+var_28]
290F78:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290F7A:  STR             R1, [R2,#8]
290F7C:  VSTR            D16, [R2]
290F80:  MOVS            R2, #0x30 ; '0'
290F82:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
290F84:  STRH.W          R2, [SP,#0x38+var_28]
290F88:  MOVS            R2, #0xE
290F8A:  ADDS            R4, R1, #1
290F8C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290F8E:  STR.W           R8, [SP,#0x38+var_30+4]
290F92:  STR             R2, [SP,#0x38+var_30]
290F94:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
290F96:  ADDS            R0, R1, #2
290F98:  CMP             R2, R0
290F9A:  BCS             loc_290FF6
290F9C:  MOVW            R1, #0xAAAB
290FA0:  LSLS            R0, R0, #2
290FA2:  MOVT            R1, #0xAAAA
290FA6:  UMULL.W         R0, R1, R0, R1
290FAA:  MOVS            R0, #3
290FAC:  ADD.W           R9, R0, R1,LSR#1
290FB0:  ADD.W           R0, R9, R9,LSL#1
290FB4:  LSLS            R0, R0, #2; byte_count
290FB6:  BLX             malloc
290FBA:  MOV             R5, R0
290FBC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290FC4)
290FC0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290FC2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290FC4:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
290FC6:  CBZ             R6, loc_290FE6
290FC8:  ADD.W           R0, R4, R4,LSL#1
290FCC:  MOV             R1, R6; void *
290FCE:  LSLS            R2, R0, #2; size_t
290FD0:  MOV             R0, R5; void *
290FD2:  BLX             memcpy_0
290FD6:  MOV             R0, R6; p
290FD8:  BLX             free
290FDC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290FE4)
290FE0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290FE2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290FE4:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
290FE6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290FEE)
290FEA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290FEC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290FEE:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
290FF0:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
290FF4:  B               loc_291000
290FF6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290FFE)
290FFA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
290FFC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
290FFE:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291000:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291010)
291004:  ADD.W           R2, R4, R4,LSL#1
291008:  VLDR            D16, [SP,#0x38+var_30]
29100C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29100E:  ADD.W           R2, R5, R2,LSL#2
291012:  LDR             R1, [SP,#0x38+var_28]
291014:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291016:  STR             R1, [R2,#8]
291018:  VSTR            D16, [R2]
29101C:  MOVS            R2, #0x31 ; '1'
29101E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291020:  STRH.W          R2, [SP,#0x38+var_28]
291024:  MOVS            R2, #0xF
291026:  ADDS            R4, R1, #1
291028:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29102A:  STR.W           R8, [SP,#0x38+var_30+4]
29102E:  STR             R2, [SP,#0x38+var_30]
291030:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291032:  ADDS            R0, R1, #2
291034:  CMP             R2, R0
291036:  BCS             loc_291092
291038:  MOVW            R1, #0xAAAB
29103C:  LSLS            R0, R0, #2
29103E:  MOVT            R1, #0xAAAA
291042:  UMULL.W         R0, R1, R0, R1
291046:  MOVS            R0, #3
291048:  ADD.W           R9, R0, R1,LSR#1
29104C:  ADD.W           R0, R9, R9,LSL#1
291050:  LSLS            R0, R0, #2; byte_count
291052:  BLX             malloc
291056:  MOV             R5, R0
291058:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291060)
29105C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29105E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291060:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291062:  CBZ             R6, loc_291082
291064:  ADD.W           R0, R4, R4,LSL#1
291068:  MOV             R1, R6; void *
29106A:  LSLS            R2, R0, #2; size_t
29106C:  MOV             R0, R5; void *
29106E:  BLX             memcpy_0
291072:  MOV             R0, R6; p
291074:  BLX             free
291078:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291080)
29107C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29107E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291080:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291082:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29108A)
291086:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291088:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29108A:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29108C:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291090:  B               loc_29109C
291092:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29109A)
291096:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291098:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29109A:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29109C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2910AC)
2910A0:  ADD.W           R2, R4, R4,LSL#1
2910A4:  VLDR            D16, [SP,#0x38+var_30]
2910A8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2910AA:  ADD.W           R2, R5, R2,LSL#2
2910AE:  LDR             R1, [SP,#0x38+var_28]
2910B0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2910B2:  STR             R1, [R2,#8]
2910B4:  VSTR            D16, [R2]
2910B8:  MOVS            R2, #0x32 ; '2'
2910BA:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2910BC:  STRH.W          R2, [SP,#0x38+var_28]
2910C0:  MOVS            R2, #0x10
2910C2:  ADDS            R4, R1, #1
2910C4:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2910C6:  STR.W           R8, [SP,#0x38+var_30+4]
2910CA:  STR             R2, [SP,#0x38+var_30]
2910CC:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2910CE:  ADDS            R0, R1, #2
2910D0:  CMP             R2, R0
2910D2:  BCS             loc_29112E
2910D4:  MOVW            R1, #0xAAAB
2910D8:  LSLS            R0, R0, #2
2910DA:  MOVT            R1, #0xAAAA
2910DE:  UMULL.W         R0, R1, R0, R1
2910E2:  MOVS            R0, #3
2910E4:  ADD.W           R9, R0, R1,LSR#1
2910E8:  ADD.W           R0, R9, R9,LSL#1
2910EC:  LSLS            R0, R0, #2; byte_count
2910EE:  BLX             malloc
2910F2:  MOV             R5, R0
2910F4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2910FC)
2910F8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2910FA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2910FC:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2910FE:  CBZ             R6, loc_29111E
291100:  ADD.W           R0, R4, R4,LSL#1
291104:  MOV             R1, R6; void *
291106:  LSLS            R2, R0, #2; size_t
291108:  MOV             R0, R5; void *
29110A:  BLX             memcpy_0
29110E:  MOV             R0, R6; p
291110:  BLX             free
291114:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29111C)
291118:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29111A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29111C:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29111E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291126)
291122:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291124:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291126:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291128:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29112C:  B               loc_291138
29112E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291136)
291132:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291134:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291136:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291138:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291148)
29113C:  ADD.W           R2, R4, R4,LSL#1
291140:  VLDR            D16, [SP,#0x38+var_30]
291144:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291146:  ADD.W           R2, R5, R2,LSL#2
29114A:  LDR             R1, [SP,#0x38+var_28]
29114C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29114E:  STR             R1, [R2,#8]
291150:  VSTR            D16, [R2]
291154:  MOVS            R2, #0x33 ; '3'
291156:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291158:  STRH.W          R2, [SP,#0x38+var_28]
29115C:  MOVS            R2, #0x11
29115E:  ADDS            R4, R1, #1
291160:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291162:  STR.W           R8, [SP,#0x38+var_30+4]
291166:  STR             R2, [SP,#0x38+var_30]
291168:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29116A:  ADDS            R0, R1, #2
29116C:  CMP             R2, R0
29116E:  BCS             loc_2911CA
291170:  MOVW            R1, #0xAAAB
291174:  LSLS            R0, R0, #2
291176:  MOVT            R1, #0xAAAA
29117A:  UMULL.W         R0, R1, R0, R1
29117E:  MOVS            R0, #3
291180:  ADD.W           R9, R0, R1,LSR#1
291184:  ADD.W           R0, R9, R9,LSL#1
291188:  LSLS            R0, R0, #2; byte_count
29118A:  BLX             malloc
29118E:  MOV             R5, R0
291190:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291198)
291194:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291196:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291198:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29119A:  CBZ             R6, loc_2911BA
29119C:  ADD.W           R0, R4, R4,LSL#1
2911A0:  MOV             R1, R6; void *
2911A2:  LSLS            R2, R0, #2; size_t
2911A4:  MOV             R0, R5; void *
2911A6:  BLX             memcpy_0
2911AA:  MOV             R0, R6; p
2911AC:  BLX             free
2911B0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2911B8)
2911B4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2911B6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2911B8:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2911BA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2911C2)
2911BE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2911C0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2911C2:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2911C4:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2911C8:  B               loc_2911D4
2911CA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2911D2)
2911CE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2911D0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2911D2:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2911D4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2911E4)
2911D8:  ADD.W           R2, R4, R4,LSL#1
2911DC:  VLDR            D16, [SP,#0x38+var_30]
2911E0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2911E2:  ADD.W           R2, R5, R2,LSL#2
2911E6:  LDR             R1, [SP,#0x38+var_28]
2911E8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2911EA:  STR             R1, [R2,#8]
2911EC:  VSTR            D16, [R2]
2911F0:  MOVS            R2, #0x34 ; '4'
2911F2:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2911F4:  STRH.W          R2, [SP,#0x38+var_28]
2911F8:  MOVS            R2, #0x12
2911FA:  ADDS            R4, R1, #1
2911FC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2911FE:  STR.W           R8, [SP,#0x38+var_30+4]
291202:  STR             R2, [SP,#0x38+var_30]
291204:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291206:  ADDS            R0, R1, #2
291208:  CMP             R2, R0
29120A:  BCS             loc_291266
29120C:  MOVW            R1, #0xAAAB
291210:  LSLS            R0, R0, #2
291212:  MOVT            R1, #0xAAAA
291216:  UMULL.W         R0, R1, R0, R1
29121A:  MOVS            R0, #3
29121C:  ADD.W           R9, R0, R1,LSR#1
291220:  ADD.W           R0, R9, R9,LSL#1
291224:  LSLS            R0, R0, #2; byte_count
291226:  BLX             malloc
29122A:  MOV             R5, R0
29122C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291234)
291230:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291232:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291234:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291236:  CBZ             R6, loc_291256
291238:  ADD.W           R0, R4, R4,LSL#1
29123C:  MOV             R1, R6; void *
29123E:  LSLS            R2, R0, #2; size_t
291240:  MOV             R0, R5; void *
291242:  BLX             memcpy_0
291246:  MOV             R0, R6; p
291248:  BLX             free
29124C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291254)
291250:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291252:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291254:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291256:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29125E)
29125A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29125C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29125E:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291260:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291264:  B               loc_291270
291266:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29126E)
29126A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29126C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29126E:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291270:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291280)
291274:  ADD.W           R2, R4, R4,LSL#1
291278:  VLDR            D16, [SP,#0x38+var_30]
29127C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29127E:  ADD.W           R2, R5, R2,LSL#2
291282:  LDR             R1, [SP,#0x38+var_28]
291284:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291286:  STR             R1, [R2,#8]
291288:  VSTR            D16, [R2]
29128C:  MOVS            R2, #0x35 ; '5'
29128E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291290:  STRH.W          R2, [SP,#0x38+var_28]
291294:  MOVS            R2, #0x13
291296:  ADDS            R4, R1, #1
291298:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29129A:  STR.W           R8, [SP,#0x38+var_30+4]
29129E:  STR             R2, [SP,#0x38+var_30]
2912A0:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2912A2:  ADDS            R0, R1, #2
2912A4:  CMP             R2, R0
2912A6:  BCS             loc_2912FC
2912A8:  MOVW            R1, #0xAAAB
2912AC:  LSLS            R0, R0, #2
2912AE:  MOVT            R1, #0xAAAA
2912B2:  UMULL.W         R0, R1, R0, R1
2912B6:  MOVS            R0, #3
2912B8:  ADD.W           R9, R0, R1,LSR#1
2912BC:  ADD.W           R0, R9, R9,LSL#1
2912C0:  LSLS            R0, R0, #2; byte_count
2912C2:  BLX             malloc
2912C6:  MOV             R5, R0
2912C8:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2912CE)
2912CA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2912CC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2912CE:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2912D0:  CBZ             R6, loc_2912EE
2912D2:  ADD.W           R0, R4, R4,LSL#1
2912D6:  MOV             R1, R6; void *
2912D8:  LSLS            R2, R0, #2; size_t
2912DA:  MOV             R0, R5; void *
2912DC:  BLX             memcpy_0
2912E0:  MOV             R0, R6; p
2912E2:  BLX             free
2912E6:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2912EC)
2912E8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2912EA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2912EC:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2912EE:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2912F4)
2912F0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2912F2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2912F4:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2912F6:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2912FA:  B               loc_291304
2912FC:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291302)
2912FE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291300:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291302:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291304:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291312)
291306:  ADD.W           R2, R4, R4,LSL#1
29130A:  VLDR            D16, [SP,#0x38+var_30]
29130E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291310:  ADD.W           R2, R5, R2,LSL#2
291314:  LDR             R1, [SP,#0x38+var_28]
291316:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291318:  STR             R1, [R2,#8]
29131A:  VSTR            D16, [R2]
29131E:  MOVS            R2, #0x36 ; '6'
291320:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291322:  STRH.W          R2, [SP,#0x38+var_28]
291326:  MOVS            R2, #0x14
291328:  ADDS            R4, R1, #1
29132A:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29132C:  STR.W           R8, [SP,#0x38+var_30+4]
291330:  STR             R2, [SP,#0x38+var_30]
291332:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291334:  ADDS            R0, R1, #2
291336:  CMP             R2, R0
291338:  BCS             loc_29138E
29133A:  MOVW            R1, #0xAAAB
29133E:  LSLS            R0, R0, #2
291340:  MOVT            R1, #0xAAAA
291344:  UMULL.W         R0, R1, R0, R1
291348:  MOVS            R0, #3
29134A:  ADD.W           R9, R0, R1,LSR#1
29134E:  ADD.W           R0, R9, R9,LSL#1
291352:  LSLS            R0, R0, #2; byte_count
291354:  BLX             malloc
291358:  MOV             R5, R0
29135A:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291360)
29135C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29135E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291360:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291362:  CBZ             R6, loc_291380
291364:  ADD.W           R0, R4, R4,LSL#1
291368:  MOV             R1, R6; void *
29136A:  LSLS            R2, R0, #2; size_t
29136C:  MOV             R0, R5; void *
29136E:  BLX             memcpy_0
291372:  MOV             R0, R6; p
291374:  BLX             free
291378:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29137E)
29137A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29137C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29137E:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291380:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291386)
291382:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291384:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291386:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291388:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29138C:  B               loc_291396
29138E:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291394)
291390:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291392:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291394:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291396:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2913A4)
291398:  ADD.W           R2, R4, R4,LSL#1
29139C:  VLDR            D16, [SP,#0x38+var_30]
2913A0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2913A2:  ADD.W           R2, R5, R2,LSL#2
2913A6:  LDR             R1, [SP,#0x38+var_28]
2913A8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2913AA:  STR             R1, [R2,#8]
2913AC:  VSTR            D16, [R2]
2913B0:  MOVS            R2, #0x37 ; '7'
2913B2:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2913B4:  STRH.W          R2, [SP,#0x38+var_28]
2913B8:  MOVS            R2, #0x15
2913BA:  ADDS            R4, R1, #1
2913BC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2913BE:  STR.W           R8, [SP,#0x38+var_30+4]
2913C2:  STR             R2, [SP,#0x38+var_30]
2913C4:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2913C6:  ADDS            R0, R1, #2
2913C8:  CMP             R2, R0
2913CA:  BCS             loc_291420
2913CC:  MOVW            R1, #0xAAAB
2913D0:  LSLS            R0, R0, #2
2913D2:  MOVT            R1, #0xAAAA
2913D6:  UMULL.W         R0, R1, R0, R1
2913DA:  MOVS            R0, #3
2913DC:  ADD.W           R9, R0, R1,LSR#1
2913E0:  ADD.W           R0, R9, R9,LSL#1
2913E4:  LSLS            R0, R0, #2; byte_count
2913E6:  BLX             malloc
2913EA:  MOV             R5, R0
2913EC:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2913F2)
2913EE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2913F0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2913F2:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2913F4:  CBZ             R6, loc_291412
2913F6:  ADD.W           R0, R4, R4,LSL#1
2913FA:  MOV             R1, R6; void *
2913FC:  LSLS            R2, R0, #2; size_t
2913FE:  MOV             R0, R5; void *
291400:  BLX             memcpy_0
291404:  MOV             R0, R6; p
291406:  BLX             free
29140A:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291410)
29140C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29140E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291410:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291412:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291418)
291414:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291416:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291418:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29141A:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29141E:  B               loc_291428
291420:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291426)
291422:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291424:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291426:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291428:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291436)
29142A:  ADD.W           R2, R4, R4,LSL#1
29142E:  VLDR            D16, [SP,#0x38+var_30]
291432:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291434:  ADD.W           R2, R5, R2,LSL#2
291438:  LDR             R1, [SP,#0x38+var_28]
29143A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29143C:  STR             R1, [R2,#8]
29143E:  VSTR            D16, [R2]
291442:  MOVS            R2, #0x38 ; '8'
291444:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291446:  STRH.W          R2, [SP,#0x38+var_28]
29144A:  MOVS            R2, #0x16
29144C:  ADDS            R4, R1, #1
29144E:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291450:  STR.W           R8, [SP,#0x38+var_30+4]
291454:  STR             R2, [SP,#0x38+var_30]
291456:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291458:  ADDS            R0, R1, #2
29145A:  CMP             R2, R0
29145C:  BCS.W           loc_29186C
291460:  MOVW            R1, #0xAAAB
291464:  LSLS            R0, R0, #2
291466:  MOVT            R1, #0xAAAA
29146A:  UMULL.W         R0, R1, R0, R1
29146E:  MOVS            R0, #3
291470:  ADD.W           R9, R0, R1,LSR#1
291474:  ADD.W           R0, R9, R9,LSL#1
291478:  LSLS            R0, R0, #2; byte_count
29147A:  BLX             malloc
29147E:  MOV             R5, R0
291480:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291486)
291482:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291484:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291486:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291488:  CBZ             R6, loc_2914A6
29148A:  ADD.W           R0, R4, R4,LSL#1
29148E:  MOV             R1, R6; void *
291490:  LSLS            R2, R0, #2; size_t
291492:  MOV             R0, R5; void *
291494:  BLX             memcpy_0
291498:  MOV             R0, R6; p
29149A:  BLX             free
29149E:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2914A4)
2914A0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2914A2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2914A4:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2914A6:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2914AC)
2914A8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2914AA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2914AC:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2914AE:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2914B2:  B               loc_291876
2914B4:  DCD __stack_chk_guard_ptr - 0x290636
2914B8:  DCD _ZTV12CHIDKeyboard_ptr - 0x29064A
2914BC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290696
2914C0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2906CA
2914C4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2906E0
2914C8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2906F0
2914CC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290700
2914D0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290714
2914D4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29076C
2914D8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29078C
2914DC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290796
2914E0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2907A6
2914E4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2907B8
2914E8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290810
2914EC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290830
2914F0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29083A
2914F4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29084A
2914F8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29085C
2914FC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908B2
291500:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908D2
291504:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908DC
291508:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908EC
29150C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2908FE
291510:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290956
291514:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290976
291518:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290980
29151C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290990
291520:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2909A2
291524:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2909FA
291528:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A1A
29152C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A24
291530:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A34
291534:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A46
291538:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290A9E
29153C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290ABE
291540:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290AC8
291544:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290AD8
291548:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290AEA
29154C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B42
291550:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B62
291554:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B6C
291558:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B7C
29155C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290B8E
291560:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290BEA
291564:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C0A
291568:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C16
29156C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C24
291570:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C36
291574:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290C8E
291578:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290CAE
29157C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290CB8
291580:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290CC8
291584:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290CDA
291588:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D30
29158C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D50
291590:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D5A
291594:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D6A
291598:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290D7C
29159C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290DD6
2915A0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290DF6
2915A4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E00
2915A8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E10
2915AC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E22
2915B0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E7C
2915B4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290E9C
2915B8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290EA6
2915BC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290EB6
2915C0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290ECC
2915C4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F28
2915C8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F48
2915CC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F52
2915D0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F62
2915D4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290F74
2915D8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290FC4
2915DC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290FE4
2915E0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290FEE
2915E4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x290FFE
2915E8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291010
2915EC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291060
2915F0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291080
2915F4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29108A
2915F8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29109A
2915FC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2910AC
291600:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2910FC
291604:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29111C
291608:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291126
29160C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291136
291610:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291148
291614:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291198
291618:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2911B8
29161C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2911C2
291620:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2911D2
291624:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2911E4
291628:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291234
29162C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291254
291630:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29125E
291634:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29126E
291638:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291280
29163C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2912CE
291640:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2912EC
291644:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2912F4
291648:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291302
29164C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291312
291650:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291360
291654:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29137E
291658:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291386
29165C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291394
291660:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2913A4
291664:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2913F2
291668:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291410
29166C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291418
291670:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291426
291674:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291436
291678:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291486
29167C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2914A4
291680:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2914AC
291684:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291874
291688:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291886
29168C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2918D6
291690:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2918F6
291694:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291900
291698:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291910
29169C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291926
2916A0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291982
2916A4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2919A2
2916A8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2919AC
2916AC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2919BC
2916B0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2919D2
2916B4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A2E
2916B8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A4E
2916BC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A58
2916C0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A68
2916C4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A7E
2916C8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291ADA
2916CC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291AFA
2916D0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291B04
2916D4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291B14
2916D8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291B2A
2916DC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291B86
2916E0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291BA6
2916E4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291BB0
2916E8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291BC0
2916EC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291BD2
2916F0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C22
2916F4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C42
2916F8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C4C
2916FC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C5C
291700:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C6E
291704:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291CBE
291708:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291CDE
29170C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291CE8
291710:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291CF8
291714:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D0A
291718:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D5A
29171C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D7A
291720:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D84
291724:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D94
291728:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291DA6
29172C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291DF6
291730:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E16
291734:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E20
291738:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E30
29173C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E42
291740:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E92
291744:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291EB2
291748:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291EBC
29174C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291ECC
291750:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291EDE
291754:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F2E
291758:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F4E
29175C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F58
291760:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F68
291764:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F7A
291768:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291FCA
29176C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291FEA
291770:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291FF4
291774:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292004
291778:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292016
29177C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292066
291780:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292086
291784:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292090
291788:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2920A0
29178C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2920B2
291790:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292102
291794:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292122
291798:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29212C
29179C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29213C
2917A0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29214E
2917A4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29219E
2917A8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2921BE
2917AC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2921C8
2917B0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2921D8
2917B4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2921EE
2917B8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29224A
2917BC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29226A
2917C0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292274
2917C4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292284
2917C8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29229A
2917CC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2922F6
2917D0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292316
2917D4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292320
2917D8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292330
2917DC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292342
2917E0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923A0
2917E4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923C0
2917E8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923CA
2917EC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923DA
2917F0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923F0
2917F4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29244C
2917F8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29246C
2917FC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292476
291800:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292486
291804:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292498
291808:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2924E8
29180C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292508
291810:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292512
291814:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292522
291818:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292534
29181C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292584
291820:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2925A4
291824:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2925AE
291828:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2925BE
29182C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2925D0
291830:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292620
291834:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292640
291838:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29264A
29183C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29265A
291840:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29266C
291844:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2926BC
291848:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2926DC
29184C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2926E6
291850:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2926F6
291854:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292708
291858:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292758
29185C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292778
291860:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292782
291864:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292792
291868:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2927A4
29186C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291874)
291870:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291872:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291874:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291876:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291886)
29187A:  ADD.W           R2, R4, R4,LSL#1
29187E:  VLDR            D16, [SP,#0x38+var_30]
291882:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291884:  ADD.W           R2, R5, R2,LSL#2
291888:  LDR             R1, [SP,#0x38+var_28]
29188A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29188C:  STR             R1, [R2,#8]
29188E:  VSTR            D16, [R2]
291892:  MOVS            R2, #0x39 ; '9'
291894:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291896:  STRH.W          R2, [SP,#0x38+var_28]
29189A:  MOVS            R2, #0x17
29189C:  ADDS            R4, R1, #1
29189E:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2918A0:  STR.W           R8, [SP,#0x38+var_30+4]
2918A4:  STR             R2, [SP,#0x38+var_30]
2918A6:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2918A8:  ADDS            R0, R1, #2
2918AA:  CMP             R2, R0
2918AC:  BCS             loc_291908
2918AE:  MOVW            R1, #0xAAAB
2918B2:  LSLS            R0, R0, #2
2918B4:  MOVT            R1, #0xAAAA
2918B8:  UMULL.W         R0, R1, R0, R1
2918BC:  MOVS            R0, #3
2918BE:  ADD.W           R9, R0, R1,LSR#1
2918C2:  ADD.W           R0, R9, R9,LSL#1
2918C6:  LSLS            R0, R0, #2; byte_count
2918C8:  BLX             malloc
2918CC:  MOV             R5, R0
2918CE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2918D6)
2918D2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2918D4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2918D6:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2918D8:  CBZ             R6, loc_2918F8
2918DA:  ADD.W           R0, R4, R4,LSL#1
2918DE:  MOV             R1, R6; void *
2918E0:  LSLS            R2, R0, #2; size_t
2918E2:  MOV             R0, R5; void *
2918E4:  BLX             memcpy_0
2918E8:  MOV             R0, R6; p
2918EA:  BLX             free
2918EE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2918F6)
2918F2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2918F4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2918F6:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2918F8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291900)
2918FC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2918FE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291900:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291902:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291906:  B               loc_291912
291908:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291910)
29190C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29190E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291910:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291912:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291926)
291916:  ADD.W           R2, R4, R4,LSL#1
29191A:  VLDR            D16, [SP,#0x38+var_30]
29191E:  MOVW            R3, #:lower16:(loc_303144+2)
291922:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291924:  ADD.W           R2, R5, R2,LSL#2
291928:  LDR             R1, [SP,#0x38+var_28]
29192A:  MOVT            R3, #:upper16:(loc_303144+2)
29192E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291930:  STR             R1, [R2,#8]
291932:  VSTR            D16, [R2]
291936:  MOV             R2, #0x231D07
29193E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291940:  ADD             R2, R3
291942:  STR.W           R2, [R11,#4]
291946:  ADDS            R4, R1, #1
291948:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29194A:  MOVS            R2, #0x18
29194C:  STR.W           R8, [SP,#0x38+var_30+4]
291950:  STR             R2, [SP,#0x38+var_30]
291952:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291954:  ADDS            R0, R1, #2
291956:  CMP             R2, R0
291958:  BCS             loc_2919B4
29195A:  MOVW            R1, #0xAAAB
29195E:  LSLS            R0, R0, #2
291960:  MOVT            R1, #0xAAAA
291964:  UMULL.W         R0, R1, R0, R1
291968:  MOVS            R0, #3
29196A:  ADD.W           R9, R0, R1,LSR#1
29196E:  ADD.W           R0, R9, R9,LSL#1
291972:  LSLS            R0, R0, #2; byte_count
291974:  BLX             malloc
291978:  MOV             R5, R0
29197A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291982)
29197E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291980:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291982:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291984:  CBZ             R6, loc_2919A4
291986:  ADD.W           R0, R4, R4,LSL#1
29198A:  MOV             R1, R6; void *
29198C:  LSLS            R2, R0, #2; size_t
29198E:  MOV             R0, R5; void *
291990:  BLX             memcpy_0
291994:  MOV             R0, R6; p
291996:  BLX             free
29199A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2919A2)
29199E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2919A0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2919A2:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2919A4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2919AC)
2919A8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2919AA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2919AC:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2919AE:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2919B2:  B               loc_2919BE
2919B4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2919BC)
2919B8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2919BA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2919BC:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2919BE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2919D2)
2919C2:  ADD.W           R2, R4, R4,LSL#1
2919C6:  VLDR            D16, [SP,#0x38+var_30]
2919CA:  MOVW            R3, #:lower16:(loc_303144+2)
2919CE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2919D0:  ADD.W           R2, R5, R2,LSL#2
2919D4:  LDR             R1, [SP,#0x38+var_28]
2919D6:  MOVT            R3, #:upper16:(loc_303144+2)
2919DA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2919DC:  STR             R1, [R2,#8]
2919DE:  VSTR            D16, [R2]
2919E2:  MOV             R2, #0x231FFF
2919EA:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2919EC:  ADD             R2, R3
2919EE:  STR.W           R2, [R11,#4]
2919F2:  ADDS            R4, R1, #1
2919F4:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2919F6:  MOVS            R2, #0x19
2919F8:  STR.W           R8, [SP,#0x38+var_30+4]
2919FC:  STR             R2, [SP,#0x38+var_30]
2919FE:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291A00:  ADDS            R0, R1, #2
291A02:  CMP             R2, R0
291A04:  BCS             loc_291A60
291A06:  MOVW            R1, #0xAAAB
291A0A:  LSLS            R0, R0, #2
291A0C:  MOVT            R1, #0xAAAA
291A10:  UMULL.W         R0, R1, R0, R1
291A14:  MOVS            R0, #3
291A16:  ADD.W           R9, R0, R1,LSR#1
291A1A:  ADD.W           R0, R9, R9,LSL#1
291A1E:  LSLS            R0, R0, #2; byte_count
291A20:  BLX             malloc
291A24:  MOV             R5, R0
291A26:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A2E)
291A2A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291A2C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291A2E:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291A30:  CBZ             R6, loc_291A50
291A32:  ADD.W           R0, R4, R4,LSL#1
291A36:  MOV             R1, R6; void *
291A38:  LSLS            R2, R0, #2; size_t
291A3A:  MOV             R0, R5; void *
291A3C:  BLX             memcpy_0
291A40:  MOV             R0, R6; p
291A42:  BLX             free
291A46:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A4E)
291A4A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291A4C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291A4E:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291A50:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A58)
291A54:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291A56:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291A58:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291A5A:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291A5E:  B               loc_291A6A
291A60:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A68)
291A64:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291A66:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291A68:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291A6A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291A7E)
291A6E:  ADD.W           R2, R4, R4,LSL#1
291A72:  VLDR            D16, [SP,#0x38+var_30]
291A76:  MOVW            R3, #:lower16:(loc_303144+2)
291A7A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291A7C:  ADD.W           R2, R5, R2,LSL#2
291A80:  LDR             R1, [SP,#0x38+var_28]
291A82:  MOVT            R3, #:upper16:(loc_303144+2)
291A86:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291A88:  STR             R1, [R2,#8]
291A8A:  VSTR            D16, [R2]
291A8E:  MOV             R2, #0x2021FC
291A96:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291A98:  ADD             R2, R3
291A9A:  STR.W           R2, [R11,#4]
291A9E:  ADDS            R4, R1, #1
291AA0:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291AA2:  MOVS            R2, #0x1A
291AA4:  STR.W           R8, [SP,#0x38+var_30+4]
291AA8:  STR             R2, [SP,#0x38+var_30]
291AAA:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291AAC:  ADDS            R0, R1, #2
291AAE:  CMP             R2, R0
291AB0:  BCS             loc_291B0C
291AB2:  MOVW            R1, #0xAAAB
291AB6:  LSLS            R0, R0, #2
291AB8:  MOVT            R1, #0xAAAA
291ABC:  UMULL.W         R0, R1, R0, R1
291AC0:  MOVS            R0, #3
291AC2:  ADD.W           R9, R0, R1,LSR#1
291AC6:  ADD.W           R0, R9, R9,LSL#1
291ACA:  LSLS            R0, R0, #2; byte_count
291ACC:  BLX             malloc
291AD0:  MOV             R5, R0
291AD2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291ADA)
291AD6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291AD8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291ADA:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291ADC:  CBZ             R6, loc_291AFC
291ADE:  ADD.W           R0, R4, R4,LSL#1
291AE2:  MOV             R1, R6; void *
291AE4:  LSLS            R2, R0, #2; size_t
291AE6:  MOV             R0, R5; void *
291AE8:  BLX             memcpy_0
291AEC:  MOV             R0, R6; p
291AEE:  BLX             free
291AF2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291AFA)
291AF6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291AF8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291AFA:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291AFC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291B04)
291B00:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291B02:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291B04:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291B06:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291B0A:  B               loc_291B16
291B0C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291B14)
291B10:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291B12:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291B14:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291B16:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291B2A)
291B1A:  ADD.W           R2, R4, R4,LSL#1
291B1E:  VLDR            D16, [SP,#0x38+var_30]
291B22:  MOVW            R3, #:lower16:(loc_303144+2)
291B26:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291B28:  ADD.W           R2, R5, R2,LSL#2
291B2C:  LDR             R1, [SP,#0x38+var_28]
291B2E:  MOVT            R3, #:upper16:(loc_303144+2)
291B32:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291B34:  STR             R1, [R2,#8]
291B36:  VSTR            D16, [R2]
291B3A:  MOV             R2, #0x12100E
291B42:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291B44:  ADD             R2, R3
291B46:  STR.W           R2, [R11,#4]
291B4A:  ADDS            R4, R1, #1
291B4C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291B4E:  MOVS            R2, #0x1B
291B50:  STR.W           R8, [SP,#0x38+var_30+4]
291B54:  STR             R2, [SP,#0x38+var_30]
291B56:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291B58:  ADDS            R0, R1, #2
291B5A:  CMP             R2, R0
291B5C:  BCS             loc_291BB8
291B5E:  MOVW            R1, #0xAAAB
291B62:  LSLS            R0, R0, #2
291B64:  MOVT            R1, #0xAAAA
291B68:  UMULL.W         R0, R1, R0, R1
291B6C:  MOVS            R0, #3
291B6E:  ADD.W           R9, R0, R1,LSR#1
291B72:  ADD.W           R0, R9, R9,LSL#1
291B76:  LSLS            R0, R0, #2; byte_count
291B78:  BLX             malloc
291B7C:  MOV             R5, R0
291B7E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291B86)
291B82:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291B84:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291B86:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291B88:  CBZ             R6, loc_291BA8
291B8A:  ADD.W           R0, R4, R4,LSL#1
291B8E:  MOV             R1, R6; void *
291B90:  LSLS            R2, R0, #2; size_t
291B92:  MOV             R0, R5; void *
291B94:  BLX             memcpy_0
291B98:  MOV             R0, R6; p
291B9A:  BLX             free
291B9E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291BA6)
291BA2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291BA4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291BA6:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291BA8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291BB0)
291BAC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291BAE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291BB0:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291BB2:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291BB6:  B               loc_291BC2
291BB8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291BC0)
291BBC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291BBE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291BC0:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291BC2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291BD2)
291BC6:  ADD.W           R2, R4, R4,LSL#1
291BCA:  VLDR            D16, [SP,#0x38+var_30]
291BCE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291BD0:  ADD.W           R2, R5, R2,LSL#2
291BD4:  LDR             R1, [SP,#0x38+var_28]
291BD6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291BD8:  STR             R1, [R2,#8]
291BDA:  VSTR            D16, [R2]
291BDE:  MOVS            R2, #0x51 ; 'Q'
291BE0:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291BE2:  STRH.W          R2, [SP,#0x38+var_28]
291BE6:  MOVS            R2, #0x1C
291BE8:  ADDS            R4, R1, #1
291BEA:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291BEC:  STR.W           R8, [SP,#0x38+var_30+4]
291BF0:  STR             R2, [SP,#0x38+var_30]
291BF2:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291BF4:  ADDS            R0, R1, #2
291BF6:  CMP             R2, R0
291BF8:  BCS             loc_291C54
291BFA:  MOVW            R1, #0xAAAB
291BFE:  LSLS            R0, R0, #2
291C00:  MOVT            R1, #0xAAAA
291C04:  UMULL.W         R0, R1, R0, R1
291C08:  MOVS            R0, #3
291C0A:  ADD.W           R9, R0, R1,LSR#1
291C0E:  ADD.W           R0, R9, R9,LSL#1
291C12:  LSLS            R0, R0, #2; byte_count
291C14:  BLX             malloc
291C18:  MOV             R5, R0
291C1A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C22)
291C1E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291C20:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291C22:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291C24:  CBZ             R6, loc_291C44
291C26:  ADD.W           R0, R4, R4,LSL#1
291C2A:  MOV             R1, R6; void *
291C2C:  LSLS            R2, R0, #2; size_t
291C2E:  MOV             R0, R5; void *
291C30:  BLX             memcpy_0
291C34:  MOV             R0, R6; p
291C36:  BLX             free
291C3A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C42)
291C3E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291C40:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291C42:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291C44:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C4C)
291C48:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291C4A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291C4C:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291C4E:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291C52:  B               loc_291C5E
291C54:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C5C)
291C58:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291C5A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291C5C:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291C5E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291C6E)
291C62:  ADD.W           R2, R4, R4,LSL#1
291C66:  VLDR            D16, [SP,#0x38+var_30]
291C6A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291C6C:  ADD.W           R2, R5, R2,LSL#2
291C70:  LDR             R1, [SP,#0x38+var_28]
291C72:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291C74:  STR             R1, [R2,#8]
291C76:  VSTR            D16, [R2]
291C7A:  MOVS            R2, #0x57 ; 'W'
291C7C:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291C7E:  STRH.W          R2, [SP,#0x38+var_28]
291C82:  MOVS            R2, #0x1D
291C84:  ADDS            R4, R1, #1
291C86:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291C88:  STR.W           R8, [SP,#0x38+var_30+4]
291C8C:  STR             R2, [SP,#0x38+var_30]
291C8E:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291C90:  ADDS            R0, R1, #2
291C92:  CMP             R2, R0
291C94:  BCS             loc_291CF0
291C96:  MOVW            R1, #0xAAAB
291C9A:  LSLS            R0, R0, #2
291C9C:  MOVT            R1, #0xAAAA
291CA0:  UMULL.W         R0, R1, R0, R1
291CA4:  MOVS            R0, #3
291CA6:  ADD.W           R9, R0, R1,LSR#1
291CAA:  ADD.W           R0, R9, R9,LSL#1
291CAE:  LSLS            R0, R0, #2; byte_count
291CB0:  BLX             malloc
291CB4:  MOV             R5, R0
291CB6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291CBE)
291CBA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291CBC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291CBE:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291CC0:  CBZ             R6, loc_291CE0
291CC2:  ADD.W           R0, R4, R4,LSL#1
291CC6:  MOV             R1, R6; void *
291CC8:  LSLS            R2, R0, #2; size_t
291CCA:  MOV             R0, R5; void *
291CCC:  BLX             memcpy_0
291CD0:  MOV             R0, R6; p
291CD2:  BLX             free
291CD6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291CDE)
291CDA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291CDC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291CDE:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291CE0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291CE8)
291CE4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291CE6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291CE8:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291CEA:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291CEE:  B               loc_291CFA
291CF0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291CF8)
291CF4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291CF6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291CF8:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291CFA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D0A)
291CFE:  ADD.W           R2, R4, R4,LSL#1
291D02:  VLDR            D16, [SP,#0x38+var_30]
291D06:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291D08:  ADD.W           R2, R5, R2,LSL#2
291D0C:  LDR             R1, [SP,#0x38+var_28]
291D0E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291D10:  STR             R1, [R2,#8]
291D12:  VSTR            D16, [R2]
291D16:  MOVS            R2, #0x45 ; 'E'
291D18:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291D1A:  STRH.W          R2, [SP,#0x38+var_28]
291D1E:  MOVS            R2, #0x1E
291D20:  ADDS            R4, R1, #1
291D22:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291D24:  STR.W           R8, [SP,#0x38+var_30+4]
291D28:  STR             R2, [SP,#0x38+var_30]
291D2A:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291D2C:  ADDS            R0, R1, #2
291D2E:  CMP             R2, R0
291D30:  BCS             loc_291D8C
291D32:  MOVW            R1, #0xAAAB
291D36:  LSLS            R0, R0, #2
291D38:  MOVT            R1, #0xAAAA
291D3C:  UMULL.W         R0, R1, R0, R1
291D40:  MOVS            R0, #3
291D42:  ADD.W           R9, R0, R1,LSR#1
291D46:  ADD.W           R0, R9, R9,LSL#1
291D4A:  LSLS            R0, R0, #2; byte_count
291D4C:  BLX             malloc
291D50:  MOV             R5, R0
291D52:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D5A)
291D56:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291D58:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291D5A:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291D5C:  CBZ             R6, loc_291D7C
291D5E:  ADD.W           R0, R4, R4,LSL#1
291D62:  MOV             R1, R6; void *
291D64:  LSLS            R2, R0, #2; size_t
291D66:  MOV             R0, R5; void *
291D68:  BLX             memcpy_0
291D6C:  MOV             R0, R6; p
291D6E:  BLX             free
291D72:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D7A)
291D76:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291D78:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291D7A:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291D7C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D84)
291D80:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291D82:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291D84:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291D86:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291D8A:  B               loc_291D96
291D8C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291D94)
291D90:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291D92:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291D94:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291D96:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291DA6)
291D9A:  ADD.W           R2, R4, R4,LSL#1
291D9E:  VLDR            D16, [SP,#0x38+var_30]
291DA2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291DA4:  ADD.W           R2, R5, R2,LSL#2
291DA8:  LDR             R1, [SP,#0x38+var_28]
291DAA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291DAC:  STR             R1, [R2,#8]
291DAE:  VSTR            D16, [R2]
291DB2:  MOVS            R2, #0x52 ; 'R'
291DB4:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291DB6:  STRH.W          R2, [SP,#0x38+var_28]
291DBA:  MOVS            R2, #0x1F
291DBC:  ADDS            R4, R1, #1
291DBE:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291DC0:  STR.W           R8, [SP,#0x38+var_30+4]
291DC4:  STR             R2, [SP,#0x38+var_30]
291DC6:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291DC8:  ADDS            R0, R1, #2
291DCA:  CMP             R2, R0
291DCC:  BCS             loc_291E28
291DCE:  MOVW            R1, #0xAAAB
291DD2:  LSLS            R0, R0, #2
291DD4:  MOVT            R1, #0xAAAA
291DD8:  UMULL.W         R0, R1, R0, R1
291DDC:  MOVS            R0, #3
291DDE:  ADD.W           R9, R0, R1,LSR#1
291DE2:  ADD.W           R0, R9, R9,LSL#1
291DE6:  LSLS            R0, R0, #2; byte_count
291DE8:  BLX             malloc
291DEC:  MOV             R5, R0
291DEE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291DF6)
291DF2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291DF4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291DF6:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291DF8:  CBZ             R6, loc_291E18
291DFA:  ADD.W           R0, R4, R4,LSL#1
291DFE:  MOV             R1, R6; void *
291E00:  LSLS            R2, R0, #2; size_t
291E02:  MOV             R0, R5; void *
291E04:  BLX             memcpy_0
291E08:  MOV             R0, R6; p
291E0A:  BLX             free
291E0E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E16)
291E12:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291E14:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291E16:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291E18:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E20)
291E1C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291E1E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291E20:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291E22:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291E26:  B               loc_291E32
291E28:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E30)
291E2C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291E2E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291E30:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291E32:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E42)
291E36:  ADD.W           R2, R4, R4,LSL#1
291E3A:  VLDR            D16, [SP,#0x38+var_30]
291E3E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291E40:  ADD.W           R2, R5, R2,LSL#2
291E44:  LDR             R1, [SP,#0x38+var_28]
291E46:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291E48:  STR             R1, [R2,#8]
291E4A:  VSTR            D16, [R2]
291E4E:  MOVS            R2, #0x54 ; 'T'
291E50:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291E52:  STRH.W          R2, [SP,#0x38+var_28]
291E56:  MOVS            R2, #0x20 ; ' '
291E58:  ADDS            R4, R1, #1
291E5A:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291E5C:  STR.W           R8, [SP,#0x38+var_30+4]
291E60:  STR             R2, [SP,#0x38+var_30]
291E62:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291E64:  ADDS            R0, R1, #2
291E66:  CMP             R2, R0
291E68:  BCS             loc_291EC4
291E6A:  MOVW            R1, #0xAAAB
291E6E:  LSLS            R0, R0, #2
291E70:  MOVT            R1, #0xAAAA
291E74:  UMULL.W         R0, R1, R0, R1
291E78:  MOVS            R0, #3
291E7A:  ADD.W           R9, R0, R1,LSR#1
291E7E:  ADD.W           R0, R9, R9,LSL#1
291E82:  LSLS            R0, R0, #2; byte_count
291E84:  BLX             malloc
291E88:  MOV             R5, R0
291E8A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291E92)
291E8E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291E90:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291E92:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291E94:  CBZ             R6, loc_291EB4
291E96:  ADD.W           R0, R4, R4,LSL#1
291E9A:  MOV             R1, R6; void *
291E9C:  LSLS            R2, R0, #2; size_t
291E9E:  MOV             R0, R5; void *
291EA0:  BLX             memcpy_0
291EA4:  MOV             R0, R6; p
291EA6:  BLX             free
291EAA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291EB2)
291EAE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291EB0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291EB2:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291EB4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291EBC)
291EB8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291EBA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291EBC:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291EBE:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291EC2:  B               loc_291ECE
291EC4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291ECC)
291EC8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291ECA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291ECC:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291ECE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291EDE)
291ED2:  ADD.W           R2, R4, R4,LSL#1
291ED6:  VLDR            D16, [SP,#0x38+var_30]
291EDA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291EDC:  ADD.W           R2, R5, R2,LSL#2
291EE0:  LDR             R1, [SP,#0x38+var_28]
291EE2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291EE4:  STR             R1, [R2,#8]
291EE6:  VSTR            D16, [R2]
291EEA:  MOVS            R2, #0x59 ; 'Y'
291EEC:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291EEE:  STRH.W          R2, [SP,#0x38+var_28]
291EF2:  MOVS            R2, #0x21 ; '!'
291EF4:  ADDS            R4, R1, #1
291EF6:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291EF8:  STR.W           R8, [SP,#0x38+var_30+4]
291EFC:  STR             R2, [SP,#0x38+var_30]
291EFE:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291F00:  ADDS            R0, R1, #2
291F02:  CMP             R2, R0
291F04:  BCS             loc_291F60
291F06:  MOVW            R1, #0xAAAB
291F0A:  LSLS            R0, R0, #2
291F0C:  MOVT            R1, #0xAAAA
291F10:  UMULL.W         R0, R1, R0, R1
291F14:  MOVS            R0, #3
291F16:  ADD.W           R9, R0, R1,LSR#1
291F1A:  ADD.W           R0, R9, R9,LSL#1
291F1E:  LSLS            R0, R0, #2; byte_count
291F20:  BLX             malloc
291F24:  MOV             R5, R0
291F26:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F2E)
291F2A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291F2C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291F2E:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291F30:  CBZ             R6, loc_291F50
291F32:  ADD.W           R0, R4, R4,LSL#1
291F36:  MOV             R1, R6; void *
291F38:  LSLS            R2, R0, #2; size_t
291F3A:  MOV             R0, R5; void *
291F3C:  BLX             memcpy_0
291F40:  MOV             R0, R6; p
291F42:  BLX             free
291F46:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F4E)
291F4A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291F4C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291F4E:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291F50:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F58)
291F54:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291F56:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291F58:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291F5A:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291F5E:  B               loc_291F6A
291F60:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F68)
291F64:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291F66:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291F68:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291F6A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291F7A)
291F6E:  ADD.W           R2, R4, R4,LSL#1
291F72:  VLDR            D16, [SP,#0x38+var_30]
291F76:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291F78:  ADD.W           R2, R5, R2,LSL#2
291F7C:  LDR             R1, [SP,#0x38+var_28]
291F7E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291F80:  STR             R1, [R2,#8]
291F82:  VSTR            D16, [R2]
291F86:  MOVS            R2, #0x55 ; 'U'
291F88:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
291F8A:  STRH.W          R2, [SP,#0x38+var_28]
291F8E:  MOVS            R2, #0x22 ; '"'
291F90:  ADDS            R4, R1, #1
291F92:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291F94:  STR.W           R8, [SP,#0x38+var_30+4]
291F98:  STR             R2, [SP,#0x38+var_30]
291F9A:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
291F9C:  ADDS            R0, R1, #2
291F9E:  CMP             R2, R0
291FA0:  BCS             loc_291FFC
291FA2:  MOVW            R1, #0xAAAB
291FA6:  LSLS            R0, R0, #2
291FA8:  MOVT            R1, #0xAAAA
291FAC:  UMULL.W         R0, R1, R0, R1
291FB0:  MOVS            R0, #3
291FB2:  ADD.W           R9, R0, R1,LSR#1
291FB6:  ADD.W           R0, R9, R9,LSL#1
291FBA:  LSLS            R0, R0, #2; byte_count
291FBC:  BLX             malloc
291FC0:  MOV             R5, R0
291FC2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291FCA)
291FC6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291FC8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291FCA:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
291FCC:  CBZ             R6, loc_291FEC
291FCE:  ADD.W           R0, R4, R4,LSL#1
291FD2:  MOV             R1, R6; void *
291FD4:  LSLS            R2, R0, #2; size_t
291FD6:  MOV             R0, R5; void *
291FD8:  BLX             memcpy_0
291FDC:  MOV             R0, R6; p
291FDE:  BLX             free
291FE2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291FEA)
291FE6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291FE8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291FEA:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
291FEC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x291FF4)
291FF0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
291FF2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
291FF4:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
291FF6:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
291FFA:  B               loc_292006
291FFC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292004)
292000:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292002:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292004:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292006:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292016)
29200A:  ADD.W           R2, R4, R4,LSL#1
29200E:  VLDR            D16, [SP,#0x38+var_30]
292012:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292014:  ADD.W           R2, R5, R2,LSL#2
292018:  LDR             R1, [SP,#0x38+var_28]
29201A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29201C:  STR             R1, [R2,#8]
29201E:  VSTR            D16, [R2]
292022:  MOVS            R2, #0x49 ; 'I'
292024:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292026:  STRH.W          R2, [SP,#0x38+var_28]
29202A:  MOVS            R2, #0x23 ; '#'
29202C:  ADDS            R4, R1, #1
29202E:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292030:  STR.W           R8, [SP,#0x38+var_30+4]
292034:  STR             R2, [SP,#0x38+var_30]
292036:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292038:  ADDS            R0, R1, #2
29203A:  CMP             R2, R0
29203C:  BCS             loc_292098
29203E:  MOVW            R1, #0xAAAB
292042:  LSLS            R0, R0, #2
292044:  MOVT            R1, #0xAAAA
292048:  UMULL.W         R0, R1, R0, R1
29204C:  MOVS            R0, #3
29204E:  ADD.W           R9, R0, R1,LSR#1
292052:  ADD.W           R0, R9, R9,LSL#1
292056:  LSLS            R0, R0, #2; byte_count
292058:  BLX             malloc
29205C:  MOV             R5, R0
29205E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292066)
292062:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292064:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292066:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292068:  CBZ             R6, loc_292088
29206A:  ADD.W           R0, R4, R4,LSL#1
29206E:  MOV             R1, R6; void *
292070:  LSLS            R2, R0, #2; size_t
292072:  MOV             R0, R5; void *
292074:  BLX             memcpy_0
292078:  MOV             R0, R6; p
29207A:  BLX             free
29207E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292086)
292082:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292084:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292086:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292088:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292090)
29208C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29208E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292090:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292092:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292096:  B               loc_2920A2
292098:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2920A0)
29209C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29209E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2920A0:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2920A2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2920B2)
2920A6:  ADD.W           R2, R4, R4,LSL#1
2920AA:  VLDR            D16, [SP,#0x38+var_30]
2920AE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2920B0:  ADD.W           R2, R5, R2,LSL#2
2920B4:  LDR             R1, [SP,#0x38+var_28]
2920B6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2920B8:  STR             R1, [R2,#8]
2920BA:  VSTR            D16, [R2]
2920BE:  MOVS            R2, #0x4F ; 'O'
2920C0:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2920C2:  STRH.W          R2, [SP,#0x38+var_28]
2920C6:  MOVS            R2, #0x24 ; '$'
2920C8:  ADDS            R4, R1, #1
2920CA:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2920CC:  STR.W           R8, [SP,#0x38+var_30+4]
2920D0:  STR             R2, [SP,#0x38+var_30]
2920D2:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2920D4:  ADDS            R0, R1, #2
2920D6:  CMP             R2, R0
2920D8:  BCS             loc_292134
2920DA:  MOVW            R1, #0xAAAB
2920DE:  LSLS            R0, R0, #2
2920E0:  MOVT            R1, #0xAAAA
2920E4:  UMULL.W         R0, R1, R0, R1
2920E8:  MOVS            R0, #3
2920EA:  ADD.W           R9, R0, R1,LSR#1
2920EE:  ADD.W           R0, R9, R9,LSL#1
2920F2:  LSLS            R0, R0, #2; byte_count
2920F4:  BLX             malloc
2920F8:  MOV             R5, R0
2920FA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292102)
2920FE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292100:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292102:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292104:  CBZ             R6, loc_292124
292106:  ADD.W           R0, R4, R4,LSL#1
29210A:  MOV             R1, R6; void *
29210C:  LSLS            R2, R0, #2; size_t
29210E:  MOV             R0, R5; void *
292110:  BLX             memcpy_0
292114:  MOV             R0, R6; p
292116:  BLX             free
29211A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292122)
29211E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292120:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292122:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292124:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29212C)
292128:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29212A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29212C:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29212E:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292132:  B               loc_29213E
292134:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29213C)
292138:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29213A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29213C:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29213E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29214E)
292142:  ADD.W           R2, R4, R4,LSL#1
292146:  VLDR            D16, [SP,#0x38+var_30]
29214A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29214C:  ADD.W           R2, R5, R2,LSL#2
292150:  LDR             R1, [SP,#0x38+var_28]
292152:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292154:  STR             R1, [R2,#8]
292156:  VSTR            D16, [R2]
29215A:  MOVS            R2, #0x50 ; 'P'
29215C:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29215E:  STRH.W          R2, [SP,#0x38+var_28]
292162:  MOVS            R2, #0x25 ; '%'
292164:  ADDS            R4, R1, #1
292166:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292168:  STR.W           R8, [SP,#0x38+var_30+4]
29216C:  STR             R2, [SP,#0x38+var_30]
29216E:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292170:  ADDS            R0, R1, #2
292172:  CMP             R2, R0
292174:  BCS             loc_2921D0
292176:  MOVW            R1, #0xAAAB
29217A:  LSLS            R0, R0, #2
29217C:  MOVT            R1, #0xAAAA
292180:  UMULL.W         R0, R1, R0, R1
292184:  MOVS            R0, #3
292186:  ADD.W           R9, R0, R1,LSR#1
29218A:  ADD.W           R0, R9, R9,LSL#1
29218E:  LSLS            R0, R0, #2; byte_count
292190:  BLX             malloc
292194:  MOV             R5, R0
292196:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29219E)
29219A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29219C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29219E:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2921A0:  CBZ             R6, loc_2921C0
2921A2:  ADD.W           R0, R4, R4,LSL#1
2921A6:  MOV             R1, R6; void *
2921A8:  LSLS            R2, R0, #2; size_t
2921AA:  MOV             R0, R5; void *
2921AC:  BLX             memcpy_0
2921B0:  MOV             R0, R6; p
2921B2:  BLX             free
2921B6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2921BE)
2921BA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2921BC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2921BE:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2921C0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2921C8)
2921C4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2921C6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2921C8:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2921CA:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2921CE:  B               loc_2921DA
2921D0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2921D8)
2921D4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2921D6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2921D8:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2921DA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2921EE)
2921DE:  ADD.W           R2, R4, R4,LSL#1
2921E2:  VLDR            D16, [SP,#0x38+var_30]
2921E6:  MOVW            R3, #:lower16:(loc_303144+2)
2921EA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2921EC:  ADD.W           R2, R5, R2,LSL#2
2921F0:  LDR             R1, [SP,#0x38+var_28]
2921F2:  MOVT            R3, #:upper16:(loc_303144+2)
2921F6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2921F8:  STR             R1, [R2,#8]
2921FA:  VSTR            D16, [R2]
2921FE:  MOV             R2, #0x1B1106
292206:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292208:  ADD             R2, R3
29220A:  STR.W           R2, [R11,#4]
29220E:  ADDS            R4, R1, #1
292210:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292212:  MOVS            R2, #0x26 ; '&'
292214:  STR.W           R8, [SP,#0x38+var_30+4]
292218:  STR             R2, [SP,#0x38+var_30]
29221A:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29221C:  ADDS            R0, R1, #2
29221E:  CMP             R2, R0
292220:  BCS             loc_29227C
292222:  MOVW            R1, #0xAAAB
292226:  LSLS            R0, R0, #2
292228:  MOVT            R1, #0xAAAA
29222C:  UMULL.W         R0, R1, R0, R1
292230:  MOVS            R0, #3
292232:  ADD.W           R9, R0, R1,LSR#1
292236:  ADD.W           R0, R9, R9,LSL#1
29223A:  LSLS            R0, R0, #2; byte_count
29223C:  BLX             malloc
292240:  MOV             R5, R0
292242:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29224A)
292246:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292248:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29224A:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29224C:  CBZ             R6, loc_29226C
29224E:  ADD.W           R0, R4, R4,LSL#1
292252:  MOV             R1, R6; void *
292254:  LSLS            R2, R0, #2; size_t
292256:  MOV             R0, R5; void *
292258:  BLX             memcpy_0
29225C:  MOV             R0, R6; p
29225E:  BLX             free
292262:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29226A)
292266:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292268:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29226A:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29226C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292274)
292270:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292272:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292274:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292276:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29227A:  B               loc_292286
29227C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292284)
292280:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292282:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292284:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292286:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29229A)
29228A:  ADD.W           R2, R4, R4,LSL#1
29228E:  VLDR            D16, [SP,#0x38+var_30]
292292:  MOVW            R3, #:lower16:(loc_303144+2)
292296:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292298:  ADD.W           R2, R5, R2,LSL#2
29229C:  LDR             R1, [SP,#0x38+var_28]
29229E:  MOVT            R3, #:upper16:(loc_303144+2)
2922A2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2922A4:  STR             R1, [R2,#8]
2922A6:  VSTR            D16, [R2]
2922AA:  MOV             R2, #0x1B110C
2922B2:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2922B4:  ADD             R2, R3
2922B6:  STR.W           R2, [R11,#4]
2922BA:  ADDS            R4, R1, #1
2922BC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2922BE:  MOVS            R2, #0x27 ; '''
2922C0:  STR.W           R8, [SP,#0x38+var_30+4]
2922C4:  STR             R2, [SP,#0x38+var_30]
2922C6:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2922C8:  ADDS            R0, R1, #2
2922CA:  CMP             R2, R0
2922CC:  BCS             loc_292328
2922CE:  MOVW            R1, #0xAAAB
2922D2:  LSLS            R0, R0, #2
2922D4:  MOVT            R1, #0xAAAA
2922D8:  UMULL.W         R0, R1, R0, R1
2922DC:  MOVS            R0, #3
2922DE:  ADD.W           R9, R0, R1,LSR#1
2922E2:  ADD.W           R0, R9, R9,LSL#1
2922E6:  LSLS            R0, R0, #2; byte_count
2922E8:  BLX             malloc
2922EC:  MOV             R5, R0
2922EE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2922F6)
2922F2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2922F4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2922F6:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2922F8:  CBZ             R6, loc_292318
2922FA:  ADD.W           R0, R4, R4,LSL#1
2922FE:  MOV             R1, R6; void *
292300:  LSLS            R2, R0, #2; size_t
292302:  MOV             R0, R5; void *
292304:  BLX             memcpy_0
292308:  MOV             R0, R6; p
29230A:  BLX             free
29230E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292316)
292312:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292314:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292316:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292318:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292320)
29231C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29231E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292320:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292322:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292326:  B               loc_292332
292328:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292330)
29232C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29232E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292330:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292332:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292342)
292336:  ADD.W           R2, R4, R4,LSL#1
29233A:  VLDR            D16, [SP,#0x38+var_30]
29233E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292340:  ADD.W           R2, R5, R2,LSL#2
292344:  LDR             R1, [SP,#0x38+var_28]
292346:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292348:  STR             R1, [R2,#8]
29234A:  VSTR            D16, [R2]
29234E:  MOV             R2, #0x303146
292356:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292358:  ADD.W           R2, R2, #0x182000
29235C:  ADD.W           R2, R2, #0x1FC
292360:  STR.W           R2, [R11,#4]
292364:  ADDS            R4, R1, #1
292366:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292368:  MOVS            R2, #0x28 ; '('
29236A:  STR.W           R8, [SP,#0x38+var_30+4]
29236E:  STR             R2, [SP,#0x38+var_30]
292370:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292372:  ADDS            R0, R1, #2
292374:  CMP             R2, R0
292376:  BCS             loc_2923D2
292378:  MOVW            R1, #0xAAAB
29237C:  LSLS            R0, R0, #2
29237E:  MOVT            R1, #0xAAAA
292382:  UMULL.W         R0, R1, R0, R1
292386:  MOVS            R0, #3
292388:  ADD.W           R9, R0, R1,LSR#1
29238C:  ADD.W           R0, R9, R9,LSL#1
292390:  LSLS            R0, R0, #2; byte_count
292392:  BLX             malloc
292396:  MOV             R5, R0
292398:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923A0)
29239C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29239E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2923A0:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2923A2:  CBZ             R6, loc_2923C2
2923A4:  ADD.W           R0, R4, R4,LSL#1
2923A8:  MOV             R1, R6; void *
2923AA:  LSLS            R2, R0, #2; size_t
2923AC:  MOV             R0, R5; void *
2923AE:  BLX             memcpy_0
2923B2:  MOV             R0, R6; p
2923B4:  BLX             free
2923B8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923C0)
2923BC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2923BE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2923C0:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2923C2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923CA)
2923C6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2923C8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2923CA:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2923CC:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2923D0:  B               loc_2923DC
2923D2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923DA)
2923D6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2923D8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2923DA:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2923DC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2923F0)
2923E0:  ADD.W           R2, R4, R4,LSL#1
2923E4:  VLDR            D16, [SP,#0x38+var_30]
2923E8:  MOVW            R3, #:lower16:(loc_303144+2)
2923EC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2923EE:  ADD.W           R2, R5, R2,LSL#2
2923F2:  LDR             R1, [SP,#0x38+var_28]
2923F4:  MOVT            R3, #:upper16:(loc_303144+2)
2923F8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2923FA:  STR             R1, [R2,#8]
2923FC:  VSTR            D16, [R2]
292400:  MOV             R2, #(off_1C1EFC+1)
292408:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29240A:  ADD             R2, R3
29240C:  STR.W           R2, [R11,#4]
292410:  ADDS            R4, R1, #1
292412:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292414:  MOVS            R2, #0x29 ; ')'
292416:  STR.W           R8, [SP,#0x38+var_30+4]
29241A:  STR             R2, [SP,#0x38+var_30]
29241C:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29241E:  ADDS            R0, R1, #2
292420:  CMP             R2, R0
292422:  BCS             loc_29247E
292424:  MOVW            R1, #0xAAAB
292428:  LSLS            R0, R0, #2
29242A:  MOVT            R1, #0xAAAA
29242E:  UMULL.W         R0, R1, R0, R1
292432:  MOVS            R0, #3
292434:  ADD.W           R9, R0, R1,LSR#1
292438:  ADD.W           R0, R9, R9,LSL#1
29243C:  LSLS            R0, R0, #2; byte_count
29243E:  BLX             malloc
292442:  MOV             R5, R0
292444:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29244C)
292448:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29244A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29244C:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29244E:  CBZ             R6, loc_29246E
292450:  ADD.W           R0, R4, R4,LSL#1
292454:  MOV             R1, R6; void *
292456:  LSLS            R2, R0, #2; size_t
292458:  MOV             R0, R5; void *
29245A:  BLX             memcpy_0
29245E:  MOV             R0, R6; p
292460:  BLX             free
292464:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29246C)
292468:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29246A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29246C:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29246E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292476)
292472:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292474:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292476:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292478:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29247C:  B               loc_292488
29247E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292486)
292482:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292484:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292486:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292488:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292498)
29248C:  ADD.W           R2, R4, R4,LSL#1
292490:  VLDR            D16, [SP,#0x38+var_30]
292494:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292496:  ADD.W           R2, R5, R2,LSL#2
29249A:  LDR             R1, [SP,#0x38+var_28]
29249C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29249E:  STR             R1, [R2,#8]
2924A0:  VSTR            D16, [R2]
2924A4:  MOVS            R2, #0x41 ; 'A'
2924A6:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2924A8:  STRH.W          R2, [SP,#0x38+var_28]
2924AC:  MOVS            R2, #0x2A ; '*'
2924AE:  ADDS            R4, R1, #1
2924B0:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2924B2:  STR.W           R8, [SP,#0x38+var_30+4]
2924B6:  STR             R2, [SP,#0x38+var_30]
2924B8:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2924BA:  ADDS            R0, R1, #2
2924BC:  CMP             R2, R0
2924BE:  BCS             loc_29251A
2924C0:  MOVW            R1, #0xAAAB
2924C4:  LSLS            R0, R0, #2
2924C6:  MOVT            R1, #0xAAAA
2924CA:  UMULL.W         R0, R1, R0, R1
2924CE:  MOVS            R0, #3
2924D0:  ADD.W           R9, R0, R1,LSR#1
2924D4:  ADD.W           R0, R9, R9,LSL#1
2924D8:  LSLS            R0, R0, #2; byte_count
2924DA:  BLX             malloc
2924DE:  MOV             R5, R0
2924E0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2924E8)
2924E4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2924E6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2924E8:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2924EA:  CBZ             R6, loc_29250A
2924EC:  ADD.W           R0, R4, R4,LSL#1
2924F0:  MOV             R1, R6; void *
2924F2:  LSLS            R2, R0, #2; size_t
2924F4:  MOV             R0, R5; void *
2924F6:  BLX             memcpy_0
2924FA:  MOV             R0, R6; p
2924FC:  BLX             free
292500:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292508)
292504:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292506:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292508:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29250A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292512)
29250E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292510:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292512:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292514:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292518:  B               loc_292524
29251A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292522)
29251E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292520:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292522:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292524:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292534)
292528:  ADD.W           R2, R4, R4,LSL#1
29252C:  VLDR            D16, [SP,#0x38+var_30]
292530:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292532:  ADD.W           R2, R5, R2,LSL#2
292536:  LDR             R1, [SP,#0x38+var_28]
292538:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29253A:  STR             R1, [R2,#8]
29253C:  VSTR            D16, [R2]
292540:  MOVS            R2, #0x53 ; 'S'
292542:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292544:  STRH.W          R2, [SP,#0x38+var_28]
292548:  MOVS            R2, #0x2B ; '+'
29254A:  ADDS            R4, R1, #1
29254C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29254E:  STR.W           R8, [SP,#0x38+var_30+4]
292552:  STR             R2, [SP,#0x38+var_30]
292554:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292556:  ADDS            R0, R1, #2
292558:  CMP             R2, R0
29255A:  BCS             loc_2925B6
29255C:  MOVW            R1, #0xAAAB
292560:  LSLS            R0, R0, #2
292562:  MOVT            R1, #0xAAAA
292566:  UMULL.W         R0, R1, R0, R1
29256A:  MOVS            R0, #3
29256C:  ADD.W           R9, R0, R1,LSR#1
292570:  ADD.W           R0, R9, R9,LSL#1
292574:  LSLS            R0, R0, #2; byte_count
292576:  BLX             malloc
29257A:  MOV             R5, R0
29257C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292584)
292580:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292582:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292584:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292586:  CBZ             R6, loc_2925A6
292588:  ADD.W           R0, R4, R4,LSL#1
29258C:  MOV             R1, R6; void *
29258E:  LSLS            R2, R0, #2; size_t
292590:  MOV             R0, R5; void *
292592:  BLX             memcpy_0
292596:  MOV             R0, R6; p
292598:  BLX             free
29259C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2925A4)
2925A0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2925A2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2925A4:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2925A6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2925AE)
2925AA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2925AC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2925AE:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2925B0:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2925B4:  B               loc_2925C0
2925B6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2925BE)
2925BA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2925BC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2925BE:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2925C0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2925D0)
2925C4:  ADD.W           R2, R4, R4,LSL#1
2925C8:  VLDR            D16, [SP,#0x38+var_30]
2925CC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2925CE:  ADD.W           R2, R5, R2,LSL#2
2925D2:  LDR             R1, [SP,#0x38+var_28]
2925D4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2925D6:  STR             R1, [R2,#8]
2925D8:  VSTR            D16, [R2]
2925DC:  MOVS            R2, #0x44 ; 'D'
2925DE:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2925E0:  STRH.W          R2, [SP,#0x38+var_28]
2925E4:  MOVS            R2, #0x2C ; ','
2925E6:  ADDS            R4, R1, #1
2925E8:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2925EA:  STR.W           R8, [SP,#0x38+var_30+4]
2925EE:  STR             R2, [SP,#0x38+var_30]
2925F0:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2925F2:  ADDS            R0, R1, #2
2925F4:  CMP             R2, R0
2925F6:  BCS             loc_292652
2925F8:  MOVW            R1, #0xAAAB
2925FC:  LSLS            R0, R0, #2
2925FE:  MOVT            R1, #0xAAAA
292602:  UMULL.W         R0, R1, R0, R1
292606:  MOVS            R0, #3
292608:  ADD.W           R9, R0, R1,LSR#1
29260C:  ADD.W           R0, R9, R9,LSL#1
292610:  LSLS            R0, R0, #2; byte_count
292612:  BLX             malloc
292616:  MOV             R5, R0
292618:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292620)
29261C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29261E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292620:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292622:  CBZ             R6, loc_292642
292624:  ADD.W           R0, R4, R4,LSL#1
292628:  MOV             R1, R6; void *
29262A:  LSLS            R2, R0, #2; size_t
29262C:  MOV             R0, R5; void *
29262E:  BLX             memcpy_0
292632:  MOV             R0, R6; p
292634:  BLX             free
292638:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292640)
29263C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29263E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292640:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292642:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29264A)
292646:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292648:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29264A:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29264C:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292650:  B               loc_29265C
292652:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29265A)
292656:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292658:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29265A:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29265C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29266C)
292660:  ADD.W           R2, R4, R4,LSL#1
292664:  VLDR            D16, [SP,#0x38+var_30]
292668:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29266A:  ADD.W           R2, R5, R2,LSL#2
29266E:  LDR             R1, [SP,#0x38+var_28]
292670:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292672:  STR             R1, [R2,#8]
292674:  VSTR            D16, [R2]
292678:  MOVS            R2, #0x46 ; 'F'
29267A:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29267C:  STRH.W          R2, [SP,#0x38+var_28]
292680:  MOVS            R2, #0x2D ; '-'
292682:  ADDS            R4, R1, #1
292684:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292686:  STR.W           R8, [SP,#0x38+var_30+4]
29268A:  STR             R2, [SP,#0x38+var_30]
29268C:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29268E:  ADDS            R0, R1, #2
292690:  CMP             R2, R0
292692:  BCS             loc_2926EE
292694:  MOVW            R1, #0xAAAB
292698:  LSLS            R0, R0, #2
29269A:  MOVT            R1, #0xAAAA
29269E:  UMULL.W         R0, R1, R0, R1
2926A2:  MOVS            R0, #3
2926A4:  ADD.W           R9, R0, R1,LSR#1
2926A8:  ADD.W           R0, R9, R9,LSL#1
2926AC:  LSLS            R0, R0, #2; byte_count
2926AE:  BLX             malloc
2926B2:  MOV             R5, R0
2926B4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2926BC)
2926B8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2926BA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2926BC:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2926BE:  CBZ             R6, loc_2926DE
2926C0:  ADD.W           R0, R4, R4,LSL#1
2926C4:  MOV             R1, R6; void *
2926C6:  LSLS            R2, R0, #2; size_t
2926C8:  MOV             R0, R5; void *
2926CA:  BLX             memcpy_0
2926CE:  MOV             R0, R6; p
2926D0:  BLX             free
2926D4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2926DC)
2926D8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2926DA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2926DC:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2926DE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2926E6)
2926E2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2926E4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2926E6:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2926E8:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2926EC:  B               loc_2926F8
2926EE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2926F6)
2926F2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2926F4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2926F6:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2926F8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292708)
2926FC:  ADD.W           R2, R4, R4,LSL#1
292700:  VLDR            D16, [SP,#0x38+var_30]
292704:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292706:  ADD.W           R2, R5, R2,LSL#2
29270A:  LDR             R1, [SP,#0x38+var_28]
29270C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29270E:  STR             R1, [R2,#8]
292710:  VSTR            D16, [R2]
292714:  MOVS            R2, #0x47 ; 'G'
292716:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292718:  STRH.W          R2, [SP,#0x38+var_28]
29271C:  MOVS            R2, #0x2E ; '.'
29271E:  ADDS            R4, R1, #1
292720:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292722:  STR.W           R8, [SP,#0x38+var_30+4]
292726:  STR             R2, [SP,#0x38+var_30]
292728:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29272A:  ADDS            R0, R1, #2
29272C:  CMP             R2, R0
29272E:  BCS             loc_29278A
292730:  MOVW            R1, #0xAAAB
292734:  LSLS            R0, R0, #2
292736:  MOVT            R1, #0xAAAA
29273A:  UMULL.W         R0, R1, R0, R1
29273E:  MOVS            R0, #3
292740:  ADD.W           R9, R0, R1,LSR#1
292744:  ADD.W           R0, R9, R9,LSL#1
292748:  LSLS            R0, R0, #2; byte_count
29274A:  BLX             malloc
29274E:  MOV             R5, R0
292750:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292758)
292754:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292756:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292758:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29275A:  CBZ             R6, loc_29277A
29275C:  ADD.W           R0, R4, R4,LSL#1
292760:  MOV             R1, R6; void *
292762:  LSLS            R2, R0, #2; size_t
292764:  MOV             R0, R5; void *
292766:  BLX             memcpy_0
29276A:  MOV             R0, R6; p
29276C:  BLX             free
292770:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292778)
292774:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292776:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292778:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29277A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292782)
29277E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292780:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292782:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292784:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292788:  B               loc_292794
29278A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292792)
29278E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292790:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292792:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292794:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2927A4)
292798:  ADD.W           R2, R4, R4,LSL#1
29279C:  VLDR            D16, [SP,#0x38+var_30]
2927A0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2927A2:  ADD.W           R2, R5, R2,LSL#2
2927A6:  LDR             R1, [SP,#0x38+var_28]
2927A8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2927AA:  STR             R1, [R2,#8]
2927AC:  VSTR            D16, [R2]
2927B0:  MOVS            R2, #0x48 ; 'H'
2927B2:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2927B4:  STRH.W          R2, [SP,#0x38+var_28]
2927B8:  MOVS            R2, #0x2F ; '/'
2927BA:  ADDS            R4, R1, #1
2927BC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2927BE:  STR.W           R8, [SP,#0x38+var_30+4]
2927C2:  STR             R2, [SP,#0x38+var_30]
2927C4:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2927C6:  ADDS            R0, R1, #2
2927C8:  CMP             R2, R0
2927CA:  BCS             loc_292826
2927CC:  MOVW            R1, #0xAAAB
2927D0:  LSLS            R0, R0, #2
2927D2:  MOVT            R1, #0xAAAA
2927D6:  UMULL.W         R0, R1, R0, R1
2927DA:  MOVS            R0, #3
2927DC:  ADD.W           R9, R0, R1,LSR#1
2927E0:  ADD.W           R0, R9, R9,LSL#1
2927E4:  LSLS            R0, R0, #2; byte_count
2927E6:  BLX             malloc
2927EA:  MOV             R5, R0
2927EC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2927F4)
2927F0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2927F2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2927F4:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2927F6:  CBZ             R6, loc_292816
2927F8:  ADD.W           R0, R4, R4,LSL#1
2927FC:  MOV             R1, R6; void *
2927FE:  LSLS            R2, R0, #2; size_t
292800:  MOV             R0, R5; void *
292802:  BLX             memcpy_0
292806:  MOV             R0, R6; p
292808:  BLX             free
29280C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292814)
292810:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292812:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292814:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292816:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29281E)
29281A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29281C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29281E:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292820:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292824:  B               loc_292830
292826:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29282E)
29282A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29282C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29282E:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292830:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292840)
292834:  ADD.W           R2, R4, R4,LSL#1
292838:  VLDR            D16, [SP,#0x38+var_30]
29283C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29283E:  ADD.W           R2, R5, R2,LSL#2
292842:  LDR             R1, [SP,#0x38+var_28]
292844:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292846:  STR             R1, [R2,#8]
292848:  VSTR            D16, [R2]
29284C:  MOVS            R2, #0x4A ; 'J'
29284E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292850:  STRH.W          R2, [SP,#0x38+var_28]
292854:  MOVS            R2, #0x30 ; '0'
292856:  ADDS            R4, R1, #1
292858:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29285A:  STR.W           R8, [SP,#0x38+var_30+4]
29285E:  STR             R2, [SP,#0x38+var_30]
292860:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292862:  ADDS            R0, R1, #2
292864:  CMP             R2, R0
292866:  BCS             loc_2928C2
292868:  MOVW            R1, #0xAAAB
29286C:  LSLS            R0, R0, #2
29286E:  MOVT            R1, #0xAAAA
292872:  UMULL.W         R0, R1, R0, R1
292876:  MOVS            R0, #3
292878:  ADD.W           R9, R0, R1,LSR#1
29287C:  ADD.W           R0, R9, R9,LSL#1
292880:  LSLS            R0, R0, #2; byte_count
292882:  BLX             malloc
292886:  MOV             R5, R0
292888:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292890)
29288C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29288E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292890:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292892:  CBZ             R6, loc_2928B2
292894:  ADD.W           R0, R4, R4,LSL#1
292898:  MOV             R1, R6; void *
29289A:  LSLS            R2, R0, #2; size_t
29289C:  MOV             R0, R5; void *
29289E:  BLX             memcpy_0
2928A2:  MOV             R0, R6; p
2928A4:  BLX             free
2928A8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2928B0)
2928AC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2928AE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2928B0:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2928B2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2928BA)
2928B6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2928B8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2928BA:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2928BC:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2928C0:  B               loc_2928CC
2928C2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2928CA)
2928C6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2928C8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2928CA:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2928CC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2928DC)
2928D0:  ADD.W           R2, R4, R4,LSL#1
2928D4:  VLDR            D16, [SP,#0x38+var_30]
2928D8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2928DA:  ADD.W           R2, R5, R2,LSL#2
2928DE:  LDR             R1, [SP,#0x38+var_28]
2928E0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2928E2:  STR             R1, [R2,#8]
2928E4:  VSTR            D16, [R2]
2928E8:  MOVS            R2, #0x4B ; 'K'
2928EA:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2928EC:  STRH.W          R2, [SP,#0x38+var_28]
2928F0:  MOVS            R2, #0x31 ; '1'
2928F2:  ADDS            R4, R1, #1
2928F4:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2928F6:  STR.W           R8, [SP,#0x38+var_30+4]
2928FA:  STR             R2, [SP,#0x38+var_30]
2928FC:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2928FE:  ADDS            R0, R1, #2
292900:  CMP             R2, R0
292902:  BCS             loc_29295E
292904:  MOVW            R1, #0xAAAB
292908:  LSLS            R0, R0, #2
29290A:  MOVT            R1, #0xAAAA
29290E:  UMULL.W         R0, R1, R0, R1
292912:  MOVS            R0, #3
292914:  ADD.W           R9, R0, R1,LSR#1
292918:  ADD.W           R0, R9, R9,LSL#1
29291C:  LSLS            R0, R0, #2; byte_count
29291E:  BLX             malloc
292922:  MOV             R5, R0
292924:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29292C)
292928:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29292A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29292C:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29292E:  CBZ             R6, loc_29294E
292930:  ADD.W           R0, R4, R4,LSL#1
292934:  MOV             R1, R6; void *
292936:  LSLS            R2, R0, #2; size_t
292938:  MOV             R0, R5; void *
29293A:  BLX             memcpy_0
29293E:  MOV             R0, R6; p
292940:  BLX             free
292944:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29294C)
292948:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29294A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29294C:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29294E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292956)
292952:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292954:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292956:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292958:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29295C:  B               loc_292968
29295E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292966)
292962:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292964:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292966:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292968:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292978)
29296C:  ADD.W           R2, R4, R4,LSL#1
292970:  VLDR            D16, [SP,#0x38+var_30]
292974:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292976:  ADD.W           R2, R5, R2,LSL#2
29297A:  LDR             R1, [SP,#0x38+var_28]
29297C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29297E:  STR             R1, [R2,#8]
292980:  VSTR            D16, [R2]
292984:  MOVS            R2, #0x4C ; 'L'
292986:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292988:  STRH.W          R2, [SP,#0x38+var_28]
29298C:  MOVS            R2, #0x32 ; '2'
29298E:  ADDS            R4, R1, #1
292990:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292992:  STR.W           R8, [SP,#0x38+var_30+4]
292996:  STR             R2, [SP,#0x38+var_30]
292998:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29299A:  ADDS            R0, R1, #2
29299C:  CMP             R2, R0
29299E:  BCS             loc_2929FA
2929A0:  MOVW            R1, #0xAAAB
2929A4:  LSLS            R0, R0, #2
2929A6:  MOVT            R1, #0xAAAA
2929AA:  UMULL.W         R0, R1, R0, R1
2929AE:  MOVS            R0, #3
2929B0:  ADD.W           R9, R0, R1,LSR#1
2929B4:  ADD.W           R0, R9, R9,LSL#1
2929B8:  LSLS            R0, R0, #2; byte_count
2929BA:  BLX             malloc
2929BE:  MOV             R5, R0
2929C0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2929C8)
2929C4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2929C6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2929C8:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2929CA:  CBZ             R6, loc_2929EA
2929CC:  ADD.W           R0, R4, R4,LSL#1
2929D0:  MOV             R1, R6; void *
2929D2:  LSLS            R2, R0, #2; size_t
2929D4:  MOV             R0, R5; void *
2929D6:  BLX             memcpy_0
2929DA:  MOV             R0, R6; p
2929DC:  BLX             free
2929E0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2929E8)
2929E4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2929E6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2929E8:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2929EA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2929F2)
2929EE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2929F0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2929F2:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2929F4:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2929F8:  B               loc_292A04
2929FA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A02)
2929FE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292A00:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292A02:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292A04:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A18)
292A08:  ADD.W           R2, R4, R4,LSL#1
292A0C:  VLDR            D16, [SP,#0x38+var_30]
292A10:  MOVW            R3, #:lower16:(loc_303144+2)
292A14:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292A16:  ADD.W           R2, R5, R2,LSL#2
292A1A:  LDR             R1, [SP,#0x38+var_28]
292A1C:  MOVT            R3, #:upper16:(loc_303144+2)
292A20:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292A22:  STR             R1, [R2,#8]
292A24:  VSTR            D16, [R2]
292A28:  MOV             R2, #0x1D140D
292A30:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292A32:  ADD             R2, R3
292A34:  STR.W           R2, [R11,#4]
292A38:  ADDS            R4, R1, #1
292A3A:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292A3C:  MOVS            R2, #0x33 ; '3'
292A3E:  STR.W           R8, [SP,#0x38+var_30+4]
292A42:  STR             R2, [SP,#0x38+var_30]
292A44:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292A46:  ADDS            R0, R1, #2
292A48:  CMP             R2, R0
292A4A:  BCS             loc_292AA6
292A4C:  MOVW            R1, #0xAAAB
292A50:  LSLS            R0, R0, #2
292A52:  MOVT            R1, #0xAAAA
292A56:  UMULL.W         R0, R1, R0, R1
292A5A:  MOVS            R0, #3
292A5C:  ADD.W           R9, R0, R1,LSR#1
292A60:  ADD.W           R0, R9, R9,LSL#1
292A64:  LSLS            R0, R0, #2; byte_count
292A66:  BLX             malloc
292A6A:  MOV             R5, R0
292A6C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A74)
292A70:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292A72:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292A74:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292A76:  CBZ             R6, loc_292A96
292A78:  ADD.W           R0, R4, R4,LSL#1
292A7C:  MOV             R1, R6; void *
292A7E:  LSLS            R2, R0, #2; size_t
292A80:  MOV             R0, R5; void *
292A82:  BLX             memcpy_0
292A86:  MOV             R0, R6; p
292A88:  BLX             free
292A8C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A94)
292A90:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292A92:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292A94:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292A96:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A9E)
292A9A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292A9C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292A9E:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292AA0:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292AA4:  B               loc_292AB0
292AA6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292AAE)
292AAA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292AAC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292AAE:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292AB0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292AC4)
292AB4:  ADD.W           R2, R4, R4,LSL#1
292AB8:  VLDR            D16, [SP,#0x38+var_30]
292ABC:  MOVW            R3, #:lower16:(loc_303144+2)
292AC0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292AC2:  ADD.W           R2, R5, R2,LSL#2
292AC6:  LDR             R1, [SP,#0x38+var_28]
292AC8:  MOVT            R3, #:upper16:(loc_303144+2)
292ACC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292ACE:  STR             R1, [R2,#8]
292AD0:  VSTR            D16, [R2]
292AD4:  MOV             R2, #0x1F1EFB
292ADC:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292ADE:  ADD             R2, R3
292AE0:  STR.W           R2, [R11,#4]
292AE4:  ADDS            R4, R1, #1
292AE6:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292AE8:  MOVS            R2, #0x34 ; '4'
292AEA:  STR.W           R8, [SP,#0x38+var_30+4]
292AEE:  STR             R2, [SP,#0x38+var_30]
292AF0:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292AF2:  ADDS            R0, R1, #2
292AF4:  CMP             R2, R0
292AF6:  BCS             loc_292B52
292AF8:  MOVW            R1, #0xAAAB
292AFC:  LSLS            R0, R0, #2
292AFE:  MOVT            R1, #0xAAAA
292B02:  UMULL.W         R0, R1, R0, R1
292B06:  MOVS            R0, #3
292B08:  ADD.W           R9, R0, R1,LSR#1
292B0C:  ADD.W           R0, R9, R9,LSL#1
292B10:  LSLS            R0, R0, #2; byte_count
292B12:  BLX             malloc
292B16:  MOV             R5, R0
292B18:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B20)
292B1C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292B1E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292B20:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292B22:  CBZ             R6, loc_292B42
292B24:  ADD.W           R0, R4, R4,LSL#1
292B28:  MOV             R1, R6; void *
292B2A:  LSLS            R2, R0, #2; size_t
292B2C:  MOV             R0, R5; void *
292B2E:  BLX             memcpy_0
292B32:  MOV             R0, R6; p
292B34:  BLX             free
292B38:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B40)
292B3C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292B3E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292B40:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292B42:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B4A)
292B46:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292B48:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292B4A:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292B4C:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292B50:  B               loc_292B5C
292B52:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B5A)
292B56:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292B58:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292B5A:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292B5C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B70)
292B60:  ADD.W           R2, R4, R4,LSL#1
292B64:  VLDR            D16, [SP,#0x38+var_30]
292B68:  MOVW            R3, #:lower16:(loc_303144+2)
292B6C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292B6E:  ADD.W           R2, R5, R2,LSL#2
292B72:  LDR             R1, [SP,#0x38+var_28]
292B74:  MOVT            R3, #:upper16:(loc_303144+2)
292B78:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292B7A:  STR             R1, [R2,#8]
292B7C:  VSTR            D16, [R2]
292B80:  MOV             R2, #0x2222FF
292B88:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292B8A:  ADD             R2, R3
292B8C:  STR.W           R2, [R11,#4]
292B90:  ADDS            R4, R1, #1
292B92:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292B94:  MOVS            R2, #0x35 ; '5'
292B96:  STR.W           R8, [SP,#0x38+var_30+4]
292B9A:  STR             R2, [SP,#0x38+var_30]
292B9C:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292B9E:  ADDS            R0, R1, #2
292BA0:  CMP             R2, R0
292BA2:  BCS             loc_292BFE
292BA4:  MOVW            R1, #0xAAAB
292BA8:  LSLS            R0, R0, #2
292BAA:  MOVT            R1, #0xAAAA
292BAE:  UMULL.W         R0, R1, R0, R1
292BB2:  MOVS            R0, #3
292BB4:  ADD.W           R9, R0, R1,LSR#1
292BB8:  ADD.W           R0, R9, R9,LSL#1
292BBC:  LSLS            R0, R0, #2; byte_count
292BBE:  BLX             malloc
292BC2:  MOV             R5, R0
292BC4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292BCC)
292BC8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292BCA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292BCC:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292BCE:  CBZ             R6, loc_292BEE
292BD0:  ADD.W           R0, R4, R4,LSL#1
292BD4:  MOV             R1, R6; void *
292BD6:  LSLS            R2, R0, #2; size_t
292BD8:  MOV             R0, R5; void *
292BDA:  BLX             memcpy_0
292BDE:  MOV             R0, R6; p
292BE0:  BLX             free
292BE4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292BEC)
292BE8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292BEA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292BEC:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292BEE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292BF6)
292BF2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292BF4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292BF6:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292BF8:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292BFC:  B               loc_292C08
292BFE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292C06)
292C02:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292C04:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292C06:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292C08:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292C1C)
292C0C:  ADD.W           R2, R4, R4,LSL#1
292C10:  VLDR            D16, [SP,#0x38+var_30]
292C14:  MOVW            R3, #:lower16:(loc_303144+2)
292C18:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292C1A:  ADD.W           R2, R5, R2,LSL#2
292C1E:  LDR             R1, [SP,#0x38+var_28]
292C20:  MOVT            R3, #:upper16:(loc_303144+2)
292C24:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292C26:  STR             R1, [R2,#8]
292C28:  VSTR            D16, [R2]
292C2C:  MOV             R2, #0x182206
292C34:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292C36:  ADD             R2, R3
292C38:  STR.W           R2, [R11,#4]
292C3C:  ADDS            R4, R1, #1
292C3E:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292C40:  MOVS            R2, #0x36 ; '6'
292C42:  STR.W           R8, [SP,#0x38+var_30+4]
292C46:  STR             R2, [SP,#0x38+var_30]
292C48:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292C4A:  ADDS            R0, R1, #2
292C4C:  CMP             R2, R0
292C4E:  BCS             loc_292CAA
292C50:  MOVW            R1, #0xAAAB
292C54:  LSLS            R0, R0, #2
292C56:  MOVT            R1, #0xAAAA
292C5A:  UMULL.W         R0, R1, R0, R1
292C5E:  MOVS            R0, #3
292C60:  ADD.W           R9, R0, R1,LSR#1
292C64:  ADD.W           R0, R9, R9,LSL#1
292C68:  LSLS            R0, R0, #2; byte_count
292C6A:  BLX             malloc
292C6E:  MOV             R5, R0
292C70:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292C78)
292C74:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292C76:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292C78:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292C7A:  CBZ             R6, loc_292C9A
292C7C:  ADD.W           R0, R4, R4,LSL#1
292C80:  MOV             R1, R6; void *
292C82:  LSLS            R2, R0, #2; size_t
292C84:  MOV             R0, R5; void *
292C86:  BLX             memcpy_0
292C8A:  MOV             R0, R6; p
292C8C:  BLX             free
292C90:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292C98)
292C94:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292C96:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292C98:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292C9A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292CA2)
292C9E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292CA0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292CA2:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292CA4:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292CA8:  B               loc_292CB4
292CAA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292CB2)
292CAE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292CB0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292CB2:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292CB4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292CC4)
292CB8:  ADD.W           R2, R4, R4,LSL#1
292CBC:  VLDR            D16, [SP,#0x38+var_30]
292CC0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292CC2:  ADD.W           R2, R5, R2,LSL#2
292CC6:  LDR             R1, [SP,#0x38+var_28]
292CC8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292CCA:  STR             R1, [R2,#8]
292CCC:  VSTR            D16, [R2]
292CD0:  MOVS            R2, #0x5A ; 'Z'
292CD2:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292CD4:  STRH.W          R2, [SP,#0x38+var_28]
292CD8:  MOVS            R2, #0x37 ; '7'
292CDA:  ADDS            R4, R1, #1
292CDC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292CDE:  STR.W           R8, [SP,#0x38+var_30+4]
292CE2:  STR             R2, [SP,#0x38+var_30]
292CE4:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292CE6:  ADDS            R0, R1, #2
292CE8:  CMP             R2, R0
292CEA:  BCS             loc_292D46
292CEC:  MOVW            R1, #0xAAAB
292CF0:  LSLS            R0, R0, #2
292CF2:  MOVT            R1, #0xAAAA
292CF6:  UMULL.W         R0, R1, R0, R1
292CFA:  MOVS            R0, #3
292CFC:  ADD.W           R9, R0, R1,LSR#1
292D00:  ADD.W           R0, R9, R9,LSL#1
292D04:  LSLS            R0, R0, #2; byte_count
292D06:  BLX             malloc
292D0A:  MOV             R5, R0
292D0C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D14)
292D10:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292D12:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292D14:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292D16:  CBZ             R6, loc_292D36
292D18:  ADD.W           R0, R4, R4,LSL#1
292D1C:  MOV             R1, R6; void *
292D1E:  LSLS            R2, R0, #2; size_t
292D20:  MOV             R0, R5; void *
292D22:  BLX             memcpy_0
292D26:  MOV             R0, R6; p
292D28:  BLX             free
292D2C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D34)
292D30:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292D32:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292D34:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292D36:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D3E)
292D3A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292D3C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292D3E:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292D40:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292D44:  B               loc_292D50
292D46:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D4E)
292D4A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292D4C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292D4E:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292D50:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D60)
292D54:  ADD.W           R2, R4, R4,LSL#1
292D58:  VLDR            D16, [SP,#0x38+var_30]
292D5C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292D5E:  ADD.W           R2, R5, R2,LSL#2
292D62:  LDR             R1, [SP,#0x38+var_28]
292D64:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292D66:  STR             R1, [R2,#8]
292D68:  VSTR            D16, [R2]
292D6C:  MOVS            R2, #0x58 ; 'X'
292D6E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292D70:  STRH.W          R2, [SP,#0x38+var_28]
292D74:  MOVS            R2, #0x38 ; '8'
292D76:  ADDS            R4, R1, #1
292D78:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292D7A:  STR.W           R8, [SP,#0x38+var_30+4]
292D7E:  STR             R2, [SP,#0x38+var_30]
292D80:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292D82:  ADDS            R0, R1, #2
292D84:  CMP             R2, R0
292D86:  BCS             loc_292DE2
292D88:  MOVW            R1, #0xAAAB
292D8C:  LSLS            R0, R0, #2
292D8E:  MOVT            R1, #0xAAAA
292D92:  UMULL.W         R0, R1, R0, R1
292D96:  MOVS            R0, #3
292D98:  ADD.W           R9, R0, R1,LSR#1
292D9C:  ADD.W           R0, R9, R9,LSL#1
292DA0:  LSLS            R0, R0, #2; byte_count
292DA2:  BLX             malloc
292DA6:  MOV             R5, R0
292DA8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DB0)
292DAC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292DAE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292DB0:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292DB2:  CBZ             R6, loc_292DD2
292DB4:  ADD.W           R0, R4, R4,LSL#1
292DB8:  MOV             R1, R6; void *
292DBA:  LSLS            R2, R0, #2; size_t
292DBC:  MOV             R0, R5; void *
292DBE:  BLX             memcpy_0
292DC2:  MOV             R0, R6; p
292DC4:  BLX             free
292DC8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DD0)
292DCC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292DCE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292DD0:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292DD2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DDA)
292DD6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292DD8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292DDA:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292DDC:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292DE0:  B               loc_292DEC
292DE2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DEA)
292DE6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292DE8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292DEA:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292DEC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DFC)
292DF0:  ADD.W           R2, R4, R4,LSL#1
292DF4:  VLDR            D16, [SP,#0x38+var_30]
292DF8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292DFA:  ADD.W           R2, R5, R2,LSL#2
292DFE:  LDR             R1, [SP,#0x38+var_28]
292E00:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292E02:  STR             R1, [R2,#8]
292E04:  VSTR            D16, [R2]
292E08:  MOVS            R2, #0x43 ; 'C'
292E0A:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292E0C:  STRH.W          R2, [SP,#0x38+var_28]
292E10:  MOVS            R2, #0x39 ; '9'
292E12:  ADDS            R4, R1, #1
292E14:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292E16:  STR.W           R8, [SP,#0x38+var_30+4]
292E1A:  STR             R2, [SP,#0x38+var_30]
292E1C:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292E1E:  ADDS            R0, R1, #2
292E20:  CMP             R2, R0
292E22:  BCS             loc_292E7E
292E24:  MOVW            R1, #0xAAAB
292E28:  LSLS            R0, R0, #2
292E2A:  MOVT            R1, #0xAAAA
292E2E:  UMULL.W         R0, R1, R0, R1
292E32:  MOVS            R0, #3
292E34:  ADD.W           R9, R0, R1,LSR#1
292E38:  ADD.W           R0, R9, R9,LSL#1
292E3C:  LSLS            R0, R0, #2; byte_count
292E3E:  BLX             malloc
292E42:  MOV             R5, R0
292E44:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E4C)
292E48:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292E4A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292E4C:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292E4E:  CBZ             R6, loc_292E6E
292E50:  ADD.W           R0, R4, R4,LSL#1
292E54:  MOV             R1, R6; void *
292E56:  LSLS            R2, R0, #2; size_t
292E58:  MOV             R0, R5; void *
292E5A:  BLX             memcpy_0
292E5E:  MOV             R0, R6; p
292E60:  BLX             free
292E64:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E6C)
292E68:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292E6A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292E6C:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292E6E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E76)
292E72:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292E74:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292E76:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292E78:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292E7C:  B               loc_292E88
292E7E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E86)
292E82:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292E84:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292E86:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292E88:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E98)
292E8C:  ADD.W           R2, R4, R4,LSL#1
292E90:  VLDR            D16, [SP,#0x38+var_30]
292E94:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292E96:  ADD.W           R2, R5, R2,LSL#2
292E9A:  LDR             R1, [SP,#0x38+var_28]
292E9C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292E9E:  STR             R1, [R2,#8]
292EA0:  VSTR            D16, [R2]
292EA4:  MOVS            R2, #0x56 ; 'V'
292EA6:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292EA8:  STRH.W          R2, [SP,#0x38+var_28]
292EAC:  MOVS            R2, #0x3A ; ':'
292EAE:  ADDS            R4, R1, #1
292EB0:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292EB2:  STR.W           R8, [SP,#0x38+var_30+4]
292EB6:  STR             R2, [SP,#0x38+var_30]
292EB8:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292EBA:  ADDS            R0, R1, #2
292EBC:  CMP             R2, R0
292EBE:  BCS             loc_292F1A
292EC0:  MOVW            R1, #0xAAAB
292EC4:  LSLS            R0, R0, #2
292EC6:  MOVT            R1, #0xAAAA
292ECA:  UMULL.W         R0, R1, R0, R1
292ECE:  MOVS            R0, #3
292ED0:  ADD.W           R9, R0, R1,LSR#1
292ED4:  ADD.W           R0, R9, R9,LSL#1
292ED8:  LSLS            R0, R0, #2; byte_count
292EDA:  BLX             malloc
292EDE:  MOV             R5, R0
292EE0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292EE8)
292EE4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292EE6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292EE8:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292EEA:  CBZ             R6, loc_292F0A
292EEC:  ADD.W           R0, R4, R4,LSL#1
292EF0:  MOV             R1, R6; void *
292EF2:  LSLS            R2, R0, #2; size_t
292EF4:  MOV             R0, R5; void *
292EF6:  BLX             memcpy_0
292EFA:  MOV             R0, R6; p
292EFC:  BLX             free
292F00:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F08)
292F04:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292F06:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292F08:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292F0A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F12)
292F0E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292F10:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292F12:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292F14:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292F18:  B               loc_292F24
292F1A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F22)
292F1E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292F20:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292F22:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292F24:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F34)
292F28:  ADD.W           R2, R4, R4,LSL#1
292F2C:  VLDR            D16, [SP,#0x38+var_30]
292F30:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292F32:  ADD.W           R2, R5, R2,LSL#2
292F36:  LDR             R1, [SP,#0x38+var_28]
292F38:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292F3A:  STR             R1, [R2,#8]
292F3C:  VSTR            D16, [R2]
292F40:  MOVS            R2, #0x42 ; 'B'
292F42:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292F44:  STRH.W          R2, [SP,#0x38+var_28]
292F48:  MOVS            R2, #0x3B ; ';'
292F4A:  ADDS            R4, R1, #1
292F4C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292F4E:  STR.W           R8, [SP,#0x38+var_30+4]
292F52:  STR             R2, [SP,#0x38+var_30]
292F54:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292F56:  ADDS            R0, R1, #2
292F58:  CMP             R2, R0
292F5A:  BCS             loc_292FB6
292F5C:  MOVW            R1, #0xAAAB
292F60:  LSLS            R0, R0, #2
292F62:  MOVT            R1, #0xAAAA
292F66:  UMULL.W         R0, R1, R0, R1
292F6A:  MOVS            R0, #3
292F6C:  ADD.W           R9, R0, R1,LSR#1
292F70:  ADD.W           R0, R9, R9,LSL#1
292F74:  LSLS            R0, R0, #2; byte_count
292F76:  BLX             malloc
292F7A:  MOV             R5, R0
292F7C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F84)
292F80:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292F82:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292F84:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
292F86:  CBZ             R6, loc_292FA6
292F88:  ADD.W           R0, R4, R4,LSL#1
292F8C:  MOV             R1, R6; void *
292F8E:  LSLS            R2, R0, #2; size_t
292F90:  MOV             R0, R5; void *
292F92:  BLX             memcpy_0
292F96:  MOV             R0, R6; p
292F98:  BLX             free
292F9C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292FA4)
292FA0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292FA2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292FA4:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292FA6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292FAE)
292FAA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292FAC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292FAE:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292FB0:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
292FB4:  B               loc_292FC0
292FB6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292FBE)
292FBA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292FBC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292FBE:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
292FC0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292FD0)
292FC4:  ADD.W           R2, R4, R4,LSL#1
292FC8:  VLDR            D16, [SP,#0x38+var_30]
292FCC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
292FCE:  ADD.W           R2, R5, R2,LSL#2
292FD2:  LDR             R1, [SP,#0x38+var_28]
292FD4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
292FD6:  STR             R1, [R2,#8]
292FD8:  VSTR            D16, [R2]
292FDC:  MOVS            R2, #0x4E ; 'N'
292FDE:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
292FE0:  STRH.W          R2, [SP,#0x38+var_28]
292FE4:  MOVS            R2, #0x3C ; '<'
292FE6:  ADDS            R4, R1, #1
292FE8:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
292FEA:  STR.W           R8, [SP,#0x38+var_30+4]
292FEE:  STR             R2, [SP,#0x38+var_30]
292FF0:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
292FF2:  ADDS            R0, R1, #2
292FF4:  CMP             R2, R0
292FF6:  BCS             loc_293052
292FF8:  MOVW            R1, #0xAAAB
292FFC:  LSLS            R0, R0, #2
292FFE:  MOVT            R1, #0xAAAA
293002:  UMULL.W         R0, R1, R0, R1
293006:  MOVS            R0, #3
293008:  ADD.W           R9, R0, R1,LSR#1
29300C:  ADD.W           R0, R9, R9,LSL#1
293010:  LSLS            R0, R0, #2; byte_count
293012:  BLX             malloc
293016:  MOV             R5, R0
293018:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293020)
29301C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29301E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293020:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293022:  CBZ             R6, loc_293042
293024:  ADD.W           R0, R4, R4,LSL#1
293028:  MOV             R1, R6; void *
29302A:  LSLS            R2, R0, #2; size_t
29302C:  MOV             R0, R5; void *
29302E:  BLX             memcpy_0
293032:  MOV             R0, R6; p
293034:  BLX             free
293038:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293040)
29303C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29303E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293040:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293042:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29304A)
293046:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293048:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29304A:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29304C:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293050:  B               loc_29305C
293052:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29305A)
293056:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293058:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29305A:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29305C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29306C)
293060:  ADD.W           R2, R4, R4,LSL#1
293064:  VLDR            D16, [SP,#0x38+var_30]
293068:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29306A:  ADD.W           R2, R5, R2,LSL#2
29306E:  LDR             R1, [SP,#0x38+var_28]
293070:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293072:  STR             R1, [R2,#8]
293074:  VSTR            D16, [R2]
293078:  MOVS            R2, #0x4D ; 'M'
29307A:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29307C:  STRH.W          R2, [SP,#0x38+var_28]
293080:  MOVS            R2, #0x3D ; '='
293082:  ADDS            R4, R1, #1
293084:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293086:  STR.W           R8, [SP,#0x38+var_30+4]
29308A:  STR             R2, [SP,#0x38+var_30]
29308C:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29308E:  ADDS            R0, R1, #2
293090:  CMP             R2, R0
293092:  BCS             loc_2930EE
293094:  MOVW            R1, #0xAAAB
293098:  LSLS            R0, R0, #2
29309A:  MOVT            R1, #0xAAAA
29309E:  UMULL.W         R0, R1, R0, R1
2930A2:  MOVS            R0, #3
2930A4:  ADD.W           R9, R0, R1,LSR#1
2930A8:  ADD.W           R0, R9, R9,LSL#1
2930AC:  LSLS            R0, R0, #2; byte_count
2930AE:  BLX             malloc
2930B2:  MOV             R5, R0
2930B4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2930BC)
2930B8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2930BA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2930BC:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2930BE:  CBZ             R6, loc_2930DE
2930C0:  ADD.W           R0, R4, R4,LSL#1
2930C4:  MOV             R1, R6; void *
2930C6:  LSLS            R2, R0, #2; size_t
2930C8:  MOV             R0, R5; void *
2930CA:  BLX             memcpy_0
2930CE:  MOV             R0, R6; p
2930D0:  BLX             free
2930D4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2930DC)
2930D8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2930DA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2930DC:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2930DE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2930E6)
2930E2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2930E4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2930E6:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2930E8:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2930EC:  B               loc_2930F8
2930EE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2930F6)
2930F2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2930F4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2930F6:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2930F8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29310C)
2930FC:  ADD.W           R2, R4, R4,LSL#1
293100:  VLDR            D16, [SP,#0x38+var_30]
293104:  MOVW            R3, #:lower16:(loc_303144+2)
293108:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29310A:  ADD.W           R2, R5, R2,LSL#2
29310E:  LDR             R1, [SP,#0x38+var_28]
293110:  MOVT            R3, #:upper16:(loc_303144+2)
293114:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293116:  STR             R1, [R2,#8]
293118:  VSTR            D16, [R2]
29311C:  MOV             R2, #0x111BFD
293124:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293126:  ADD             R2, R3
293128:  STR.W           R2, [R11,#4]
29312C:  ADDS            R4, R1, #1
29312E:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293130:  MOVS            R2, #0x3E ; '>'
293132:  STR.W           R8, [SP,#0x38+var_30+4]
293136:  STR             R2, [SP,#0x38+var_30]
293138:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29313A:  ADDS            R0, R1, #2
29313C:  CMP             R2, R0
29313E:  BCS             loc_29319A
293140:  MOVW            R1, #0xAAAB
293144:  LSLS            R0, R0, #2
293146:  MOVT            R1, #0xAAAA
29314A:  UMULL.W         R0, R1, R0, R1
29314E:  MOVS            R0, #3
293150:  ADD.W           R9, R0, R1,LSR#1
293154:  ADD.W           R0, R9, R9,LSL#1
293158:  LSLS            R0, R0, #2; byte_count
29315A:  BLX             malloc
29315E:  MOV             R5, R0
293160:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293168)
293164:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293166:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293168:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29316A:  CBZ             R6, loc_29318A
29316C:  ADD.W           R0, R4, R4,LSL#1
293170:  MOV             R1, R6; void *
293172:  LSLS            R2, R0, #2; size_t
293174:  MOV             R0, R5; void *
293176:  BLX             memcpy_0
29317A:  MOV             R0, R6; p
29317C:  BLX             free
293180:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293188)
293184:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293186:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293188:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29318A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293192)
29318E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293190:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293192:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293194:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293198:  B               loc_2931A4
29319A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2931A2)
29319E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2931A0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2931A2:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2931A4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2931B8)
2931A8:  ADD.W           R2, R4, R4,LSL#1
2931AC:  VLDR            D16, [SP,#0x38+var_30]
2931B0:  MOVW            R3, #:lower16:(loc_303144+2)
2931B4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2931B6:  ADD.W           R2, R5, R2,LSL#2
2931BA:  LDR             R1, [SP,#0x38+var_28]
2931BC:  MOVT            R3, #:upper16:(loc_303144+2)
2931C0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2931C2:  STR             R1, [R2,#8]
2931C4:  VSTR            D16, [R2]
2931C8:  MOV             R2, #0x22140A
2931D0:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2931D2:  ADD             R2, R3
2931D4:  STR.W           R2, [R11,#4]
2931D8:  ADDS            R4, R1, #1
2931DA:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2931DC:  MOVS            R2, #0x3F ; '?'
2931DE:  STR.W           R8, [SP,#0x38+var_30+4]
2931E2:  STR             R2, [SP,#0x38+var_30]
2931E4:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2931E6:  ADDS            R0, R1, #2
2931E8:  CMP             R2, R0
2931EA:  BCS             loc_293246
2931EC:  MOVW            R1, #0xAAAB
2931F0:  LSLS            R0, R0, #2
2931F2:  MOVT            R1, #0xAAAA
2931F6:  UMULL.W         R0, R1, R0, R1
2931FA:  MOVS            R0, #3
2931FC:  ADD.W           R9, R0, R1,LSR#1
293200:  ADD.W           R0, R9, R9,LSL#1
293204:  LSLS            R0, R0, #2; byte_count
293206:  BLX             malloc
29320A:  MOV             R5, R0
29320C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293214)
293210:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293212:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293214:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293216:  CBZ             R6, loc_293236
293218:  ADD.W           R0, R4, R4,LSL#1
29321C:  MOV             R1, R6; void *
29321E:  LSLS            R2, R0, #2; size_t
293220:  MOV             R0, R5; void *
293222:  BLX             memcpy_0
293226:  MOV             R0, R6; p
293228:  BLX             free
29322C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293234)
293230:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293232:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293234:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293236:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29323E)
29323A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29323C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29323E:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293240:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293244:  B               loc_293250
293246:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29324E)
29324A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29324C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29324E:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293250:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293260)
293254:  ADD.W           R2, R4, R4,LSL#1
293258:  VLDR            D16, [SP,#0x38+var_30]
29325C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29325E:  ADD.W           R2, R5, R2,LSL#2
293262:  LDR             R1, [SP,#0x38+var_28]
293264:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293266:  STR             R1, [R2,#8]
293268:  VSTR            D16, [R2]
29326C:  MOV             R2, #0x303146
293274:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293276:  ADD.W           R2, R2, #0x1C0000
29327A:  ADD.W           R2, R2, #0x2200
29327E:  STR.W           R2, [R11,#4]
293282:  ADDS            R4, R1, #1
293284:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293286:  MOVS            R2, #0x40 ; '@'
293288:  STR.W           R8, [SP,#0x38+var_30+4]
29328C:  STR             R2, [SP,#0x38+var_30]
29328E:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293290:  ADDS            R0, R1, #2
293292:  CMP             R2, R0
293294:  BCS             loc_2932F0
293296:  MOVW            R1, #0xAAAB
29329A:  LSLS            R0, R0, #2
29329C:  MOVT            R1, #0xAAAA
2932A0:  UMULL.W         R0, R1, R0, R1
2932A4:  MOVS            R0, #3
2932A6:  ADD.W           R9, R0, R1,LSR#1
2932AA:  ADD.W           R0, R9, R9,LSL#1
2932AE:  LSLS            R0, R0, #2; byte_count
2932B0:  BLX             malloc
2932B4:  MOV             R5, R0
2932B6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2932BE)
2932BA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2932BC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2932BE:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2932C0:  CBZ             R6, loc_2932E0
2932C2:  ADD.W           R0, R4, R4,LSL#1
2932C6:  MOV             R1, R6; void *
2932C8:  LSLS            R2, R0, #2; size_t
2932CA:  MOV             R0, R5; void *
2932CC:  BLX             memcpy_0
2932D0:  MOV             R0, R6; p
2932D2:  BLX             free
2932D6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2932DE)
2932DA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2932DC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2932DE:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2932E0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2932E8)
2932E4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2932E6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2932E8:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2932EA:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2932EE:  B               loc_2932FA
2932F0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2932F8)
2932F4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2932F6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2932F8:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2932FA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29330A)
2932FE:  ADD.W           R2, R4, R4,LSL#1
293302:  VLDR            D16, [SP,#0x38+var_30]
293306:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293308:  ADD.W           R2, R5, R2,LSL#2
29330C:  LDR             R1, [SP,#0x38+var_28]
29330E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293310:  STR             R1, [R2,#8]
293312:  VSTR            D16, [R2]
293316:  MOV             R2, #0x303146
29331E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293320:  ADD.W           R2, R2, #0x182000
293324:  ADD.W           R2, R2, #0x20C
293328:  STR.W           R2, [R11,#4]
29332C:  ADDS            R4, R1, #1
29332E:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293330:  MOVS            R2, #0x41 ; 'A'
293332:  STR.W           R8, [SP,#0x38+var_30+4]
293336:  STR             R2, [SP,#0x38+var_30]
293338:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29333A:  ADDS            R0, R1, #2
29333C:  CMP             R2, R0
29333E:  BCS             loc_29339A
293340:  MOVW            R1, #0xAAAB
293344:  LSLS            R0, R0, #2
293346:  MOVT            R1, #0xAAAA
29334A:  UMULL.W         R0, R1, R0, R1
29334E:  MOVS            R0, #3
293350:  ADD.W           R9, R0, R1,LSR#1
293354:  ADD.W           R0, R9, R9,LSL#1
293358:  LSLS            R0, R0, #2; byte_count
29335A:  BLX             malloc
29335E:  MOV             R5, R0
293360:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293368)
293364:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293366:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293368:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29336A:  CBZ             R6, loc_29338A
29336C:  ADD.W           R0, R4, R4,LSL#1
293370:  MOV             R1, R6; void *
293372:  LSLS            R2, R0, #2; size_t
293374:  MOV             R0, R5; void *
293376:  BLX             memcpy_0
29337A:  MOV             R0, R6; p
29337C:  BLX             free
293380:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293388)
293384:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293386:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293388:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29338A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293392)
29338E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293390:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293392:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293394:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293398:  B               loc_2933A4
29339A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2933A2)
29339E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2933A0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2933A2:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2933A4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2933B8)
2933A8:  ADD.W           R2, R4, R4,LSL#1
2933AC:  VLDR            D16, [SP,#0x38+var_30]
2933B0:  MOVW            R3, #:lower16:(loc_303144+2)
2933B4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2933B6:  ADD.W           R2, R5, R2,LSL#2
2933BA:  LDR             R1, [SP,#0x38+var_28]
2933BC:  MOVT            R3, #:upper16:(loc_303144+2)
2933C0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2933C2:  STR             R1, [R2,#8]
2933C4:  VSTR            D16, [R2]
2933C8:  MOV             R2, #0x241206
2933D0:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2933D2:  ADD             R2, R3
2933D4:  STR.W           R2, [R11,#4]
2933D8:  ADDS            R4, R1, #1
2933DA:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2933DC:  MOVS            R2, #0x42 ; 'B'
2933DE:  STR.W           R8, [SP,#0x38+var_30+4]
2933E2:  STR             R2, [SP,#0x38+var_30]
2933E4:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2933E6:  ADDS            R0, R1, #2
2933E8:  CMP             R2, R0
2933EA:  BCS             loc_293446
2933EC:  MOVW            R1, #0xAAAB
2933F0:  LSLS            R0, R0, #2
2933F2:  MOVT            R1, #0xAAAA
2933F6:  UMULL.W         R0, R1, R0, R1
2933FA:  MOVS            R0, #3
2933FC:  ADD.W           R9, R0, R1,LSR#1
293400:  ADD.W           R0, R9, R9,LSL#1
293404:  LSLS            R0, R0, #2; byte_count
293406:  BLX             malloc
29340A:  MOV             R5, R0
29340C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293414)
293410:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293412:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293414:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293416:  CBZ             R6, loc_293436
293418:  ADD.W           R0, R4, R4,LSL#1
29341C:  MOV             R1, R6; void *
29341E:  LSLS            R2, R0, #2; size_t
293420:  MOV             R0, R5; void *
293422:  BLX             memcpy_0
293426:  MOV             R0, R6; p
293428:  BLX             free
29342C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293434)
293430:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293432:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293434:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293436:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29343E)
29343A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29343C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29343E:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293440:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293444:  B               loc_293450
293446:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29344E)
29344A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29344C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29344E:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293450:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293464)
293454:  ADD.W           R2, R4, R4,LSL#1
293458:  VLDR            D16, [SP,#0x38+var_30]
29345C:  MOVW            R3, #:lower16:(loc_303144+2)
293460:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293462:  ADD.W           R2, R5, R2,LSL#2
293466:  LDR             R1, [SP,#0x38+var_28]
293468:  MOVT            R3, #:upper16:(loc_303144+2)
29346C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29346E:  STR             R1, [R2,#8]
293470:  VSTR            D16, [R2]
293474:  MOV             R2, #0x1C1006
29347C:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29347E:  ADD             R2, R3
293480:  STR.W           R2, [R11,#4]
293484:  ADDS            R4, R1, #1
293486:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293488:  MOVS            R2, #0x43 ; 'C'
29348A:  STR.W           R8, [SP,#0x38+var_30+4]
29348E:  STR             R2, [SP,#0x38+var_30]
293490:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293492:  ADDS            R0, R1, #2
293494:  CMP             R2, R0
293496:  BCS             loc_2934EC
293498:  MOVW            R1, #0xAAAB
29349C:  LSLS            R0, R0, #2
29349E:  MOVT            R1, #0xAAAA
2934A2:  UMULL.W         R0, R1, R0, R1
2934A6:  MOVS            R0, #3
2934A8:  ADD.W           R9, R0, R1,LSR#1
2934AC:  ADD.W           R0, R9, R9,LSL#1
2934B0:  LSLS            R0, R0, #2; byte_count
2934B2:  BLX             malloc
2934B6:  MOV             R5, R0
2934B8:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2934BE)
2934BA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2934BC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2934BE:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2934C0:  CBZ             R6, loc_2934DE
2934C2:  ADD.W           R0, R4, R4,LSL#1
2934C6:  MOV             R1, R6; void *
2934C8:  LSLS            R2, R0, #2; size_t
2934CA:  MOV             R0, R5; void *
2934CC:  BLX             memcpy_0
2934D0:  MOV             R0, R6; p
2934D2:  BLX             free
2934D6:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2934DC)
2934D8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2934DA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2934DC:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2934DE:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2934E4)
2934E0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2934E2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2934E4:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2934E6:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2934EA:  B               loc_2934F4
2934EC:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2934F2)
2934EE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2934F0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2934F2:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2934F4:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293506)
2934F6:  ADD.W           R2, R4, R4,LSL#1
2934FA:  VLDR            D16, [SP,#0x38+var_30]
2934FE:  MOVW            R3, #:lower16:(loc_303144+2)
293502:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293504:  ADD.W           R2, R5, R2,LSL#2
293508:  LDR             R1, [SP,#0x38+var_28]
29350A:  MOVT            R3, #:upper16:(loc_303144+2)
29350E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293510:  STR             R1, [R2,#8]
293512:  VSTR            D16, [R2]
293516:  MOV             R2, #0x131F0D
29351E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293520:  ADD             R2, R3
293522:  STR.W           R2, [R11,#4]
293526:  ADDS            R4, R1, #1
293528:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29352A:  MOVS            R2, #0x44 ; 'D'
29352C:  STR.W           R8, [SP,#0x38+var_30+4]
293530:  STR             R2, [SP,#0x38+var_30]
293532:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293534:  ADDS            R0, R1, #2
293536:  CMP             R2, R0
293538:  BCS             loc_29358E
29353A:  MOVW            R1, #0xAAAB
29353E:  LSLS            R0, R0, #2
293540:  MOVT            R1, #0xAAAA
293544:  UMULL.W         R0, R1, R0, R1
293548:  MOVS            R0, #3
29354A:  ADD.W           R9, R0, R1,LSR#1
29354E:  ADD.W           R0, R9, R9,LSL#1
293552:  LSLS            R0, R0, #2; byte_count
293554:  BLX             malloc
293558:  MOV             R5, R0
29355A:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293560)
29355C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29355E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293560:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293562:  CBZ             R6, loc_293580
293564:  ADD.W           R0, R4, R4,LSL#1
293568:  MOV             R1, R6; void *
29356A:  LSLS            R2, R0, #2; size_t
29356C:  MOV             R0, R5; void *
29356E:  BLX             memcpy_0
293572:  MOV             R0, R6; p
293574:  BLX             free
293578:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29357E)
29357A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29357C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29357E:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293580:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293586)
293582:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293584:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293586:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293588:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29358C:  B               loc_293596
29358E:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293594)
293590:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293592:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293594:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293596:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2935A8)
293598:  ADD.W           R2, R4, R4,LSL#1
29359C:  VLDR            D16, [SP,#0x38+var_30]
2935A0:  MOVW            R3, #:lower16:(loc_303144+2)
2935A4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2935A6:  ADD.W           R2, R5, R2,LSL#2
2935AA:  LDR             R1, [SP,#0x38+var_28]
2935AC:  MOVT            R3, #:upper16:(loc_303144+2)
2935B0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2935B2:  STR             R1, [R2,#8]
2935B4:  VSTR            D16, [R2]
2935B8:  MOV             R2, #0x1C100C
2935C0:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2935C2:  ADD             R2, R3
2935C4:  STR.W           R2, [R11,#4]
2935C8:  ADDS            R4, R1, #1
2935CA:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2935CC:  MOVS            R2, #0x45 ; 'E'
2935CE:  STR.W           R8, [SP,#0x38+var_30+4]
2935D2:  STR             R2, [SP,#0x38+var_30]
2935D4:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2935D6:  ADDS            R0, R1, #2
2935D8:  CMP             R2, R0
2935DA:  BCS             loc_293630
2935DC:  MOVW            R1, #0xAAAB
2935E0:  LSLS            R0, R0, #2
2935E2:  MOVT            R1, #0xAAAA
2935E6:  UMULL.W         R0, R1, R0, R1
2935EA:  MOVS            R0, #3
2935EC:  ADD.W           R9, R0, R1,LSR#1
2935F0:  ADD.W           R0, R9, R9,LSL#1
2935F4:  LSLS            R0, R0, #2; byte_count
2935F6:  BLX             malloc
2935FA:  MOV             R5, R0
2935FC:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293602)
2935FE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293600:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293602:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293604:  CBZ             R6, loc_293622
293606:  ADD.W           R0, R4, R4,LSL#1
29360A:  MOV             R1, R6; void *
29360C:  LSLS            R2, R0, #2; size_t
29360E:  MOV             R0, R5; void *
293610:  BLX             memcpy_0
293614:  MOV             R0, R6; p
293616:  BLX             free
29361A:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293620)
29361C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29361E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293620:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293622:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293628)
293624:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293626:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293628:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29362A:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29362E:  B               loc_293638
293630:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293636)
293632:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293634:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293636:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293638:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29364A)
29363A:  ADD.W           R2, R4, R4,LSL#1
29363E:  VLDR            D16, [SP,#0x38+var_30]
293642:  MOVW            R3, #:lower16:(loc_303144+2)
293646:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293648:  ADD.W           R2, R5, R2,LSL#2
29364C:  LDR             R1, [SP,#0x38+var_28]
29364E:  MOVT            R3, #:upper16:(loc_303144+2)
293652:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293654:  STR             R1, [R2,#8]
293656:  VSTR            D16, [R2]
29365A:  MOV             R2, #0x24120C
293662:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293664:  ADD             R2, R3
293666:  STR.W           R2, [R11,#4]
29366A:  ADDS            R4, R1, #1
29366C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29366E:  MOVS            R2, #0x46 ; 'F'
293670:  STR.W           R8, [SP,#0x38+var_30+4]
293674:  STR             R2, [SP,#0x38+var_30]
293676:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293678:  ADDS            R0, R1, #2
29367A:  CMP             R2, R0
29367C:  BCS.W           loc_293908
293680:  MOVW            R1, #0xAAAB
293684:  LSLS            R0, R0, #2
293686:  MOVT            R1, #0xAAAA
29368A:  UMULL.W         R0, R1, R0, R1
29368E:  MOVS            R0, #3
293690:  ADD.W           R9, R0, R1,LSR#1
293694:  ADD.W           R0, R9, R9,LSL#1
293698:  LSLS            R0, R0, #2; byte_count
29369A:  BLX             malloc
29369E:  MOV             R5, R0
2936A0:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2936A6)
2936A2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2936A4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2936A6:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2936A8:  CBZ             R6, loc_2936C6
2936AA:  ADD.W           R0, R4, R4,LSL#1
2936AE:  MOV             R1, R6; void *
2936B0:  LSLS            R2, R0, #2; size_t
2936B2:  MOV             R0, R5; void *
2936B4:  BLX             memcpy_0
2936B8:  MOV             R0, R6; p
2936BA:  BLX             free
2936BE:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2936C4)
2936C0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2936C2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2936C4:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2936C6:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2936CC)
2936C8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2936CA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2936CC:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2936CE:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2936D2:  B               loc_293912
2936D4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2927F4
2936D8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292814
2936DC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29281E
2936E0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29282E
2936E4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292840
2936E8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292890
2936EC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2928B0
2936F0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2928BA
2936F4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2928CA
2936F8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2928DC
2936FC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29292C
293700:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29294C
293704:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292956
293708:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292966
29370C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292978
293710:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2929C8
293714:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2929E8
293718:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2929F2
29371C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A02
293720:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A18
293724:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A74
293728:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A94
29372C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292A9E
293730:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292AAE
293734:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292AC4
293738:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B20
29373C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B40
293740:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B4A
293744:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B5A
293748:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292B70
29374C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292BCC
293750:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292BEC
293754:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292BF6
293758:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292C06
29375C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292C1C
293760:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292C78
293764:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292C98
293768:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292CA2
29376C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292CB2
293770:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292CC4
293774:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D14
293778:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D34
29377C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D3E
293780:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D4E
293784:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292D60
293788:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DB0
29378C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DD0
293790:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DDA
293794:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DEA
293798:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292DFC
29379C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E4C
2937A0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E6C
2937A4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E76
2937A8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E86
2937AC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292E98
2937B0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292EE8
2937B4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F08
2937B8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F12
2937BC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F22
2937C0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F34
2937C4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292F84
2937C8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292FA4
2937CC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292FAE
2937D0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292FBE
2937D4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x292FD0
2937D8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293020
2937DC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293040
2937E0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29304A
2937E4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29305A
2937E8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29306C
2937EC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2930BC
2937F0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2930DC
2937F4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2930E6
2937F8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2930F6
2937FC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29310C
293800:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293168
293804:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293188
293808:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293192
29380C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2931A2
293810:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2931B8
293814:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293214
293818:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293234
29381C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29323E
293820:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29324E
293824:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293260
293828:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2932BE
29382C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2932DE
293830:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2932E8
293834:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2932F8
293838:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29330A
29383C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293368
293840:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293388
293844:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293392
293848:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2933A2
29384C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2933B8
293850:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293414
293854:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293434
293858:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29343E
29385C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29344E
293860:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293464
293864:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2934BE
293868:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2934DC
29386C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2934E4
293870:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2934F2
293874:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293506
293878:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293560
29387C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29357E
293880:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293586
293884:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293594
293888:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2935A8
29388C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293602
293890:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293620
293894:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293628
293898:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293636
29389C:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29364A
2938A0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2936A6
2938A4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2936C4
2938A8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2936CC
2938AC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293910
2938B0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293926
2938B4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293982
2938B8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2939A2
2938BC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2939AC
2938C0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2939BC
2938C4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2939D2
2938C8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A2E
2938CC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A4E
2938D0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A58
2938D4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A68
2938D8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A7E
2938DC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293ADA
2938E0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293AFA
2938E4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293B04
2938E8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293B14
2938EC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293B2A
2938F0:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293B86
2938F4:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293BA6
2938F8:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293BB0
2938FC:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293BC0
293900:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293BD6
293904:  DCD _ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293C32
293908:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293910)
29390C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29390E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293910:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293912:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293926)
293916:  ADD.W           R2, R4, R4,LSL#1
29391A:  VLDR            D16, [SP,#0x38+var_30]
29391E:  MOVW            R3, #:lower16:(loc_303144+2)
293922:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293924:  ADD.W           R2, R5, R2,LSL#2
293928:  LDR             R1, [SP,#0x38+var_28]
29392A:  MOVT            R3, #:upper16:(loc_303144+2)
29392E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293930:  STR             R1, [R2,#8]
293932:  VSTR            D16, [R2]
293936:  MOV             R2, #0x13220A
29393E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293940:  ADD             R2, R3
293942:  STR.W           R2, [R11,#4]
293946:  ADDS            R4, R1, #1
293948:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29394A:  MOVS            R2, #0x47 ; 'G'
29394C:  STR.W           R8, [SP,#0x38+var_30+4]
293950:  STR             R2, [SP,#0x38+var_30]
293952:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293954:  ADDS            R0, R1, #2
293956:  CMP             R2, R0
293958:  BCS             loc_2939B4
29395A:  MOVW            R1, #0xAAAB
29395E:  LSLS            R0, R0, #2
293960:  MOVT            R1, #0xAAAA
293964:  UMULL.W         R0, R1, R0, R1
293968:  MOVS            R0, #3
29396A:  ADD.W           R9, R0, R1,LSR#1
29396E:  ADD.W           R0, R9, R9,LSL#1
293972:  LSLS            R0, R0, #2; byte_count
293974:  BLX             malloc
293978:  MOV             R5, R0
29397A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293982)
29397E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293980:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293982:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293984:  CBZ             R6, loc_2939A4
293986:  ADD.W           R0, R4, R4,LSL#1
29398A:  MOV             R1, R6; void *
29398C:  LSLS            R2, R0, #2; size_t
29398E:  MOV             R0, R5; void *
293990:  BLX             memcpy_0
293994:  MOV             R0, R6; p
293996:  BLX             free
29399A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2939A2)
29399E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2939A0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2939A2:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2939A4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2939AC)
2939A8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2939AA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2939AC:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2939AE:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2939B2:  B               loc_2939BE
2939B4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2939BC)
2939B8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2939BA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2939BC:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2939BE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2939D2)
2939C2:  ADD.W           R2, R4, R4,LSL#1
2939C6:  VLDR            D16, [SP,#0x38+var_30]
2939CA:  MOVW            R3, #:lower16:(loc_303144+2)
2939CE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2939D0:  ADD.W           R2, R5, R2,LSL#2
2939D4:  LDR             R1, [SP,#0x38+var_28]
2939D6:  MOVT            R3, #:upper16:(loc_303144+2)
2939DA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2939DC:  STR             R1, [R2,#8]
2939DE:  VSTR            D16, [R2]
2939E2:  MOV             R2, #0x25100A
2939EA:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2939EC:  ADD             R2, R3
2939EE:  STR.W           R2, [R11,#4]
2939F2:  ADDS            R4, R1, #1
2939F4:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2939F6:  MOVS            R2, #0x48 ; 'H'
2939F8:  STR.W           R8, [SP,#0x38+var_30+4]
2939FC:  STR             R2, [SP,#0x38+var_30]
2939FE:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293A00:  ADDS            R0, R1, #2
293A02:  CMP             R2, R0
293A04:  BCS             loc_293A60
293A06:  MOVW            R1, #0xAAAB
293A0A:  LSLS            R0, R0, #2
293A0C:  MOVT            R1, #0xAAAA
293A10:  UMULL.W         R0, R1, R0, R1
293A14:  MOVS            R0, #3
293A16:  ADD.W           R9, R0, R1,LSR#1
293A1A:  ADD.W           R0, R9, R9,LSL#1
293A1E:  LSLS            R0, R0, #2; byte_count
293A20:  BLX             malloc
293A24:  MOV             R5, R0
293A26:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A2E)
293A2A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293A2C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293A2E:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293A30:  CBZ             R6, loc_293A50
293A32:  ADD.W           R0, R4, R4,LSL#1
293A36:  MOV             R1, R6; void *
293A38:  LSLS            R2, R0, #2; size_t
293A3A:  MOV             R0, R5; void *
293A3C:  BLX             memcpy_0
293A40:  MOV             R0, R6; p
293A42:  BLX             free
293A46:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A4E)
293A4A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293A4C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293A4E:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293A50:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A58)
293A54:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293A56:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293A58:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293A5A:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293A5E:  B               loc_293A6A
293A60:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A68)
293A64:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293A66:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293A68:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293A6A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293A7E)
293A6E:  ADD.W           R2, R4, R4,LSL#1
293A72:  VLDR            D16, [SP,#0x38+var_30]
293A76:  MOVW            R3, #:lower16:(loc_303144+2)
293A7A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293A7C:  ADD.W           R2, R5, R2,LSL#2
293A80:  LDR             R1, [SP,#0x38+var_28]
293A82:  MOVT            R3, #:upper16:(loc_303144+2)
293A86:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293A88:  STR             R1, [R2,#8]
293A8A:  VSTR            D16, [R2]
293A8E:  MOV             R2, #0x231D03
293A96:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293A98:  ADD             R2, R3
293A9A:  STR.W           R2, [R11,#4]
293A9E:  ADDS            R4, R1, #1
293AA0:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293AA2:  MOVS            R2, #0x49 ; 'I'
293AA4:  STR.W           R8, [SP,#0x38+var_30+4]
293AA8:  STR             R2, [SP,#0x38+var_30]
293AAA:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293AAC:  ADDS            R0, R1, #2
293AAE:  CMP             R2, R0
293AB0:  BCS             loc_293B0C
293AB2:  MOVW            R1, #0xAAAB
293AB6:  LSLS            R0, R0, #2
293AB8:  MOVT            R1, #0xAAAA
293ABC:  UMULL.W         R0, R1, R0, R1
293AC0:  MOVS            R0, #3
293AC2:  ADD.W           R9, R0, R1,LSR#1
293AC6:  ADD.W           R0, R9, R9,LSL#1
293ACA:  LSLS            R0, R0, #2; byte_count
293ACC:  BLX             malloc
293AD0:  MOV             R5, R0
293AD2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293ADA)
293AD6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293AD8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293ADA:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293ADC:  CBZ             R6, loc_293AFC
293ADE:  ADD.W           R0, R4, R4,LSL#1
293AE2:  MOV             R1, R6; void *
293AE4:  LSLS            R2, R0, #2; size_t
293AE6:  MOV             R0, R5; void *
293AE8:  BLX             memcpy_0
293AEC:  MOV             R0, R6; p
293AEE:  BLX             free
293AF2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293AFA)
293AF6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293AF8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293AFA:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293AFC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293B04)
293B00:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293B02:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293B04:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293B06:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293B0A:  B               loc_293B16
293B0C:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293B14)
293B10:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293B12:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293B14:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293B16:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293B2A)
293B1A:  ADD.W           R2, R4, R4,LSL#1
293B1E:  VLDR            D16, [SP,#0x38+var_30]
293B22:  MOVW            R3, #:lower16:(loc_303144+2)
293B26:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293B28:  ADD.W           R2, R5, R2,LSL#2
293B2C:  LDR             R1, [SP,#0x38+var_28]
293B2E:  MOVT            R3, #:upper16:(loc_303144+2)
293B32:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293B34:  STR             R1, [R2,#8]
293B36:  VSTR            D16, [R2]
293B3A:  MOV             R2, #0x1C13FE
293B42:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293B44:  ADD             R2, R3
293B46:  STR.W           R2, [R11,#4]
293B4A:  ADDS            R4, R1, #1
293B4C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293B4E:  MOVS            R2, #0x4A ; 'J'
293B50:  STR.W           R8, [SP,#0x38+var_30+4]
293B54:  STR             R2, [SP,#0x38+var_30]
293B56:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293B58:  ADDS            R0, R1, #2
293B5A:  CMP             R2, R0
293B5C:  BCS             loc_293BB8
293B5E:  MOVW            R1, #0xAAAB
293B62:  LSLS            R0, R0, #2
293B64:  MOVT            R1, #0xAAAA
293B68:  UMULL.W         R0, R1, R0, R1
293B6C:  MOVS            R0, #3
293B6E:  ADD.W           R9, R0, R1,LSR#1
293B72:  ADD.W           R0, R9, R9,LSL#1
293B76:  LSLS            R0, R0, #2; byte_count
293B78:  BLX             malloc
293B7C:  MOV             R5, R0
293B7E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293B86)
293B82:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293B84:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293B86:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293B88:  CBZ             R6, loc_293BA8
293B8A:  ADD.W           R0, R4, R4,LSL#1
293B8E:  MOV             R1, R6; void *
293B90:  LSLS            R2, R0, #2; size_t
293B92:  MOV             R0, R5; void *
293B94:  BLX             memcpy_0
293B98:  MOV             R0, R6; p
293B9A:  BLX             free
293B9E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293BA6)
293BA2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293BA4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293BA6:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293BA8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293BB0)
293BAC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293BAE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293BB0:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293BB2:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293BB6:  B               loc_293BC2
293BB8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293BC0)
293BBC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293BBE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293BC0:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293BC2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293BD6)
293BC6:  ADD.W           R2, R4, R4,LSL#1
293BCA:  VLDR            D16, [SP,#0x38+var_30]
293BCE:  MOVW            R3, #:lower16:(loc_303144+2)
293BD2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293BD4:  ADD.W           R2, R5, R2,LSL#2
293BD8:  LDR             R1, [SP,#0x38+var_28]
293BDA:  MOVT            R3, #:upper16:(loc_303144+2)
293BDE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293BE0:  STR             R1, [R2,#8]
293BE2:  VSTR            D16, [R2]
293BE6:  MOV             R2, #0x1D1E02
293BEE:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293BF0:  ADD             R2, R3
293BF2:  STR.W           R2, [R11,#4]
293BF6:  ADDS            R4, R1, #1
293BF8:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293BFA:  MOVS            R2, #0x4B ; 'K'
293BFC:  STR.W           R8, [SP,#0x38+var_30+4]
293C00:  STR             R2, [SP,#0x38+var_30]
293C02:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293C04:  ADDS            R0, R1, #2
293C06:  CMP             R2, R0
293C08:  BCS             loc_293C64
293C0A:  MOVW            R1, #0xAAAB
293C0E:  LSLS            R0, R0, #2
293C10:  MOVT            R1, #0xAAAA
293C14:  UMULL.W         R0, R1, R0, R1
293C18:  MOVS            R0, #3
293C1A:  ADD.W           R9, R0, R1,LSR#1
293C1E:  ADD.W           R0, R9, R9,LSL#1
293C22:  LSLS            R0, R0, #2; byte_count
293C24:  BLX             malloc
293C28:  MOV             R5, R0
293C2A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293C32)
293C2E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293C30:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293C32:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293C34:  CBZ             R6, loc_293C54
293C36:  ADD.W           R0, R4, R4,LSL#1
293C3A:  MOV             R1, R6; void *
293C3C:  LSLS            R2, R0, #2; size_t
293C3E:  MOV             R0, R5; void *
293C40:  BLX             memcpy_0
293C44:  MOV             R0, R6; p
293C46:  BLX             free
293C4A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293C52)
293C4E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293C50:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293C52:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293C54:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293C5C)
293C58:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293C5A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293C5C:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293C5E:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293C62:  B               loc_293C6E
293C64:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293C6C)
293C68:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293C6A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293C6C:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293C6E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293C82)
293C72:  ADD.W           R2, R4, R4,LSL#1
293C76:  VLDR            D16, [SP,#0x38+var_30]
293C7A:  MOVW            R3, #:lower16:(loc_303144+2)
293C7E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293C80:  ADD.W           R2, R5, R2,LSL#2
293C84:  LDR             R1, [SP,#0x38+var_28]
293C86:  MOVT            R3, #:upper16:(loc_303144+2)
293C8A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293C8C:  STR             R1, [R2,#8]
293C8E:  VSTR            D16, [R2]
293C92:  MOV             R2, #0x141CFF
293C9A:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293C9C:  ADD             R2, R3
293C9E:  STR.W           R2, [R11,#4]
293CA2:  ADDS            R4, R1, #1
293CA4:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293CA6:  MOVS            R2, #0x4C ; 'L'
293CA8:  STR.W           R8, [SP,#0x38+var_30+4]
293CAC:  STR             R2, [SP,#0x38+var_30]
293CAE:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293CB0:  ADDS            R0, R1, #2
293CB2:  CMP             R2, R0
293CB4:  BCS             loc_293D10
293CB6:  MOVW            R1, #0xAAAB
293CBA:  LSLS            R0, R0, #2
293CBC:  MOVT            R1, #0xAAAA
293CC0:  UMULL.W         R0, R1, R0, R1
293CC4:  MOVS            R0, #3
293CC6:  ADD.W           R9, R0, R1,LSR#1
293CCA:  ADD.W           R0, R9, R9,LSL#1
293CCE:  LSLS            R0, R0, #2; byte_count
293CD0:  BLX             malloc
293CD4:  MOV             R5, R0
293CD6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293CDE)
293CDA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293CDC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293CDE:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293CE0:  CBZ             R6, loc_293D00
293CE2:  ADD.W           R0, R4, R4,LSL#1
293CE6:  MOV             R1, R6; void *
293CE8:  LSLS            R2, R0, #2; size_t
293CEA:  MOV             R0, R5; void *
293CEC:  BLX             memcpy_0
293CF0:  MOV             R0, R6; p
293CF2:  BLX             free
293CF6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293CFE)
293CFA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293CFC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293CFE:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293D00:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293D08)
293D04:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293D06:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293D08:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293D0A:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293D0E:  B               loc_293D1A
293D10:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293D18)
293D14:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293D16:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293D18:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293D1A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293D2E)
293D1E:  ADD.W           R2, R4, R4,LSL#1
293D22:  VLDR            D16, [SP,#0x38+var_30]
293D26:  MOVW            R3, #:lower16:(loc_303144+2)
293D2A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293D2C:  ADD.W           R2, R5, R2,LSL#2
293D30:  LDR             R1, [SP,#0x38+var_28]
293D32:  MOVT            R3, #:upper16:(loc_303144+2)
293D36:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293D38:  STR             R1, [R2,#8]
293D3A:  VSTR            D16, [R2]
293D3E:  MOV             R2, #0x20240A
293D46:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293D48:  ADD             R2, R3
293D4A:  STR.W           R2, [R11,#4]
293D4E:  ADDS            R4, R1, #1
293D50:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293D52:  MOVS            R2, #0x4D ; 'M'
293D54:  STR.W           R8, [SP,#0x38+var_30+4]
293D58:  STR             R2, [SP,#0x38+var_30]
293D5A:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293D5C:  ADDS            R0, R1, #2
293D5E:  CMP             R2, R0
293D60:  BCS             loc_293DBC
293D62:  MOVW            R1, #0xAAAB
293D66:  LSLS            R0, R0, #2
293D68:  MOVT            R1, #0xAAAA
293D6C:  UMULL.W         R0, R1, R0, R1
293D70:  MOVS            R0, #3
293D72:  ADD.W           R9, R0, R1,LSR#1
293D76:  ADD.W           R0, R9, R9,LSL#1
293D7A:  LSLS            R0, R0, #2; byte_count
293D7C:  BLX             malloc
293D80:  MOV             R5, R0
293D82:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293D8A)
293D86:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293D88:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293D8A:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293D8C:  CBZ             R6, loc_293DAC
293D8E:  ADD.W           R0, R4, R4,LSL#1
293D92:  MOV             R1, R6; void *
293D94:  LSLS            R2, R0, #2; size_t
293D96:  MOV             R0, R5; void *
293D98:  BLX             memcpy_0
293D9C:  MOV             R0, R6; p
293D9E:  BLX             free
293DA2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293DAA)
293DA6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293DA8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293DAA:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293DAC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293DB4)
293DB0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293DB2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293DB4:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293DB6:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293DBA:  B               loc_293DC6
293DBC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293DC4)
293DC0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293DC2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293DC4:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293DC6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293DDA)
293DCA:  ADD.W           R2, R4, R4,LSL#1
293DCE:  VLDR            D16, [SP,#0x38+var_30]
293DD2:  MOVW            R3, #:lower16:(loc_303144+2)
293DD6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293DD8:  ADD.W           R2, R5, R2,LSL#2
293DDC:  LDR             R1, [SP,#0x38+var_28]
293DDE:  MOVT            R3, #:upper16:(loc_303144+2)
293DE2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293DE4:  STR             R1, [R2,#8]
293DE6:  VSTR            D16, [R2]
293DEA:  MOV             R2, #0x1E130A
293DF2:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293DF4:  ADD             R2, R3
293DF6:  STR.W           R2, [R11,#4]
293DFA:  ADDS            R4, R1, #1
293DFC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293DFE:  MOVS            R2, #0x4E ; 'N'
293E00:  STR.W           R8, [SP,#0x38+var_30+4]
293E04:  STR             R2, [SP,#0x38+var_30]
293E06:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293E08:  ADDS            R0, R1, #2
293E0A:  CMP             R2, R0
293E0C:  BCS             loc_293E68
293E0E:  MOVW            R1, #0xAAAB
293E12:  LSLS            R0, R0, #2
293E14:  MOVT            R1, #0xAAAA
293E18:  UMULL.W         R0, R1, R0, R1
293E1C:  MOVS            R0, #3
293E1E:  ADD.W           R9, R0, R1,LSR#1
293E22:  ADD.W           R0, R9, R9,LSL#1
293E26:  LSLS            R0, R0, #2; byte_count
293E28:  BLX             malloc
293E2C:  MOV             R5, R0
293E2E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293E36)
293E32:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293E34:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293E36:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293E38:  CBZ             R6, loc_293E58
293E3A:  ADD.W           R0, R4, R4,LSL#1
293E3E:  MOV             R1, R6; void *
293E40:  LSLS            R2, R0, #2; size_t
293E42:  MOV             R0, R5; void *
293E44:  BLX             memcpy_0
293E48:  MOV             R0, R6; p
293E4A:  BLX             free
293E4E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293E56)
293E52:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293E54:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293E56:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293E58:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293E60)
293E5C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293E5E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293E60:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293E62:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293E66:  B               loc_293E72
293E68:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293E70)
293E6C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293E6E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293E70:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293E72:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293E86)
293E76:  ADD.W           R2, R4, R4,LSL#1
293E7A:  VLDR            D16, [SP,#0x38+var_30]
293E7E:  MOVW            R3, #:lower16:(loc_303144+2)
293E82:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293E84:  ADD.W           R2, R5, R2,LSL#2
293E88:  LDR             R1, [SP,#0x38+var_28]
293E8A:  MOVT            R3, #:upper16:(loc_303144+2)
293E8E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293E90:  STR             R1, [R2,#8]
293E92:  VSTR            D16, [R2]
293E96:  MOV             R2, #0x2520FB
293E9E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293EA0:  ADD             R2, R3
293EA2:  STR.W           R2, [R11,#4]
293EA6:  ADDS            R4, R1, #1
293EA8:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293EAA:  MOVS            R2, #0x4F ; 'O'
293EAC:  STR.W           R8, [SP,#0x38+var_30+4]
293EB0:  STR             R2, [SP,#0x38+var_30]
293EB2:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293EB4:  ADDS            R0, R1, #2
293EB6:  CMP             R2, R0
293EB8:  BCS             loc_293F14
293EBA:  MOVW            R1, #0xAAAB
293EBE:  LSLS            R0, R0, #2
293EC0:  MOVT            R1, #0xAAAA
293EC4:  UMULL.W         R0, R1, R0, R1
293EC8:  MOVS            R0, #3
293ECA:  ADD.W           R9, R0, R1,LSR#1
293ECE:  ADD.W           R0, R9, R9,LSL#1
293ED2:  LSLS            R0, R0, #2; byte_count
293ED4:  BLX             malloc
293ED8:  MOV             R5, R0
293EDA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293EE2)
293EDE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293EE0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293EE2:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293EE4:  CBZ             R6, loc_293F04
293EE6:  ADD.W           R0, R4, R4,LSL#1
293EEA:  MOV             R1, R6; void *
293EEC:  LSLS            R2, R0, #2; size_t
293EEE:  MOV             R0, R5; void *
293EF0:  BLX             memcpy_0
293EF4:  MOV             R0, R6; p
293EF6:  BLX             free
293EFA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293F02)
293EFE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293F00:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293F02:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293F04:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293F0C)
293F08:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293F0A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293F0C:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293F0E:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293F12:  B               loc_293F1E
293F14:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293F1C)
293F18:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293F1A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293F1C:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293F1E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293F2E)
293F22:  ADD.W           R2, R4, R4,LSL#1
293F26:  VLDR            D16, [SP,#0x38+var_30]
293F2A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293F2C:  ADD.W           R2, R5, R2,LSL#2
293F30:  LDR             R1, [SP,#0x38+var_28]
293F32:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293F34:  STR             R1, [R2,#8]
293F36:  VSTR            D16, [R2]
293F3A:  MOV             R2, #0x303146
293F42:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293F44:  ADD.W           R2, R2, #0x142000
293F48:  ADDS            R2, #0xFB
293F4A:  STR.W           R2, [R11,#4]
293F4E:  ADDS            R4, R1, #1
293F50:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293F52:  MOVS            R2, #0x50 ; 'P'
293F54:  STR.W           R8, [SP,#0x38+var_30+4]
293F58:  STR             R2, [SP,#0x38+var_30]
293F5A:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
293F5C:  ADDS            R0, R1, #2
293F5E:  CMP             R2, R0
293F60:  BCS             loc_293FBC
293F62:  MOVW            R1, #0xAAAB
293F66:  LSLS            R0, R0, #2
293F68:  MOVT            R1, #0xAAAA
293F6C:  UMULL.W         R0, R1, R0, R1
293F70:  MOVS            R0, #3
293F72:  ADD.W           R9, R0, R1,LSR#1
293F76:  ADD.W           R0, R9, R9,LSL#1
293F7A:  LSLS            R0, R0, #2; byte_count
293F7C:  BLX             malloc
293F80:  MOV             R5, R0
293F82:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293F8A)
293F86:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293F88:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293F8A:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
293F8C:  CBZ             R6, loc_293FAC
293F8E:  ADD.W           R0, R4, R4,LSL#1
293F92:  MOV             R1, R6; void *
293F94:  LSLS            R2, R0, #2; size_t
293F96:  MOV             R0, R5; void *
293F98:  BLX             memcpy_0
293F9C:  MOV             R0, R6; p
293F9E:  BLX             free
293FA2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293FAA)
293FA6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293FA8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293FAA:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293FAC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293FB4)
293FB0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293FB2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293FB4:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293FB6:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
293FBA:  B               loc_293FC6
293FBC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293FC4)
293FC0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293FC2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293FC4:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
293FC6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x293FD6)
293FCA:  ADD.W           R2, R4, R4,LSL#1
293FCE:  VLDR            D16, [SP,#0x38+var_30]
293FD2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
293FD4:  ADD.W           R2, R5, R2,LSL#2
293FD8:  LDR             R1, [SP,#0x38+var_28]
293FDA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
293FDC:  STR             R1, [R2,#8]
293FDE:  VSTR            D16, [R2]
293FE2:  MOV             R2, #0x303146
293FEA:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
293FEC:  ADD.W           R2, R2, #0x1C2000
293FF0:  ADDS            R2, #0xFB
293FF2:  STR.W           R2, [R11,#4]
293FF6:  ADDS            R4, R1, #1
293FF8:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
293FFA:  MOVS            R2, #0x51 ; 'Q'
293FFC:  STR.W           R8, [SP,#0x38+var_30+4]
294000:  STR             R2, [SP,#0x38+var_30]
294002:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
294004:  ADDS            R0, R1, #2
294006:  CMP             R2, R0
294008:  BCS             loc_294064
29400A:  MOVW            R1, #0xAAAB
29400E:  LSLS            R0, R0, #2
294010:  MOVT            R1, #0xAAAA
294014:  UMULL.W         R0, R1, R0, R1
294018:  MOVS            R0, #3
29401A:  ADD.W           R9, R0, R1,LSR#1
29401E:  ADD.W           R0, R9, R9,LSL#1
294022:  LSLS            R0, R0, #2; byte_count
294024:  BLX             malloc
294028:  MOV             R5, R0
29402A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294032)
29402E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294030:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294032:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
294034:  CBZ             R6, loc_294054
294036:  ADD.W           R0, R4, R4,LSL#1
29403A:  MOV             R1, R6; void *
29403C:  LSLS            R2, R0, #2; size_t
29403E:  MOV             R0, R5; void *
294040:  BLX             memcpy_0
294044:  MOV             R0, R6; p
294046:  BLX             free
29404A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294052)
29404E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294050:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294052:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294054:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29405C)
294058:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29405A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29405C:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29405E:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294062:  B               loc_29406E
294064:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29406C)
294068:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29406A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29406C:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29406E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294082)
294072:  ADD.W           R2, R4, R4,LSL#1
294076:  VLDR            D16, [SP,#0x38+var_30]
29407A:  MOVW            R3, #:lower16:(loc_303144+2)
29407E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294080:  ADD.W           R2, R5, R2,LSL#2
294084:  LDR             R1, [SP,#0x38+var_28]
294086:  MOVT            R3, #:upper16:(loc_303144+2)
29408A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29408C:  STR             R1, [R2,#8]
29408E:  VSTR            D16, [R2]
294092:  MOV             R2, #0x2220FB
29409A:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29409C:  ADD             R2, R3
29409E:  STR.W           R2, [R11,#4]
2940A2:  ADDS            R4, R1, #1
2940A4:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2940A6:  MOVS            R2, #0x52 ; 'R'
2940A8:  STR.W           R8, [SP,#0x38+var_30+4]
2940AC:  STR             R2, [SP,#0x38+var_30]
2940AE:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2940B0:  ADDS            R0, R1, #2
2940B2:  CMP             R2, R0
2940B4:  BCS             loc_294110
2940B6:  MOVW            R1, #0xAAAB
2940BA:  LSLS            R0, R0, #2
2940BC:  MOVT            R1, #0xAAAA
2940C0:  UMULL.W         R0, R1, R0, R1
2940C4:  MOVS            R0, #3
2940C6:  ADD.W           R9, R0, R1,LSR#1
2940CA:  ADD.W           R0, R9, R9,LSL#1
2940CE:  LSLS            R0, R0, #2; byte_count
2940D0:  BLX             malloc
2940D4:  MOV             R5, R0
2940D6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2940DE)
2940DA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2940DC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2940DE:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2940E0:  CBZ             R6, loc_294100
2940E2:  ADD.W           R0, R4, R4,LSL#1
2940E6:  MOV             R1, R6; void *
2940E8:  LSLS            R2, R0, #2; size_t
2940EA:  MOV             R0, R5; void *
2940EC:  BLX             memcpy_0
2940F0:  MOV             R0, R6; p
2940F2:  BLX             free
2940F6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2940FE)
2940FA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2940FC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2940FE:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294100:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294108)
294104:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294106:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294108:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29410A:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
29410E:  B               loc_29411A
294110:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294118)
294114:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294116:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294118:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29411A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29412E)
29411E:  ADD.W           R2, R4, R4,LSL#1
294122:  VLDR            D16, [SP,#0x38+var_30]
294126:  MOVW            R3, #:lower16:(loc_303144+2)
29412A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29412C:  ADD.W           R2, R5, R2,LSL#2
294130:  LDR             R1, [SP,#0x38+var_28]
294132:  MOVT            R3, #:upper16:(loc_303144+2)
294136:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294138:  STR             R1, [R2,#8]
29413A:  VSTR            D16, [R2]
29413E:  MOV             R2, #0x2617FE
294146:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
294148:  ADD             R2, R3
29414A:  STR.W           R2, [R11,#4]
29414E:  ADDS            R4, R1, #1
294150:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294152:  MOVS            R2, #0x53 ; 'S'
294154:  STR.W           R8, [SP,#0x38+var_30+4]
294158:  STR             R2, [SP,#0x38+var_30]
29415A:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29415C:  ADDS            R0, R1, #2
29415E:  CMP             R2, R0
294160:  BCS             loc_2941BC
294162:  MOVW            R1, #0xAAAB
294166:  LSLS            R0, R0, #2
294168:  MOVT            R1, #0xAAAA
29416C:  UMULL.W         R0, R1, R0, R1
294170:  MOVS            R0, #3
294172:  ADD.W           R9, R0, R1,LSR#1
294176:  ADD.W           R0, R9, R9,LSL#1
29417A:  LSLS            R0, R0, #2; byte_count
29417C:  BLX             malloc
294180:  MOV             R5, R0
294182:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29418A)
294186:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294188:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29418A:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29418C:  CBZ             R6, loc_2941AC
29418E:  ADD.W           R0, R4, R4,LSL#1
294192:  MOV             R1, R6; void *
294194:  LSLS            R2, R0, #2; size_t
294196:  MOV             R0, R5; void *
294198:  BLX             memcpy_0
29419C:  MOV             R0, R6; p
29419E:  BLX             free
2941A2:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2941AA)
2941A6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2941A8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2941AA:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2941AC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2941B4)
2941B0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2941B2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2941B4:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2941B6:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2941BA:  B               loc_2941C6
2941BC:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2941C4)
2941C0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2941C2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2941C4:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2941C6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2941DA)
2941CA:  ADD.W           R2, R4, R4,LSL#1
2941CE:  VLDR            D16, [SP,#0x38+var_30]
2941D2:  MOVW            R3, #:lower16:(loc_303144+2)
2941D6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2941D8:  ADD.W           R2, R5, R2,LSL#2
2941DC:  LDR             R1, [SP,#0x38+var_28]
2941DE:  MOVT            R3, #:upper16:(loc_303144+2)
2941E2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2941E4:  STR             R1, [R2,#8]
2941E6:  VSTR            D16, [R2]
2941EA:  MOV             R2, #0x1C2407
2941F2:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2941F4:  ADD             R2, R3
2941F6:  STR.W           R2, [R11,#4]
2941FA:  ADDS            R4, R1, #1
2941FC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2941FE:  MOVS            R2, #0x54 ; 'T'
294200:  STR.W           R8, [SP,#0x38+var_30+4]
294204:  STR             R2, [SP,#0x38+var_30]
294206:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
294208:  ADDS            R0, R1, #2
29420A:  CMP             R2, R0
29420C:  BCS             loc_294268
29420E:  MOVW            R1, #0xAAAB
294212:  LSLS            R0, R0, #2
294214:  MOVT            R1, #0xAAAA
294218:  UMULL.W         R0, R1, R0, R1
29421C:  MOVS            R0, #3
29421E:  ADD.W           R9, R0, R1,LSR#1
294222:  ADD.W           R0, R9, R9,LSL#1
294226:  LSLS            R0, R0, #2; byte_count
294228:  BLX             malloc
29422C:  MOV             R5, R0
29422E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294236)
294232:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294234:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294236:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
294238:  CBZ             R6, loc_294258
29423A:  ADD.W           R0, R4, R4,LSL#1
29423E:  MOV             R1, R6; void *
294240:  LSLS            R2, R0, #2; size_t
294242:  MOV             R0, R5; void *
294244:  BLX             memcpy_0
294248:  MOV             R0, R6; p
29424A:  BLX             free
29424E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294256)
294252:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294254:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294256:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294258:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294260)
29425C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29425E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294260:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294262:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294266:  B               loc_294272
294268:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294270)
29426C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29426E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294270:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294272:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294286)
294276:  ADD.W           R2, R4, R4,LSL#1
29427A:  VLDR            D16, [SP,#0x38+var_30]
29427E:  MOVW            R3, #:lower16:(loc_303144+2)
294282:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294284:  ADD.W           R2, R5, R2,LSL#2
294288:  LDR             R1, [SP,#0x38+var_28]
29428A:  MOVT            R3, #:upper16:(loc_303144+2)
29428E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294290:  STR             R1, [R2,#8]
294292:  VSTR            D16, [R2]
294296:  MOV             R2, #0x1E1807
29429E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2942A0:  ADD             R2, R3
2942A2:  STR.W           R2, [R11,#4]
2942A6:  ADDS            R4, R1, #1
2942A8:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2942AA:  MOVS            R2, #0x55 ; 'U'
2942AC:  STR.W           R8, [SP,#0x38+var_30+4]
2942B0:  STR             R2, [SP,#0x38+var_30]
2942B2:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2942B4:  ADDS            R0, R1, #2
2942B6:  CMP             R2, R0
2942B8:  BCS             loc_294314
2942BA:  MOVW            R1, #0xAAAB
2942BE:  LSLS            R0, R0, #2
2942C0:  MOVT            R1, #0xAAAA
2942C4:  UMULL.W         R0, R1, R0, R1
2942C8:  MOVS            R0, #3
2942CA:  ADD.W           R9, R0, R1,LSR#1
2942CE:  ADD.W           R0, R9, R9,LSL#1
2942D2:  LSLS            R0, R0, #2; byte_count
2942D4:  BLX             malloc
2942D8:  MOV             R5, R0
2942DA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2942E2)
2942DE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2942E0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2942E2:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2942E4:  CBZ             R6, loc_294304
2942E6:  ADD.W           R0, R4, R4,LSL#1
2942EA:  MOV             R1, R6; void *
2942EC:  LSLS            R2, R0, #2; size_t
2942EE:  MOV             R0, R5; void *
2942F0:  BLX             memcpy_0
2942F4:  MOV             R0, R6; p
2942F6:  BLX             free
2942FA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294302)
2942FE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294300:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294302:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294304:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29430C)
294308:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29430A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29430C:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29430E:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294312:  B               loc_29431E
294314:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29431C)
294318:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29431A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29431C:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29431E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29432E)
294322:  ADD.W           R2, R4, R4,LSL#1
294326:  VLDR            D16, [SP,#0x38+var_30]
29432A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29432C:  ADD.W           R2, R5, R2,LSL#2
294330:  LDR             R1, [SP,#0x38+var_28]
294332:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294334:  STR             R1, [R2,#8]
294336:  VSTR            D16, [R2]
29433A:  MOV             R2, #0x303146
294342:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
294344:  ADD.W           R2, R2, #0x71800
294348:  ADD.W           R2, R2, #0x408
29434C:  STR.W           R2, [R11,#4]
294350:  ADDS            R4, R1, #1
294352:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294354:  MOVS            R2, #0x56 ; 'V'
294356:  STR.W           R8, [SP,#0x38+var_30+4]
29435A:  STR             R2, [SP,#0x38+var_30]
29435C:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29435E:  ADDS            R0, R1, #2
294360:  CMP             R2, R0
294362:  BCS             loc_2943BE
294364:  MOVW            R1, #0xAAAB
294368:  LSLS            R0, R0, #2
29436A:  MOVT            R1, #0xAAAA
29436E:  UMULL.W         R0, R1, R0, R1
294372:  MOVS            R0, #3
294374:  ADD.W           R9, R0, R1,LSR#1
294378:  ADD.W           R0, R9, R9,LSL#1
29437C:  LSLS            R0, R0, #2; byte_count
29437E:  BLX             malloc
294382:  MOV             R5, R0
294384:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29438C)
294388:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29438A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29438C:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29438E:  CBZ             R6, loc_2943AE
294390:  ADD.W           R0, R4, R4,LSL#1
294394:  MOV             R1, R6; void *
294396:  LSLS            R2, R0, #2; size_t
294398:  MOV             R0, R5; void *
29439A:  BLX             memcpy_0
29439E:  MOV             R0, R6; p
2943A0:  BLX             free
2943A4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2943AC)
2943A8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2943AA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2943AC:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2943AE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2943B6)
2943B2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2943B4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2943B6:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2943B8:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2943BC:  B               loc_2943C8
2943BE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2943C6)
2943C2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2943C4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2943C6:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2943C8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2943D8)
2943CC:  ADD.W           R2, R4, R4,LSL#1
2943D0:  VLDR            D16, [SP,#0x38+var_30]
2943D4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2943D6:  ADD.W           R2, R5, R2,LSL#2
2943DA:  LDR             R1, [SP,#0x38+var_28]
2943DC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2943DE:  STR             R1, [R2,#8]
2943E0:  VSTR            D16, [R2]
2943E4:  MOV             R2, #0x303146
2943EC:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2943EE:  ADD.W           R2, R2, #0x80008
2943F2:  ADD.W           R2, R2, #0x1C00
2943F6:  STR.W           R2, [R11,#4]
2943FA:  ADDS            R4, R1, #1
2943FC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2943FE:  MOVS            R2, #0x57 ; 'W'
294400:  STR.W           R8, [SP,#0x38+var_30+4]
294404:  STR             R2, [SP,#0x38+var_30]
294406:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
294408:  ADDS            R0, R1, #2
29440A:  CMP             R2, R0
29440C:  BCS             loc_294468
29440E:  MOVW            R1, #0xAAAB
294412:  LSLS            R0, R0, #2
294414:  MOVT            R1, #0xAAAA
294418:  UMULL.W         R0, R1, R0, R1
29441C:  MOVS            R0, #3
29441E:  ADD.W           R9, R0, R1,LSR#1
294422:  ADD.W           R0, R9, R9,LSL#1
294426:  LSLS            R0, R0, #2; byte_count
294428:  BLX             malloc
29442C:  MOV             R5, R0
29442E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294436)
294432:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294434:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294436:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
294438:  CBZ             R6, loc_294458
29443A:  ADD.W           R0, R4, R4,LSL#1
29443E:  MOV             R1, R6; void *
294440:  LSLS            R2, R0, #2; size_t
294442:  MOV             R0, R5; void *
294444:  BLX             memcpy_0
294448:  MOV             R0, R6; p
29444A:  BLX             free
29444E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294456)
294452:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294454:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294456:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294458:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294460)
29445C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29445E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294460:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294462:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294466:  B               loc_294472
294468:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294470)
29446C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29446E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294470:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294472:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294486)
294476:  ADD.W           R2, R4, R4,LSL#1
29447A:  VLDR            D16, [SP,#0x38+var_30]
29447E:  MOVW            R3, #:lower16:(loc_303144+2)
294482:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294484:  ADD.W           R2, R5, R2,LSL#2
294488:  LDR             R1, [SP,#0x38+var_28]
29448A:  MOVT            R3, #:upper16:(loc_303144+2)
29448E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294490:  STR             R1, [R2,#8]
294492:  VSTR            D16, [R2]
294496:  MOV             R2, #0x91C08
29449E:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2944A0:  ADD             R2, R3
2944A2:  STR.W           R2, [R11,#4]
2944A6:  ADDS            R4, R1, #1
2944A8:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2944AA:  MOVS            R2, #0x58 ; 'X'
2944AC:  STR.W           R8, [SP,#0x38+var_30+4]
2944B0:  STR             R2, [SP,#0x38+var_30]
2944B2:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2944B4:  ADDS            R0, R1, #2
2944B6:  CMP             R2, R0
2944B8:  BCS             loc_294514
2944BA:  MOVW            R1, #0xAAAB
2944BE:  LSLS            R0, R0, #2
2944C0:  MOVT            R1, #0xAAAA
2944C4:  UMULL.W         R0, R1, R0, R1
2944C8:  MOVS            R0, #3
2944CA:  ADD.W           R9, R0, R1,LSR#1
2944CE:  ADD.W           R0, R9, R9,LSL#1
2944D2:  LSLS            R0, R0, #2; byte_count
2944D4:  BLX             malloc
2944D8:  MOV             R5, R0
2944DA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2944E2)
2944DE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2944E0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2944E2:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2944E4:  CBZ             R6, loc_294504
2944E6:  ADD.W           R0, R4, R4,LSL#1
2944EA:  MOV             R1, R6; void *
2944EC:  LSLS            R2, R0, #2; size_t
2944EE:  MOV             R0, R5; void *
2944F0:  BLX             memcpy_0
2944F4:  MOV             R0, R6; p
2944F6:  BLX             free
2944FA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294502)
2944FE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294500:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294502:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294504:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29450C)
294508:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29450A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29450C:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29450E:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294512:  B               loc_29451E
294514:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29451C)
294518:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29451A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29451C:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29451E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294532)
294522:  ADD.W           R2, R4, R4,LSL#1
294526:  VLDR            D16, [SP,#0x38+var_30]
29452A:  MOVW            R3, #:lower16:(loc_303144+2)
29452E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294530:  ADD.W           R2, R5, R2,LSL#2
294534:  LDR             R1, [SP,#0x38+var_28]
294536:  MOVT            R3, #:upper16:(loc_303144+2)
29453A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29453C:  STR             R1, [R2,#8]
29453E:  VSTR            D16, [R2]
294542:  MOV             R2, #0x231B0A
29454A:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29454C:  ADD             R2, R3
29454E:  STR.W           R2, [R11,#4]
294552:  ADDS            R4, R1, #1
294554:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294556:  MOVS            R2, #0x59 ; 'Y'
294558:  STR.W           R8, [SP,#0x38+var_30+4]
29455C:  STR             R2, [SP,#0x38+var_30]
29455E:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
294560:  ADDS            R0, R1, #2
294562:  CMP             R2, R0
294564:  BCS             loc_2945C0
294566:  MOVW            R1, #0xAAAB
29456A:  LSLS            R0, R0, #2
29456C:  MOVT            R1, #0xAAAA
294570:  UMULL.W         R0, R1, R0, R1
294574:  MOVS            R0, #3
294576:  ADD.W           R9, R0, R1,LSR#1
29457A:  ADD.W           R0, R9, R9,LSL#1
29457E:  LSLS            R0, R0, #2; byte_count
294580:  BLX             malloc
294584:  MOV             R5, R0
294586:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29458E)
29458A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29458C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29458E:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
294590:  CBZ             R6, loc_2945B0
294592:  ADD.W           R0, R4, R4,LSL#1
294596:  MOV             R1, R6; void *
294598:  LSLS            R2, R0, #2; size_t
29459A:  MOV             R0, R5; void *
29459C:  BLX             memcpy_0
2945A0:  MOV             R0, R6; p
2945A2:  BLX             free
2945A6:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2945AE)
2945AA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2945AC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2945AE:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2945B0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2945B8)
2945B4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2945B6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2945B8:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2945BA:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2945BE:  B               loc_2945CA
2945C0:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2945C8)
2945C4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2945C6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2945C8:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2945CA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2945DA)
2945CE:  ADD.W           R2, R4, R4,LSL#1
2945D2:  VLDR            D16, [SP,#0x38+var_30]
2945D6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2945D8:  ADD.W           R2, R5, R2,LSL#2
2945DC:  LDR             R1, [SP,#0x38+var_28]
2945DE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2945E0:  STR             R1, [R2,#8]
2945E2:  VSTR            D16, [R2]
2945E6:  MOV             R2, #0x303146
2945EE:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2945F0:  ADD.W           R2, R2, #0x41800
2945F4:  ADD.W           R2, R2, #0x408
2945F8:  STR.W           R2, [R11,#4]
2945FC:  ADDS            R4, R1, #1
2945FE:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294600:  MOVS            R2, #0x5A ; 'Z'
294602:  STR.W           R8, [SP,#0x38+var_30+4]
294606:  STR             R2, [SP,#0x38+var_30]
294608:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29460A:  ADDS            R0, R1, #2
29460C:  CMP             R2, R0
29460E:  BCS             loc_29466A
294610:  MOVW            R1, #0xAAAB
294614:  LSLS            R0, R0, #2
294616:  MOVT            R1, #0xAAAA
29461A:  UMULL.W         R0, R1, R0, R1
29461E:  MOVS            R0, #3
294620:  ADD.W           R9, R0, R1,LSR#1
294624:  ADD.W           R0, R9, R9,LSL#1
294628:  LSLS            R0, R0, #2; byte_count
29462A:  BLX             malloc
29462E:  MOV             R5, R0
294630:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294638)
294634:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294636:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294638:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29463A:  CBZ             R6, loc_29465A
29463C:  ADD.W           R0, R4, R4,LSL#1
294640:  MOV             R1, R6; void *
294642:  LSLS            R2, R0, #2; size_t
294644:  MOV             R0, R5; void *
294646:  BLX             memcpy_0
29464A:  MOV             R0, R6; p
29464C:  BLX             free
294650:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294658)
294654:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294656:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294658:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29465A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294662)
29465E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294660:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294662:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294664:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294668:  B               loc_294674
29466A:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294672)
29466E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294670:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294672:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294674:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294684)
294678:  ADD.W           R2, R4, R4,LSL#1
29467C:  VLDR            D16, [SP,#0x38+var_30]
294680:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294682:  ADD.W           R2, R5, R2,LSL#2
294686:  LDR             R1, [SP,#0x38+var_28]
294688:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29468A:  STR             R1, [R2,#8]
29468C:  VSTR            D16, [R2]
294690:  MOV             R2, #0x303146
294698:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29469A:  ADD.W           R2, R2, #0x51800
29469E:  ADD.W           R2, R2, #0x408
2946A2:  STR.W           R2, [R11,#4]
2946A6:  ADDS            R4, R1, #1
2946A8:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2946AA:  MOVS            R2, #0x5B ; '['
2946AC:  STR.W           R8, [SP,#0x38+var_30+4]
2946B0:  STR             R2, [SP,#0x38+var_30]
2946B2:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2946B4:  ADDS            R0, R1, #2
2946B6:  CMP             R2, R0
2946B8:  BCS             loc_294714
2946BA:  MOVW            R1, #0xAAAB
2946BE:  LSLS            R0, R0, #2
2946C0:  MOVT            R1, #0xAAAA
2946C4:  UMULL.W         R0, R1, R0, R1
2946C8:  MOVS            R0, #3
2946CA:  ADD.W           R9, R0, R1,LSR#1
2946CE:  ADD.W           R0, R9, R9,LSL#1
2946D2:  LSLS            R0, R0, #2; byte_count
2946D4:  BLX             malloc
2946D8:  MOV             R5, R0
2946DA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2946E2)
2946DE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2946E0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2946E2:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2946E4:  CBZ             R6, loc_294704
2946E6:  ADD.W           R0, R4, R4,LSL#1
2946EA:  MOV             R1, R6; void *
2946EC:  LSLS            R2, R0, #2; size_t
2946EE:  MOV             R0, R5; void *
2946F0:  BLX             memcpy_0
2946F4:  MOV             R0, R6; p
2946F6:  BLX             free
2946FA:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294702)
2946FE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294700:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294702:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294704:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29470C)
294708:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29470A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29470C:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29470E:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294712:  B               loc_29471E
294714:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29471C)
294718:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29471A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29471C:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29471E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29472E)
294722:  ADD.W           R2, R4, R4,LSL#1
294726:  VLDR            D16, [SP,#0x38+var_30]
29472A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29472C:  ADD.W           R2, R5, R2,LSL#2
294730:  LDR             R1, [SP,#0x38+var_28]
294732:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294734:  STR             R1, [R2,#8]
294736:  VSTR            D16, [R2]
29473A:  MOV             R2, #0x303146
294742:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
294744:  ADD.W           R2, R2, #0x61800
294748:  ADD.W           R2, R2, #0x408
29474C:  STR.W           R2, [R11,#4]
294750:  ADDS            R4, R1, #1
294752:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294754:  MOVS            R2, #0x5C ; '\'
294756:  STR.W           R8, [SP,#0x38+var_30+4]
29475A:  STR             R2, [SP,#0x38+var_30]
29475C:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
29475E:  ADDS            R0, R1, #2
294760:  CMP             R2, R0
294762:  BCS             loc_2947BE
294764:  MOVW            R1, #0xAAAB
294768:  LSLS            R0, R0, #2
29476A:  MOVT            R1, #0xAAAA
29476E:  UMULL.W         R0, R1, R0, R1
294772:  MOVS            R0, #3
294774:  ADD.W           R9, R0, R1,LSR#1
294778:  ADD.W           R0, R9, R9,LSL#1
29477C:  LSLS            R0, R0, #2; byte_count
29477E:  BLX             malloc
294782:  MOV             R5, R0
294784:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29478C)
294788:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29478A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29478C:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
29478E:  CBZ             R6, loc_2947AE
294790:  ADD.W           R0, R4, R4,LSL#1
294794:  MOV             R1, R6; void *
294796:  LSLS            R2, R0, #2; size_t
294798:  MOV             R0, R5; void *
29479A:  BLX             memcpy_0
29479E:  MOV             R0, R6; p
2947A0:  BLX             free
2947A4:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2947AC)
2947A8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2947AA:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2947AC:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2947AE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2947B6)
2947B2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2947B4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2947B6:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2947B8:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2947BC:  B               loc_2947C8
2947BE:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2947C6)
2947C2:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2947C4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2947C6:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2947C8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2947D8)
2947CC:  ADD.W           R2, R4, R4,LSL#1
2947D0:  VLDR            D16, [SP,#0x38+var_30]
2947D4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2947D6:  ADD.W           R2, R5, R2,LSL#2
2947DA:  LDR             R1, [SP,#0x38+var_28]
2947DC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2947DE:  STR             R1, [R2,#8]
2947E0:  VSTR            D16, [R2]
2947E4:  MOV             R2, #0x303146
2947EC:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2947EE:  ADD.W           R2, R2, #0x11800
2947F2:  ADD.W           R2, R2, #0x408
2947F6:  STR.W           R2, [R11,#4]
2947FA:  ADDS            R4, R1, #1
2947FC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2947FE:  MOVS            R2, #0x5D ; ']'
294800:  STR.W           R8, [SP,#0x38+var_30+4]
294804:  STR             R2, [SP,#0x38+var_30]
294806:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
294808:  ADDS            R0, R1, #2
29480A:  CMP             R2, R0
29480C:  BCS             loc_294868
29480E:  MOVW            R1, #0xAAAB
294812:  LSLS            R0, R0, #2
294814:  MOVT            R1, #0xAAAA
294818:  UMULL.W         R0, R1, R0, R1
29481C:  MOVS            R0, #3
29481E:  ADD.W           R9, R0, R1,LSR#1
294822:  ADD.W           R0, R9, R9,LSL#1
294826:  LSLS            R0, R0, #2; byte_count
294828:  BLX             malloc
29482C:  MOV             R5, R0
29482E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294836)
294832:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294834:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294836:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
294838:  CBZ             R6, loc_294858
29483A:  ADD.W           R0, R4, R4,LSL#1
29483E:  MOV             R1, R6; void *
294840:  LSLS            R2, R0, #2; size_t
294842:  MOV             R0, R5; void *
294844:  BLX             memcpy_0
294848:  MOV             R0, R6; p
29484A:  BLX             free
29484E:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294856)
294852:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294854:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294856:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294858:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294860)
29485C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29485E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294860:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294862:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294866:  B               loc_294872
294868:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294870)
29486C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29486E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294870:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294872:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294882)
294876:  ADD.W           R2, R4, R4,LSL#1
29487A:  VLDR            D16, [SP,#0x38+var_30]
29487E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294880:  ADD.W           R2, R5, R2,LSL#2
294884:  LDR             R1, [SP,#0x38+var_28]
294886:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294888:  STR             R1, [R2,#8]
29488A:  VSTR            D16, [R2]
29488E:  MOV             R2, #0x303146
294896:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
294898:  ADD.W           R2, R2, #0x21800
29489C:  ADD.W           R2, R2, #0x408
2948A0:  STR.W           R2, [R11,#4]
2948A4:  ADDS            R4, R1, #1
2948A6:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2948A8:  MOVS            R2, #0x5E ; '^'
2948AA:  STR.W           R8, [SP,#0x38+var_30+4]
2948AE:  STR             R2, [SP,#0x38+var_30]
2948B0:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2948B2:  ADDS            R0, R1, #2
2948B4:  CMP             R2, R0
2948B6:  BCS             loc_294912
2948B8:  MOVW            R1, #0xAAAB
2948BC:  LSLS            R0, R0, #2
2948BE:  MOVT            R1, #0xAAAA
2948C2:  UMULL.W         R0, R1, R0, R1
2948C6:  MOVS            R0, #3
2948C8:  ADD.W           R9, R0, R1,LSR#1
2948CC:  ADD.W           R0, R9, R9,LSL#1
2948D0:  LSLS            R0, R0, #2; byte_count
2948D2:  BLX             malloc
2948D6:  MOV             R5, R0
2948D8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2948E0)
2948DC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2948DE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2948E0:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
2948E2:  CBZ             R6, loc_294902
2948E4:  ADD.W           R0, R4, R4,LSL#1
2948E8:  MOV             R1, R6; void *
2948EA:  LSLS            R2, R0, #2; size_t
2948EC:  MOV             R0, R5; void *
2948EE:  BLX             memcpy_0
2948F2:  MOV             R0, R6; p
2948F4:  BLX             free
2948F8:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294900)
2948FC:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2948FE:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294900:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294902:  LDR.W           R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29490A)
294906:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294908:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29490A:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29490C:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294910:  B               loc_29491A
294912:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294918)
294914:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294916:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294918:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
29491A:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294928)
29491C:  ADD.W           R2, R4, R4,LSL#1
294920:  VLDR            D16, [SP,#0x38+var_30]
294924:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294926:  ADD.W           R2, R5, R2,LSL#2
29492A:  LDR             R1, [SP,#0x38+var_28]
29492C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29492E:  STR             R1, [R2,#8]
294930:  VSTR            D16, [R2]
294934:  MOV             R2, #0x303146
29493C:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
29493E:  ADD.W           R2, R2, #0x31800
294942:  ADD.W           R2, R2, #0x408
294946:  STR.W           R2, [R11,#4]
29494A:  ADDS            R4, R1, #1
29494C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
29494E:  MOVS            R2, #0x5F ; '_'
294950:  STR.W           R8, [SP,#0x38+var_30+4]
294954:  STR             R2, [SP,#0x38+var_30]
294956:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
294958:  ADDS            R0, R1, #2
29495A:  CMP             R2, R0
29495C:  BCS             loc_2949B2
29495E:  MOVW            R1, #0xAAAB
294962:  LSLS            R0, R0, #2
294964:  MOVT            R1, #0xAAAA
294968:  UMULL.W         R0, R1, R0, R1
29496C:  MOVS            R0, #3
29496E:  ADD.W           R9, R0, R1,LSR#1
294972:  ADD.W           R0, R9, R9,LSL#1
294976:  LSLS            R0, R0, #2; byte_count
294978:  BLX             malloc
29497C:  MOV             R5, R0
29497E:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294984)
294980:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294982:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294984:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
294986:  CBZ             R6, loc_2949A4
294988:  ADD.W           R0, R4, R4,LSL#1
29498C:  MOV             R1, R6; void *
29498E:  LSLS            R2, R0, #2; size_t
294990:  MOV             R0, R5; void *
294992:  BLX             memcpy_0
294996:  MOV             R0, R6; p
294998:  BLX             free
29499C:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2949A2)
29499E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2949A0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2949A2:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2949A4:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2949AA)
2949A6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2949A8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2949AA:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2949AC:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
2949B0:  B               loc_2949BA
2949B2:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2949B8)
2949B4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2949B6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2949B8:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
2949BA:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2949CC)
2949BC:  ADD.W           R2, R4, R4,LSL#1
2949C0:  VLDR            D16, [SP,#0x38+var_30]
2949C4:  MOVW            R3, #:lower16:(loc_303144+2)
2949C8:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2949CA:  ADD.W           R2, R5, R2,LSL#2
2949CE:  LDR             R1, [SP,#0x38+var_28]
2949D0:  MOVT            R3, #:upper16:(loc_303144+2)
2949D4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2949D6:  STR             R1, [R2,#8]
2949D8:  VSTR            D16, [R2]
2949DC:  MOVW            R2, #0x1C08
2949E0:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
2949E2:  ADD             R2, R3
2949E4:  STR.W           R2, [R11,#4]
2949E8:  MOVS            R2, #0x60 ; '`'
2949EA:  ADDS            R4, R1, #1
2949EC:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
2949EE:  STR.W           R8, [SP,#0x38+var_30+4]
2949F2:  STR             R2, [SP,#0x38+var_30]
2949F4:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
2949F6:  ADDS            R0, R1, #2
2949F8:  CMP             R2, R0
2949FA:  BCS             loc_294A50
2949FC:  MOVW            R1, #0xAAAB
294A00:  LSLS            R0, R0, #2
294A02:  MOVT            R1, #0xAAAA
294A06:  UMULL.W         R0, R1, R0, R1
294A0A:  MOVS            R0, #3
294A0C:  ADD.W           R9, R0, R1,LSR#1
294A10:  ADD.W           R0, R9, R9,LSL#1
294A14:  LSLS            R0, R0, #2; byte_count
294A16:  BLX             malloc
294A1A:  MOV             R5, R0
294A1C:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294A22)
294A1E:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294A20:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294A22:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
294A24:  CBZ             R6, loc_294A42
294A26:  ADD.W           R0, R4, R4,LSL#1
294A2A:  MOV             R1, R6; void *
294A2C:  LSLS            R2, R0, #2; size_t
294A2E:  MOV             R0, R5; void *
294A30:  BLX             memcpy_0
294A34:  MOV             R0, R6; p
294A36:  BLX             free
294A3A:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294A40)
294A3C:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294A3E:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294A40:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294A42:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294A48)
294A44:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294A46:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294A48:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294A4A:  STR.W           R9, [R0]; CHIDKeyboard::m_KeyPairs
294A4E:  B               loc_294A58
294A50:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294A56)
294A52:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294A54:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294A56:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294A58:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294A6A)
294A5A:  ADD.W           R2, R4, R4,LSL#1
294A5E:  VLDR            D16, [SP,#0x38+var_30]
294A62:  MOVW            R3, #:lower16:(loc_303144+2)
294A66:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294A68:  ADD.W           R2, R5, R2,LSL#2
294A6C:  LDR             R1, [SP,#0x38+var_28]
294A6E:  MOVT            R3, #:upper16:(loc_303144+2)
294A72:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294A74:  STR             R1, [R2,#8]
294A76:  VSTR            D16, [R2]
294A7A:  MOV             R2, #0x221F08
294A82:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
294A84:  ADD             R2, R3
294A86:  STR.W           R2, [R11,#4]
294A8A:  ADDS            R4, R1, #1
294A8C:  STR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294A8E:  MOVS            R2, #0x61 ; 'a'
294A90:  STR.W           R8, [SP,#0x38+var_30+4]
294A94:  STR             R2, [SP,#0x38+var_30]
294A96:  LDR             R2, [R0]; CHIDKeyboard::m_KeyPairs
294A98:  ADDS            R0, R1, #2
294A9A:  CMP             R2, R0
294A9C:  BCS             loc_294AF2
294A9E:  MOVW            R1, #0xAAAB
294AA2:  LSLS            R0, R0, #2
294AA4:  MOVT            R1, #0xAAAA
294AA8:  UMULL.W         R0, R1, R0, R1
294AAC:  MOVS            R0, #3
294AAE:  ADD.W           R8, R0, R1,LSR#1
294AB2:  ADD.W           R0, R8, R8,LSL#1
294AB6:  LSLS            R0, R0, #2; byte_count
294AB8:  BLX             malloc
294ABC:  MOV             R5, R0
294ABE:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294AC4)
294AC0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294AC2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294AC4:  LDR             R6, [R0,#(dword_6E0034 - 0x6E002C)]
294AC6:  CBZ             R6, loc_294AE4
294AC8:  ADD.W           R0, R4, R4,LSL#1
294ACC:  MOV             R1, R6; void *
294ACE:  LSLS            R2, R0, #2; size_t
294AD0:  MOV             R0, R5; void *
294AD2:  BLX             memcpy_0
294AD6:  MOV             R0, R6; p
294AD8:  BLX             free
294ADC:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294AE2)
294ADE:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294AE0:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294AE2:  LDR             R4, [R0,#(dword_6E0030 - 0x6E002C)]
294AE4:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294AEA)
294AE6:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294AE8:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294AEA:  STR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294AEC:  STR.W           R8, [R0]; CHIDKeyboard::m_KeyPairs
294AF0:  B               loc_294AFA
294AF2:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294AF8)
294AF4:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294AF6:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294AF8:  LDR             R5, [R0,#(dword_6E0034 - 0x6E002C)]
294AFA:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294B08)
294AFC:  ADD.W           R2, R4, R4,LSL#1
294B00:  VLDR            D16, [SP,#0x38+var_30]
294B04:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294B06:  ADD.W           R2, R5, R2,LSL#2
294B0A:  LDR             R1, [SP,#0x38+var_28]
294B0C:  LDR             R0, [R0]; this
294B0E:  STR             R1, [R2,#8]
294B10:  VSTR            D16, [R2]
294B14:  LDR             R4, [SP,#0x38+var_34]
294B16:  LDR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
294B18:  CMP             R4, #0
294B1A:  ADD.W           R1, R1, #1
294B1E:  STR             R1, [R0,#(dword_6E0030 - 0x6E002C)]
294B20:  BEQ             loc_294B36
294B22:  BLX             j__ZN15CTouchInterface13LoadTextureDBEv; CTouchInterface::LoadTextureDB(void)
294B26:  MOV             R5, R0
294B28:  LDR             R0, [SP,#0x38+var_38]; this
294B2A:  MOV             R1, R4; char *
294B2C:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
294B30:  MOV             R0, R5; this
294B32:  BLX             j__ZN15CTouchInterface15UnloadTextureDBEP22TextureDatabaseRuntime; CTouchInterface::UnloadTextureDB(TextureDatabaseRuntime *)
294B36:  LDR             R0, =(__stack_chk_guard_ptr - 0x294B3E)
294B38:  LDR             R1, [SP,#0x38+var_20]
294B3A:  ADD             R0, PC; __stack_chk_guard_ptr
294B3C:  LDR             R0, [R0]; __stack_chk_guard
294B3E:  LDR             R0, [R0]
294B40:  SUBS            R0, R0, R1
294B42:  ITTTT EQ
294B44:  MOVEQ           R0, R10
294B46:  ADDEQ           SP, SP, #0x1C
294B48:  POPEQ.W         {R8-R11}
294B4C:  POPEQ           {R4-R7,PC}
294B4E:  BLX             __stack_chk_fail
