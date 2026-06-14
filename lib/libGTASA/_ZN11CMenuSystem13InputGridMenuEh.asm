; =========================================================
; Game Engine Function: _ZN11CMenuSystem13InputGridMenuEh
; Address            : 0x43C708 - 0x43C8FA
; =========================================================

43C708:  PUSH            {R4,R6,R7,LR}
43C70A:  ADD             R7, SP, #8
43C70C:  MOV             R4, R0
43C70E:  MOVS            R0, #0; this
43C710:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
43C714:  LDRH            R1, [R0,#0x20]
43C716:  CBZ             R1, loc_43C71E
43C718:  LDRH.W          R0, [R0,#0x50]
43C71C:  CBZ             R0, loc_43C73C
43C71E:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x43C726)
43C720:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x43C728)
43C722:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
43C724:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
43C726:  LDR             R0, [R0]; CTimer::m_UserPause ...
43C728:  LDR             R1, [R1]; CTimer::m_CodePause ...
43C72A:  LDRB            R0, [R0]; CTimer::m_UserPause
43C72C:  LDRB            R1, [R1]; CTimer::m_CodePause
43C72E:  ORRS            R0, R1
43C730:  LSLS            R0, R0, #0x18
43C732:  BEQ             loc_43C75A
43C734:  MOVS            R0, #0x35 ; '5'
43C736:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
43C73A:  CBZ             R0, loc_43C75A
43C73C:  LDR             R0, =(MenuNumber_ptr - 0x43C742)
43C73E:  ADD             R0, PC; MenuNumber_ptr
43C740:  LDR             R0, [R0]; MenuNumber
43C742:  LDR.W           R0, [R0,R4,LSL#2]
43C746:  LDRSB.W         R1, [R0,#0x415]
43C74A:  ADDS            R2, R0, R1
43C74C:  LDRB.W          R2, [R2,#0x3D6]
43C750:  CMP             R2, #0
43C752:  ITT NE
43C754:  UXTBNE          R1, R1
43C756:  STRBNE.W        R1, [R0,#0x416]
43C75A:  LDR             R0, =(MenuNumber_ptr - 0x43C760)
43C75C:  ADD             R0, PC; MenuNumber_ptr
43C75E:  LDR             R0, [R0]; MenuNumber
43C760:  LDR.W           R0, [R0,R4,LSL#2]
43C764:  LDRB.W          R1, [R0,#0x415]
43C768:  LDRB.W          R2, [R0,#0x416]
43C76C:  CMP             R2, R1
43C76E:  ITT NE
43C770:  MOVNE           R1, #0x9D
43C772:  STRBNE.W        R1, [R0,#0x416]
43C776:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
43C77A:  LDR             R2, =(unk_992228 - 0x43C784)
43C77C:  VMOV            D17, R0, R1
43C780:  ADD             R2, PC; unk_992228
43C782:  VLDR            S0, [R2]
43C786:  VCVT.F64.F32    D16, S0
43C78A:  VSUB.F64        D16, D17, D16
43C78E:  VLDR            D17, =0.150000006
43C792:  VCMPE.F64       D16, D17
43C796:  VMRS            APSR_nzcv, FPSCR
43C79A:  BLE.W           locret_43C8F8
43C79E:  MOVS            R0, #0x1F
43C7A0:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
43C7A4:  CBNZ            R0, loc_43C7C2
43C7A6:  LDR             R0, =(MenuNumber_ptr - 0x43C7AC)
43C7A8:  ADD             R0, PC; MenuNumber_ptr
43C7AA:  LDR             R0, [R0]; MenuNumber
43C7AC:  LDR.W           R0, [R0,R4,LSL#2]
43C7B0:  LDRB.W          R0, [R0,#0x3F9]
43C7B4:  CBZ             R0, loc_43C7F2
43C7B6:  MOVS            R0, #0x3D ; '='
43C7B8:  MOVS            R1, #0
43C7BA:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
43C7BE:  CMP             R0, #1
43C7C0:  BNE             loc_43C7F2
43C7C2:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
43C7C6:  VMOV            D16, R0, R1
43C7CA:  LDR             R0, =(MenuNumber_ptr - 0x43C7D2)
43C7CC:  LDR             R1, =(unk_992228 - 0x43C7D8)
43C7CE:  ADD             R0, PC; MenuNumber_ptr
43C7D0:  VCVT.F32.F64    S0, D16
43C7D4:  ADD             R1, PC; unk_992228
43C7D6:  LDR             R0, [R0]; MenuNumber
43C7D8:  LDR.W           R0, [R0,R4,LSL#2]
43C7DC:  VSTR            S0, [R1]
43C7E0:  LDRB.W          R1, [R0,#0x3F7]
43C7E4:  LDRSB.W         R2, [R0,#0x415]
43C7E8:  CMP             R2, R1
43C7EA:  ITT GE
43C7EC:  SUBGE           R1, R2, R1
43C7EE:  STRBGE.W        R1, [R0,#0x415]
43C7F2:  MOVS            R0, #0x1F
43C7F4:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
43C7F8:  CBNZ            R0, loc_43C816
43C7FA:  LDR             R0, =(MenuNumber_ptr - 0x43C800)
43C7FC:  ADD             R0, PC; MenuNumber_ptr
43C7FE:  LDR             R0, [R0]; MenuNumber
43C800:  LDR.W           R0, [R0,R4,LSL#2]
43C804:  LDRB.W          R0, [R0,#0x3F9]
43C808:  CBZ             R0, loc_43C84C
43C80A:  MOVS            R0, #0x3C ; '<'
43C80C:  MOVS            R1, #0
43C80E:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
43C812:  CMP             R0, #1
43C814:  BNE             loc_43C84C
43C816:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
43C81A:  VMOV            D16, R0, R1
43C81E:  LDR             R0, =(MenuNumber_ptr - 0x43C826)
43C820:  LDR             R1, =(unk_992228 - 0x43C82C)
43C822:  ADD             R0, PC; MenuNumber_ptr
43C824:  VCVT.F32.F64    S0, D16
43C828:  ADD             R1, PC; unk_992228
43C82A:  LDR             R0, [R0]; MenuNumber
43C82C:  LDR.W           R0, [R0,R4,LSL#2]
43C830:  VSTR            S0, [R1]
43C834:  LDRB.W          R3, [R0,#0x3F6]
43C838:  LDRB.W          R1, [R0,#0x3F7]
43C83C:  LDRSB.W         R2, [R0,#0x415]
43C840:  SUBS            R3, R3, R1
43C842:  CMP             R3, R2
43C844:  ITT GT
43C846:  ADDGT           R1, R2
43C848:  STRBGT.W        R1, [R0,#0x415]
43C84C:  MOVS            R0, #0x1E
43C84E:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
43C852:  CBNZ            R0, loc_43C870
43C854:  LDR             R0, =(MenuNumber_ptr - 0x43C85A)
43C856:  ADD             R0, PC; MenuNumber_ptr
43C858:  LDR             R0, [R0]; MenuNumber
43C85A:  LDR.W           R0, [R0,R4,LSL#2]
43C85E:  LDRB.W          R0, [R0,#0x3F9]
43C862:  CBZ             R0, loc_43C89C
43C864:  MOVS            R0, #0x3E ; '>'
43C866:  MOVS            R1, #0
43C868:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
43C86C:  CMP             R0, #1
43C86E:  BNE             loc_43C89C
43C870:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
43C874:  VMOV            D16, R0, R1
43C878:  LDR             R0, =(MenuNumber_ptr - 0x43C880)
43C87A:  LDR             R1, =(unk_992228 - 0x43C886)
43C87C:  ADD             R0, PC; MenuNumber_ptr
43C87E:  VCVT.F32.F64    S0, D16
43C882:  ADD             R1, PC; unk_992228
43C884:  LDR             R0, [R0]; MenuNumber
43C886:  LDR.W           R0, [R0,R4,LSL#2]
43C88A:  VSTR            S0, [R1]
43C88E:  LDRSB.W         R1, [R0,#0x415]
43C892:  CMP             R1, #1
43C894:  ITT GE
43C896:  SUBGE           R1, #1
43C898:  STRBGE.W        R1, [R0,#0x415]
43C89C:  MOVS            R0, #0x1E
43C89E:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
43C8A2:  CBNZ            R0, loc_43C8C4
43C8A4:  LDR             R0, =(MenuNumber_ptr - 0x43C8AA)
43C8A6:  ADD             R0, PC; MenuNumber_ptr
43C8A8:  LDR             R0, [R0]; MenuNumber
43C8AA:  LDR.W           R0, [R0,R4,LSL#2]
43C8AE:  LDRB.W          R0, [R0,#0x3F9]
43C8B2:  CMP             R0, #0
43C8B4:  IT EQ
43C8B6:  POPEQ           {R4,R6,R7,PC}
43C8B8:  MOVS            R0, #0x3F ; '?'
43C8BA:  MOVS            R1, #0
43C8BC:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
43C8C0:  CMP             R0, #1
43C8C2:  BNE             locret_43C8F8
43C8C4:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
43C8C8:  VMOV            D16, R0, R1
43C8CC:  LDR             R0, =(MenuNumber_ptr - 0x43C8D4)
43C8CE:  LDR             R1, =(unk_992228 - 0x43C8DA)
43C8D0:  ADD             R0, PC; MenuNumber_ptr
43C8D2:  VCVT.F32.F64    S0, D16
43C8D6:  ADD             R1, PC; unk_992228
43C8D8:  LDR             R0, [R0]; MenuNumber
43C8DA:  LDR.W           R0, [R0,R4,LSL#2]
43C8DE:  VSTR            S0, [R1]
43C8E2:  LDRB.W          R2, [R0,#0x3F6]
43C8E6:  LDRSB.W         R1, [R0,#0x415]
43C8EA:  SUBS            R2, #1
43C8EC:  CMP             R2, R1
43C8EE:  ITTT GT
43C8F0:  UXTBGT          R1, R1
43C8F2:  ADDGT           R1, #1
43C8F4:  STRBGT.W        R1, [R0,#0x415]
43C8F8:  POP             {R4,R6,R7,PC}
