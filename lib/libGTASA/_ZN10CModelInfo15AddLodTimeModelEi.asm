; =========================================================
; Game Engine Function: _ZN10CModelInfo15AddLodTimeModelEi
; Address            : 0x385FEC - 0x386018
; =========================================================

385FEC:  PUSH            {R4,R5,R7,LR}
385FEE:  ADD             R7, SP, #8
385FF0:  MOV             R4, R0
385FF2:  LDR             R0, =(dword_8E3608 - 0x385FF8)
385FF4:  ADD             R0, PC; dword_8E3608
385FF6:  LDR             R1, [R0]
385FF8:  ADDS            R2, R1, #1
385FFA:  STR             R2, [R0]
385FFC:  ADD.W           R5, R0, R1,LSL#6
386000:  LDR.W           R0, [R5,#4]!
386004:  LDR             R1, [R0,#0x1C]
386006:  MOV             R0, R5
386008:  BLX             R1
38600A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386010)
38600C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
38600E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386010:  STR.W           R5, [R0,R4,LSL#2]
386014:  MOV             R0, R5
386016:  POP             {R4,R5,R7,PC}
