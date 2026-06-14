; =========================================================
; Game Engine Function: sub_158820
; Address            : 0x158820 - 0x1589FC
; =========================================================

158820:  PUSH            {R4-R7,LR}
158822:  ADD             R7, SP, #0xC
158824:  PUSH.W          {R8-R11}
158828:  SUB.W           SP, SP, #0x1000
15882C:  SUB             SP, SP, #0x1C
15882E:  MOV             R5, R0
158830:  STR             R0, [SP,#0x1038+var_1030]
158832:  BLX             j__ZNSt6__ndk119__thread_local_dataEv; std::__thread_local_data(void)
158836:  LDR             R1, [R5]; pointer
158838:  MOVS            R4, #0
15883A:  LDR             R0, [R0]; key
15883C:  STR             R4, [R5]
15883E:  BLX             pthread_setspecific
158842:  LDR.W           R8, [R5,#4]
158846:  STR             R4, [R5,#4]
158848:  STR.W           R8, [SP,#0x1038+var_102C]
15884C:  MOVS            R0, #0x14; unsigned int
15884E:  BLX             j__Znwj; operator new(uint)
158852:  LDR             R1, =(aWb - 0x158860); "wb" ...
158854:  MOV             R6, R0
158856:  LDR             R2, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI25AudioStreamDownloadStatusNS_9allocatorIS1_EEEE - 0x158862); `vtable for'std::__shared_ptr_emplace<AudioStreamDownloadStatus> ...
158858:  MOVS            R3, #0
15885A:  LDRB            R4, [R5,#0x14]
15885C:  ADD             R1, PC; "wb"
15885E:  ADD             R2, PC; `vtable for'std::__shared_ptr_emplace<AudioStreamDownloadStatus>
158860:  MOV             R10, R6
158862:  ADDS            R2, #8
158864:  STRD.W          R2, R3, [R6]
158868:  LSLS            R2, R4, #0x1F
15886A:  LDR             R0, [R5,#0x1C]
15886C:  MOV             R4, R6
15886E:  STR.W           R3, [R10,#0xC]!
158872:  STR             R3, [R6,#0x10]
158874:  ADD.W           R9, R5, #0x15
158878:  STR             R6, [SP,#0x1038+var_1024]
15887A:  STR.W           R10, [SP,#0x1038+var_1028]
15887E:  IT EQ
158880:  MOVEQ           R0, R9; filename
158882:  STR.W           R3, [R4,#8]!
158886:  BLX             fopen
15888A:  MOV             R11, R0
15888C:  CBNZ            R0, loc_1588AE
15888E:  LDRB            R0, [R5,#0x14]
158890:  LDR             R3, [R5,#0x1C]
158892:  LDR             R2, =(aFailedToOpenPa - 0x15889E); "Failed to open path: %s" ...
158894:  LSLS            R0, R0, #0x1F
158896:  IT EQ
158898:  MOVEQ           R3, R9
15889A:  ADD             R2, PC; "Failed to open path: %s"
15889C:  ADDW            R0, SP, #0x1038+s
1588A0:  BL              sub_1586B2
1588A4:  ADDW            R1, SP, #0x1038+s; s
1588A8:  MOVS            R0, #4; int
1588AA:  BL              sub_159B70
1588AE:  MOVS            R0, #0xC; unsigned int
1588B0:  BLX             j__Znwj; operator new(uint)
1588B4:  MOV             R9, R0
1588B6:  STRD.W          R11, R10, [R0]
1588BA:  STR             R6, [R0,#8]
1588BC:  LDREX.W         R0, [R4]
1588C0:  ADDS            R0, #1
1588C2:  STREX.W         R1, R0, [R4]
1588C6:  CMP             R1, #0
1588C8:  BNE             loc_1588BC
1588CA:  LDR             R3, =(sub_158B06+1 - 0x1588D8)
1588CC:  ADD.W           R6, R5, #9
1588D0:  LDR             R0, [R5,#0x10]
1588D2:  LDRB            R1, [R5,#8]
1588D4:  ADD             R3, PC; sub_158B06
1588D6:  LSLS            R1, R1, #0x1F
1588D8:  MOV.W           R2, #0
1588DC:  MOV.W           R1, #0
1588E0:  STR.W           R9, [SP,#0x1038+var_1038]
1588E4:  IT EQ
1588E6:  MOVEQ           R0, R6
1588E8:  BL              sub_164AD0
1588EC:  MOV             R4, R0
1588EE:  CBZ             R0, loc_158912
1588F0:  MOV             R0, R4
1588F2:  MOVS            R1, #0
1588F4:  BL              sub_164C70
1588F8:  ANDS            R0, R1
1588FA:  ADDS            R0, #1
1588FC:  BEQ             loc_158952
1588FE:  CMP.W           R8, #0
158902:  STR.W           R4, [R10]
158906:  BEQ             loc_1589F6
158908:  ADD             R1, SP, #0x1038+var_1028
15890A:  MOV             R0, R8
15890C:  BL              sub_158C02
158910:  B               loc_1589AA
158912:  LDRB            R0, [R5,#8]
158914:  LDR             R3, [R5,#0x10]
158916:  LDR             R2, =(aInvalidUrlStre - 0x158922); "Invalid URL stream handle: url - %s" ...
158918:  LSLS            R0, R0, #0x1F
15891A:  IT EQ
15891C:  MOVEQ           R3, R6
15891E:  ADD             R2, PC; "Invalid URL stream handle: url - %s"
158920:  ADD.W           R0, SP, #0x1038+var_101F
158924:  BL              sub_1586B2
158928:  ADD.W           R1, SP, #0x1038+var_101F; s
15892C:  MOVS            R0, #3; int
15892E:  BL              sub_159B70
158932:  BL              sub_1649EC
158936:  BL              sub_159660
15893A:  LDR             R2, =(aInvalidUrlStre_0 - 0x158942); "Invalid URL stream handle: error - %s" ...
15893C:  MOV             R3, R0
15893E:  ADD             R2, PC; "Invalid URL stream handle: error - %s"
158940:  ADD.W           R0, SP, #0x1038+var_101F
158944:  BL              sub_1586B2
158948:  ADD.W           R1, SP, #0x1038+var_101F; s
15894C:  MOVS            R0, #3; int
15894E:  BL              sub_159B70
158952:  MOV             R0, R4
158954:  BL              sub_164AF4
158958:  MOV             R0, R9
15895A:  BL              sub_158B6C
15895E:  BLX             j__ZdlPv; operator delete(void *)
158962:  MOVS            R0, #0
158964:  CMP.W           R8, #0
158968:  STR.W           R0, [SP,#0x1038+var_81C]
15896C:  STR.W           R0, [SP,#0x1038+s]
158970:  BEQ             loc_1589F0
158972:  ADDW            R1, SP, #0x1038+s
158976:  MOV             R0, R8
158978:  BL              sub_158C02
15897C:  LDR.W           R4, [SP,#0x1038+var_81C]
158980:  CBZ             R4, loc_1589AA
158982:  ADDS            R0, R4, #4
158984:  DMB.W           ISH
158988:  LDREX.W         R1, [R0]
15898C:  SUBS            R2, R1, #1
15898E:  STREX.W         R3, R2, [R0]
158992:  CMP             R3, #0
158994:  BNE             loc_158988
158996:  DMB.W           ISH
15899A:  CBNZ            R1, loc_1589AA
15899C:  LDR             R0, [R4]
15899E:  LDR             R1, [R0,#8]
1589A0:  MOV             R0, R4
1589A2:  BLX             R1
1589A4:  MOV             R0, R4; this
1589A6:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1589AA:  LDR             R4, [SP,#0x1038+var_1024]
1589AC:  CBZ             R4, loc_1589D6
1589AE:  ADDS            R0, R4, #4
1589B0:  DMB.W           ISH
1589B4:  LDREX.W         R1, [R0]
1589B8:  SUBS            R2, R1, #1
1589BA:  STREX.W         R3, R2, [R0]
1589BE:  CMP             R3, #0
1589C0:  BNE             loc_1589B4
1589C2:  DMB.W           ISH
1589C6:  CBNZ            R1, loc_1589D6
1589C8:  LDR             R0, [R4]
1589CA:  LDR             R1, [R0,#8]
1589CC:  MOV             R0, R4
1589CE:  BLX             R1
1589D0:  MOV             R0, R4; this
1589D2:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1589D6:  ADD             R0, SP, #0x1038+var_102C
1589D8:  BL              sub_1582D0
1589DC:  ADD             R0, SP, #0x1038+var_1030
1589DE:  BL              sub_158AC8
1589E2:  MOVS            R0, #0
1589E4:  ADD.W           SP, SP, #0x1000
1589E8:  ADD             SP, SP, #0x1C
1589EA:  POP.W           {R8-R11}
1589EE:  POP             {R4-R7,PC}
1589F0:  MOVS            R0, #3
1589F2:  BL              sub_158460
1589F6:  MOVS            R0, #3
1589F8:  BL              sub_158460
