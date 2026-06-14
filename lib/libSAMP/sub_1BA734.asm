; =========================================================
; Game Engine Function: sub_1BA734
; Address            : 0x1BA734 - 0x1BA800
; =========================================================

1BA734:  PUSH            {R4,R10,R11,LR}
1BA738:  ADD             R11, SP, #8
1BA73C:  BL              sub_1BA828
1BA740:  LDR             R0, =(dword_3827A8 - 0x1BA750)
1BA744:  MOV             R1, #0x38 ; '8'; n
1BA748:  ADD             R0, PC, R0; dword_3827A8 ; int
1BA74C:  BL              sub_22178C
1BA750:  LDR             R0, =(dword_3827E0 - 0x1BA760)
1BA754:  MOV             R1, #0x38 ; '8'; n
1BA758:  ADD             R0, PC, R0; dword_3827E0 ; int
1BA75C:  BL              sub_22178C
1BA760:  LDR             R0, =(off_23C958 - 0x1BA76C); "android" ...
1BA764:  ADD             R0, PC, R0; off_23C958
1BA768:  LDR             R0, [R0,#(off_23C960 - 0x23C958)]; alc_android_deinit
1BA76C:  CMP             R0, #0
1BA770:  BEQ             loc_1BA790
1BA774:  LDR             R1, =(off_23C958 - 0x1BA780); "android" ...
1BA778:  ADD             R1, PC, R1; off_23C958
1BA77C:  ADD             R4, R1, #0x40 ; '@'
1BA780:  BLX             R0
1BA784:  LDR             R0, [R4],#0x38
1BA788:  CMP             R0, #0
1BA78C:  BNE             loc_1BA780
1BA790:  LDR             R0, =(off_23CA00 - 0x1BA79C); "loopback" ...
1BA794:  ADD             R0, PC, R0; off_23CA00
1BA798:  LDR             R0, [R0,#(off_23CA08 - 0x23CA00)]; alc_loopback_deinit
1BA79C:  BLX             R0; alc_loopback_deinit
1BA7A0:  BL              sub_1BA828
1BA7A4:  BL              j_FreeHrtf
1BA7A8:  BL              j_FreeALConfig
1BA7AC:  BL              j_ThunkExit
1BA7B0:  LDR             R0, =(unk_3827A0 - 0x1BA7BC)
1BA7B4:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BA7B8:  BL              j_DeleteCriticalSection
1BA7BC:  LDR             R0, =(dword_38279C - 0x1BA7C8)
1BA7C0:  LDR             R0, [PC,R0]; dword_38279C ; key
1BA7C4:  BL              pthread_key_delete
1BA7C8:  LDR             R0, =(LogFile_ptr - 0x1BA7D8)
1BA7CC:  LDR             R1, =(__sF_ptr - 0x1BA7DC)
1BA7D0:  LDR             R0, [PC,R0]; LogFile
1BA7D4:  LDR             R1, [PC,R1]; __sF
1BA7D8:  LDR             R0, [R0]; stream
1BA7DC:  ADD             R1, R1, #0xA8
1BA7E0:  CMP             R0, R1
1BA7E4:  BEQ             loc_1BA7EC
1BA7E8:  BL              fclose
1BA7EC:  LDR             R0, =(LogFile_ptr - 0x1BA7FC)
1BA7F0:  MOV             R1, #0
1BA7F4:  LDR             R0, [PC,R0]; LogFile
1BA7F8:  STR             R1, [R0]
1BA7FC:  POP             {R4,R10,R11,PC}
