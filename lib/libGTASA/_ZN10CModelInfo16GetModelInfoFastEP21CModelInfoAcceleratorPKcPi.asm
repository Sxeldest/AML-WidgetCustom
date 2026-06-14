; =========================================================
; Game Engine Function: _ZN10CModelInfo16GetModelInfoFastEP21CModelInfoAcceleratorPKcPi
; Address            : 0x385EF4 - 0x385F3E
; =========================================================

385EF4:  PUSH            {R4-R7,LR}
385EF6:  ADD             R7, SP, #0xC
385EF8:  PUSH.W          {R8,R9,R11}
385EFC:  MOV             R8, R2
385EFE:  MOV             R5, R1
385F00:  BLX             j__ZN21CModelInfoAccelerator18GetNextModelInfoIdEv; CModelInfoAccelerator::GetNextModelInfoId(void)
385F04:  MOV             R6, R0
385F06:  MOVW            R0, #0xFFFF
385F0A:  CMP             R6, R0
385F0C:  BEQ             loc_385F34
385F0E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x385F14)
385F10:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
385F12:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
385F14:  LDR.W           R4, [R0,R6,LSL#2]
385F18:  CBZ             R4, loc_385F34
385F1A:  MOV             R0, R5; this
385F1C:  LDR.W           R9, [R4,#4]
385F20:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
385F24:  CMP             R9, R0
385F26:  BNE             loc_385F34
385F28:  CMP.W           R8, #0
385F2C:  IT NE
385F2E:  STRNE.W         R6, [R8]
385F32:  B               loc_385F36
385F34:  MOVS            R4, #0
385F36:  MOV             R0, R4
385F38:  POP.W           {R8,R9,R11}
385F3C:  POP             {R4-R7,PC}
