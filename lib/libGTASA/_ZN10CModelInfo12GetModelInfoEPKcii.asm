; =========================================================
; Game Engine Function: _ZN10CModelInfo12GetModelInfoEPKcii
; Address            : 0x385EC0 - 0x385EF0
; =========================================================

385EC0:  PUSH            {R4,R5,R7,LR}
385EC2:  ADD             R7, SP, #8
385EC4:  MOV             R4, R2
385EC6:  MOV             R5, R1
385EC8:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
385ECC:  CMP             R5, R4
385ECE:  BGT             loc_385EEA
385ED0:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x385ED6)
385ED2:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
385ED4:  LDR             R2, [R1]; CModelInfo::ms_modelInfoPtrs ...
385ED6:  LDR.W           R1, [R2,R5,LSL#2]
385EDA:  CBZ             R1, loc_385EE2
385EDC:  LDR             R3, [R1,#4]
385EDE:  CMP             R3, R0
385EE0:  BEQ             loc_385EEC
385EE2:  ADDS            R1, R5, #1
385EE4:  CMP             R5, R4
385EE6:  MOV             R5, R1
385EE8:  BLT             loc_385ED6
385EEA:  MOVS            R1, #0
385EEC:  MOV             R0, R1
385EEE:  POP             {R4,R5,R7,PC}
