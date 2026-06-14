; =========================================================
; Game Engine Function: _Z18Menu_PopulateSavesb
; Address            : 0x2A94C8 - 0x2A96A6
; =========================================================

2A94C8:  PUSH            {R4-R7,LR}
2A94CA:  ADD             R7, SP, #0xC
2A94CC:  PUSH.W          {R8-R11}
2A94D0:  SUB.W           SP, SP, #0x30C
2A94D4:  LDR             R0, =(__stack_chk_guard_ptr - 0x2A94E2)
2A94D6:  VMOV.I32        Q8, #1
2A94DA:  LDR             R1, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x2A94E6)
2A94DC:  ADD             R5, SP, #0x328+var_304
2A94DE:  ADD             R0, PC; __stack_chk_guard_ptr
2A94E0:  LDR             R2, =(_ZN19CGenericGameStorage15ms_SlotFileNameE_ptr - 0x2A94EC)
2A94E2:  ADD             R1, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
2A94E4:  LDR             R3, =(_ZN19CGenericGameStorage15ms_SlotSaveDateE_ptr - 0x2A94F0)
2A94E6:  LDR             R0, [R0]; __stack_chk_guard
2A94E8:  ADD             R2, PC; _ZN19CGenericGameStorage15ms_SlotFileNameE_ptr
2A94EA:  LDR             R1, [R1]; CGenericGameStorage::ms_Slots ...
2A94EC:  ADD             R3, PC; _ZN19CGenericGameStorage15ms_SlotSaveDateE_ptr
2A94EE:  LDR.W           R11, [R2]; CGenericGameStorage::ms_SlotFileName ...
2A94F2:  ADD             R6, SP, #0x328+var_124
2A94F4:  LDR             R0, [R0]
2A94F6:  MOV.W           R8, #0
2A94FA:  STR             R0, [SP,#0x328+var_20]
2A94FC:  MOV             R0, R1
2A94FE:  VST1.32         {D16-D17}, [R0]!
2A9502:  LDR             R2, [R3]; CGenericGameStorage::ms_SlotSaveDate ...
2A9504:  MOVS            R3, #0
2A9506:  VST1.32         {D16-D17}, [R0]
2A950A:  MOV.W           R0, #(word_9FBAE0 - 0x9FAAA0)
2A950E:  STRH.W          R3, [R11,R0]
2A9512:  MOVS            R0, #1
2A9514:  STR             R0, [R1,#(dword_9FAA9C - 0x9FAA7C)]
2A9516:  ADDS            R0, R5, #4
2A9518:  STR             R0, [SP,#0x328+var_308]
2A951A:  LDR             R0, =(PcSaveHelper_ptr - 0x2A9522)
2A951C:  STRH            R3, [R2]; CGenericGameStorage::ms_SlotSaveDate
2A951E:  ADD             R0, PC; PcSaveHelper_ptr
2A9520:  STRH.W          R3, [R11]; CGenericGameStorage::ms_SlotFileName
2A9524:  STRH.W          R3, [R11,#(word_9FACA8 - 0x9FAAA0)]
2A9528:  LDR             R4, [R0]; PcSaveHelper
2A952A:  LDR             R0, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x2A9534)
2A952C:  STRH.W          R3, [R2,#(word_9FBF80 - 0x9FBEF4)]
2A9530:  ADD             R0, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
2A9532:  STRH.W          R3, [R11,#(word_9FAEB0 - 0x9FAAA0)]
2A9536:  STRH.W          R3, [R2,#(word_9FC00C - 0x9FBEF4)]
2A953A:  LDR.W           R9, [R0]; CGenericGameStorage::ms_Slots ...
2A953E:  LDR             R0, =(TheText_ptr - 0x2A9548)
2A9540:  STRH.W          R3, [R11,#(word_9FB0B8 - 0x9FAAA0)]
2A9544:  ADD             R0, PC; TheText_ptr
2A9546:  STRH.W          R3, [R2,#(word_9FC098 - 0x9FBEF4)]
2A954A:  STRH.W          R3, [R11,#(word_9FB2C0 - 0x9FAAA0)]
2A954E:  LDR             R0, [R0]; TheText
2A9550:  STR             R0, [SP,#0x328+var_318]; unsigned __int16 *
2A9552:  LDR             R0, =(TopLineEmptyFile_ptr - 0x2A955C)
2A9554:  STRH.W          R3, [R2,#(word_9FC124 - 0x9FBEF4)]
2A9558:  ADD             R0, PC; TopLineEmptyFile_ptr
2A955A:  STRH.W          R3, [R11,#(word_9FB4C8 - 0x9FAAA0)]
2A955E:  STRH.W          R3, [R2,#(word_9FC1B0 - 0x9FBEF4)]
2A9562:  LDR             R0, [R0]; "THIS FILE IS NOT VALID YET" ...
2A9564:  STR             R0, [SP,#0x328+var_30C]
2A9566:  LDR             R0, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x2A9570)
2A9568:  STRH.W          R3, [R11,#(word_9FB6D0 - 0x9FAAA0)]
2A956C:  ADD             R0, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
2A956E:  STRH.W          R3, [R2,#(word_9FC23C - 0x9FBEF4)]
2A9572:  STRH.W          R3, [R2,#(word_9FC2C8 - 0x9FBEF4)]
2A9576:  LDR             R0, [R0]; CGenericGameStorage::ms_Slots ...
2A9578:  STR             R0, [SP,#0x328+var_310]
2A957A:  LDR             R0, =(TheText_ptr - 0x2A9584)
2A957C:  STRH.W          R3, [R11,#(word_9FB8D8 - 0x9FAAA0)]
2A9580:  ADD             R0, PC; TheText_ptr
2A9582:  STRH.W          R3, [R2,#(word_9FC354 - 0x9FBEF4)]
2A9586:  LDR             R0, [R0]; TheText
2A9588:  STR             R0, [SP,#0x328+var_314]
2A958A:  MOV             R0, R4; this
2A958C:  MOV             R1, R8; int
2A958E:  MOV             R2, R6; char *
2A9590:  BLX             j__ZN8C_PcSave20GenerateGameFilenameEiPc; C_PcSave::GenerateGameFilename(int,char *)
2A9594:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
2A9598:  ADR             R1, dword_2A96BC; char *
2A959A:  MOV             R0, R6; this
2A959C:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
2A95A0:  MOV             R10, R0
2A95A2:  CMP.W           R10, #0
2A95A6:  BEQ             loc_2A963E
2A95A8:  MOV             R0, R10; this
2A95AA:  MOVS            R1, #5; unsigned int
2A95AC:  MOVS            R2, #0; int
2A95AE:  BLX             j__ZN8CFileMgr4SeekEjii; CFileMgr::Seek(uint,int,int)
2A95B2:  MOV             R0, R10; this
2A95B4:  MOV             R1, R5; ptr
2A95B6:  MOV.W           R2, #0x1AC; n
2A95BA:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2A95BE:  LDR             R0, [SP,#0x328+var_304]; this
2A95C0:  BLX             j__ZN19CGenericGameStorage21GetSavedVersionNumberEj; CGenericGameStorage::GetSavedVersionNumber(uint)
2A95C4:  CMP             R0, #2
2A95C6:  BLT             loc_2A9638
2A95C8:  LDRD.W          R1, R0, [SP,#0x328+var_30C]; char *
2A95CC:  MOVS            R2, #0x1A; size_t
2A95CE:  BLX             strncmp
2A95D2:  CBZ             R0, loc_2A9638
2A95D4:  LDR             R0, [SP,#0x328+var_310]
2A95D6:  MOVS            R1, #0
2A95D8:  STR.W           R1, [R0,R8,LSL#2]
2A95DC:  LDR             R1, [SP,#0x328+var_308]
2A95DE:  MOV             R0, R1
2A95E0:  ADDS            R1, #0x20 ; ' '
2A95E2:  VLD1.32         {D16-D17}, [R0]!
2A95E6:  VLD1.32         {D20-D21}, [R0]
2A95EA:  ADD             R0, SP, #0x328+var_158; unsigned __int16 *
2A95EC:  VLD1.32         {D18-D19}, [R1]
2A95F0:  ADD.W           R1, R0, #0x20 ; ' '
2A95F4:  VST1.64         {D18-D19}, [R1]
2A95F8:  MOV             R1, R0
2A95FA:  VST1.64         {D16-D17}, [R1]!
2A95FE:  VST1.64         {D20-D21}, [R1]
2A9602:  MOVS            R1, #0; unsigned __int8
2A9604:  BLX             j__Z14GxtCharToAsciiPth; GxtCharToAscii(ushort *,uchar)
2A9608:  MOV             R1, R0; CKeyGen *
2A960A:  LDR             R0, [SP,#0x328+var_314]; this
2A960C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A9610:  ADD.W           R1, R0, #0x20 ; ' '; unsigned int
2A9614:  VLD1.16         {D16-D17}, [R0]!
2A9618:  VLD1.16         {D18-D19}, [R0]
2A961C:  MOVS            R0, #0
2A961E:  VLD1.16         {D20-D21}, [R1]
2A9622:  STRH.W          R0, [R11,#0x30]
2A9626:  ADD.W           R0, R11, #0x20 ; ' '
2A962A:  VST1.16         {D20-D21}, [R0]
2A962E:  MOV             R0, R11
2A9630:  VST1.16         {D16-D17}, [R0]!
2A9634:  VST1.16         {D18-D19}, [R0]
2A9638:  MOV             R0, R10; this
2A963A:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
2A963E:  LDR.W           R0, [R9,R8,LSL#2]
2A9642:  CBNZ            R0, loc_2A9672
2A9644:  MOV             R0, R8; this
2A9646:  MOV             R1, R6; int
2A9648:  BLX             j__ZN19CGenericGameStorage19CheckDataNotCorruptEiPc; CGenericGameStorage::CheckDataNotCorrupt(int,char *)
2A964C:  CBNZ            R0, loc_2A9672
2A964E:  LDR             R0, [SP,#0x328+var_318]; this
2A9650:  ADR             R1, aFecSlc; "FEC_SLC"
2A9652:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A9656:  MOV.W           R1, #0xFFFFFFFF
2A965A:  MOV.W           R2, #0xFFFFFFFF; int
2A965E:  STRD.W          R1, R1, [SP,#0x328+var_328]; int
2A9662:  MOV.W           R3, #0xFFFFFFFF; int
2A9666:  STRD.W          R1, R11, [SP,#0x328+var_320]; int
2A966A:  ADD.W           R1, R8, #1; unsigned __int16 *
2A966E:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
2A9672:  ADD.W           R8, R8, #1
2A9676:  ADD.W           R11, R11, #0x208
2A967A:  CMP.W           R8, #9
2A967E:  BNE.W           loc_2A958A
2A9682:  LDR             R0, =(byte_61CD7E - 0x2A9688)
2A9684:  ADD             R0, PC; byte_61CD7E ; this
2A9686:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
2A968A:  LDR             R0, =(__stack_chk_guard_ptr - 0x2A9692)
2A968C:  LDR             R1, [SP,#0x328+var_20]
2A968E:  ADD             R0, PC; __stack_chk_guard_ptr
2A9690:  LDR             R0, [R0]; __stack_chk_guard
2A9692:  LDR             R0, [R0]
2A9694:  SUBS            R0, R0, R1
2A9696:  ITTT EQ
2A9698:  ADDEQ.W         SP, SP, #0x30C
2A969C:  POPEQ.W         {R8-R11}
2A96A0:  POPEQ           {R4-R7,PC}
2A96A2:  BLX             __stack_chk_fail
