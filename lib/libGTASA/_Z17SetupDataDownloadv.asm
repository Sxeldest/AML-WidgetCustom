; =========================================================
; Game Engine Function: _Z17SetupDataDownloadv
; Address            : 0x296840 - 0x29691A
; =========================================================

296840:  PUSH            {R4-R7,LR}
296842:  ADD             R7, SP, #0xC
296844:  PUSH.W          {R8-R11}
296848:  SUB             SP, SP, #0x4C
29684A:  LDR             R0, =(DownloadFileCount_ptr - 0x296858)
29684C:  MOVS            R4, #0xC
29684E:  LDR             R6, =(__stack_chk_guard_ptr - 0x29685E)
296850:  ADD.W           R10, SP, #0x68+var_60
296854:  ADD             R0, PC; DownloadFileCount_ptr
296856:  LDR             R1, =(TotalDownloadPayloadMB_ptr - 0x296862)
296858:  LDR             R2, =(TotalSizeDownloadedMB_ptr - 0x296864)
29685A:  ADD             R6, PC; __stack_chk_guard_ptr
29685C:  LDR             R5, =(TotalDownloadSizeMB_ptr - 0x296868)
29685E:  ADD             R1, PC; TotalDownloadPayloadMB_ptr
296860:  ADD             R2, PC; TotalSizeDownloadedMB_ptr
296862:  LDR             R0, [R0]; DownloadFileCount
296864:  ADD             R5, PC; TotalDownloadSizeMB_ptr
296866:  LDR             R6, [R6]; __stack_chk_guard
296868:  LDR             R1, [R1]; TotalDownloadPayloadMB
29686A:  MOV.W           R11, #1
29686E:  LDR             R2, [R2]; TotalSizeDownloadedMB
296870:  LDR             R5, [R5]; TotalDownloadSizeMB
296872:  STR             R4, [R0]
296874:  MOVS            R4, #0
296876:  LDR             R0, [R6]
296878:  STR             R4, [R1]
29687A:  STR             R4, [R5]
29687C:  STR             R4, [R2]
29687E:  STR             R0, [SP,#0x68+var_20]
296880:  LDR             R0, =(TotalDownloadPayloadMB_ptr - 0x296888)
296882:  LDR             R1, =(TotalSizeDownloadedMB_ptr - 0x29688C)
296884:  ADD             R0, PC; TotalDownloadPayloadMB_ptr
296886:  LDR             R3, =(AmazonDownloadFilenames_ptr - 0x296890)
296888:  ADD             R1, PC; TotalSizeDownloadedMB_ptr
29688A:  LDR             R5, [R0]; TotalDownloadPayloadMB
29688C:  ADD             R3, PC; AmazonDownloadFilenames_ptr
29688E:  LDR             R0, =(needsAmazonDownload_ptr - 0x29689A)
296890:  LDR.W           R8, [R1]; TotalSizeDownloadedMB
296894:  LDR             R1, =(TotalDownloadSizeMB_ptr - 0x29689E)
296896:  ADD             R0, PC; needsAmazonDownload_ptr
296898:  LDR             R3, [R3]; AmazonDownloadFilenames
29689A:  ADD             R1, PC; TotalDownloadSizeMB_ptr
29689C:  LDR             R0, [R0]; needsAmazonDownload
29689E:  STR             R0, [SP,#0x68+var_64]
2968A0:  ADDS            R6, R3, #4
2968A2:  LDR             R0, [R1]; TotalDownloadSizeMB
2968A4:  STR             R0, [SP,#0x68+var_68]
2968A6:  LDR             R0, =(DownloadFileCount_ptr - 0x2968AC)
2968A8:  ADD             R0, PC; DownloadFileCount_ptr
2968AA:  LDR.W           R9, [R0]; DownloadFileCount
2968AE:  LDR             R1, =(aSD_1 - 0x2968BC); "%s;%d"
2968B0:  MOV             R0, R10
2968B2:  LDR.W           R2, [R6,#-4]; "And1.obb" ...
2968B6:  LDR             R3, [R6]
2968B8:  ADD             R1, PC; "%s;%d"
2968BA:  BL              sub_5E6BC0
2968BE:  LDR             R0, =(aIsdownloaded - 0x2968C6); "IsDownloaded"
2968C0:  MOV             R1, R10; char *
2968C2:  ADD             R0, PC; "IsDownloaded"
2968C4:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
2968C8:  CMP             R0, #0
2968CA:  ADD.W           R4, R4, #1
2968CE:  ITTE NE
2968D0:  MOVNE           R0, #1
2968D2:  STRBNE          R0, [R6,#4]
2968D4:  LDRBEQ          R0, [R6,#4]
2968D6:  LDR             R1, [R6]
2968D8:  ADDS            R6, #0x10
2968DA:  LDR             R2, [R5]
2968DC:  CMP             R0, #0
2968DE:  MOV             R0, R8
2968E0:  ADD.W           R1, R11, R1,LSR#20
2968E4:  ADD             R2, R1
2968E6:  STR             R2, [R5]
2968E8:  ITTT EQ
2968EA:  LDREQ           R0, [SP,#0x68+var_64]
2968EC:  STRBEQ.W        R11, [R0]
2968F0:  LDREQ           R0, [SP,#0x68+var_68]
2968F2:  LDR             R2, [R0]
2968F4:  ADD             R1, R2
2968F6:  STR             R1, [R0]
2968F8:  LDR.W           R0, [R9]
2968FC:  CMP             R4, R0
2968FE:  BLT             loc_2968AE
296900:  LDR             R0, =(__stack_chk_guard_ptr - 0x296908)
296902:  LDR             R1, [SP,#0x68+var_20]
296904:  ADD             R0, PC; __stack_chk_guard_ptr
296906:  LDR             R0, [R0]; __stack_chk_guard
296908:  LDR             R0, [R0]
29690A:  SUBS            R0, R0, R1
29690C:  ITTT EQ
29690E:  ADDEQ           SP, SP, #0x4C ; 'L'
296910:  POPEQ.W         {R8-R11}
296914:  POPEQ           {R4-R7,PC}
296916:  BLX             __stack_chk_fail
