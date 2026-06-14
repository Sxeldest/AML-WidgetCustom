; =========================================================
; Game Engine Function: _Z9emu_glEndv
; Address            : 0x1B5534 - 0x1B564E
; =========================================================

1B5534:  PUSH            {R4-R7,LR}
1B5536:  ADD             R7, SP, #0xC
1B5538:  PUSH.W          {R11}
1B553C:  LDR             R0, =(Imm_ptr - 0x1B5542)
1B553E:  ADD             R0, PC; Imm_ptr
1B5540:  LDR             R0, [R0]; Imm
1B5542:  LDR             R1, [R0,#(dword_6B32CC - 0x6B32A4)]
1B5544:  CBZ             R1, loc_1B5584
1B5546:  LDR             R0, =(Imm_ptr - 0x1B554C)
1B5548:  ADD             R0, PC; Imm_ptr
1B554A:  LDR             R0, [R0]; Imm
1B554C:  LDR             R0, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B554E:  BLX             __aeabi_idiv
1B5552:  CMP             R0, #1
1B5554:  BLT             loc_1B5584
1B5556:  LDR             R0, =(curShaderStateFlags_ptr - 0x1B555E)
1B5558:  LDR             R1, =(Imm_ptr - 0x1B5560)
1B555A:  ADD             R0, PC; curShaderStateFlags_ptr
1B555C:  ADD             R1, PC; Imm_ptr
1B555E:  LDR             R0, [R0]; curShaderStateFlags
1B5560:  LDR             R1, [R1]; Imm
1B5562:  LDR             R2, [R0]
1B5564:  LDR             R3, [R1,#(dword_6B32C8 - 0x6B32A4)]
1B5566:  LDR             R1, [R1,#(dword_6B32D0 - 0x6B32A4)]
1B5568:  BIC.W           R5, R2, #0x40000
1B556C:  CMP             R3, #4
1B556E:  IT EQ
1B5570:  ORREQ.W         R5, R2, #0x40000
1B5574:  CMP             R1, #0
1B5576:  ORR.W           R4, R5, #0x20000
1B557A:  STR             R5, [R0]
1B557C:  IT EQ
1B557E:  BICEQ.W         R4, R5, #0x20000
1B5582:  B               loc_1B5590
1B5584:  LDR             R0, =(curShaderStateFlags_ptr - 0x1B558A)
1B5586:  ADD             R0, PC; curShaderStateFlags_ptr
1B5588:  LDR             R0, [R0]; curShaderStateFlags
1B558A:  LDR             R0, [R0]
1B558C:  BIC.W           R4, R0, #0x40000
1B5590:  LDR             R1, =(Imm_ptr - 0x1B5598)
1B5592:  LDR             R0, =(curShaderStateFlags_ptr - 0x1B559A)
1B5594:  ADD             R1, PC; Imm_ptr
1B5596:  ADD             R0, PC; curShaderStateFlags_ptr
1B5598:  LDR             R1, [R1]; Imm
1B559A:  LDR             R0, [R0]; curShaderStateFlags
1B559C:  LDR             R1, [R1,#(dword_6B32FC - 0x6B32A4)]
1B559E:  STR             R4, [R0]
1B55A0:  CBZ             R1, loc_1B55C8
1B55A2:  LDR             R0, =(Imm_ptr - 0x1B55A8)
1B55A4:  ADD             R0, PC; Imm_ptr
1B55A6:  LDR             R0, [R0]; Imm
1B55A8:  LDR             R0, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B55AA:  BLX             __aeabi_idiv
1B55AE:  LDR             R1, =(curEmulatorStateFlags_ptr - 0x1B55B6)
1B55B0:  CMP             R0, #1
1B55B2:  ADD             R1, PC; curEmulatorStateFlags_ptr
1B55B4:  LDR             R1, [R1]; curEmulatorStateFlags
1B55B6:  LDR             R1, [R1]
1B55B8:  BLT             loc_1B55D0
1B55BA:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1B55C8)
1B55BC:  BIC.W           R4, R4, #0x200000
1B55C0:  ORR.W           R1, R1, #0x800000
1B55C4:  ADD             R0, PC; curEmulatorStateFlags_ptr
1B55C6:  B               loc_1B55DC
1B55C8:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1B55CE)
1B55CA:  ADD             R0, PC; curEmulatorStateFlags_ptr
1B55CC:  LDR             R0, [R0]; curEmulatorStateFlags
1B55CE:  LDR             R1, [R0]
1B55D0:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1B55DE)
1B55D2:  BIC.W           R1, R1, #0x800000
1B55D6:  ORR.W           R4, R4, #0x200000
1B55DA:  ADD             R0, PC; curEmulatorStateFlags_ptr
1B55DC:  LDR             R0, [R0]; curEmulatorStateFlags
1B55DE:  STR             R1, [R0]
1B55E0:  LDR             R0, =(Imm_ptr - 0x1B55F0)
1B55E2:  MOVW            R5, #0xFE7F
1B55E6:  LDR             R1, =(curShaderStateFlags_ptr - 0x1B55F2)
1B55E8:  MOVT            R5, #0xFFBF
1B55EC:  ADD             R0, PC; Imm_ptr
1B55EE:  ADD             R1, PC; curShaderStateFlags_ptr
1B55F0:  LDR             R0, [R0]; Imm
1B55F2:  LDR             R2, [R1]; curShaderStateFlags
1B55F4:  LDR             R1, [R0,#(dword_6B32E4 - 0x6B32A4)]
1B55F6:  STR             R4, [R2]
1B55F8:  CBZ             R1, loc_1B5632
1B55FA:  LDR             R0, =(Imm_ptr - 0x1B5600)
1B55FC:  ADD             R0, PC; Imm_ptr
1B55FE:  LDR             R2, [R0]; Imm
1B5600:  LDR             R0, [R2,#(dword_6B32DC - 0x6B32A4)]
1B5602:  LDR             R6, [R2,#(dword_6B32E8 - 0x6B32A4)]
1B5604:  BLX             __aeabi_idiv
1B5608:  LDR             R1, =(curShaderStateFlags_ptr - 0x1B5614)
1B560A:  AND.W           R2, R4, R5
1B560E:  CMP             R6, #2
1B5610:  ADD             R1, PC; curShaderStateFlags_ptr
1B5612:  MOV             R3, R2
1B5614:  IT EQ
1B5616:  ORREQ.W         R3, R4, #0x400000
1B561A:  CMP             R0, #0
1B561C:  LDR             R1, [R1]; curShaderStateFlags
1B561E:  IT LE
1B5620:  MOVLE           R3, R2
1B5622:  BIC.W           R0, R3, #0x180
1B5626:  STR             R0, [R1]
1B5628:  MOV.W           R0, #0
1B562C:  IT GT
1B562E:  MOVGT           R0, #1
1B5630:  B               loc_1B5640
1B5632:  LDR             R0, =(curShaderStateFlags_ptr - 0x1B563C)
1B5634:  AND.W           R1, R4, R5; bool
1B5638:  ADD             R0, PC; curShaderStateFlags_ptr
1B563A:  LDR             R0, [R0]; curShaderStateFlags
1B563C:  STR             R1, [R0]
1B563E:  MOVS            R0, #0; this
1B5640:  BLX             j__ZN9EmuShader12AssignShaderEb; EmuShader::AssignShader(bool)
1B5644:  POP.W           {R11}
1B5648:  POP.W           {R4-R7,LR}
1B564C:  B               _Z17emu_glEndInternalv; emu_glEndInternal(void)
