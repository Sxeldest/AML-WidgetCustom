; =========================================================
; Game Engine Function: _ZN9IKChain_c4InitEPciP4CPedi5RwV3diP7CEntityiS3_fi
; Address            : 0x4D26B0 - 0x4D27AE
; =========================================================

4D26B0:  PUSH            {R4-R7,LR}
4D26B2:  ADD             R7, SP, #0xC
4D26B4:  PUSH.W          {R8-R11}
4D26B8:  SUB             SP, SP, #4
4D26BA:  VPUSH           {D8}
4D26BE:  SUB             SP, SP, #0x10
4D26C0:  MOV             R4, R0
4D26C2:  LDR             R0, =(ClumpOffset_ptr - 0x4D26CC)
4D26C4:  MOV             R6, R4
4D26C6:  MOV             R10, R2
4D26C8:  ADD             R0, PC; ClumpOffset_ptr
4D26CA:  STR.W           R3, [R6,#8]!
4D26CE:  LDR             R1, [R0]; ClumpOffset
4D26D0:  LDR             R0, [R3,#0x18]
4D26D2:  LDR             R1, [R1]
4D26D4:  LDR             R1, [R0,R1]
4D26D6:  LDR             R5, [R1,#0x10]
4D26D8:  LDRB            R1, [R5]
4D26DA:  AND.W           R1, R1, #0xA0
4D26DE:  CMP             R1, #0x80
4D26E0:  BNE             loc_4D272C
4D26E2:  LDRB.W          R1, [R3,#0x48F]
4D26E6:  LSLS            R1, R1, #0x1A
4D26E8:  BPL             loc_4D272C
4D26EA:  LDR.W           R8, [R7,#arg_0]
4D26EE:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4D26F2:  MOV             R1, R8
4D26F4:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4D26F8:  ADD.W           R0, R0, R0,LSL#1
4D26FC:  ADD.W           R0, R5, R0,LSL#3
4D2700:  LDR             R0, [R0,#0x10]
4D2702:  VLDR            S0, [R0,#0x10]
4D2706:  VCMP.F32        S0, #0.0
4D270A:  VMRS            APSR_nzcv, FPSCR
4D270E:  BNE             loc_4D273C
4D2710:  VLDR            S0, [R0,#0x14]
4D2714:  VCMP.F32        S0, #0.0
4D2718:  VMRS            APSR_nzcv, FPSCR
4D271C:  ITTT EQ
4D271E:  VLDREQ          S0, [R0,#0x18]
4D2722:  VCMPEQ.F32      S0, #0.0
4D2726:  VMRSEQ          APSR_nzcv, FPSCR
4D272A:  BNE             loc_4D273C
4D272C:  MOVS            R0, #0
4D272E:  ADD             SP, SP, #0x10
4D2730:  VPOP            {D8}
4D2734:  ADD             SP, SP, #4
4D2736:  POP.W           {R8-R11}
4D273A:  POP             {R4-R7,PC}
4D273C:  LDRD.W          R11, R9, [R7,#arg_10]
4D2740:  MOV             R1, R6; CEntity **
4D2742:  LDR             R0, [R4,#8]; this
4D2744:  VLDR            S16, [R7,#arg_28]
4D2748:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4D274C:  MOVS            R6, #0
4D274E:  MOV             R0, R4
4D2750:  MOV             R1, R8
4D2752:  STR             R6, [R4,#0x10]
4D2754:  STRD.W          R11, R5, [SP,#0x38+var_34]
4D2758:  BLX             j__ZN9IKChain_c10SetupBonesEi5RwV3diP18AnimBlendFrameData; IKChain_c::SetupBones(int,RwV3d,int,AnimBlendFrameData *)
4D275C:  MOV             R1, R4
4D275E:  LDR             R0, [R7,#arg_4]
4D2760:  STR.W           R9, [R1,#0x30]!; CEntity **
4D2764:  CMP.W           R9, #0
4D2768:  STRH.W          R8, [R1,#-0x14]
4D276C:  STR.W           R6, [R1,#-0x18]
4D2770:  STR.W           R0, [R1,#-0x10]
4D2774:  LDR             R0, [R7,#arg_8]
4D2776:  STR.W           R0, [R1,#-0xC]
4D277A:  LDR             R0, [R7,#arg_C]
4D277C:  STR.W           R0, [R1,#-8]
4D2780:  ITT NE
4D2782:  MOVNE           R0, R9; this
4D2784:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4D2788:  LDR             R0, [R7,#arg_18]
4D278A:  STR             R0, [R4,#0x34]
4D278C:  LDR             R0, [R7,#arg_1C]
4D278E:  STR             R0, [R4,#0x38]
4D2790:  LDR             R0, [R7,#arg_20]
4D2792:  STR             R0, [R4,#0x3C]
4D2794:  LDR             R0, [R7,#arg_24]
4D2796:  STR             R0, [R4,#0x40]
4D2798:  MOVS            R0, #1
4D279A:  LDR             R1, [R7,#arg_2C]
4D279C:  VSTR            S16, [R4,#0x44]
4D27A0:  STRB.W          R10, [R4,#0x55]
4D27A4:  STRB.W          R0, [R4,#0x54]
4D27A8:  STRB.W          R1, [R4,#0x56]
4D27AC:  B               loc_4D272E
