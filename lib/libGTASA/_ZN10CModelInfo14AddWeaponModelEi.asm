; =========================================================
; Game Engine Function: _ZN10CModelInfo14AddWeaponModelEi
; Address            : 0x386020 - 0x38604C
; =========================================================

386020:  PUSH            {R4,R5,R7,LR}
386022:  ADD             R7, SP, #8
386024:  MOV             R4, R0
386026:  LDR             R0, =(dword_8E364C - 0x38602C)
386028:  ADD             R0, PC; dword_8E364C
38602A:  LDR             R1, [R0]
38602C:  ADDS            R2, R1, #1
38602E:  STR             R2, [R0]
386030:  ADD.W           R5, R0, R1,LSL#6
386034:  LDR.W           R0, [R5,#4]!
386038:  LDR             R1, [R0,#0x1C]
38603A:  MOV             R0, R5
38603C:  BLX             R1
38603E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386044)
386040:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386042:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386044:  STR.W           R5, [R0,R4,LSL#2]
386048:  MOV             R0, R5
38604A:  POP             {R4,R5,R7,PC}
