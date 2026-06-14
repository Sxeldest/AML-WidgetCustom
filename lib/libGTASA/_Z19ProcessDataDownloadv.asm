; =========================================================
; Game Engine Function: _Z19ProcessDataDownloadv
; Address            : 0x297044 - 0x2970D0
; =========================================================

297044:  PUSH            {R4,R6,R7,LR}
297046:  ADD             R7, SP, #8
297048:  LDR             R0, =(CurrentDownloadingError_ptr - 0x29704E)
29704A:  ADD             R0, PC; CurrentDownloadingError_ptr
29704C:  LDR             R0, [R0]; CurrentDownloadingError
29704E:  LDR             R0, [R0]
297050:  CBZ             R0, loc_29705E
297052:  LDR             R1, =(byte_61CD7E - 0x29705A)
297054:  ADR             R0, aGetnetworkstat; "GetNetworkState"
297056:  ADD             R1, PC; byte_61CD7E ; char *
297058:  BLX             j__Z25OS_ServiceAppCommandValuePKcS0_; OS_ServiceAppCommandValue(char const*,char const*)
29705C:  B               loc_297068
29705E:  LDR             R0, =(dword_6857E8 - 0x297064)
297060:  ADD             R0, PC; dword_6857E8
297062:  LDR             R0, [R0]
297064:  ADDS            R0, #1
297066:  BEQ             loc_29706E
297068:  MOVS            R4, #1
29706A:  MOV             R0, R4
29706C:  POP             {R4,R6,R7,PC}
29706E:  LDR             R0, =(DownloadFileCount_ptr - 0x297074)
297070:  ADD             R0, PC; DownloadFileCount_ptr
297072:  LDR             R0, [R0]; DownloadFileCount
297074:  LDR             R1, [R0]
297076:  CMP             R1, #1
297078:  BLT             loc_2970A4
29707A:  LDR             R0, =(AmazonDownloadFilenames_ptr - 0x297080)
29707C:  ADD             R0, PC; AmazonDownloadFilenames_ptr
29707E:  LDR             R0, [R0]; AmazonDownloadFilenames
297080:  ADD.W           R2, R0, #8
297084:  MOVS            R0, #0; int
297086:  LDRB            R3, [R2]
297088:  CBZ             R3, loc_297094
29708A:  ADDS            R0, #1
29708C:  ADDS            R2, #0x10
29708E:  CMP             R0, R1
297090:  BLT             loc_297086
297092:  B               loc_2970A4
297094:  LDR             R4, =(dword_6857E8 - 0x29709A)
297096:  ADD             R4, PC; dword_6857E8
297098:  STR             R0, [R4]
29709A:  BLX             j__Z13StartDownloadi; StartDownload(int)
29709E:  LDR             R0, [R4]
2970A0:  ADDS            R0, #1
2970A2:  BNE             loc_297068
2970A4:  LDR             R0, =(gMobileMenu_ptr - 0x2970AE)
2970A6:  MOVS            R1, #0x64 ; 'd'; int
2970A8:  MOVS            R2, #1; bool
2970AA:  ADD             R0, PC; gMobileMenu_ptr
2970AC:  LDR             R0, [R0]; gMobileMenu ; this
2970AE:  BLX             j__ZN10MobileMenu14UpdateDownloadEib; MobileMenu::UpdateDownload(int,bool)
2970B2:  LDR             R0, =(needsAmazonDownload_ptr - 0x2970BA)
2970B4:  MOVS            R4, #0
2970B6:  ADD             R0, PC; needsAmazonDownload_ptr
2970B8:  LDR             R0, [R0]; needsAmazonDownload
2970BA:  STRB            R4, [R0]
2970BC:  MOVS            R0, #1; bool
2970BE:  BLX             j__Z14AddAmazonFilesb; AddAmazonFiles(bool)
2970C2:  LDR             R0, =(AudioEngine_ptr - 0x2970C8)
2970C4:  ADD             R0, PC; AudioEngine_ptr
2970C6:  LDR             R0, [R0]; AudioEngine ; this
2970C8:  BLX             j__ZN12CAudioEngine10InitialiseEv; CAudioEngine::Initialise(void)
2970CC:  MOV             R0, R4
2970CE:  POP             {R4,R6,R7,PC}
