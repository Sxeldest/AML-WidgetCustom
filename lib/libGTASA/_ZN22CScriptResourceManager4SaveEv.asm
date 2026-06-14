; =========================================================
; Game Engine Function: _ZN22CScriptResourceManager4SaveEv
; Address            : 0x48B630 - 0x48B798
; =========================================================

48B630:  PUSH            {R4-R7,LR}
48B632:  ADD             R7, SP, #0xC
48B634:  PUSH.W          {R8-R11}
48B638:  SUB             SP, SP, #4
48B63A:  MOV             R4, R0
48B63C:  LDR             R0, =(SaveStreamedScripts_ptr - 0x48B646)
48B63E:  MOVS            R1, #0
48B640:  MOVS            R6, #0
48B642:  ADD             R0, PC; SaveStreamedScripts_ptr
48B644:  LDR             R0, [R0]; SaveStreamedScripts
48B646:  LDRB            R0, [R0]
48B648:  B               loc_48B64E
48B64A:  ADDS            R6, #1
48B64C:  B               loc_48B66C
48B64E:  ADDS            R2, R4, R1
48B650:  LDRH            R3, [R2,#8]
48B652:  CBZ             R3, loc_48B66C
48B654:  LDR             R2, [R2,#4]
48B656:  LDRB.W          R3, [R2,#0xE7]
48B65A:  CMP             R3, #0
48B65C:  ITT EQ
48B65E:  LDRBEQ.W        R2, [R2,#0xE9]
48B662:  CMPEQ           R2, #0xFF
48B664:  BEQ             loc_48B64A
48B666:  CMP             R0, #0
48B668:  IT NE
48B66A:  ADDNE           R6, #1
48B66C:  ADDS            R1, #0xC
48B66E:  CMP.W           R1, #0x384
48B672:  BNE             loc_48B64E
48B674:  MOVS            R0, #2; byte_count
48B676:  BLX             malloc
48B67A:  MOV             R5, R0
48B67C:  MOVS            R1, #(stderr+2); void *
48B67E:  STRH            R6, [R5]
48B680:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B684:  MOV             R0, R5; p
48B686:  BLX             free
48B68A:  MOVW            R0, #0xFFFF
48B68E:  TST             R6, R0
48B690:  BEQ             loc_48B790
48B692:  LDR             R0, =(SaveStreamedScripts_ptr - 0x48B69E)
48B694:  ADDS            R6, R4, #4
48B696:  MOV.W           R9, #0
48B69A:  ADD             R0, PC; SaveStreamedScripts_ptr
48B69C:  LDR.W           R10, [R0]; SaveStreamedScripts
48B6A0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x48B6A6)
48B6A2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
48B6A4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
48B6A6:  STR             R0, [SP,#0x20+var_20]
48B6A8:  LDR             R0, =(SaveStreamedScripts_ptr - 0x48B6AE)
48B6AA:  ADD             R0, PC; SaveStreamedScripts_ptr
48B6AC:  LDR.W           R11, [R0]; SaveStreamedScripts
48B6B0:  LDRH            R0, [R6,#4]
48B6B2:  CMP             R0, #0
48B6B4:  BEQ             loc_48B784
48B6B6:  LDR             R0, [R6]
48B6B8:  LDRB.W          R1, [R0,#0xE7]
48B6BC:  CBZ             R1, loc_48B6C6
48B6BE:  LDRB.W          R0, [R11]
48B6C2:  CBNZ            R0, loc_48B6D6
48B6C4:  B               loc_48B784
48B6C6:  LDRB.W          R0, [R0,#0xE9]
48B6CA:  CMP             R0, #0xFF
48B6CC:  BEQ             loc_48B6D6
48B6CE:  LDRB.W          R0, [R10]
48B6D2:  CMP             R0, #0
48B6D4:  BEQ             loc_48B784
48B6D6:  MOVS            R0, #2; byte_count
48B6D8:  BLX             malloc
48B6DC:  MOV             R4, R0
48B6DE:  MOVS            R1, #(stderr+2); void *
48B6E0:  STRH.W          R9, [R4]
48B6E4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B6E8:  MOV             R0, R4; p
48B6EA:  BLX             free
48B6EE:  LDR             R0, [R6]; this
48B6F0:  BLX             j__ZN11CTheScripts25GetScriptIndexFromPointerEP14CRunningScript; CTheScripts::GetScriptIndexFromPointer(CRunningScript *)
48B6F4:  MOV             R4, R0
48B6F6:  MOVS            R0, #2; byte_count
48B6F8:  BLX             malloc
48B6FC:  MOV             R5, R0
48B6FE:  MOVS            R1, #(stderr+2); void *
48B700:  STRH            R4, [R5]
48B702:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B706:  MOV             R0, R5; p
48B708:  BLX             free
48B70C:  MOVS            R0, #4; byte_count
48B70E:  BLX             malloc
48B712:  MOV             R4, R0
48B714:  LDR.W           R0, [R6,#-4]
48B718:  STR             R0, [R4]
48B71A:  MOV             R0, R4; this
48B71C:  MOVS            R1, #byte_4; void *
48B71E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B722:  MOV             R0, R4; p
48B724:  BLX             free
48B728:  MOVS            R0, #2; byte_count
48B72A:  BLX             malloc
48B72E:  MOV             R4, R0
48B730:  LDRH            R0, [R6,#4]
48B732:  STRH            R0, [R4]
48B734:  MOV             R0, R4; this
48B736:  MOVS            R1, #(stderr+2); void *
48B738:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B73C:  MOV             R0, R4; p
48B73E:  BLX             free
48B742:  LDRH            R0, [R6,#4]
48B744:  CMP             R0, #2
48B746:  BNE             loc_48B784
48B748:  LDR.W           R0, [R6,#-4]
48B74C:  SUB.W           R1, R0, #0x122
48B750:  CMP             R1, #9
48B752:  BHI             loc_48B784
48B754:  LDR             R1, [SP,#0x20+var_20]
48B756:  LDR.W           R0, [R1,R0,LSL#2]
48B75A:  ADD.W           R8, R0, #8
48B75E:  MOV             R0, R8; char *
48B760:  BLX             strlen
48B764:  ADDS            R5, R0, #1
48B766:  MOVS            R0, #4; byte_count
48B768:  BLX             malloc
48B76C:  MOV             R4, R0
48B76E:  MOVS            R1, #byte_4; void *
48B770:  STR             R5, [R4]
48B772:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B776:  MOV             R0, R4; p
48B778:  BLX             free
48B77C:  MOV             R0, R8; this
48B77E:  MOV             R1, R5; void *
48B780:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48B784:  ADD.W           R9, R9, #1
48B788:  ADDS            R6, #0xC
48B78A:  CMP.W           R9, #0x4B ; 'K'
48B78E:  BNE             loc_48B6B0
48B790:  ADD             SP, SP, #4
48B792:  POP.W           {R8-R11}
48B796:  POP             {R4-R7,PC}
