; =========================================================
; Game Engine Function: _Z19NeedsAmazonDownloadv
; Address            : 0x2966E0 - 0x2967F2
; =========================================================

2966E0:  PUSH            {R4-R7,LR}
2966E2:  ADD             R7, SP, #0xC
2966E4:  PUSH.W          {R8-R11}
2966E8:  SUB             SP, SP, #0x4C
2966EA:  LDR             R0, =(__stack_chk_guard_ptr - 0x2966F2)
2966EC:  LDR             R1, =(byte_61CD7E - 0x2966F4)
2966EE:  ADD             R0, PC; __stack_chk_guard_ptr
2966F0:  ADD             R1, PC; byte_61CD7E ; char *
2966F2:  LDR             R0, [R0]; __stack_chk_guard
2966F4:  LDR             R2, [R0]
2966F6:  LDR             R0, =(aIsamazonbuild_1 - 0x2966FE); "IsAmazonBuild"
2966F8:  STR             R2, [SP,#0x68+var_20]
2966FA:  ADD             R0, PC; "IsAmazonBuild"
2966FC:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
296700:  CMP             R0, #1
296702:  BNE             loc_2967D6
296704:  LDR             R0, =(DownloadFileCount_ptr - 0x29670A)
296706:  ADD             R0, PC; DownloadFileCount_ptr
296708:  LDR             R0, [R0]; DownloadFileCount
29670A:  LDR             R0, [R0]
29670C:  CMP             R0, #0
29670E:  BNE             loc_2967BC
296710:  LDR             R0, =(TotalDownloadSizeMB_ptr - 0x29671E)
296712:  MOVS            R4, #0
296714:  LDR             R3, =(DownloadFileCount_ptr - 0x296722)
296716:  ADD.W           R10, SP, #0x68+var_60
29671A:  ADD             R0, PC; TotalDownloadSizeMB_ptr
29671C:  LDR             R1, =(TotalSizeDownloadedMB_ptr - 0x296726)
29671E:  ADD             R3, PC; DownloadFileCount_ptr
296720:  LDR             R6, =(TotalDownloadPayloadMB_ptr - 0x29672C)
296722:  ADD             R1, PC; TotalSizeDownloadedMB_ptr
296724:  LDR             R0, [R0]; TotalDownloadSizeMB
296726:  LDR             R3, [R3]; DownloadFileCount
296728:  ADD             R6, PC; TotalDownloadPayloadMB_ptr
29672A:  LDR             R1, [R1]; TotalSizeDownloadedMB
29672C:  MOV.W           R11, #1
296730:  STR             R4, [R0]
296732:  MOVS            R0, #0xC
296734:  STR             R0, [R3]
296736:  LDR             R0, =(TotalDownloadPayloadMB_ptr - 0x296740)
296738:  STR             R4, [R1]
29673A:  LDR             R1, =(TotalSizeDownloadedMB_ptr - 0x296744)
29673C:  ADD             R0, PC; TotalDownloadPayloadMB_ptr
29673E:  LDR             R2, =(AmazonDownloadFilenames_ptr - 0x29674A)
296740:  ADD             R1, PC; TotalSizeDownloadedMB_ptr
296742:  LDR             R5, [R0]; TotalDownloadPayloadMB
296744:  LDR             R0, =(needsAmazonDownload_ptr - 0x296752)
296746:  ADD             R2, PC; AmazonDownloadFilenames_ptr
296748:  LDR.W           R8, [R1]; TotalSizeDownloadedMB
29674C:  LDR             R1, =(TotalDownloadSizeMB_ptr - 0x296756)
29674E:  ADD             R0, PC; needsAmazonDownload_ptr
296750:  LDR             R6, [R6]; TotalDownloadPayloadMB
296752:  ADD             R1, PC; TotalDownloadSizeMB_ptr
296754:  LDR             R0, [R0]; needsAmazonDownload
296756:  STR             R0, [SP,#0x68+var_64]
296758:  LDR             R0, [R1]; TotalDownloadSizeMB
29675A:  STR             R0, [SP,#0x68+var_68]
29675C:  LDR             R0, =(DownloadFileCount_ptr - 0x296764)
29675E:  LDR             R2, [R2]; AmazonDownloadFilenames
296760:  ADD             R0, PC; DownloadFileCount_ptr
296762:  STR             R4, [R6]
296764:  ADDS            R6, R2, #4
296766:  LDR.W           R9, [R0]; DownloadFileCount
29676A:  LDR             R1, =(aSD_1 - 0x296778); "%s;%d"
29676C:  MOV             R0, R10
29676E:  LDR.W           R2, [R6,#-4]; "And1.obb" ...
296772:  LDR             R3, [R6]
296774:  ADD             R1, PC; "%s;%d"
296776:  BL              sub_5E6BC0
29677A:  LDR             R0, =(aIsdownloaded - 0x296782); "IsDownloaded"
29677C:  MOV             R1, R10; char *
29677E:  ADD             R0, PC; "IsDownloaded"
296780:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
296784:  CMP             R0, #0
296786:  ADD.W           R4, R4, #1
29678A:  ITTE NE
29678C:  MOVNE           R0, #1
29678E:  STRBNE          R0, [R6,#4]
296790:  LDRBEQ          R0, [R6,#4]
296792:  LDR             R1, [R6]
296794:  ADDS            R6, #0x10
296796:  LDR             R2, [R5]
296798:  CMP             R0, #0
29679A:  MOV             R0, R8
29679C:  ADD.W           R1, R11, R1,LSR#20
2967A0:  ADD             R2, R1
2967A2:  STR             R2, [R5]
2967A4:  ITTT EQ
2967A6:  LDREQ           R0, [SP,#0x68+var_64]
2967A8:  STRBEQ.W        R11, [R0]
2967AC:  LDREQ           R0, [SP,#0x68+var_68]
2967AE:  LDR             R2, [R0]
2967B0:  ADD             R1, R2
2967B2:  STR             R1, [R0]
2967B4:  LDR.W           R0, [R9]
2967B8:  CMP             R4, R0
2967BA:  BLT             loc_29676A
2967BC:  LDR             R0, =(TotalDownloadSizeMB_ptr - 0x2967C4)
2967BE:  LDR             R1, =(needsAmazonDownload_ptr - 0x2967C6)
2967C0:  ADD             R0, PC; TotalDownloadSizeMB_ptr
2967C2:  ADD             R1, PC; needsAmazonDownload_ptr
2967C4:  LDR             R0, [R0]; TotalDownloadSizeMB
2967C6:  LDR             R1, [R1]; needsAmazonDownload
2967C8:  LDR             R0, [R0]
2967CA:  LDRB            R1, [R1]
2967CC:  CMP             R0, #0
2967CE:  IT NE
2967D0:  MOVNE           R0, #1
2967D2:  ANDS            R0, R1
2967D4:  B               loc_2967D8
2967D6:  MOVS            R0, #0
2967D8:  LDR             R1, =(__stack_chk_guard_ptr - 0x2967E0)
2967DA:  LDR             R2, [SP,#0x68+var_20]
2967DC:  ADD             R1, PC; __stack_chk_guard_ptr
2967DE:  LDR             R1, [R1]; __stack_chk_guard
2967E0:  LDR             R1, [R1]
2967E2:  SUBS            R1, R1, R2
2967E4:  ITTT EQ
2967E6:  ADDEQ           SP, SP, #0x4C ; 'L'
2967E8:  POPEQ.W         {R8-R11}
2967EC:  POPEQ           {R4-R7,PC}
2967EE:  BLX             __stack_chk_fail
