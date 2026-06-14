; =========================================================
; Game Engine Function: _ZN21CModelInfoAccelerator14EndOfLoadPhaseEv
; Address            : 0x3864E2 - 0x386518
; =========================================================

3864E2:  PUSH            {R4,R5,R7,LR}
3864E4:  ADD             R7, SP, #8
3864E6:  MOV             R4, R0
3864E8:  LDRB            R0, [R4,#0x1B]
3864EA:  CBNZ            R0, loc_386508
3864EC:  ADDS            R0, R4, #6; this
3864EE:  BLX             j__ZN8CFileMgr18OpenFileForWritingEPKc; CFileMgr::OpenFileForWriting(char const*)
3864F2:  MOV             R5, R0
3864F4:  CBZ             R5, loc_386508
3864F6:  LDR             R1, [R4]; unsigned int
3864F8:  MOV             R0, R5; this
3864FA:  MOVW            R2, #(elf_hash_bucket+0x9F90); char *
3864FE:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
386502:  MOV             R0, R5; this
386504:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
386508:  LDR             R0, [R4]; void *
38650A:  CMP             R0, #0
38650C:  IT NE
38650E:  BLXNE           _ZdaPv; operator delete[](void *)
386512:  MOVS            R0, #0
386514:  STR             R0, [R4]
386516:  POP             {R4,R5,R7,PC}
