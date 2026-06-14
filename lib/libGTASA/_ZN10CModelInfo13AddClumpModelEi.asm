; =========================================================
; Game Engine Function: _ZN10CModelInfo13AddClumpModelEi
; Address            : 0x386054 - 0x386084
; =========================================================

386054:  PUSH            {R4,R5,R7,LR}
386056:  ADD             R7, SP, #8
386058:  MOV             R4, R0
38605A:  LDR             R0, =(dword_8E4310 - 0x386060)
38605C:  ADD             R0, PC; dword_8E4310
38605E:  LDR             R1, [R0]
386060:  ADDS            R2, R1, #1
386062:  STR             R2, [R0]
386064:  RSB.W           R1, R1, R1,LSL#4
386068:  ADD.W           R5, R0, R1,LSL#2
38606C:  LDR.W           R0, [R5,#4]!
386070:  LDR             R1, [R0,#0x1C]
386072:  MOV             R0, R5
386074:  BLX             R1
386076:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x38607C)
386078:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
38607A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
38607C:  STR.W           R5, [R0,R4,LSL#2]
386080:  MOV             R0, R5
386082:  POP             {R4,R5,R7,PC}
