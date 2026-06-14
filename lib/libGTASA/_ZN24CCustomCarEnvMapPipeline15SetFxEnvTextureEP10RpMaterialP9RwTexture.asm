; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline15SetFxEnvTextureEP10RpMaterialP9RwTexture
; Address            : 0x2CB60C - 0x2CB72A
; =========================================================

2CB60C:  PUSH            {R4-R7,LR}
2CB60E:  ADD             R7, SP, #0xC
2CB610:  PUSH.W          {R11}
2CB614:  LDR             R2, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB61C)
2CB616:  LDR             R3, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CB61E)
2CB618:  ADD             R2, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB61A:  ADD             R3, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CB61C:  LDR             R2, [R2]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB61E:  LDR.W           R12, [R2]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB622:  LDR             R2, [R3]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CB624:  LDR.W           R3, [R0,R12]
2CB628:  CMP             R3, R2
2CB62A:  BEQ             loc_2CB642
2CB62C:  CBZ             R3, loc_2CB63C
2CB62E:  CMP             R1, #0
2CB630:  BEQ             loc_2CB6B2
2CB632:  STR             R1, [R3,#8]
2CB634:  MOVW            R0, #0x1102
2CB638:  STRH.W          R0, [R1,#0x50]
2CB63C:  POP.W           {R11}
2CB640:  POP             {R4-R7,PC}
2CB642:  LDR             R2, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr - 0x2CB64A)
2CB644:  MOVS            R4, #0
2CB646:  ADD             R2, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr
2CB648:  LDR             R2, [R2]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool ...
2CB64A:  LDR             R3, [R2]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool
2CB64C:  LDRD.W          LR, R2, [R3,#8]
2CB650:  ADDS            R2, #1
2CB652:  STR             R2, [R3,#0xC]
2CB654:  CMP             R2, LR
2CB656:  BNE             loc_2CB662
2CB658:  MOVS            R2, #0
2CB65A:  LSLS            R4, R4, #0x1F
2CB65C:  STR             R2, [R3,#0xC]
2CB65E:  BNE             loc_2CB720
2CB660:  MOVS            R4, #1
2CB662:  LDR             R5, [R3,#4]
2CB664:  LDRSB           R6, [R5,R2]
2CB666:  CMP.W           R6, #0xFFFFFFFF
2CB66A:  BGT             loc_2CB650
2CB66C:  AND.W           R6, R6, #0x7F
2CB670:  STRB            R6, [R5,R2]
2CB672:  LDR             R2, [R3,#4]
2CB674:  LDR             R6, [R3,#0xC]
2CB676:  LDRB            R5, [R2,R6]
2CB678:  AND.W           R4, R5, #0x80
2CB67C:  ADDS            R5, #1
2CB67E:  AND.W           R5, R5, #0x7F
2CB682:  ORRS            R5, R4
2CB684:  STRB            R5, [R2,R6]
2CB686:  LDR             R2, [R3]
2CB688:  LDR             R3, [R3,#0xC]
2CB68A:  ADD.W           R3, R3, R3,LSL#1
2CB68E:  ADD.W           R3, R2, R3,LSL#2
2CB692:  STR.W           R3, [R0,R12]
2CB696:  CMP             R3, #0
2CB698:  BEQ             loc_2CB63C
2CB69A:  LDR             R2, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CB6A0)
2CB69C:  ADD             R2, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CB69E:  LDR             R2, [R2]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CB6A0:  VLDR            D16, [R2]
2CB6A4:  LDR             R2, [R2,#(dword_70BF6C - 0x70BF64)]
2CB6A6:  STR             R2, [R3,#8]
2CB6A8:  VSTR            D16, [R3]
2CB6AC:  CMP             R3, #0
2CB6AE:  BNE             loc_2CB62E
2CB6B0:  B               loc_2CB63C
2CB6B2:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x2CB6B8)
2CB6B4:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
2CB6B6:  LDR             R1, [R1]; MatFXMaterialDataOffset
2CB6B8:  LDR             R1, [R1]
2CB6BA:  LDR             R1, [R0,R1]
2CB6BC:  LDR             R1, [R1,#4]
2CB6BE:  STR             R1, [R3,#8]
2CB6C0:  CBZ             R1, loc_2CB6DE
2CB6C2:  LDRB            R2, [R3,#4]
2CB6C4:  VLDR            S2, =0.0039216
2CB6C8:  VMOV            S0, R2
2CB6CC:  VCVT.F32.U32    S0, S0
2CB6D0:  VMUL.F32        S0, S0, S2
2CB6D4:  VCMP.F32        S0, #0.0
2CB6D8:  VMRS            APSR_nzcv, FPSCR
2CB6DC:  BNE             loc_2CB634
2CB6DE:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr - 0x2CB6E4)
2CB6E0:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr
2CB6E2:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool ...
2CB6E4:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool
2CB6E6:  LDRD.W          R2, R6, [R1]
2CB6EA:  SUBS            R2, R3, R2
2CB6EC:  MOV             R3, #0xAAAAAAAB
2CB6F4:  ASRS            R2, R2, #2
2CB6F6:  MULS            R2, R3
2CB6F8:  LDRB            R3, [R6,R2]
2CB6FA:  ORR.W           R3, R3, #0x80
2CB6FE:  STRB            R3, [R6,R2]
2CB700:  LDR             R3, [R1,#0xC]
2CB702:  CMP             R2, R3
2CB704:  IT LT
2CB706:  STRLT           R2, [R1,#0xC]
2CB708:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CB710)
2CB70A:  LDR             R2, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CB712)
2CB70C:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CB70E:  ADD             R2, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CB710:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CB712:  LDR             R2, [R2]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CB714:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CB716:  STR             R2, [R0,R1]
2CB718:  LDR             R1, [R2,#(dword_70BF6C - 0x70BF64)]
2CB71A:  CMP             R1, #0
2CB71C:  BNE             loc_2CB634
2CB71E:  B               loc_2CB63C
2CB720:  STR.W           R2, [R0,R12]
2CB724:  POP.W           {R11}
2CB728:  POP             {R4-R7,PC}
