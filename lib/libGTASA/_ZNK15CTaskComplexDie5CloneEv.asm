; =========================================================
; Game Engine Function: _ZNK15CTaskComplexDie5CloneEv
; Address            : 0x4F2980 - 0x4F29DA
; =========================================================

4F2980:  PUSH            {R4-R7,LR}
4F2982:  ADD             R7, SP, #0xC
4F2984:  PUSH.W          {R11}
4F2988:  VPUSH           {D8-D9}
4F298C:  MOV             R4, R0
4F298E:  MOVS            R0, #word_28; this
4F2990:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F2994:  ADD.W           R1, R4, #0xC
4F2998:  LDRB.W          R5, [R4,#0x20]
4F299C:  VLD1.32         {D8-D9}, [R1]
4F29A0:  LDR             R6, [R4,#0x24]
4F29A2:  LDR             R4, [R4,#0x1C]
4F29A4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F29A8:  LDR             R1, =(_ZTV15CTaskComplexDie_ptr - 0x4F29B2)
4F29AA:  ADD.W           R2, R0, #0xC
4F29AE:  ADD             R1, PC; _ZTV15CTaskComplexDie_ptr
4F29B0:  VST1.32         {D8-D9}, [R2]
4F29B4:  LDR             R1, [R1]; `vtable for'CTaskComplexDie ...
4F29B6:  STR             R4, [R0,#0x1C]
4F29B8:  STR             R6, [R0,#0x24]
4F29BA:  ADDS            R1, #8
4F29BC:  LDRB.W          R2, [R0,#0x20]
4F29C0:  STR             R1, [R0]
4F29C2:  AND.W           R1, R5, #7
4F29C6:  AND.W           R2, R2, #0xF8
4F29CA:  ORRS            R1, R2
4F29CC:  STRB.W          R1, [R0,#0x20]
4F29D0:  VPOP            {D8-D9}
4F29D4:  POP.W           {R11}
4F29D8:  POP             {R4-R7,PC}
