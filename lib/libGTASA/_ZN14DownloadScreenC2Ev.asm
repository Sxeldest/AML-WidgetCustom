; =========================================================
; Game Engine Function: _ZN14DownloadScreenC2Ev
; Address            : 0x29B6F8 - 0x29B7F8
; =========================================================

29B6F8:  PUSH            {R4-R7,LR}
29B6FA:  ADD             R7, SP, #0xC
29B6FC:  PUSH.W          {R8-R11}
29B700:  SUB             SP, SP, #0x54
29B702:  LDR             R1, =(__stack_chk_guard_ptr - 0x29B70E)
29B704:  MOVS            R2, #1; bool
29B706:  MOV.W           R11, #1
29B70A:  ADD             R1, PC; __stack_chk_guard_ptr
29B70C:  LDR             R1, [R1]; __stack_chk_guard
29B70E:  LDR             R1, [R1]
29B710:  STR             R1, [SP,#0x70+var_20]
29B712:  ADR             R1, aMobDnl; "MOB_DNL"
29B714:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
29B718:  LDR             R4, =(_ZTV14DownloadScreen_ptr - 0x29B720)
29B71A:  LDR             R1, =(DownloadFileCount_ptr - 0x29B724)
29B71C:  ADD             R4, PC; _ZTV14DownloadScreen_ptr
29B71E:  LDR             R5, =(TotalDownloadSizeMB_ptr - 0x29B72A)
29B720:  ADD             R1, PC; DownloadFileCount_ptr
29B722:  LDR             R6, =(AmazonDownloadFilenames_ptr - 0x29B730)
29B724:  LDR             R4, [R4]; `vtable for'DownloadScreen ...
29B726:  ADD             R5, PC; TotalDownloadSizeMB_ptr
29B728:  LDR.W           R12, [R1]; DownloadFileCount
29B72C:  ADD             R6, PC; AmazonDownloadFilenames_ptr
29B72E:  ADD.W           R1, R4, #8
29B732:  MOVS            R4, #0
29B734:  STR             R4, [R0,#0x48]
29B736:  STR             R0, [SP,#0x70+var_6C]
29B738:  STR             R1, [R0]
29B73A:  MOVS            R0, #0xC
29B73C:  STR.W           R0, [R12]
29B740:  LDR             R0, =(TotalDownloadPayloadMB_ptr - 0x29B748)
29B742:  LDR             R1, =(TotalSizeDownloadedMB_ptr - 0x29B74C)
29B744:  ADD             R0, PC; TotalDownloadPayloadMB_ptr
29B746:  LDR             R2, =(TotalDownloadPayloadMB_ptr - 0x29B754)
29B748:  ADD             R1, PC; TotalSizeDownloadedMB_ptr
29B74A:  LDR             R3, =(TotalSizeDownloadedMB_ptr - 0x29B758)
29B74C:  LDR.W           R8, [R0]; TotalDownloadPayloadMB
29B750:  ADD             R2, PC; TotalDownloadPayloadMB_ptr
29B752:  LDR             R0, =(needsAmazonDownload_ptr - 0x29B760)
29B754:  ADD             R3, PC; TotalSizeDownloadedMB_ptr
29B756:  LDR.W           R9, [R1]; TotalSizeDownloadedMB
29B75A:  LDR             R1, =(TotalDownloadSizeMB_ptr - 0x29B764)
29B75C:  ADD             R0, PC; needsAmazonDownload_ptr
29B75E:  LDR             R5, [R5]; TotalDownloadSizeMB
29B760:  ADD             R1, PC; TotalDownloadSizeMB_ptr
29B762:  LDR             R0, [R0]; needsAmazonDownload
29B764:  STR             R0, [SP,#0x70+var_64]
29B766:  LDR             R0, [R1]; TotalDownloadSizeMB
29B768:  STR             R0, [SP,#0x70+var_68]
29B76A:  LDR             R0, =(DownloadFileCount_ptr - 0x29B772)
29B76C:  LDR             R6, [R6]; AmazonDownloadFilenames
29B76E:  ADD             R0, PC; DownloadFileCount_ptr
29B770:  LDR             R2, [R2]; TotalDownloadPayloadMB
29B772:  LDR             R3, [R3]; TotalSizeDownloadedMB
29B774:  LDR.W           R10, [R0]; DownloadFileCount
29B778:  STR             R4, [R5]
29B77A:  ADDS            R5, R6, #4
29B77C:  ADD             R6, SP, #0x70+var_60
29B77E:  STR             R4, [R2]
29B780:  STR             R4, [R3]
29B782:  LDR             R1, =(aSD_1 - 0x29B790); "%s;%d"
29B784:  MOV             R0, R6
29B786:  LDR.W           R2, [R5,#-4]; "And1.obb" ...
29B78A:  LDR             R3, [R5]
29B78C:  ADD             R1, PC; "%s;%d"
29B78E:  BL              sub_5E6BC0
29B792:  LDR             R0, =(aIsdownloaded - 0x29B79A); "IsDownloaded"
29B794:  MOV             R1, R6; char *
29B796:  ADD             R0, PC; "IsDownloaded"
29B798:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
29B79C:  CMP             R0, #0
29B79E:  ADD.W           R4, R4, #1
29B7A2:  ITTE NE
29B7A4:  MOVNE           R0, #1
29B7A6:  STRBNE          R0, [R5,#4]
29B7A8:  LDRBEQ          R0, [R5,#4]
29B7AA:  LDR             R1, [R5]
29B7AC:  ADDS            R5, #0x10
29B7AE:  LDR.W           R2, [R8]
29B7B2:  CMP             R0, #0
29B7B4:  MOV             R0, R9
29B7B6:  ADD.W           R1, R11, R1,LSR#20
29B7BA:  ADD             R2, R1
29B7BC:  STR.W           R2, [R8]
29B7C0:  ITTT EQ
29B7C2:  LDREQ           R0, [SP,#0x70+var_64]
29B7C4:  STRBEQ.W        R11, [R0]
29B7C8:  LDREQ           R0, [SP,#0x70+var_68]
29B7CA:  LDR             R2, [R0]
29B7CC:  ADD             R1, R2
29B7CE:  STR             R1, [R0]
29B7D0:  LDR.W           R0, [R10]
29B7D4:  CMP             R4, R0
29B7D6:  BLT             loc_29B782
29B7D8:  LDR             R0, [SP,#0x70+var_6C]
29B7DA:  MOVS            R1, #0
29B7DC:  STR             R1, [R0,#0x44]
29B7DE:  LDR             R1, =(__stack_chk_guard_ptr - 0x29B7E4)
29B7E0:  ADD             R1, PC; __stack_chk_guard_ptr
29B7E2:  LDR             R2, [R1]; __stack_chk_guard
29B7E4:  LDR             R1, [SP,#0x70+var_20]
29B7E6:  LDR             R2, [R2]
29B7E8:  SUBS            R1, R2, R1
29B7EA:  ITTT EQ
29B7EC:  ADDEQ           SP, SP, #0x54 ; 'T'
29B7EE:  POPEQ.W         {R8-R11}
29B7F2:  POPEQ           {R4-R7,PC}
29B7F4:  BLX             __stack_chk_fail
