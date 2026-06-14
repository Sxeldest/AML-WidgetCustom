; =========================================================
; Game Engine Function: _ZN6CTrainC2Eih
; Address            : 0x57C4A0 - 0x57C6DE
; =========================================================

57C4A0:  PUSH            {R4-R7,LR}
57C4A2:  ADD             R7, SP, #0xC
57C4A4:  PUSH.W          {R8-R11}
57C4A8:  SUB             SP, SP, #0xC
57C4AA:  MOV             R6, R1
57C4AC:  MOV             R1, R2; unsigned __int8
57C4AE:  MOV             R5, R0
57C4B0:  BLX             j__ZN8CVehicleC2Eh; CVehicle::CVehicle(uchar)
57C4B4:  LDR             R0, =(_ZTV6CTrain_ptr - 0x57C4BC)
57C4B6:  MOVS            R1, #0x90
57C4B8:  ADD             R0, PC; _ZTV6CTrain_ptr
57C4BA:  LDR             R0, [R0]; `vtable for'CTrain ...
57C4BC:  ADDS            R0, #8
57C4BE:  STR             R0, [R5]
57C4C0:  ADDW            R0, R5, #0x5EC
57C4C4:  BLX             j___aeabi_memclr8_0
57C4C8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x57C4D4)
57C4CA:  MOV.W           R8, #6
57C4CE:  LDR             R1, =(mod_HandlingManager_ptr - 0x57C4D6)
57C4D0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
57C4D2:  ADD             R1, PC; mod_HandlingManager_ptr
57C4D4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
57C4D6:  LDR             R1, [R1]; mod_HandlingManager
57C4D8:  LDR.W           R9, [R0,R6,LSL#2]
57C4DC:  STR.W           R8, [R5,#0x5A0]
57C4E0:  STR.W           R8, [R5,#0x5A4]
57C4E4:  LDRH.W          R0, [R9,#0x62]
57C4E8:  RSB.W           R0, R0, R0,LSL#3
57C4EC:  ADD.W           R0, R1, R0,LSL#5
57C4F0:  ADD.W           R1, R0, #0x14
57C4F4:  STR.W           R1, [R5,#0x388]
57C4F8:  LDR.W           R0, [R0,#0xE4]
57C4FC:  MOV             R1, R6; unsigned int
57C4FE:  STR.W           R0, [R5,#0x390]
57C502:  MOV             R0, R5; this
57C504:  BLX             j__ZN8CVehicle13SetModelIndexEj; CVehicle::SetModelIndex(uint)
57C508:  VMOV.I32        Q8, #0
57C50C:  ADDW            R0, R5, #0x6AC
57C510:  ADDW            R1, R5, #0x67C
57C514:  MOV.W           R11, #0
57C518:  VST1.32         {D16-D17}, [R0]
57C51C:  ADDW            R0, R5, #0x69C
57C520:  VST1.32         {D16-D17}, [R0]
57C524:  ADDW            R0, R5, #0x68C
57C528:  VST1.32         {D16-D17}, [R0]
57C52C:  VST1.32         {D16-D17}, [R1]
57C530:  LDR             R0, [R5,#0x18]
57C532:  STR.W           R11, [R5,#0x6BC]
57C536:  BLX             j__ZN15CClumpModelInfo14FillFrameArrayEP7RpClumpPP7RwFrame; CClumpModelInfo::FillFrameArray(RpClump *,RwFrame **)
57C53A:  VMOV.F32        S6, #1.25
57C53E:  MOVS            R0, #2
57C540:  MOVS            R1, #0x14
57C542:  STRB.W          R0, [R5,#0x626]
57C546:  STRH.W          R1, [R5,#0x624]
57C54A:  VMOV.F32        S2, #0.25
57C54E:  STRB.W          R0, [R5,#0x63E]
57C552:  MOVW            R3, #0xF858
57C556:  LDRH            R0, [R5,#0x26]
57C558:  STRH.W          R1, [R5,#0x63C]
57C55C:  MOVW            R1, #0x23A
57C560:  VLDR            S8, =-1.2566
57C564:  CMP             R0, R1
57C566:  IT EQ
57C568:  VMOVEQ.F32      S8, S6
57C56C:  STRB.W          R11, [R5,#0x5DE]
57C570:  LDRH.W          R2, [R5,#0x5CC]
57C574:  VLDR            S4, =0.0
57C578:  IT EQ
57C57A:  VMOVEQ.F32      S4, S2
57C57E:  CMP             R0, R1
57C580:  AND.W           R0, R2, R3
57C584:  VLDR            S0, =1.2566
57C588:  MOVW            R1, #0x281
57C58C:  ORR.W           R0, R0, R1
57C590:  IT EQ
57C592:  VMOVEQ.F32      S0, S6
57C596:  STRH.W          R0, [R5,#0x5CC]
57C59A:  ADDW            R0, R5, #0x61C
57C59E:  VSTR            S8, [R0]
57C5A2:  ADD.W           R0, R5, #0x620
57C5A6:  VSTR            S4, [R0]
57C5AA:  ADDW            R0, R5, #0x634
57C5AE:  VSTR            S0, [R0]
57C5B2:  ADD.W           R0, R5, #0x638
57C5B6:  VSTR            S4, [R0]
57C5BA:  BLX             rand
57C5BE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x57C5CC)
57C5C0:  AND.W           R0, R0, #3
57C5C4:  LDRB.W          R2, [R5,#0x5DF]
57C5C8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
57C5CA:  LDR             R6, [R1]; CTimer::m_snTimeInMilliseconds ...
57C5CC:  AND.W           R1, R2, #0xF0
57C5D0:  ORRS            R0, R1
57C5D2:  STRB.W          R0, [R5,#0x5DF]
57C5D6:  BLX             rand
57C5DA:  MOV             R4, R5
57C5DC:  MOVS            R2, #5
57C5DE:  LDR.W           R1, [R4,#0x1C]!
57C5E2:  AND.W           R0, R0, #3
57C5E6:  LDRB.W          R3, [R5,#0x5DF]
57C5EA:  MOV.W           R10, #1
57C5EE:  STRB.W          R2, [R4,#0x470]
57C5F2:  MOVS            R2, #0x10
57C5F4:  ADD.W           R0, R2, R0,LSL#4
57C5F8:  AND.W           R2, R3, #0xF
57C5FC:  ORRS            R0, R2
57C5FE:  LDR             R2, [R4,#4]
57C600:  LDR             R3, [R4,#0x28]
57C602:  ORR.W           R1, R1, #1
57C606:  STR.W           R11, [R4,#0x5C4]
57C60A:  STRB.W          R0, [R5,#0x5DF]
57C60E:  LDR             R0, [R6]; CTimer::m_snTimeInMilliseconds
57C610:  STRD.W          R1, R2, [R4]
57C614:  ORR.W           R1, R3, #0x20000
57C618:  STR             R1, [R4,#0x28]
57C61A:  ADDW            R1, R4, #0x41C; unsigned __int8 *
57C61E:  STRH.W          R11, [R4,#0x5C0]
57C622:  ADDW            R2, R4, #0x41D; unsigned __int8 *
57C626:  STR.W           R0, [R4,#0x5BC]
57C62A:  ADDW            R0, R4, #0x41F
57C62E:  ADDW            R3, R4, #0x41E; unsigned __int8 *
57C632:  STRB.W          R11, [R4,#0x5B8]
57C636:  STR.W           R11, [R4,#0x59C]
57C63A:  STR.W           R11, [R4,#0x5A0]
57C63E:  STR.W           R11, [R4,#0x5B4]
57C642:  STRD.W          R0, R10, [SP,#0x28+var_28]; unsigned __int8 *
57C646:  MOV             R0, R9; this
57C648:  BLX             j__ZN17CVehicleModelInfo19ChooseVehicleColourERhS0_S0_S0_i; CVehicleModelInfo::ChooseVehicleColour(uchar &,uchar &,uchar &,uchar &,int)
57C64C:  LDR.W           R0, [R5,#0x388]
57C650:  VLDR            S2, =0.01
57C654:  LDR             R1, [R0,#4]
57C656:  STR             R1, [R4,#0x74]
57C658:  LDR             R1, [R0,#0xC]
57C65A:  STR             R1, [R4,#0x78]
57C65C:  LDR             R1, [R0,#0x1C]
57C65E:  VLDR            D16, [R0,#0x14]
57C662:  STR.W           R1, [R4,#0x94]
57C666:  MOV             R1, #0x3D4CCCCD
57C66E:  STR.W           R1, [R4,#0x84]
57C672:  VSTR            D16, [R4,#0x8C]
57C676:  LDR             R1, [R0,#0x24]
57C678:  STR.W           R1, [R4,#0x88]
57C67C:  VLDR            S0, [R0,#0x10]
57C680:  VCMPE.F32       S0, S2
57C684:  VMRS            APSR_nzcv, FPSCR
57C688:  BLE             loc_57C69A
57C68A:  VMOV.F32        S2, #0.5
57C68E:  VMUL.F32        S0, S0, S2
57C692:  VLDR            S2, =1000.0
57C696:  VDIV.F32        S0, S0, S2
57C69A:  LDR             R0, [R5,#0x44]
57C69C:  MOV             R1, R5; CEntity *
57C69E:  VSTR            S0, [R5,#0x9C]
57C6A2:  BFI.W           R0, R10, #2, #2
57C6A6:  STR             R0, [R5,#0x44]
57C6A8:  LDR             R0, [R4]
57C6AA:  ORR.W           R0, R0, #0x80000000
57C6AE:  STR             R0, [R4]
57C6B0:  STR.W           R11, [R5,#0x5E4]
57C6B4:  STR.W           R11, [R5,#0x5E8]
57C6B8:  STR.W           R11, [R5,#0x3CC]
57C6BC:  LDRB.W          R0, [R5,#0x3A]
57C6C0:  STRB.W          R11, [R5,#0x3D4]
57C6C4:  BFI.W           R0, R8, #3, #0x1D
57C6C8:  STRB.W          R0, [R5,#0x3A]
57C6CC:  ADD.W           R0, R5, #0x13C; this
57C6D0:  BLX             j__ZN21CAEVehicleAudioEntity10InitialiseEP7CEntity; CAEVehicleAudioEntity::Initialise(CEntity *)
57C6D4:  MOV             R0, R5
57C6D6:  ADD             SP, SP, #0xC
57C6D8:  POP.W           {R8-R11}
57C6DC:  POP             {R4-R7,PC}
