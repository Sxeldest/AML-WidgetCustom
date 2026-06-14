; =========================================================
; Game Engine Function: _ZN13CAEBankLoader18LoadBankLookupFileEv
; Address            : 0x27D5D0 - 0x27D674
; =========================================================

27D5D0:  PUSH            {R4-R7,LR}
27D5D2:  ADD             R7, SP, #0xC
27D5D4:  PUSH.W          {R8}
27D5D8:  MOV             R8, R0
27D5DA:  ADR             R0, aAudioConfigBan_0; "AUDIO\\CONFIG\\BANKLKUP.DAT"
27D5DC:  ADR             R1, aRb_1; "rb"
27D5DE:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
27D5E2:  MOV             R5, R0
27D5E4:  CBZ             R5, loc_27D646
27D5E6:  MOV             R0, R5; this
27D5E8:  BLX             j__ZN8CFileMgr12GetTotalSizeEj; CFileMgr::GetTotalSize(uint)
27D5EC:  MOV             R6, R0
27D5EE:  CBZ             R6, loc_27D64A
27D5F0:  MOV             R0, #0xAAAAAAAB
27D5F8:  UMULL.W         R0, R1, R6, R0
27D5FC:  MOVS            R0, #0xC
27D5FE:  SBFX.W          R4, R1, #3, #0x10
27D602:  LSRS            R1, R1, #3
27D604:  STRH.W          R1, [R8,#0xE]
27D608:  UMULL.W         R0, R2, R4, R0
27D60C:  CMP             R2, #0
27D60E:  IT NE
27D610:  MOVNE           R2, #1
27D612:  CMP             R2, #0
27D614:  IT NE
27D616:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
27D61A:  BLX             _Znaj; operator new[](uint)
27D61E:  ADD.W           R4, R4, R4,LSL#1
27D622:  MOV             R1, R0; ptr
27D624:  MOV             R0, R5; this
27D626:  STR.W           R1, [R8,#4]
27D62A:  LSLS            R2, R4, #2; n
27D62C:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
27D630:  MOVS            R1, #0
27D632:  CMP             R0, #0
27D634:  IT EQ
27D636:  LSLEQ           R1, R4, #2; unsigned int
27D638:  CMP             R6, R1
27D63A:  BNE             loc_27D654
27D63C:  MOV             R0, R5; this
27D63E:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
27D642:  MOVS            R6, #1
27D644:  B               loc_27D66C
27D646:  MOVS            R6, #0
27D648:  B               loc_27D66C
27D64A:  MOV             R0, R5; this
27D64C:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
27D650:  MOVS            R6, #0
27D652:  B               loc_27D66C
27D654:  LDR.W           R0, [R8,#4]; void *
27D658:  CMP             R0, #0
27D65A:  IT NE
27D65C:  BLXNE           _ZdaPv; operator delete[](void *)
27D660:  MOVS            R6, #0
27D662:  MOV             R0, R5; this
27D664:  STR.W           R6, [R8,#4]
27D668:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
27D66C:  MOV             R0, R6
27D66E:  POP.W           {R8}
27D672:  POP             {R4-R7,PC}
