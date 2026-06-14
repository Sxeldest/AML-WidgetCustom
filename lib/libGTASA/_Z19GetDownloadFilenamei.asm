; =========================================================
; Game Engine Function: _Z19GetDownloadFilenamei
; Address            : 0x2969C4 - 0x296AC4
; =========================================================

2969C4:  PUSH            {R4-R7,LR}
2969C6:  ADD             R7, SP, #0xC
2969C8:  PUSH.W          {R8-R11}
2969CC:  SUB             SP, SP, #0x54
2969CE:  LDR             R2, =(DownloadFileCount_ptr - 0x2969D6)
2969D0:  LDR             R1, =(__stack_chk_guard_ptr - 0x2969D8)
2969D2:  ADD             R2, PC; DownloadFileCount_ptr
2969D4:  ADD             R1, PC; __stack_chk_guard_ptr
2969D6:  LDR             R2, [R2]; DownloadFileCount
2969D8:  LDR             R1, [R1]; __stack_chk_guard
2969DA:  LDR             R2, [R2]
2969DC:  LDR             R1, [R1]
2969DE:  CMP             R2, #0
2969E0:  STR             R1, [SP,#0x70+var_20]
2969E2:  BEQ             loc_2969F4
2969E4:  CMP             R2, R0
2969E6:  BLE             loc_296AA8
2969E8:  LDR             R1, =(AmazonDownloadFilenames_ptr - 0x2969EE)
2969EA:  ADD             R1, PC; AmazonDownloadFilenames_ptr
2969EC:  LDR             R2, [R1]; AmazonDownloadFilenames
2969EE:  LSLS            R1, R0, #4
2969F0:  LDR             R0, [R2,R1]
2969F2:  B               loc_296AAA
2969F4:  STR             R0, [SP,#0x70+var_6C]
2969F6:  MOVS            R5, #0
2969F8:  LDR             R0, =(TotalDownloadSizeMB_ptr - 0x296A08)
2969FA:  ADD.W           R11, SP, #0x70+var_60
2969FE:  LDR             R3, =(DownloadFileCount_ptr - 0x296A0C)
296A00:  MOV.W           R8, #1
296A04:  ADD             R0, PC; TotalDownloadSizeMB_ptr
296A06:  LDR             R1, =(TotalSizeDownloadedMB_ptr - 0x296A10)
296A08:  ADD             R3, PC; DownloadFileCount_ptr
296A0A:  LDR             R6, =(TotalDownloadPayloadMB_ptr - 0x296A16)
296A0C:  ADD             R1, PC; TotalSizeDownloadedMB_ptr
296A0E:  LDR             R0, [R0]; TotalDownloadSizeMB
296A10:  LDR             R3, [R3]; DownloadFileCount
296A12:  ADD             R6, PC; TotalDownloadPayloadMB_ptr
296A14:  LDR             R1, [R1]; TotalSizeDownloadedMB
296A16:  STR             R5, [R0]
296A18:  MOVS            R0, #0xC
296A1A:  STR             R0, [R3]
296A1C:  LDR             R0, =(TotalDownloadPayloadMB_ptr - 0x296A26)
296A1E:  LDR             R6, [R6]; TotalDownloadPayloadMB
296A20:  STR             R5, [R1]
296A22:  ADD             R0, PC; TotalDownloadPayloadMB_ptr
296A24:  LDR             R1, =(TotalSizeDownloadedMB_ptr - 0x296A2C)
296A26:  STR             R5, [R6]
296A28:  ADD             R1, PC; TotalSizeDownloadedMB_ptr
296A2A:  LDR             R6, [R0]; TotalDownloadPayloadMB
296A2C:  LDR             R0, =(needsAmazonDownload_ptr - 0x296A38)
296A2E:  LDR.W           R9, [R1]; TotalSizeDownloadedMB
296A32:  LDR             R1, =(TotalDownloadSizeMB_ptr - 0x296A3C)
296A34:  ADD             R0, PC; needsAmazonDownload_ptr
296A36:  LDR             R2, =(AmazonDownloadFilenames_ptr - 0x296A42)
296A38:  ADD             R1, PC; TotalDownloadSizeMB_ptr
296A3A:  LDR             R0, [R0]; needsAmazonDownload
296A3C:  STR             R0, [SP,#0x70+var_64]
296A3E:  ADD             R2, PC; AmazonDownloadFilenames_ptr
296A40:  LDR             R0, [R1]; TotalDownloadSizeMB
296A42:  STR             R0, [SP,#0x70+var_68]
296A44:  LDR             R0, =(DownloadFileCount_ptr - 0x296A4C)
296A46:  LDR             R2, [R2]; AmazonDownloadFilenames
296A48:  ADD             R0, PC; DownloadFileCount_ptr
296A4A:  ADDS            R4, R2, #4
296A4C:  LDR.W           R10, [R0]; DownloadFileCount
296A50:  LDR             R1, =(aSD_1 - 0x296A5E); "%s;%d"
296A52:  MOV             R0, R11
296A54:  LDR.W           R2, [R4,#-4]; "And1.obb" ...
296A58:  LDR             R3, [R4]
296A5A:  ADD             R1, PC; "%s;%d"
296A5C:  BL              sub_5E6BC0
296A60:  LDR             R0, =(aIsdownloaded - 0x296A68); "IsDownloaded"
296A62:  MOV             R1, R11; char *
296A64:  ADD             R0, PC; "IsDownloaded"
296A66:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
296A6A:  CMP             R0, #0
296A6C:  ADD.W           R5, R5, #1
296A70:  ITTE NE
296A72:  MOVNE           R0, #1
296A74:  STRBNE          R0, [R4,#4]
296A76:  LDRBEQ          R0, [R4,#4]
296A78:  LDR             R1, [R4]
296A7A:  ADDS            R4, #0x10
296A7C:  LDR             R2, [R6]
296A7E:  CMP             R0, #0
296A80:  MOV             R0, R9
296A82:  ADD.W           R1, R8, R1,LSR#20
296A86:  ADD             R2, R1
296A88:  STR             R2, [R6]
296A8A:  ITTT EQ
296A8C:  LDREQ           R0, [SP,#0x70+var_64]
296A8E:  STRBEQ.W        R8, [R0]
296A92:  LDREQ           R0, [SP,#0x70+var_68]
296A94:  LDR             R2, [R0]
296A96:  ADD             R1, R2
296A98:  LDR.W           R2, [R10]
296A9C:  STR             R1, [R0]
296A9E:  CMP             R5, R2
296AA0:  BLT             loc_296A50
296AA2:  LDR             R0, [SP,#0x70+var_6C]
296AA4:  CMP             R2, R0
296AA6:  BGT             loc_2969E8
296AA8:  MOVS            R0, #0
296AAA:  LDR             R1, =(__stack_chk_guard_ptr - 0x296AB2)
296AAC:  LDR             R2, [SP,#0x70+var_20]
296AAE:  ADD             R1, PC; __stack_chk_guard_ptr
296AB0:  LDR             R1, [R1]; __stack_chk_guard
296AB2:  LDR             R1, [R1]
296AB4:  SUBS            R1, R1, R2
296AB6:  ITTT EQ
296AB8:  ADDEQ           SP, SP, #0x54 ; 'T'
296ABA:  POPEQ.W         {R8-R11}
296ABE:  POPEQ           {R4-R7,PC}
296AC0:  BLX             __stack_chk_fail
