; =========================================================
; Game Engine Function: _ZN10FxSystem_cD2Ev
; Address            : 0x36E08C - 0x36E0CC
; =========================================================

36E08C:  PUSH            {R4,R6,R7,LR}
36E08E:  ADD             R7, SP, #8
36E090:  MOV             R4, R0
36E092:  MOVS            R1, #0; void *
36E094:  LDR             R0, [R4,#0x78]; this
36E096:  STR             R1, [R4,#8]
36E098:  CMP             R0, #0
36E09A:  IT NE
36E09C:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
36E0A0:  LDRB.W          R0, [R4,#0x66]
36E0A4:  LSLS            R0, R0, #0x1F
36E0A6:  ITT NE
36E0A8:  LDRNE           R0, [R4,#0xC]
36E0AA:  BLXNE           j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
36E0AE:  LDR             R0, =(_ZTV14CAEAudioEntity_ptr - 0x36E0B4)
36E0B0:  ADD             R0, PC; _ZTV14CAEAudioEntity_ptr
36E0B2:  LDR             R0, [R0]; `vtable for'CAEAudioEntity ...
36E0B4:  ADDS            R0, #8
36E0B6:  STR.W           R0, [R4,#0x80]
36E0BA:  ADD.W           R0, R4, #0x88; this
36E0BE:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
36E0C2:  MOV             R0, R4; this
36E0C4:  POP.W           {R4,R6,R7,LR}
36E0C8:  B.W             j_j__ZN10ListItem_cD2Ev; j_ListItem_c::~ListItem_c()
