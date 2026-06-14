; =========================================================
; Game Engine Function: _Z14AddAmazonFilesb
; Address            : 0x296B08 - 0x296C74
; =========================================================

296B08:  PUSH            {R4-R7,LR}
296B0A:  ADD             R7, SP, #0xC
296B0C:  PUSH.W          {R8-R11}
296B10:  SUB             SP, SP, #0x54
296B12:  LDR             R1, =(DownloadFileCount_ptr - 0x296B1C)
296B14:  MOV             R6, R0
296B16:  LDR             R0, =(__stack_chk_guard_ptr - 0x296B1E)
296B18:  ADD             R1, PC; DownloadFileCount_ptr
296B1A:  ADD             R0, PC; __stack_chk_guard_ptr
296B1C:  LDR             R1, [R1]; DownloadFileCount
296B1E:  LDR             R0, [R0]; __stack_chk_guard
296B20:  LDR             R0, [R0]
296B22:  LDR             R1, [R1]
296B24:  STR             R0, [SP,#0x70+var_20]
296B26:  CMP             R1, #0
296B28:  BNE             loc_296BDA
296B2A:  LDR             R0, =(TotalDownloadSizeMB_ptr - 0x296B38)
296B2C:  MOVS            R5, #0
296B2E:  LDR             R3, =(DownloadFileCount_ptr - 0x296B3C)
296B30:  ADD.W           R11, SP, #0x70+var_60
296B34:  ADD             R0, PC; TotalDownloadSizeMB_ptr
296B36:  LDR             R1, =(TotalSizeDownloadedMB_ptr - 0x296B40)
296B38:  ADD             R3, PC; DownloadFileCount_ptr
296B3A:  STR             R6, [SP,#0x70+var_6C]
296B3C:  ADD             R1, PC; TotalSizeDownloadedMB_ptr
296B3E:  LDR             R0, [R0]; TotalDownloadSizeMB
296B40:  LDR             R6, =(TotalDownloadPayloadMB_ptr - 0x296B4E)
296B42:  MOV.W           R8, #1
296B46:  LDR             R3, [R3]; DownloadFileCount
296B48:  LDR             R1, [R1]; TotalSizeDownloadedMB
296B4A:  ADD             R6, PC; TotalDownloadPayloadMB_ptr
296B4C:  STR             R5, [R0]
296B4E:  MOVS            R0, #0xC
296B50:  STR             R0, [R3]
296B52:  LDR             R0, =(TotalDownloadPayloadMB_ptr - 0x296B5C)
296B54:  LDR             R6, [R6]; TotalDownloadPayloadMB
296B56:  STR             R5, [R1]
296B58:  ADD             R0, PC; TotalDownloadPayloadMB_ptr
296B5A:  LDR             R1, =(TotalSizeDownloadedMB_ptr - 0x296B62)
296B5C:  STR             R5, [R6]
296B5E:  ADD             R1, PC; TotalSizeDownloadedMB_ptr
296B60:  LDR             R6, [R0]; TotalDownloadPayloadMB
296B62:  LDR             R0, =(needsAmazonDownload_ptr - 0x296B6E)
296B64:  LDR.W           R9, [R1]; TotalSizeDownloadedMB
296B68:  LDR             R1, =(TotalDownloadSizeMB_ptr - 0x296B72)
296B6A:  ADD             R0, PC; needsAmazonDownload_ptr
296B6C:  LDR             R2, =(AmazonDownloadFilenames_ptr - 0x296B78)
296B6E:  ADD             R1, PC; TotalDownloadSizeMB_ptr
296B70:  LDR             R0, [R0]; needsAmazonDownload
296B72:  STR             R0, [SP,#0x70+var_64]
296B74:  ADD             R2, PC; AmazonDownloadFilenames_ptr
296B76:  LDR             R0, [R1]; TotalDownloadSizeMB
296B78:  STR             R0, [SP,#0x70+var_68]
296B7A:  LDR             R0, =(DownloadFileCount_ptr - 0x296B82)
296B7C:  LDR             R2, [R2]; AmazonDownloadFilenames
296B7E:  ADD             R0, PC; DownloadFileCount_ptr
296B80:  ADDS            R4, R2, #4
296B82:  LDR.W           R10, [R0]; DownloadFileCount
296B86:  LDR             R1, =(aSD_1 - 0x296B94); "%s;%d"
296B88:  MOV             R0, R11
296B8A:  LDR.W           R2, [R4,#-4]; "And1.obb" ...
296B8E:  LDR             R3, [R4]
296B90:  ADD             R1, PC; "%s;%d"
296B92:  BL              sub_5E6BC0
296B96:  LDR             R0, =(aIsdownloaded - 0x296B9E); "IsDownloaded"
296B98:  MOV             R1, R11; char *
296B9A:  ADD             R0, PC; "IsDownloaded"
296B9C:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
296BA0:  CMP             R0, #0
296BA2:  ADD.W           R5, R5, #1
296BA6:  ITTE NE
296BA8:  MOVNE           R0, #1
296BAA:  STRBNE          R0, [R4,#4]
296BAC:  LDRBEQ          R0, [R4,#4]
296BAE:  LDR             R1, [R4]
296BB0:  ADDS            R4, #0x10
296BB2:  LDR             R2, [R6]
296BB4:  CMP             R0, #0
296BB6:  MOV             R0, R9
296BB8:  ADD.W           R1, R8, R1,LSR#20
296BBC:  ADD             R2, R1
296BBE:  STR             R2, [R6]
296BC0:  ITTT EQ
296BC2:  LDREQ           R0, [SP,#0x70+var_64]
296BC4:  STRBEQ.W        R8, [R0]
296BC8:  LDREQ           R0, [SP,#0x70+var_68]
296BCA:  LDR             R2, [R0]
296BCC:  ADD             R1, R2
296BCE:  STR             R1, [R0]
296BD0:  LDR.W           R0, [R10]
296BD4:  CMP             R5, R0
296BD6:  BLT             loc_296B86
296BD8:  LDR             R6, [SP,#0x70+var_6C]
296BDA:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
296BDE:  CBNZ            R0, loc_296C5A
296BE0:  LDR             R0, =(DownloadFileCount_ptr - 0x296BE6)
296BE2:  ADD             R0, PC; DownloadFileCount_ptr
296BE4:  LDR             R0, [R0]; DownloadFileCount
296BE6:  LDR             R0, [R0]
296BE8:  CMP             R0, #1
296BEA:  BLT             loc_296C10
296BEC:  LDR             R0, =(DownloadFileCount_ptr - 0x296BF4)
296BEE:  MOVS            R4, #0
296BF0:  ADD             R0, PC; DownloadFileCount_ptr
296BF2:  LDR             R5, [R0]; DownloadFileCount
296BF4:  MOV             R0, R4; int
296BF6:  BLX             j__Z19GetDownloadFilenamei; GetDownloadFilename(int)
296BFA:  CBZ             R0, loc_296C08
296BFC:  BLX             j__Z14ZIP_FileCreatePKc; ZIP_FileCreate(char const*)
296C00:  CMP             R0, #0
296C02:  IT NE
296C04:  BLXNE           j__Z14ZIP_AddStorageP7ZIPFile; ZIP_AddStorage(ZIPFile *)
296C08:  LDR             R0, [R5]
296C0A:  ADDS            R4, #1
296C0C:  CMP             R4, R0
296C0E:  BLT             loc_296BF4
296C10:  CBZ             R6, loc_296C5A
296C12:  ADR             R0, aMobile; "mobile"
296C14:  MOVS            R1, #0
296C16:  MOVS            R2, #6
296C18:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
296C1C:  ADR             R0, aTxd; "txd"
296C1E:  MOVS            R1, #0
296C20:  MOVS            R2, #6
296C22:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
296C26:  ADR             R0, aGta3; "gta3"
296C28:  MOVS            R1, #0
296C2A:  MOVS            R2, #6
296C2C:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
296C30:  ADR             R0, aGtaInt; "gta_int"
296C32:  MOVS            R1, #0
296C34:  MOVS            R2, #6
296C36:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
296C3A:  ADR             R0, aCutscene; "cutscene"
296C3C:  MOVS            R1, #0
296C3E:  MOVS            R2, #6
296C40:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
296C44:  ADR             R0, aPlayer_0; "player"
296C46:  MOVS            R1, #0
296C48:  MOVS            R2, #4
296C4A:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
296C4E:  LDR             R0, =(aMenu_1 - 0x296C58); "menu"
296C50:  MOVS            R1, #0
296C52:  MOVS            R2, #4
296C54:  ADD             R0, PC; "menu"
296C56:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
296C5A:  LDR             R0, =(__stack_chk_guard_ptr - 0x296C62)
296C5C:  LDR             R1, [SP,#0x70+var_20]
296C5E:  ADD             R0, PC; __stack_chk_guard_ptr
296C60:  LDR             R0, [R0]; __stack_chk_guard
296C62:  LDR             R0, [R0]
296C64:  SUBS            R0, R0, R1
296C66:  ITTT EQ
296C68:  ADDEQ           SP, SP, #0x54 ; 'T'
296C6A:  POPEQ.W         {R8-R11}
296C6E:  POPEQ           {R4-R7,PC}
296C70:  BLX             __stack_chk_fail
