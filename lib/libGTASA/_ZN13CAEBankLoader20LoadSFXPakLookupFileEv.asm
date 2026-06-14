; =========================================================
; Game Engine Function: _ZN13CAEBankLoader20LoadSFXPakLookupFileEv
; Address            : 0x27D694 - 0x27D738
; =========================================================

27D694:  PUSH            {R4-R7,LR}
27D696:  ADD             R7, SP, #0xC
27D698:  PUSH.W          {R8,R9,R11}
27D69C:  MOV             R8, R0
27D69E:  ADR             R0, aAudioConfigPak; "AUDIO\\CONFIG\\PAKFILES.DAT"
27D6A0:  ADR             R1, aRb_2; "rb"
27D6A2:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
27D6A6:  MOV             R5, R0
27D6A8:  CBZ             R5, loc_27D718
27D6AA:  MOV             R0, R5; this
27D6AC:  BLX             j__ZN8CFileMgr12GetTotalSizeEj; CFileMgr::GetTotalSize(uint)
27D6B0:  MOV             R6, R0
27D6B2:  CBZ             R6, loc_27D712
27D6B4:  MOVW            R0, #0xEC4F
27D6B8:  MOV.W           R9, #0x34 ; '4'
27D6BC:  MOVT            R0, #0x4EC4
27D6C0:  UMULL.W         R0, R1, R6, R0
27D6C4:  SBFX.W          R4, R1, #4, #0x10
27D6C8:  LSRS            R1, R1, #4
27D6CA:  STRH.W          R1, [R8,#0x10]
27D6CE:  UMULL.W         R0, R2, R4, R9
27D6D2:  CMP             R2, #0
27D6D4:  IT NE
27D6D6:  MOVNE           R2, #1
27D6D8:  CMP             R2, #0
27D6DA:  IT NE
27D6DC:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
27D6E0:  BLX             _Znaj; operator new[](uint)
27D6E4:  SMULBB.W        R4, R4, R9
27D6E8:  MOV             R1, R0; ptr
27D6EA:  MOV             R0, R5; this
27D6EC:  STR.W           R1, [R8,#8]
27D6F0:  MOV             R2, R4; n
27D6F2:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
27D6F6:  MOV             R9, R0
27D6F8:  MOV             R0, R5; this
27D6FA:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
27D6FE:  CMP.W           R9, #0
27D702:  IT NE
27D704:  MOVNE           R4, #0
27D706:  CMP             R6, R4
27D708:  BNE             loc_27D720
27D70A:  MOVS            R0, #1
27D70C:  POP.W           {R8,R9,R11}
27D710:  POP             {R4-R7,PC}
27D712:  MOV             R0, R5; this
27D714:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
27D718:  MOVS            R0, #0
27D71A:  POP.W           {R8,R9,R11}
27D71E:  POP             {R4-R7,PC}
27D720:  LDR.W           R0, [R8,#8]; void *
27D724:  CMP             R0, #0
27D726:  IT NE
27D728:  BLXNE           _ZdaPv; operator delete[](void *)
27D72C:  MOVS            R0, #0
27D72E:  STR.W           R0, [R8,#8]
27D732:  POP.W           {R8,R9,R11}
27D736:  POP             {R4-R7,PC}
