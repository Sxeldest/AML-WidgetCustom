; =========================================================
; Game Engine Function: _ZN21CModelInfoAccelerator3EndEPc
; Address            : 0x386600 - 0x386660
; =========================================================

386600:  PUSH            {R4,R5,R7,LR}
386602:  ADD             R7, SP, #8
386604:  MOV             R4, R0
386606:  LDRB            R0, [R4,#0x1A]
386608:  CMP             R0, #0
38660A:  IT NE
38660C:  POPNE           {R4,R5,R7,PC}
38660E:  LDR             R0, =(gModelInfoAccelerator_ptr - 0x386614)
386610:  ADD             R0, PC; gModelInfoAccelerator_ptr
386612:  LDR             R0, [R0]; gModelInfoAccelerator
386614:  LDRB            R0, [R0,#(byte_931557 - 0x93153C)]
386616:  CBNZ            R0, loc_386640
386618:  LDR             R0, =(gModelInfoAccelerator_ptr - 0x38661E)
38661A:  ADD             R0, PC; gModelInfoAccelerator_ptr
38661C:  LDR             R0, [R0]; gModelInfoAccelerator
38661E:  ADDS            R0, #6; this
386620:  BLX             j__ZN8CFileMgr18OpenFileForWritingEPKc; CFileMgr::OpenFileForWriting(char const*)
386624:  MOV             R5, R0
386626:  CBZ             R5, loc_386640
386628:  LDR             R0, =(gModelInfoAccelerator_ptr - 0x386632)
38662A:  MOVW            R2, #(elf_hash_bucket+0x9F90); char *
38662E:  ADD             R0, PC; gModelInfoAccelerator_ptr
386630:  LDR             R0, [R0]; gModelInfoAccelerator
386632:  LDR             R1, [R0]; unsigned int
386634:  MOV             R0, R5; this
386636:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
38663A:  MOV             R0, R5; this
38663C:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
386640:  LDR             R0, =(gModelInfoAccelerator_ptr - 0x386646)
386642:  ADD             R0, PC; gModelInfoAccelerator_ptr
386644:  LDR             R0, [R0]; gModelInfoAccelerator
386646:  LDR             R0, [R0]; void *
386648:  CMP             R0, #0
38664A:  IT NE
38664C:  BLXNE           _ZdaPv; operator delete[](void *)
386650:  LDR             R0, =(gModelInfoAccelerator_ptr - 0x386658)
386652:  MOVS            R1, #0
386654:  ADD             R0, PC; gModelInfoAccelerator_ptr
386656:  LDR             R0, [R0]; gModelInfoAccelerator
386658:  STR             R1, [R0]
38665A:  MOVS            R0, #1
38665C:  STRB            R0, [R4,#0x1A]
38665E:  POP             {R4,R5,R7,PC}
