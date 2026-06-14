; =========================================================
; Game Engine Function: _ZN8CVehicleC2Eh
; Address            : 0x581634 - 0x581966
; =========================================================

581634:  PUSH            {R4-R7,LR}; Alternative name is 'CVehicle::CVehicle(unsigned char)'
581636:  ADD             R7, SP, #0xC
581638:  PUSH.W          {R11}
58163C:  MOV             R5, R1
58163E:  MOV             R4, R0
581640:  BLX             j__ZN9CPhysicalC2Ev_0; CPhysical::CPhysical(void)
581644:  LDR             R0, =(_ZTV8CVehicle_ptr - 0x58164A)
581646:  ADD             R0, PC; _ZTV8CVehicle_ptr
581648:  LDR             R0, [R0]; `vtable for'CVehicle ...
58164A:  ADDS            R0, #8
58164C:  STR             R0, [R4]
58164E:  ADD.W           R0, R4, #0x13C; this
581652:  BLX             j__ZN21CAEVehicleAudioEntityC2Ev; CAEVehicleAudioEntity::CAEVehicleAudioEntity(void)
581656:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x581666)
581658:  MOVW            R1, #0xFFFF
58165C:  STRH.W          R1, [R4,#0x39C]
581660:  MOVS            R6, #0
581662:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
581664:  STRH.W          R1, [R4,#0x398]
581668:  STRH.W          R1, [R4,#0x3A8]
58166C:  MOVS            R3, #0
58166E:  STRH.W          R1, [R4,#0x3AA]
581672:  MOVT            R3, #0x4120
581676:  STRH.W          R1, [R4,#0x3AC]
58167A:  STRH.W          R1, [R4,#0x394]
58167E:  STRH.W          R1, [R4,#0x3FC]
581682:  STRH.W          R1, [R4,#0x404]
581686:  STRH.W          R1, [R4,#0x400]
58168A:  STRH.W          R1, [R4,#0x408]
58168E:  STRH.W          R1, [R4,#0x40C]
581692:  STRH.W          R1, [R4,#0x410]
581696:  STRH.W          R1, [R4,#0x414]
58169A:  STRH.W          R1, [R4,#0x418]
58169E:  MOV.W           R1, #0x3E8
5816A2:  STRD.W          R6, R1, [R4,#0x3A0]
5816A6:  MOVW            R1, #0x101
5816AA:  STRB.W          R6, [R4,#0x3BF]
5816AE:  STRH.W          R1, [R4,#0x3B9]
5816B2:  MOVS            R1, #0xA
5816B4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5816B6:  STR.W           R6, [R4,#0x3BB]
5816BA:  STRB.W          R1, [R4,#0x3D4]
5816BE:  STRH.W          R6, [R4,#0x41C]
5816C2:  LDRH.W          R2, [R4,#0x3DF]
5816C6:  STR.W           R3, [R4,#0x3CC]
5816CA:  STR.W           R6, [R4,#0x420]
5816CE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5816D0:  STRD.W          R0, R0, [R4,#0x3B0]
5816D4:  MOV.W           R0, #0x3F800000
5816D8:  STRB.W          R6, [R4,#0x3D5]
5816DC:  STR.W           R0, [R4,#0x3D8]
5816E0:  MOVS            R0, #0xFF
5816E2:  STRB.W          R0, [R4,#0x428]
5816E6:  MOVS            R0, #0x14
5816E8:  STRB.W          R0, [R4,#0x3E1]
5816EC:  MOVW            R0, #0xFC04
5816F0:  STR.W           R6, [R4,#0x3C4]
5816F4:  ANDS            R0, R2
5816F6:  STRH.W          R6, [R4,#0x3C8]
5816FA:  STRB.W          R6, [R4,#0x3DD]
5816FE:  STRB.W          R6, [R4,#0x3DE]
581702:  STRB.W          R1, [R4,#0x3E2]
581706:  STRB.W          R1, [R4,#0x3E3]
58170A:  STRB.W          R6, [R4,#0x429]
58170E:  STRH.W          R0, [R4,#0x3DF]
581712:  BLX             rand
581716:  MOVS            R2, #:lower16:(aUnknownChunkEx+0x10); "ceeds memory limits"
581718:  MOVS            R1, #1
58171A:  STR.W           R6, [R4,#0x424]
58171E:  MOVT            R2, #:upper16:(aUnknownChunkEx+0x10); "ceeds memory limits"
581722:  STR.W           R6, [R4,#0x3D0]
581726:  AND.W           R0, R0, #7
58172A:  STR.W           R6, [R4,#0x4C4]
58172E:  ADDS            R0, #2
581730:  STR.W           R6, [R4,#0x4C8]
581734:  STR.W           R6, [R4,#0x498]
581738:  STR.W           R6, [R4,#0x49C]
58173C:  STRB.W          R5, [R4,#0x4A8]
581740:  STR.W           R6, [R4,#0x59C]
581744:  STRB.W          R1, [R4,#0x4C0]
581748:  STRH.W          R6, [R4,#0x462]
58174C:  LDRB.W          R1, [R4,#0x3A]
581750:  STR.W           R2, [R4,#0x42C]
581754:  LDR             R3, [R4,#0x1C]
581756:  LDR.W           R2, [R4,#0x430]
58175A:  STRB.W          R0, [R4,#0x3E4]
58175E:  ORR.W           R0, R3, #0x200000
581762:  STR             R0, [R4,#0x1C]
581764:  BIC.W           R0, R2, #7
581768:  STR.W           R0, [R4,#0x430]
58176C:  AND.W           R0, R1, #0xF8
581770:  ORR.W           R0, R0, #2
581774:  STRB.W          R0, [R4,#0x3A]
581778:  BLX             rand
58177C:  VMOV            S0, R0
581780:  VLDR            S2, =4.6566e-10
581784:  MOVS            R1, #0
581786:  VCVT.F32.S32    S0, S0
58178A:  LDR.W           R0, [R4,#0x430]
58178E:  BFC.W           R0, #3, #0x18
581792:  VMUL.F32        S0, S0, S2
581796:  VLDR            S2, =0.0
58179A:  VADD.F32        S0, S0, S2
58179E:  VCMPE.F32       S0, #0.0
5817A2:  VMRS            APSR_nzcv, FPSCR
5817A6:  IT LT
5817A8:  MOVLT           R1, #1
5817AA:  ORR.W           R0, R0, R1,LSL#3
5817AE:  MOVS            R1, #0; CVehicle *
5817B0:  ORR.W           R0, R0, #0x600000
5817B4:  ORR.W           R0, R0, #0x45000
5817B8:  STR.W           R0, [R4,#0x430]
5817BC:  MOV             R0, R4; this
5817BE:  BLX             j__ZN8CCarCtrl14UpdateCarCountEP8CVehicleh; CCarCtrl::UpdateCarCount(CVehicle *,uchar)
5817C2:  MOVS            R0, #0
5817C4:  ADDW            R1, R4, #0x42C
5817C8:  MOVT            R0, #0x447A
5817CC:  STR.W           R0, [R4,#0x4CC]
5817D0:  MOVS            R0, #8
5817D2:  STRH.W          R6, [R4,#0x4B0]
5817D6:  STR.W           R6, [R4,#0x464]
5817DA:  STR.W           R6, [R4,#0x488]
5817DE:  STRB.W          R0, [R4,#0x48C]
5817E2:  MOVS            R0, #0
5817E4:  ADD.W           R2, R4, R0,LSL#2
5817E8:  ADDS            R0, #1
5817EA:  STR.W           R6, [R2,#0x468]
5817EE:  LDRB.W          R2, [R4,#0x48C]
5817F2:  CMP             R0, R2
5817F4:  BLT             loc_5817E4
5817F6:  VMOV.I32        Q8, #0
5817FA:  LDRB.W          R3, [R4,#0x4B3]
5817FE:  ADDW            R6, R4, #0x4E4
581802:  MOVS            R5, #0
581804:  LDRB.W          R12, [R4,#0x4B2]
581808:  AND.W           R3, R3, #0xF0
58180C:  STRB.W          R5, [R4,#0x4B4]
581810:  STR.W           R5, [R4,#0x494]
581814:  STRB.W          R5, [R4,#0x4B6]
581818:  STR.W           R5, [R4,#0x524]
58181C:  STRB.W          R5, [R4,#0x528]
581820:  STRB.W          R5, [R4,#0x529]
581824:  STRB.W          R5, [R4,#0x4FC]
581828:  VST1.32         {D16-D17}, [R6]
58182C:  STR.W           R5, [R4,#0x4D0]
581830:  STR.W           R5, [R4,#0x4D4]
581834:  STRB.W          R3, [R4,#0x4B3]
581838:  LDRD.W          R3, R0, [R1]
58183C:  BIC.W           R0, R0, #0x60 ; '`'
581840:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x58184E)
581842:  STRB.W          R5, [R4,#0x4D8]
581846:  STR.W           R5, [R4,#0x4DC]
58184A:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
58184C:  STR.W           R5, [R4,#0x4E0]
581850:  STRD.W          R3, R0, [R1]
581854:  MOVS            R0, #0xFF
581856:  STRH.W          R5, [R4,#0x460]
58185A:  MOVS            R1, #1
58185C:  STRB.W          R0, [R4,#0x518]
581860:  STRB.W          R0, [R4,#0x48F]
581864:  STRB.W          R5, [R4,#0x522]
581868:  STRB.W          R5, [R4,#0x52A]
58186C:  LDR             R0, [R4,#0x44]
58186E:  STR.W           R1, [R4,#0x508]
581872:  STR.W           R5, [R4,#0x50C]
581876:  ORR.W           R0, R0, #0x10000000
58187A:  STR.W           R5, [R4,#0x510]
58187E:  STR.W           R5, [R4,#0x514]
581882:  STR.W           R5, [R4,#0x51C]
581886:  STR.W           R5, [R4,#0x4F4]
58188A:  STR.W           R5, [R4,#0x4F8]
58188E:  STR.W           R5, [R4,#0x490]
581892:  STRB.W          R5, [R4,#0x57C]
581896:  STRB.W          R5, [R4,#0x550]
58189A:  STRB.W          R5, [R4,#0x521]
58189E:  STR             R0, [R4,#0x44]
5818A0:  LDR             R6, [R2]; CTimer::m_snTimeInMilliseconds ...
5818A2:  LDRH.W          R0, [R4,#0x3DF]
5818A6:  STR.W           R5, [R4,#0x390]
5818AA:  STR.W           R5, [R4,#0x388]
5818AE:  BIC.W           R0, R0, #4
5818B2:  STRH.W          R5, [R4,#0x3BE]
5818B6:  LDR             R1, [R6]; CTimer::m_snTimeInMilliseconds
5818B8:  STR.W           R1, [R4,#0x3B0]
5818BC:  STRH.W          R0, [R4,#0x3DF]
5818C0:  MOVW            R0, #0xFFFF
5818C4:  STR.W           R5, [R4,#0x5A8]
5818C8:  STR.W           R5, [R4,#0x5AC]
5818CC:  STR.W           R5, [R4,#0x5B0]
5818D0:  STR.W           R5, [R4,#0x588]
5818D4:  STR.W           R5, [R4,#0x58C]
5818D8:  STR.W           R5, [R4,#0x590]
5818DC:  STR.W           R5, [R4,#0x598]
5818E0:  STRH.W          R0, [R4,#0x45A]
5818E4:  MOV.W           R0, #0xFFFFFFFF
5818E8:  STR.W           R0, [R4,#0x456]
5818EC:  STR.W           R0, [R4,#0x452]
5818F0:  STR.W           R0, [R4,#0x44E]
5818F4:  STR.W           R0, [R4,#0x44A]
5818F8:  STR.W           R0, [R4,#0x446]
5818FC:  STR.W           R0, [R4,#0x442]
581900:  STR.W           R0, [R4,#0x43E]
581904:  MOV.W           R0, #0x3F800000
581908:  STR.W           R0, [R4,#0x45C]
58190C:  AND.W           R0, R12, #0x80
581910:  STRH.W          R5, [R4,#0x48D]
581914:  STRB.W          R5, [R4,#0x52B]
581918:  STRB.W          R5, [R4,#0x523]
58191C:  STRB.W          R0, [R4,#0x4B2]
581920:  BLX             rand
581924:  MOV             R1, #0x88888889
58192C:  SMMLA.W         R1, R1, R0, R0
581930:  ASRS            R2, R1, #3
581932:  ADD.W           R1, R2, R1,LSR#31
581936:  RSB.W           R1, R1, R1,LSL#4
58193A:  SUBS            R0, R0, R1
58193C:  MOV.W           R1, #0x48484848
581940:  VMOV            S0, R0
581944:  ADDW            R0, R4, #0x4BC
581948:  VCVT.F32.S32    S0, S0
58194C:  VSTR            S0, [R0]
581950:  LDR             R0, [R6]; CTimer::m_snTimeInMilliseconds
581952:  STR.W           R1, [R4,#0x584]
581956:  STR.W           R0, [R4,#0x434]
58195A:  MOV             R0, R4
58195C:  STR.W           R5, [R4,#0x4AC]
581960:  POP.W           {R11}
581964:  POP             {R4-R7,PC}
