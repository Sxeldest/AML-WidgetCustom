; =========================================================
; Game Engine Function: _Z23RpAnimBlendAllocateDataP7RpClump
; Address            : 0x390264 - 0x390280
; =========================================================

390264:  PUSH            {R4,R6,R7,LR}
390266:  ADD             R7, SP, #8
390268:  MOV             R4, R0
39026A:  MOVS            R0, #0x14; unsigned int
39026C:  BLX             _Znwj; operator new(uint)
390270:  BLX             j__ZN19CAnimBlendClumpDataC2Ev; CAnimBlendClumpData::CAnimBlendClumpData(void)
390274:  LDR             R1, =(ClumpOffset_ptr - 0x39027A)
390276:  ADD             R1, PC; ClumpOffset_ptr
390278:  LDR             R1, [R1]; ClumpOffset
39027A:  LDR             R1, [R1]
39027C:  STR             R0, [R4,R1]
39027E:  POP             {R4,R6,R7,PC}
