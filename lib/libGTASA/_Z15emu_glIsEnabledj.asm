; =========================================================
; Game Engine Function: _Z15emu_glIsEnabledj
; Address            : 0x1BB6B8 - 0x1BB73C
; =========================================================

1BB6B8:  MOV             R1, R0
1BB6BA:  MOVS            R0, #0
1BB6BC:  CMP.W           R1, #0xBC0
1BB6C0:  BLT             loc_1BB6D8
1BB6C2:  SUB.W           R2, R1, #0x4000
1BB6C6:  CMP             R2, #8
1BB6C8:  BCS             loc_1BB6F8
1BB6CA:  PUSH            {R7,LR}
1BB6CC:  MOV             R7, SP
1BB6CE:  MOV             R0, R2; unsigned int
1BB6D0:  BLX             j__Z8GetLightj; GetLight(uint)
1BB6D4:  LDRB            R0, [R0]
1BB6D6:  POP             {R7,PC}
1BB6D8:  CMP.W           R1, #0xB50
1BB6DC:  BEQ             loc_1BB712
1BB6DE:  MOVW            R2, #0xB57
1BB6E2:  CMP             R1, R2
1BB6E4:  BEQ             loc_1BB720
1BB6E6:  MOVW            R2, #0xB71
1BB6EA:  CMP             R1, R2
1BB6EC:  BNE             locret_1BB73A
1BB6EE:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB6F4)
1BB6F0:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB6F2:  LDR             R0, [R0]; curEmulatorStateFlags
1BB6F4:  LDRB            R0, [R0,#(curEmulatorStateFlags+3 - 0x6B7098)]
1BB6F6:  B               loc_1BB736
1BB6F8:  CMP.W           R1, #0xBC0
1BB6FC:  BEQ             loc_1BB72E
1BB6FE:  MOVW            R2, #0xBE2
1BB702:  CMP             R1, R2
1BB704:  IT NE
1BB706:  BXNE            LR
1BB708:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BB70E)
1BB70A:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BB70C:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BB70E:  LDRB            R0, [R0]
1BB710:  BX              LR
1BB712:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BB718)
1BB714:  ADD             R0, PC; curShaderStateFlags_ptr
1BB716:  LDR             R0, [R0]; curShaderStateFlags
1BB718:  LDR             R0, [R0]
1BB71A:  UBFX.W          R0, R0, #1, #1
1BB71E:  BX              LR
1BB720:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1BB726)
1BB722:  ADD             R0, PC; curEmulatorStateFlags_ptr
1BB724:  LDR             R0, [R0]; curEmulatorStateFlags
1BB726:  LDR             R0, [R0]
1BB728:  UBFX.W          R0, R0, #0x1B, #1
1BB72C:  BX              LR
1BB72E:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BB734)
1BB730:  ADD             R0, PC; curShaderStateFlags_ptr
1BB732:  LDR             R0, [R0]; curShaderStateFlags
1BB734:  LDR             R0, [R0]
1BB736:  AND.W           R0, R0, #1
1BB73A:  BX              LR
