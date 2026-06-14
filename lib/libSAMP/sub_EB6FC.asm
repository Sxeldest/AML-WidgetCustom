; =========================================================
; Game Engine Function: sub_EB6FC
; Address            : 0xEB6FC - 0xEB7A6
; =========================================================

EB6FC:  PUSH            {R4-R7,LR}
EB6FE:  ADD             R7, SP, #0xC
EB700:  PUSH.W          {R11}
EB704:  SUB             SP, SP, #0x18
EB706:  MOV             R4, R0
EB708:  LDRD.W          R6, R0, [R0,#4]
EB70C:  MOV             R5, R1
EB70E:  CMP             R6, R0
EB710:  BCS             loc_EB730
EB712:  MOVS            R0, #0
EB714:  STRD.W          R0, R0, [R6,#8]
EB718:  VLDR            D16, [R5]
EB71C:  STRB            R0, [R6]
EB71E:  MOV             R0, R6
EB720:  VMOV            R2, R3, D16
EB724:  BL              sub_EA660
EB728:  ADD.W           R0, R6, #0x10
EB72C:  STR             R0, [R4,#4]
EB72E:  B               loc_EB796
EB730:  LDR             R3, [R4]
EB732:  MOVS            R1, #1
EB734:  SUBS            R2, R6, R3
EB736:  ADD.W           R1, R1, R2,ASR#4
EB73A:  CMP.W           R1, #0x10000000
EB73E:  BCS             loc_EB7A0
EB740:  SUBS            R0, R0, R3
EB742:  MOV             R3, #0x7FFFFFF0
EB74A:  ADD             R6, SP, #0x28+var_24
EB74C:  CMP.W           R1, R0,ASR#3
EB750:  IT LS
EB752:  ASRLS           R1, R0, #3
EB754:  CMP             R0, R3
EB756:  ADD.W           R3, R4, #8
EB75A:  MOV.W           R2, R2,ASR#4
EB75E:  MOV             R0, R6
EB760:  IT CS
EB762:  MOVCS           R1, #0xFFFFFFF
EB766:  BL              sub_E5D88
EB76A:  LDR             R0, [SP,#0x28+var_1C]
EB76C:  MOVS            R1, #0
EB76E:  STRD.W          R1, R1, [R0,#8]
EB772:  VLDR            D16, [R5]
EB776:  STRB            R1, [R0]
EB778:  VMOV            R2, R3, D16
EB77C:  BL              sub_EA660
EB780:  LDR             R0, [SP,#0x28+var_1C]
EB782:  ADDS            R0, #0x10
EB784:  STR             R0, [SP,#0x28+var_1C]
EB786:  MOV             R0, R4
EB788:  MOV             R1, R6
EB78A:  BL              sub_E5DD0
EB78E:  ADD             R0, SP, #0x28+var_24
EB790:  BL              sub_E5E26
EB794:  LDR             R0, [R4,#4]
EB796:  SUBS            R0, #0x10
EB798:  ADD             SP, SP, #0x18
EB79A:  POP.W           {R11}
EB79E:  POP             {R4-R7,PC}
EB7A0:  MOV             R0, R4
EB7A2:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
