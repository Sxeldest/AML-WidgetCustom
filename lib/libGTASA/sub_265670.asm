; =========================================================
; Game Engine Function: sub_265670
; Address            : 0x265670 - 0x265830
; =========================================================

265670:  PUSH            {R4-R7,LR}
265672:  ADD             R7, SP, #0xC
265674:  PUSH.W          {R8-R10}
265678:  MOV             R10, R0
26567A:  LDR             R0, =(dword_6D6838 - 0x265682)
26567C:  MOV             R5, R1
26567E:  ADD             R0, PC; dword_6D6838
265680:  LDR             R6, [R0]
265682:  CBNZ            R6, loc_2656AA
265684:  LDR             R0, =(apportableOpenALFuncs_ptr - 0x26568E)
265686:  LDR.W           R8, =(dword_6D6838 - 0x265690)
26568A:  ADD             R0, PC; apportableOpenALFuncs_ptr
26568C:  ADD             R8, PC; dword_6D6838
26568E:  LDR             R4, [R0]; apportableOpenALFuncs
265690:  BLX             j_GetJavaVM
265694:  LDR             R1, [R4,#(off_A98FE0 - 0xA98FD8)]
265696:  MOV             R6, R0
265698:  STR.W           R6, [R8]
26569C:  CMP             R1, #0
26569E:  ITT NE
2656A0:  MOVNE           R0, R6
2656A2:  BLXNE           R1
2656A4:  LDR             R0, =(dword_6D6838 - 0x2656AA)
2656A6:  ADD             R0, PC; dword_6D6838
2656A8:  STR             R6, [R0]
2656AA:  LDR             R0, [R6]
2656AC:  MOVS            R2, #0
2656AE:  LDR             R1, =(dword_6D683C - 0x2656B6)
2656B0:  LDR             R3, [R0,#0x10]
2656B2:  ADD             R1, PC; dword_6D683C
2656B4:  MOV             R0, R6
2656B6:  BLX             R3
2656B8:  LDR             R0, =(dword_6D6840 - 0x2656BE)
2656BA:  ADD             R0, PC; dword_6D6840
2656BC:  LDR             R0, [R0]
2656BE:  CBZ             R0, loc_2656D8
2656C0:  CMP             R5, #0
2656C2:  BEQ.W           loc_2657D6
2656C6:  LDR             R1, =(aAndroidDefault - 0x2656CE); "Android Default"
2656C8:  MOV             R0, R5; char *
2656CA:  ADD             R1, PC; "Android Default"
2656CC:  BLX             strcmp
2656D0:  CMP             R0, #0
2656D2:  BNE.W           loc_265826
2656D6:  B               loc_2657DA
2656D8:  LDR             R0, =(dword_6D683C - 0x2656DE)
2656DA:  ADD             R0, PC; dword_6D683C
2656DC:  LDR             R0, [R0]
2656DE:  LDR             R1, [R0]
2656E0:  LDR             R2, [R1,#0x18]
2656E2:  ADR             R1, aAndroidMediaAu; "android/media/AudioTrack"
2656E4:  BLX             R2
2656E6:  MOV             R1, R0
2656E8:  LDR             R0, =(dword_6D6840 - 0x2656F0)
2656EA:  CMP             R1, #0
2656EC:  ADD             R0, PC; dword_6D6840
2656EE:  STR             R1, [R0]
2656F0:  BEQ.W           loc_26580E
2656F4:  LDR.W           R8, =(dword_6D683C - 0x2656FC)
2656F8:  ADD             R8, PC; dword_6D683C
2656FA:  LDR.W           R0, [R8]
2656FE:  LDR             R2, [R0]
265700:  LDR             R2, [R2,#0x54]
265702:  BLX             R2
265704:  LDR.W           R9, =(dword_6D6840 - 0x265714)
265708:  MOV             R1, R0
26570A:  LDR.W           R0, [R8]
26570E:  ADR             R3, aIiiiiiV; "(IIIIII)V"
265710:  ADD             R9, PC; dword_6D6840
265712:  STR.W           R1, [R9]
265716:  LDR             R2, [R0]
265718:  LDR.W           R6, [R2,#0x84]
26571C:  ADR             R2, aInit_0; "<init>"
26571E:  BLX             R6
265720:  LDR             R1, =(dword_6D6850 - 0x26572E)
265722:  ADR             R2, aGetminbuffersi; "getMinBufferSize"
265724:  LDR.W           R6, [R8]
265728:  ADR             R3, aIiiI_0; "(III)I"
26572A:  ADD             R1, PC; dword_6D6850
26572C:  STR             R0, [R1]
26572E:  LDR             R0, [R6]
265730:  LDR.W           R1, [R9]
265734:  LDR.W           R4, [R0,#0x1C4]
265738:  MOV             R0, R6
26573A:  BLX             R4
26573C:  LDR             R1, =(dword_6D6854 - 0x26574A)
26573E:  ADR             R6, aV_0; "()V"
265740:  LDR.W           R3, [R8]
265744:  ADR             R2, aPlay; "play"
265746:  ADD             R1, PC; dword_6D6854
265748:  STR             R0, [R1]
26574A:  LDR             R0, [R3]
26574C:  LDR.W           R1, [R9]
265750:  LDR.W           R4, [R0,#0x84]
265754:  MOV             R0, R3
265756:  MOV             R3, R6
265758:  BLX             R4
26575A:  LDR             R1, =(dword_6D6858 - 0x265766)
26575C:  ADR             R2, aPause; "pause"
26575E:  LDR.W           R3, [R8]
265762:  ADD             R1, PC; dword_6D6858
265764:  STR             R0, [R1]
265766:  LDR             R0, [R3]
265768:  LDR.W           R1, [R9]
26576C:  LDR.W           R4, [R0,#0x84]
265770:  MOV             R0, R3
265772:  MOV             R3, R6
265774:  BLX             R4
265776:  LDR             R1, =(dword_6D685C - 0x265782)
265778:  ADR             R2, aStop; "stop"
26577A:  LDR.W           R3, [R8]
26577E:  ADD             R1, PC; dword_6D685C
265780:  STR             R0, [R1]
265782:  LDR             R0, [R3]
265784:  LDR.W           R1, [R9]
265788:  LDR.W           R4, [R0,#0x84]
26578C:  MOV             R0, R3
26578E:  MOV             R3, R6
265790:  BLX             R4
265792:  LDR             R1, =(dword_6D6860 - 0x26579E)
265794:  ADR             R2, aRelease; "release"
265796:  LDR.W           R3, [R8]
26579A:  ADD             R1, PC; dword_6D6860
26579C:  STR             R0, [R1]
26579E:  LDR             R0, [R3]
2657A0:  LDR.W           R1, [R9]
2657A4:  LDR.W           R4, [R0,#0x84]
2657A8:  MOV             R0, R3
2657AA:  MOV             R3, R6
2657AC:  BLX             R4
2657AE:  LDR             R1, =(dword_6D6864 - 0x2657BC)
2657B0:  ADR             R2, aWrite; "write"
2657B2:  LDR.W           R6, [R8]
2657B6:  ADR             R3, aBiiI; "([BII)I"
2657B8:  ADD             R1, PC; dword_6D6864
2657BA:  STR             R0, [R1]
2657BC:  LDR             R0, [R6]
2657BE:  LDR.W           R1, [R9]
2657C2:  LDR.W           R4, [R0,#0x84]
2657C6:  MOV             R0, R6
2657C8:  BLX             R4
2657CA:  LDR             R1, =(dword_6D6868 - 0x2657D0)
2657CC:  ADD             R1, PC; dword_6D6868
2657CE:  STR             R0, [R1]
2657D0:  CMP             R5, #0
2657D2:  BNE.W           loc_2656C6
2657D6:  LDR             R5, =(aAndroidDefault - 0x2657DC); "Android Default"
2657D8:  ADD             R5, PC; "Android Default"
2657DA:  MOVS            R0, #1; item_count
2657DC:  MOVS            R1, #8; item_size
2657DE:  BLX             calloc
2657E2:  MOV             R6, R0
2657E4:  MOV             R0, R5; char *
2657E6:  BLX             j_strdup
2657EA:  MOVW            R1, #:lower16:(elf_hash_chain+0x6048)
2657EE:  MOVW            R2, #0x1402
2657F2:  MOVT            R1, #:upper16:(elf_hash_chain+0x6048)
2657F6:  STR.W           R6, [R10,R1]
2657FA:  MOVW            R1, #0x1501
2657FE:  STRD.W          R1, R2, [R10,#0x1C]
265802:  STR.W           R0, [R10,#0x24]
265806:  MOVS            R0, #0
265808:  POP.W           {R8-R10}
26580C:  POP             {R4-R7,PC}
26580E:  LDR             R0, =(LogLevel_ptr - 0x265814)
265810:  ADD             R0, PC; LogLevel_ptr
265812:  LDR             R0, [R0]; LogLevel
265814:  LDR             R0, [R0]
265816:  CBZ             R0, loc_265826
265818:  LDR             R0, =(aEe - 0x265822); "(EE)"
26581A:  ADR             R1, aAndroidOpenPla; "android_open_playback"
26581C:  LDR             R2, =(aAndroidMediaAu_0 - 0x265824); "android.media.AudioTrack class is not f"...
26581E:  ADD             R0, PC; "(EE)"
265820:  ADD             R2, PC; "android.media.AudioTrack class is not f"...
265822:  BLX             j_al_print
265826:  MOVW            R0, #0xA004
26582A:  POP.W           {R8-R10}
26582E:  POP             {R4-R7,PC}
