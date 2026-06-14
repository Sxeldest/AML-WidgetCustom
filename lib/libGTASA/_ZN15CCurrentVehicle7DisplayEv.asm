; =========================================================
; Game Engine Function: _ZN15CCurrentVehicle7DisplayEv
; Address            : 0x421340 - 0x421372
; =========================================================

421340:  LDR             R0, [R0]
421342:  CMP             R0, #0
421344:  ITT EQ
421346:  MOVEQ           R0, #0; this
421348:  BEQ.W           sub_18E4AC
42134C:  PUSH            {R7,LR}
42134E:  MOV             R7, SP
421350:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x421358)
421352:  LDR             R2, =(TheText_ptr - 0x42135E)
421354:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
421356:  LDRSH.W         R0, [R0,#0x26]
42135A:  ADD             R2, PC; TheText_ptr
42135C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
42135E:  LDR.W           R1, [R1,R0,LSL#2]
421362:  LDR             R0, [R2]; TheText ; this
421364:  ADDS            R1, #0x4A ; 'J'; CKeyGen *
421366:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
42136A:  POP.W           {R7,LR}
42136E:  B.W             sub_18E4AC
