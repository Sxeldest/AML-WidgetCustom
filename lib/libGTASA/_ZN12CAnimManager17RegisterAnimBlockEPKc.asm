; =========================================================
; Game Engine Function: _ZN12CAnimManager17RegisterAnimBlockEPKc
; Address            : 0x38E920 - 0x38E9B8
; =========================================================

38E920:  PUSH            {R4-R7,LR}
38E922:  ADD             R7, SP, #0xC
38E924:  PUSH.W          {R8}
38E928:  MOV             R5, R0
38E92A:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38E930)
38E92C:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38E92E:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38E930:  LDR.W           R8, [R0]; CAnimManager::ms_numAnimBlocks
38E934:  CMP.W           R8, #1
38E938:  BLT             loc_38E958
38E93A:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38E942)
38E93C:  MOVS            R6, #0
38E93E:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38E940:  LDR             R4, [R0]; CAnimManager::ms_aAnimBlocks ...
38E942:  MOV             R0, R4; char *
38E944:  MOV             R1, R5; char *
38E946:  BLX             strcasecmp
38E94A:  CBZ             R0, loc_38E956
38E94C:  ADDS            R6, #1
38E94E:  ADDS            R4, #0x20 ; ' '
38E950:  CMP             R6, R8
38E952:  BLT             loc_38E942
38E954:  B               loc_38E958
38E956:  CBNZ            R4, loc_38E9A8
38E958:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38E964)
38E95A:  ADD.W           R2, R8, #1
38E95E:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38E966)
38E960:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38E962:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38E964:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
38E966:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38E968:  ADD.W           R4, R1, R8,LSL#5
38E96C:  MOV             R1, R5; char *
38E96E:  STR             R2, [R0]; CAnimManager::ms_numAnimBlocks
38E970:  MOV             R0, R4; char *
38E972:  MOVS            R2, #0x10; size_t
38E974:  BLX             strncpy
38E978:  LDR             R0, =(_ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr - 0x38E982)
38E97A:  MOVS            R6, #0
38E97C:  STR             R6, [R4,#0x18]
38E97E:  ADD             R0, PC; _ZN12CAnimManager24ms_aAnimAssocDefinitionsE_ptr
38E980:  LDR             R0, [R0]; "default" ...
38E982:  ADD.W           R5, R0, #0x10
38E986:  MOV             R0, R5; char *
38E988:  MOV             R1, R4; char *
38E98A:  BLX             strcasecmp
38E98E:  CBZ             R0, loc_38E99C
38E990:  ADDS            R0, R6, #1
38E992:  ADDS            R5, #0x30 ; '0'
38E994:  CMP             R6, #0x75 ; 'u'
38E996:  MOV             R6, R0
38E998:  BLT             loc_38E986
38E99A:  MOVS            R6, #0x76 ; 'v'
38E99C:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38E9A2)
38E99E:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38E9A0:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38E9A2:  ADD.W           R0, R0, R8,LSL#5
38E9A6:  STR             R6, [R0,#0x1C]
38E9A8:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38E9AE)
38E9AA:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38E9AC:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38E9AE:  SUBS            R0, R4, R0
38E9B0:  ASRS            R0, R0, #5
38E9B2:  POP.W           {R8}
38E9B6:  POP             {R4-R7,PC}
