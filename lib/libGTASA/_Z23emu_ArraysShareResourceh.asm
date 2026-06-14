; =========================================================
; Game Engine Function: _Z23emu_ArraysShareResourceh
; Address            : 0x1BD0A0 - 0x1BD0FE
; =========================================================

1BD0A0:  PUSH            {R4,R6,R7,LR}
1BD0A2:  ADD             R7, SP, #8
1BD0A4:  MOV             R1, R0
1BD0A6:  LDR             R0, =(curGPUResource_ptr - 0x1BD0B0)
1BD0A8:  LDR             R2, =(sharingGPUResource_ptr - 0x1BD0B2)
1BD0AA:  CMP             R1, #0
1BD0AC:  ADD             R0, PC; curGPUResource_ptr
1BD0AE:  ADD             R2, PC; sharingGPUResource_ptr
1BD0B0:  LDR             R0, [R0]; curGPUResource
1BD0B2:  LDR             R2, [R2]; sharingGPUResource
1BD0B4:  LDR             R0, [R0]; this
1BD0B6:  STRB            R1, [R2]
1BD0B8:  BNE             locret_1BD0FC
1BD0BA:  CMP             R0, #0
1BD0BC:  ITT NE
1BD0BE:  LDRNE           R1, [R0,#0x10]
1BD0C0:  CMPNE           R1, #0
1BD0C2:  BEQ             locret_1BD0FC
1BD0C4:  MOVS            R4, #0
1BD0C6:  MOVS            R3, #0
1BD0C8:  LDR.W           LR, [R1,#0x14]
1BD0CC:  LDR.W           R12, [R1,#8]
1BD0D0:  ADD.W           R2, LR, #0xF
1BD0D4:  LDR             R1, [R1,#0x28]
1BD0D6:  BIC.W           R2, R2, #0xF
1BD0DA:  ADD             R4, R12
1BD0DC:  ADD             R3, R2
1BD0DE:  CMP             R1, #0
1BD0E0:  BNE             loc_1BD0C8
1BD0E2:  ADD.W           R1, R3, R4,LSL#1
1BD0E6:  CMP.W           R1, #0x4000
1BD0EA:  IT LE
1BD0EC:  POPLE           {R4,R6,R7,PC}
1BD0EE:  BLX             j__ZN17SharedGPUResource9ConstructEv; SharedGPUResource::Construct(void)
1BD0F2:  LDR             R0, =(curGPUResource_ptr - 0x1BD0FA)
1BD0F4:  MOVS            R1, #0
1BD0F6:  ADD             R0, PC; curGPUResource_ptr
1BD0F8:  LDR             R0, [R0]; curGPUResource
1BD0FA:  STR             R1, [R0]
1BD0FC:  POP             {R4,R6,R7,PC}
