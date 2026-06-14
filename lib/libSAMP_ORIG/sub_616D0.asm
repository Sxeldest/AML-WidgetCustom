; =========================================================
; Game Engine Function: sub_616D0
; Address            : 0x616D0 - 0x61A08
; =========================================================

616D0:  PUSH            {R4-R7,LR}
616D2:  ADD             R7, SP, #0xC
616D4:  PUSH.W          {R8-R11}
616D8:  SUB             SP, SP, #4
616DA:  VPUSH           {D8-D9}
616DE:  SUB             SP, SP, #0x28
616E0:  LDR             R0, =(byte_117674 - 0x616E8)
616E2:  LDR             R1, =(__stack_chk_guard_ptr - 0x616EA)
616E4:  ADD             R0, PC; byte_117674
616E6:  ADD             R1, PC; __stack_chk_guard_ptr
616E8:  LDR             R1, [R1]; __stack_chk_guard
616EA:  LDR             R1, [R1]
616EC:  STR             R1, [SP,#0x58+var_34]
616EE:  LDRB            R0, [R0]
616F0:  DMB.W           ISH
616F4:  LSLS            R0, R0, #0x1F
616F6:  BEQ.W           loc_619CA
616FA:  LDR             R4, =(unk_117660 - 0x61700)
616FC:  ADD             R4, PC; unk_117660
616FE:  MOV             R0, R4
61700:  BL              sub_60BF6
61704:  LDR             R1, =(aSampOrig - 0x6170E); "SAMP_ORIG" ...
61706:  MOVS            R0, #4; prio
61708:  MOV             R2, R4; fmt
6170A:  ADD             R1, PC; "SAMP_ORIG"
6170C:  BLX             __android_log_print
61710:  LDR             R0, =(off_114AA8 - 0x61722)
61712:  MOVW            R1, #0xBEA0
61716:  VMOV.I32        Q4, #0
6171A:  ADD.W           R8, SP, #0x58+var_48
6171E:  ADD             R0, PC; off_114AA8
61720:  MOVT            R1, #0x55 ; 'U'
61724:  LDR.W           R9, [R0]; dword_1A4404
61728:  VST1.64         {D8-D9}, [R8]
6172C:  LDR.W           R0, [R9]
61730:  ADDS            R6, R0, R1
61732:  MOV             R1, R8
61734:  MOV             R0, R6
61736:  BLX             dladdr
6173A:  LDR             R4, =(aUnknownSymbol - 0x61742); "unknown symbol" ...
6173C:  LDR             R5, =(aUnknownFile - 0x61744); "unknown file" ...
6173E:  ADD             R4, PC; "unknown symbol"
61740:  ADD             R5, PC; "unknown file"
61742:  MOV             R10, R4
61744:  CBZ             R0, loc_61770
61746:  LDRD.W          R0, R12, [SP,#0x58+var_48]
6174A:  LDRD.W          R3, R4, [SP,#0x58+var_40]
6174E:  LDR             R1, =(aMemory - 0x6175C); "Memory" ...
61750:  CMP             R0, #0
61752:  LDR             R2, =(aHookingS0xXFro - 0x61762); "Hooking %s (0x%X) from %s (0x%X)" ...
61754:  IT EQ
61756:  MOVEQ           R0, R5
61758:  ADD             R1, PC; "Memory"
6175A:  STRD.W          R0, R12, [SP,#0x58+var_54]
6175E:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
61760:  MOVS            R0, #4; prio
61762:  STR             R4, [SP,#0x58+var_58]
61764:  CMP             R3, #0
61766:  IT EQ
61768:  MOVEQ           R3, R10
6176A:  MOV             R4, R10
6176C:  BLX             __android_log_print
61770:  LDR             R1, =(sub_61424+1 - 0x6177C)
61772:  ADDS            R0, R6, #1
61774:  LDR             R2, =(off_117638 - 0x6177E)
61776:  MOV             R11, R5
61778:  ADD             R1, PC; sub_61424
6177A:  ADD             R2, PC; off_117638
6177C:  BLX             DobbyHook
61780:  LDR.W           R0, [R9]
61784:  MOV             R1, #0x5661D4
6178C:  VST1.64         {D8-D9}, [R8]
61790:  ADDS            R6, R0, R1
61792:  MOV             R1, R8
61794:  MOV             R0, R6
61796:  BLX             dladdr
6179A:  CBZ             R0, loc_617C8
6179C:  LDRD.W          R0, R12, [SP,#0x58+var_48]
617A0:  MOV             R5, R11
617A2:  LDRD.W          R3, R4, [SP,#0x58+var_40]
617A6:  LDR             R1, =(aMemory - 0x617B4); "Memory" ...
617A8:  CMP             R0, #0
617AA:  LDR             R2, =(aHookingS0xXFro - 0x617BA); "Hooking %s (0x%X) from %s (0x%X)" ...
617AC:  IT EQ
617AE:  MOVEQ           R0, R11
617B0:  ADD             R1, PC; "Memory"
617B2:  STRD.W          R0, R12, [SP,#0x58+var_54]
617B6:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
617B8:  MOVS            R0, #4; prio
617BA:  STR             R4, [SP,#0x58+var_58]
617BC:  CMP             R3, #0
617BE:  IT EQ
617C0:  MOVEQ           R3, R10
617C2:  MOV             R4, R10
617C4:  BLX             __android_log_print
617C8:  LDR             R1, =(sub_61494+1 - 0x617D2)
617CA:  ADDS            R0, R6, #1
617CC:  LDR             R2, =(off_11763C - 0x617D4)
617CE:  ADD             R1, PC; sub_61494
617D0:  ADD             R2, PC; off_11763C
617D2:  BLX             DobbyHook
617D6:  LDR.W           R0, [R9]
617DA:  VMOV.I32        Q4, #0
617DE:  MOV             R1, R8
617E0:  ADD.W           R0, R0, #0x560000
617E4:  ADD.W           R6, R0, #0x15600
617E8:  VST1.64         {D8-D9}, [R8]
617EC:  MOV             R0, R6
617EE:  BLX             dladdr
617F2:  CBZ             R0, loc_61820
617F4:  LDRD.W          R0, R12, [SP,#0x58+var_48]
617F8:  MOV             R5, R11
617FA:  LDRD.W          R3, R4, [SP,#0x58+var_40]
617FE:  LDR             R1, =(aMemory - 0x6180C); "Memory" ...
61800:  CMP             R0, #0
61802:  LDR             R2, =(aHookingS0xXFro - 0x61812); "Hooking %s (0x%X) from %s (0x%X)" ...
61804:  IT EQ
61806:  MOVEQ           R0, R11
61808:  ADD             R1, PC; "Memory"
6180A:  STRD.W          R0, R12, [SP,#0x58+var_54]
6180E:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
61810:  MOVS            R0, #4; prio
61812:  STR             R4, [SP,#0x58+var_58]
61814:  CMP             R3, #0
61816:  IT EQ
61818:  MOVEQ           R3, R10
6181A:  MOV             R4, R10
6181C:  BLX             __android_log_print
61820:  LDR             R1, =(sub_61504+1 - 0x6182A)
61822:  ADDS            R0, R6, #1
61824:  LDR             R2, =(off_117640 - 0x6182C)
61826:  ADD             R1, PC; sub_61504
61828:  ADD             R2, PC; off_117640
6182A:  BLX             DobbyHook
6182E:  LDR.W           R0, [R9]
61832:  MOV             R1, #0x57C084
6183A:  VST1.64         {D8-D9}, [R8]
6183E:  ADDS            R6, R0, R1
61840:  MOV             R1, R8
61842:  MOV             R0, R6
61844:  BLX             dladdr
61848:  CBZ             R0, loc_61876
6184A:  LDRD.W          R0, R12, [SP,#0x58+var_48]
6184E:  MOV             R5, R11
61850:  LDRD.W          R3, R4, [SP,#0x58+var_40]
61854:  LDR             R1, =(aMemory - 0x61862); "Memory" ...
61856:  CMP             R0, #0
61858:  LDR             R2, =(aHookingS0xXFro - 0x61868); "Hooking %s (0x%X) from %s (0x%X)" ...
6185A:  IT EQ
6185C:  MOVEQ           R0, R11
6185E:  ADD             R1, PC; "Memory"
61860:  STRD.W          R0, R12, [SP,#0x58+var_54]
61864:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
61866:  MOVS            R0, #4; prio
61868:  STR             R4, [SP,#0x58+var_58]
6186A:  CMP             R3, #0
6186C:  IT EQ
6186E:  MOVEQ           R3, R10
61870:  MOV             R4, R10
61872:  BLX             __android_log_print
61876:  LDR             R1, =(sub_61574+1 - 0x61880)
61878:  ADDS            R0, R6, #1
6187A:  LDR             R2, =(off_117644 - 0x61882)
6187C:  ADD             R1, PC; sub_61574
6187E:  ADD             R2, PC; off_117644
61880:  BLX             DobbyHook
61884:  LDR.W           R0, [R9]
61888:  MOVW            R1, #0x325C
6188C:  VMOV.I32        Q4, #0
61890:  MOVT            R1, #0x5D ; ']'
61894:  ADDS            R6, R0, R1
61896:  MOV             R1, R8
61898:  MOV             R0, R6
6189A:  VST1.64         {D8-D9}, [R8]
6189E:  BLX             dladdr
618A2:  CBZ             R0, loc_618D0
618A4:  LDRD.W          R0, R12, [SP,#0x58+var_48]
618A8:  MOV             R5, R11
618AA:  LDRD.W          R3, R4, [SP,#0x58+var_40]
618AE:  LDR             R1, =(aMemory - 0x618BC); "Memory" ...
618B0:  CMP             R0, #0
618B2:  LDR             R2, =(aHookingS0xXFro - 0x618C2); "Hooking %s (0x%X) from %s (0x%X)" ...
618B4:  IT EQ
618B6:  MOVEQ           R0, R11
618B8:  ADD             R1, PC; "Memory"
618BA:  STRD.W          R0, R12, [SP,#0x58+var_54]
618BE:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
618C0:  MOVS            R0, #4; prio
618C2:  STR             R4, [SP,#0x58+var_58]
618C4:  CMP             R3, #0
618C6:  IT EQ
618C8:  MOVEQ           R3, R10
618CA:  MOV             R4, R10
618CC:  BLX             __android_log_print
618D0:  LDR             R1, =(sub_615E4+1 - 0x618DA)
618D2:  ADDS            R0, R6, #1
618D4:  LDR             R2, =(off_117648 - 0x618DC)
618D6:  ADD             R1, PC; sub_615E4
618D8:  ADD             R2, PC; off_117648
618DA:  BLX             DobbyHook
618DE:  LDR.W           R0, [R9]
618E2:  MOV             R1, #0x1D5B4C
618EA:  VST1.64         {D8-D9}, [R8]
618EE:  ADDS            R6, R0, R1
618F0:  MOV             R1, R8
618F2:  MOV             R0, R6
618F4:  BLX             dladdr
618F8:  CBZ             R0, loc_61926
618FA:  LDRD.W          R0, R12, [SP,#0x58+var_48]
618FE:  MOV             R5, R11
61900:  LDRD.W          R3, R4, [SP,#0x58+var_40]
61904:  LDR             R1, =(aMemory - 0x61912); "Memory" ...
61906:  CMP             R0, #0
61908:  LDR             R2, =(aHookingS0xXFro - 0x61918); "Hooking %s (0x%X) from %s (0x%X)" ...
6190A:  IT EQ
6190C:  MOVEQ           R0, R11
6190E:  ADD             R1, PC; "Memory"
61910:  STRD.W          R0, R12, [SP,#0x58+var_54]
61914:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
61916:  MOVS            R0, #4; prio
61918:  STR             R4, [SP,#0x58+var_58]
6191A:  CMP             R3, #0
6191C:  IT EQ
6191E:  MOVEQ           R3, R10
61920:  MOV             R4, R10
61922:  BLX             __android_log_print
61926:  LDR             R1, =(sub_6162C+1 - 0x61930)
61928:  ADDS            R0, R6, #1
6192A:  LDR             R2, =(off_11764C - 0x61932)
6192C:  ADD             R1, PC; sub_6162C
6192E:  ADD             R2, PC; off_11764C
61930:  BLX             DobbyHook
61934:  LDR.W           R0, [R9]
61938:  MOVW            R1, #0xF2E8
6193C:  VMOV.I32        Q8, #0
61940:  MOVT            R1, #0x22 ; '"'
61944:  ADDS            R6, R0, R1
61946:  MOV             R1, R8
61948:  MOV             R0, R6
6194A:  VST1.64         {D16-D17}, [R8]
6194E:  BLX             dladdr
61952:  CBZ             R0, loc_6197C
61954:  LDRD.W          R0, R12, [SP,#0x58+var_48]
61958:  MOV             R3, R4
6195A:  LDR             R5, [SP,#0x58+var_40]
6195C:  LDR             R4, [SP,#0x58+var_3C]
6195E:  CMP             R0, #0
61960:  LDR             R1, =(aMemory - 0x6196C); "Memory" ...
61962:  LDR             R2, =(aHookingS0xXFro - 0x61970); "Hooking %s (0x%X) from %s (0x%X)" ...
61964:  IT NE
61966:  MOVNE           R11, R0
61968:  ADD             R1, PC; "Memory"
6196A:  MOVS            R0, #4; prio
6196C:  ADD             R2, PC; "Hooking %s (0x%X) from %s (0x%X)"
6196E:  STMEA.W         SP, {R4,R11,R12}
61972:  CMP             R5, #0
61974:  IT NE
61976:  MOVNE           R3, R5
61978:  BLX             __android_log_print
6197C:  LDR             R1, =(sub_616A0+1 - 0x61986)
6197E:  ADDS            R0, R6, #1
61980:  LDR             R2, =(off_117658 - 0x61988)
61982:  ADD             R1, PC; sub_616A0
61984:  ADD             R2, PC; off_117658
61986:  BLX             DobbyHook
6198A:  LDR.W           R0, [R9]
6198E:  MOVW            R3, #0x5394
61992:  LDR             R1, =(sub_61654+1 - 0x619A0)
61994:  MOVT            R3, #0x67 ; 'g'
61998:  LDR             R2, =(off_117650 - 0x619A2)
6199A:  ADD             R0, R3
6199C:  ADD             R1, PC; sub_61654
6199E:  ADD             R2, PC; off_117650
619A0:  BL              sub_60B0C
619A4:  BL              sub_60820
619A8:  LDR             R0, [SP,#0x58+var_34]
619AA:  LDR             R1, =(__stack_chk_guard_ptr - 0x619B0)
619AC:  ADD             R1, PC; __stack_chk_guard_ptr
619AE:  LDR             R1, [R1]; __stack_chk_guard
619B0:  LDR             R1, [R1]
619B2:  CMP             R1, R0
619B4:  ITTTT EQ
619B6:  ADDEQ           SP, SP, #0x28 ; '('
619B8:  VPOPEQ          {D8-D9}
619BC:  ADDEQ           SP, SP, #4
619BE:  POPEQ.W         {R8-R11}
619C2:  IT EQ
619C4:  POPEQ           {R4-R7,PC}
619C6:  BLX             __stack_chk_fail
619CA:  LDR             R0, =(byte_117674 - 0x619D0)
619CC:  ADD             R0, PC; byte_117674 ; __guard *
619CE:  BLX             j___cxa_guard_acquire
619D2:  CMP             R0, #0
619D4:  BEQ.W           loc_616FA
619D8:  LDR             R1, =(unk_117660 - 0x619E8)
619DA:  ADR             R0, dword_61A10
619DC:  VLD1.64         {D16-D17}, [R0@128]
619E0:  MOVW            R6, #0x7229
619E4:  ADD             R1, PC; unk_117660 ; obj
619E6:  MOVT            R6, #0x5A73
619EA:  LDR             R0, =(sub_60BE6+1 - 0x619F8)
619EC:  LDR             R2, =(off_110560 - 0x619FA)
619EE:  MOV             R3, R1
619F0:  VST1.8          {D16-D17}, [R3@128]!
619F4:  ADD             R0, PC; sub_60BE6 ; lpfunc
619F6:  ADD             R2, PC; off_110560 ; lpdso_handle
619F8:  STR             R6, [R3]
619FA:  BLX             __cxa_atexit
619FE:  LDR             R0, =(byte_117674 - 0x61A04)
61A00:  ADD             R0, PC; byte_117674 ; __guard *
61A02:  BLX             j___cxa_guard_release
61A06:  B               loc_616FA
