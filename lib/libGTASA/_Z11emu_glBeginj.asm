; =========================================================
; Game Engine Function: _Z11emu_glBeginj
; Address            : 0x1B50A8 - 0x1B5134
; =========================================================

1B50A8:  LDR             R1, =(storageInited_ptr - 0x1B50AE)
1B50AA:  ADD             R1, PC; storageInited_ptr
1B50AC:  LDR             R1, [R1]; storageInited
1B50AE:  LDRB            R1, [R1]
1B50B0:  CBNZ            R1, loc_1B50EE
1B50B2:  LDR             R1, =(storageInited_ptr - 0x1B50C0)
1B50B4:  VMOV.I32        Q8, #0
1B50B8:  LDR             R2, =(Imm_ptr - 0x1B50C2)
1B50BA:  MOVS            R3, #1
1B50BC:  ADD             R1, PC; storageInited_ptr
1B50BE:  ADD             R2, PC; Imm_ptr
1B50C0:  LDR             R1, [R1]; storageInited
1B50C2:  LDR             R2, [R2]; Imm
1B50C4:  STRB            R3, [R1]
1B50C6:  ADD.W           R1, R2, #0x50 ; 'P'
1B50CA:  VST1.32         {D16-D17}, [R1]
1B50CE:  ADD.W           R1, R2, #0x40 ; '@'
1B50D2:  VST1.32         {D16-D17}, [R1]
1B50D6:  ADD.W           R1, R2, #0x30 ; '0'
1B50DA:  VST1.32         {D16-D17}, [R1]
1B50DE:  ADD.W           R1, R2, #0x20 ; ' '
1B50E2:  VST1.32         {D16-D17}, [R1]
1B50E6:  VST1.32         {D16-D17}, [R2]!
1B50EA:  VST1.32         {D16-D17}, [R2]
1B50EE:  PUSH            {R7,LR}
1B50F0:  MOV             R7, SP
1B50F2:  LDR             R1, =(curEmulatorStateFlags_ptr - 0x1B50FC)
1B50F4:  LDR.W           R12, =(Imm_ptr - 0x1B5102)
1B50F8:  ADD             R1, PC; curEmulatorStateFlags_ptr
1B50FA:  LDR.W           LR, =(ImmArrayMode_ptr - 0x1B5106)
1B50FE:  ADD             R12, PC; Imm_ptr
1B5100:  LDR             R1, [R1]; curEmulatorStateFlags
1B5102:  ADD             LR, PC; ImmArrayMode_ptr
1B5104:  LDR.W           R3, [R12]; Imm
1B5108:  LDR.W           R12, [LR]; ImmArrayMode
1B510C:  LDR             R2, [R1]
1B510E:  ORR.W           R2, R2, #0x40000000
1B5112:  STR             R2, [R1]
1B5114:  MOVS            R1, #0
1B5116:  STR             R1, [R3,#(dword_6B32AC - 0x6B32A4)]
1B5118:  STRD.W          R1, R1, [R3,#(dword_6B32B4 - 0x6B32A4)]
1B511C:  STR             R1, [R3,#(dword_6B32F4 - 0x6B32A4)]
1B511E:  STRD.W          R1, R1, [R3,#(dword_6B32FC - 0x6B32A4)]
1B5122:  STR             R1, [R3,#(dword_6B32C4 - 0x6B32A4)]
1B5124:  STRD.W          R1, R1, [R3,#(dword_6B32CC - 0x6B32A4)]
1B5128:  STRD.W          R1, R1, [R3,#(dword_6B32E4 - 0x6B32A4)]
1B512C:  STR             R1, [R3,#(dword_6B32DC - 0x6B32A4)]
1B512E:  STR.W           R0, [R12]
1B5132:  POP             {R7,PC}
