; =========================================================
; Game Engine Function: _ZN15CClothesBuilder15RequestGeometryEij
; Address            : 0x45818C - 0x4581DA
; =========================================================

45818C:  PUSH            {R4,R6,R7,LR}
45818E:  ADD             R7, SP, #8
458190:  SUB             SP, SP, #0x10
458192:  MOV             R4, R0
458194:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x45819C)
458196:  LDR             R2, =(aDff - 0x45819E); ".DFF"
458198:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
45819A:  ADD             R2, PC; ".DFF"
45819C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
45819E:  LDR.W           R0, [R0,R4,LSL#2]
4581A2:  LDRH            R3, [R0,#0x28]
4581A4:  ORR.W           R3, R3, #0x200
4581A8:  STRH            R3, [R0,#0x28]
4581AA:  MOV             R0, R1; this
4581AC:  MOV             R1, R2; unsigned int
4581AE:  BLX             j__ZN7CKeyGen17AppendStringToKeyEjPKc; CKeyGen::AppendStringToKey(uint,char const*)
4581B2:  MOV             R1, R0; unsigned int
4581B4:  LDR             R0, =(unk_9A7560 - 0x4581BE)
4581B6:  ADD             R2, SP, #0x18+var_C; unsigned int *
4581B8:  ADD             R3, SP, #0x18+var_10; unsigned int *
4581BA:  ADD             R0, PC; unk_9A7560 ; this
4581BC:  BLX             j__ZN10CDirectory8FindItemEjRjS0_; CDirectory::FindItem(uint,uint &,uint &)
4581C0:  LDR             R0, =(_ZN8CClothes17ms_clothesImageIdE_ptr - 0x4581C6)
4581C2:  ADD             R0, PC; _ZN8CClothes17ms_clothesImageIdE_ptr
4581C4:  LDR             R0, [R0]; CClothes::ms_clothesImageId ...
4581C6:  LDR             R3, [R0]; int
4581C8:  MOVS            R0, #0x12
4581CA:  LDRD.W          R2, R1, [SP,#0x18+var_10]; int
4581CE:  STR             R0, [SP,#0x18+var_18]; int
4581D0:  MOV             R0, R4; this
4581D2:  BLX             j__ZN10CStreaming11RequestFileEiiiii; CStreaming::RequestFile(int,int,int,int,int)
4581D6:  ADD             SP, SP, #0x10
4581D8:  POP             {R4,R6,R7,PC}
