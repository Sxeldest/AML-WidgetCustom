; =========================================================
; Game Engine Function: _ZN10MobileMenu6UpdateEv
; Address            : 0x29A6C0 - 0x29ACEE
; =========================================================

29A6C0:  PUSH            {R4-R7,LR}
29A6C2:  ADD             R7, SP, #0xC
29A6C4:  PUSH.W          {R8-R11}
29A6C8:  SUB             SP, SP, #4
29A6CA:  VPUSH           {D8-D15}
29A6CE:  SUB             SP, SP, #0x10
29A6D0:  MOV             R4, R0
29A6D2:  LDR             R0, [R4,#0x24]
29A6D4:  CMP             R0, #0
29A6D6:  ITT EQ
29A6D8:  LDREQ           R0, [R4,#0x2C]
29A6DA:  CMPEQ           R0, #0
29A6DC:  BEQ.W           loc_29AACC
29A6E0:  LDR.W           R0, =(RsGlobal_ptr - 0x29A6E8)
29A6E4:  ADD             R0, PC; RsGlobal_ptr
29A6E6:  LDR             R5, [R0]; RsGlobal
29A6E8:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
29A6EC:  LDR.W           R2, =(unk_6E0130 - 0x29A700)
29A6F0:  VMOV            D16, R0, R1
29A6F4:  VLDR            S0, [R5,#4]
29A6F8:  VMOV.F32        S18, #1.0
29A6FC:  ADD             R2, PC; unk_6E0130
29A6FE:  VLDR            S4, [R5,#8]
29A702:  VCVT.F32.S32    S0, S0
29A706:  VLDR            S2, =0.4
29A70A:  VLDR            D17, [R2]
29A70E:  VCVT.F32.S32    S4, S4
29A712:  VLDR            S16, =0.0
29A716:  MOVW            R0, #0xCCCD
29A71A:  VSUB.F64        D17, D16, D17
29A71E:  MOVT            R0, #0x3ECC
29A722:  VCMPE.F64       D17, #0.0
29A726:  VMRS            APSR_nzcv, FPSCR
29A72A:  VMUL.F32        S0, S0, S2
29A72E:  VCVT.F32.F64    S20, D17
29A732:  VDIV.F32        S22, S0, S4
29A736:  IT LT
29A738:  VMOVLT.F32      S20, S16
29A73C:  VSTR            D16, [R2]
29A740:  VLDR            D16, =0.100000001
29A744:  VLDR            S0, [R4,#0x10]
29A748:  VCMPE.F64       D17, D16
29A74C:  VMRS            APSR_nzcv, FPSCR
29A750:  VADD.F32        S4, S0, S22
29A754:  VCMPE.F32       S4, S18
29A758:  IT GT
29A75A:  VMOVGT.F32      S20, S16
29A75E:  VMRS            APSR_nzcv, FPSCR
29A762:  STR             R0, [R4,#4]
29A764:  VSTR            S22, [R4]
29A768:  ITT GT
29A76A:  VSUBGT.F32      S0, S18, S22
29A76E:  VSTRGT          S0, [R4,#0x10]
29A772:  VLDR            S4, [R4,#0x14]
29A776:  VADD.F32        S6, S4, S2
29A77A:  VCMPE.F32       S6, S18
29A77E:  VMRS            APSR_nzcv, FPSCR
29A782:  ITTTT GT
29A784:  VLDRGT          S4, =0.6
29A788:  MOVWGT          R0, #0x999A
29A78C:  MOVTGT          R0, #0x3F19
29A790:  STRGT           R0, [R4,#0x14]
29A792:  VLDR            S6, [R4,#8]
29A796:  VADD.F32        S8, S6, S22
29A79A:  VCMPE.F32       S8, S18
29A79E:  VMRS            APSR_nzcv, FPSCR
29A7A2:  ITT GT
29A7A4:  VSUBGT.F32      S6, S18, S22
29A7A8:  VSTRGT          S6, [R4,#8]
29A7AC:  VLDR            S8, [R4,#0xC]
29A7B0:  VSUB.F32        S10, S0, S6
29A7B4:  VADD.F32        S2, S8, S2
29A7B8:  VMUL.F32        S10, S10, S10
29A7BC:  VCMPE.F32       S2, S18
29A7C0:  VMRS            APSR_nzcv, FPSCR
29A7C4:  ITTTT GT
29A7C6:  VLDRGT          S8, =0.6
29A7CA:  MOVWGT          R0, #0x999A
29A7CE:  MOVTGT          R0, #0x3F19
29A7D2:  STRGT           R0, [R4,#0xC]
29A7D4:  VSUB.F32        S2, S4, S8
29A7D8:  VMUL.F32        S2, S2, S2
29A7DC:  VADD.F32        S2, S10, S2
29A7E0:  VSQRT.F32       S10, S2
29A7E4:  VLDR            S2, =0.009
29A7E8:  VMUL.F32        S2, S20, S2
29A7EC:  VCMPE.F32       S10, S2
29A7F0:  VMRS            APSR_nzcv, FPSCR
29A7F4:  BLE             loc_29A834
29A7F6:  VSUB.F32        S8, S8, S4
29A7FA:  VSUB.F32        S6, S6, S0
29A7FE:  VMUL.F32        S10, S8, S8
29A802:  VMUL.F32        S12, S6, S6
29A806:  VADD.F32        S10, S12, S10
29A80A:  VSQRT.F32       S10, S10
29A80E:  VDIV.F32        S10, S18, S10
29A812:  VMUL.F32        S8, S8, S10
29A816:  VMUL.F32        S6, S6, S10
29A81A:  VMUL.F32        S8, S2, S8
29A81E:  VMUL.F32        S2, S2, S6
29A822:  VADD.F32        S4, S8, S4
29A826:  VADD.F32        S0, S0, S2
29A82A:  VSTR            S0, [R4,#0x10]
29A82E:  VSTR            S4, [R4,#0x14]
29A832:  B               loc_29A900
29A834:  VLDR            S24, =4.6566e-10
29A838:  VLDR            S26, =0.35
29A83C:  B               loc_29A842
29A83E:  VLDR            S22, [R4]
29A842:  BLX             rand
29A846:  VMOV            S0, R0
29A84A:  VLDR            S28, [R4,#4]
29A84E:  VCVT.F32.S32    S30, S0
29A852:  BLX             rand
29A856:  VMOV            S0, R0
29A85A:  VSUB.F32        S2, S18, S22
29A85E:  VCVT.F32.S32    S0, S0
29A862:  VLDR            S22, [R4]
29A866:  VMUL.F32        S4, S30, S24
29A86A:  VSUB.F32        S6, S18, S28
29A86E:  VMUL.F32        S0, S0, S24
29A872:  VMUL.F32        S2, S2, S4
29A876:  VMUL.F32        S0, S6, S0
29A87A:  VADD.F32        S2, S2, S16
29A87E:  VADD.F32        S0, S0, S16
29A882:  VSTR            S2, [R4,#0x10]
29A886:  VSTR            S0, [R4,#0x14]
29A88A:  VSTR            S2, [R4,#0x18]
29A88E:  VSTR            S0, [R4,#0x1C]
29A892:  BLX             rand
29A896:  VMOV            S0, R0
29A89A:  VLDR            S28, [R4,#4]
29A89E:  VCVT.F32.S32    S30, S0
29A8A2:  BLX             rand
29A8A6:  VMOV            S0, R0
29A8AA:  VSUB.F32        S2, S18, S22
29A8AE:  VCVT.F32.S32    S0, S0
29A8B2:  VMUL.F32        S4, S30, S24
29A8B6:  VSUB.F32        S6, S18, S28
29A8BA:  VMUL.F32        S0, S0, S24
29A8BE:  VMUL.F32        S2, S2, S4
29A8C2:  VLDR            S4, [R4,#0x18]
29A8C6:  VMUL.F32        S0, S6, S0
29A8CA:  VLDR            S6, [R4,#0x1C]
29A8CE:  VADD.F32        S2, S2, S16
29A8D2:  VADD.F32        S0, S0, S16
29A8D6:  VSUB.F32        S4, S4, S2
29A8DA:  VSTR            S2, [R4,#8]
29A8DE:  VSUB.F32        S6, S6, S0
29A8E2:  VSTR            S0, [R4,#0xC]
29A8E6:  VMUL.F32        S4, S4, S4
29A8EA:  VMUL.F32        S6, S6, S6
29A8EE:  VADD.F32        S4, S4, S6
29A8F2:  VSQRT.F32       S4, S4
29A8F6:  VCMPE.F32       S4, S26
29A8FA:  VMRS            APSR_nzcv, FPSCR
29A8FE:  BLT             loc_29A83E
29A900:  MOVS            R0, #0; int
29A902:  MOVS            R6, #0
29A904:  BLX             j__Z17OS_PointerGetTypei; OS_PointerGetType(int)
29A908:  CMP             R0, #1
29A90A:  ADD.W           R9, SP, #0x70+var_68
29A90E:  IT NE
29A910:  MOVNE           R0, #0
29A912:  VLDR            S24, =480.0
29A916:  STRB.W          R0, [R4,#0x6F]
29A91A:  MOVS            R5, #0
29A91C:  LDR.W           R0, =(lastDevice_ptr - 0x29A928)
29A920:  VLDR            S26, =-240.0
29A924:  ADD             R0, PC; lastDevice_ptr
29A926:  VLDR            S22, =320.0
29A92A:  LDR.W           R10, [R0]; lastDevice
29A92E:  LDR.W           R0, =(RsGlobal_ptr - 0x29A936)
29A932:  ADD             R0, PC; RsGlobal_ptr
29A934:  LDR.W           R11, [R0]; RsGlobal
29A938:  MOVS            R0, #0
29A93A:  STR             R0, [SP,#0x70+var_6C]
29A93C:  ADD             R1, SP, #0x70+var_64; int *
29A93E:  MOV             R0, R5; int
29A940:  MOV             R2, R9; int *
29A942:  MOVS            R3, #0; float *
29A944:  BLX             j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
29A948:  MOV             R0, R5; int
29A94A:  MOVS            R1, #0; int
29A94C:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
29A950:  ORR.W           R0, R0, #1
29A954:  CMP             R0, #3
29A956:  ADD.W           R0, R4, R6
29A95A:  IT EQ
29A95C:  STREQ.W         R5, [R10]
29A960:  VLDR            S0, [SP,#0x70+var_64]
29A964:  VLDR            S2, [R11,#4]
29A968:  VLDR            S4, [R11,#8]
29A96C:  VCVT.F32.S32    S0, S0
29A970:  VCVT.F32.S32    S2, S2
29A974:  VLDR            S6, [SP,#0x70+var_68]
29A978:  VCVT.F32.S32    S6, S6
29A97C:  VCVT.F32.S32    S4, S4
29A980:  LDRB.W          R1, [R4,#0x6E]
29A984:  CMP             R1, #0
29A986:  VMUL.F32        S0, S0, S24
29A98A:  VMUL.F32        S2, S2, S26
29A98E:  VADD.F32        S0, S0, S2
29A992:  VMUL.F32        S2, S6, S24
29A996:  VDIV.F32        S6, S0, S4
29A99A:  VDIV.F32        S0, S2, S4
29A99E:  VADD.F32        S2, S6, S22
29A9A2:  BEQ             loc_29A9AE
29A9A4:  ADD.W           R1, R0, #0x74 ; 't'
29A9A8:  VSTR            S2, [R0,#0x70]
29A9AC:  B               loc_29A9E2
29A9AE:  VLDR            S4, [R0,#0x70]
29A9B2:  VLDR            S6, [R0,#0x74]
29A9B6:  VSUB.F32        S4, S2, S4
29A9BA:  VSUB.F32        S6, S0, S6
29A9BE:  VMUL.F32        S4, S4, S4
29A9C2:  VMUL.F32        S6, S6, S6
29A9C6:  VADD.F32        S4, S4, S6
29A9CA:  VCMPE.F32       S4, S18
29A9CE:  VMRS            APSR_nzcv, FPSCR
29A9D2:  BLE             loc_29AA04
29A9D4:  ADD.W           R1, R4, R5,LSL#3
29A9D8:  VSTR            S2, [R0,#0x70]
29A9DC:  MOVS            R0, #1
29A9DE:  ADDS            R1, #0x74 ; 't'
29A9E0:  STR             R0, [SP,#0x70+var_6C]
29A9E2:  VSTR            S0, [R1]
29A9E6:  MOV             R0, R5; int
29A9E8:  MOVS            R1, #0; int
29A9EA:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
29A9EE:  ADD.W           R8, R4, R5,LSL#2
29A9F2:  CMP             R0, #2
29A9F4:  STR.W           R0, [R8,#0x90]
29A9F8:  BNE             loc_29AA0E
29A9FA:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
29A9FE:  STR.W           R0, [R8,#0xA0]
29AA02:  B               loc_29AA0E
29AA04:  ADD.W           R0, R4, R5,LSL#2
29AA08:  MOVS            R1, #1
29AA0A:  STR.W           R1, [R0,#0x90]
29AA0E:  ADDS            R5, #1
29AA10:  ADDS            R6, #8
29AA12:  CMP             R5, #4
29AA14:  BNE             loc_29A93C
29AA16:  LDRB.W          R0, [R4,#0x6E]
29AA1A:  CBZ             R0, loc_29AA40
29AA1C:  LDR             R0, [SP,#0x70+var_6C]
29AA1E:  LSLS            R0, R0, #0x1F
29AA20:  BNE             loc_29AA60
29AA22:  BLX             j__Z11LeftPressedv; LeftPressed(void)
29AA26:  CBNZ            R0, loc_29AA3C
29AA28:  BLX             j__Z12RightPressedv; RightPressed(void)
29AA2C:  CBNZ            R0, loc_29AA3C
29AA2E:  BLX             j__Z9UpPressedv; UpPressed(void)
29AA32:  CBNZ            R0, loc_29AA3C
29AA34:  BLX             j__Z11DownPressedv; DownPressed(void)
29AA38:  CMP             R0, #1
29AA3A:  BNE             loc_29AA60
29AA3C:  MOVS            R0, #0
29AA3E:  B               loc_29AA5C
29AA40:  LDR             R0, [SP,#0x70+var_6C]
29AA42:  LSLS            R0, R0, #0x1F
29AA44:  BNE             loc_29AA5A
29AA46:  LDR             R0, =(lastDevice_ptr - 0x29AA4C)
29AA48:  ADD             R0, PC; lastDevice_ptr
29AA4A:  LDR             R0, [R0]; lastDevice
29AA4C:  LDR             R0, [R0]
29AA4E:  ADD.W           R0, R4, R0,LSL#2
29AA52:  LDR.W           R0, [R0,#0x90]
29AA56:  CMP             R0, #2
29AA58:  BNE             loc_29AA60
29AA5A:  MOVS            R0, #1
29AA5C:  STRB.W          R0, [R4,#0x6E]
29AA60:  LDR             R0, =(_ZN14CAdjustableHUD11m_pInstanceE_ptr - 0x29AA66)
29AA62:  ADD             R0, PC; _ZN14CAdjustableHUD11m_pInstanceE_ptr
29AA64:  LDR             R0, [R0]; CAdjustableHUD::m_pInstance ...
29AA66:  LDR             R0, [R0]; this
29AA68:  CBZ             R0, loc_29AA70
29AA6A:  BLX             j__ZN14CAdjustableHUD6UpdateEv; CAdjustableHUD::Update(void)
29AA6E:  B               loc_29AC34
29AA70:  LDR             R0, [R4,#0x2C]
29AA72:  CMP             R0, #0
29AA74:  BEQ             loc_29AAFE
29AA76:  LDR             R0, [R4,#0x24]
29AA78:  CBZ             R0, loc_29AA92
29AA7A:  LDR             R1, [R4,#0x28]
29AA7C:  ADD.W           R0, R1, R0,LSL#2
29AA80:  LDR.W           R0, [R0,#-4]
29AA84:  VLDR            S0, [R0,#8]
29AA88:  VCMP.F32        S0, #0.0
29AA8C:  VMRS            APSR_nzcv, FPSCR
29AA90:  BNE             loc_29AB1C
29AA92:  MOV             R0, R4; this
29AA94:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29AA98:  B               loc_29AB3A
29AA9A:  ALIGN 4
29AA9C:  DCFS 0.4
29AAA0:  DCFS 0.0
29AAA4:  ALIGN 8
29AAA8:  DCFD 0.100000001
29AAB0:  DCFS 0.6; int
29AAB4:  DCFS 0.009
29AAB8:  DCFS 4.6566e-10
29AABC:  DCFS 0.35
29AAC0:  DCFS 480.0
29AAC4:  DCFS -240.0
29AAC8:  DCFS 320.0
29AACC:  MOVS            R0, #0; this
29AACE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
29AAD2:  BLX             j__ZN4CPad17GetEscapeJustDownEv; CPad::GetEscapeJustDown(void)
29AAD6:  LDR             R1, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x29AADC)
29AAD8:  ADD             R1, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
29AADA:  LDR             R1, [R1]; CCutsceneMgr::ms_running ...
29AADC:  LDRB            R1, [R1]; CCutsceneMgr::ms_running
29AADE:  CMP             R1, #0
29AAE0:  BNE.W           loc_29AC34
29AAE4:  CMP             R0, #0
29AAE6:  BEQ.W           loc_29AC34
29AAEA:  MOV             R0, R4; this
29AAEC:  ADD             SP, SP, #0x10
29AAEE:  VPOP            {D8-D15}
29AAF2:  ADD             SP, SP, #4
29AAF4:  POP.W           {R8-R11}
29AAF8:  POP.W           {R4-R7,LR}
29AAFC:  B               _ZN10MobileMenu12InitForPauseEv; MobileMenu::InitForPause(void)
29AAFE:  LDRB.W          R0, [R4,#0x6D]
29AB02:  CBNZ            R0, loc_29AB3A
29AB04:  VMOV            R1, S20
29AB08:  LDRD.W          R0, R2, [R4,#0x24]
29AB0C:  ADD.W           R0, R2, R0,LSL#2
29AB10:  LDR.W           R0, [R0,#-4]
29AB14:  LDR             R2, [R0]
29AB16:  LDR             R2, [R2,#8]
29AB18:  BLX             R2
29AB1A:  B               loc_29AB3A
29AB1C:  VMOV.F32        S2, #-5.0
29AB20:  VMUL.F32        S2, S20, S2
29AB24:  VADD.F32        S0, S0, S2
29AB28:  VCMPE.F32       S0, #0.0
29AB2C:  VSTR            S0, [R0,#8]
29AB30:  VMRS            APSR_nzcv, FPSCR
29AB34:  ITT LT
29AB36:  MOVLT           R1, #0
29AB38:  STRLT           R1, [R0,#8]
29AB3A:  LDR             R0, [R4,#0x24]
29AB3C:  CMP             R0, #0
29AB3E:  BEQ             loc_29AC04
29AB40:  LDR             R1, [R4,#0x28]
29AB42:  ADD.W           R0, R1, R0,LSL#2
29AB46:  LDR.W           R0, [R0,#-4]
29AB4A:  LDR             R1, [R0]
29AB4C:  LDR             R1, [R1,#0x2C]
29AB4E:  BLX             R1
29AB50:  CMP             R0, #1
29AB52:  BNE             loc_29AC04
29AB54:  MOVS            R0, #1; bool
29AB56:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29AB5A:  CMP             R0, #1
29AB5C:  BNE             loc_29AC04
29AB5E:  LDR             R0, [R4,#0x2C]
29AB60:  CBZ             R0, loc_29AB72
29AB62:  LDR             R1, [R0]
29AB64:  LDR             R1, [R1,#0x2C]
29AB66:  BLX             R1
29AB68:  CMP             R0, #1
29AB6A:  BNE             loc_29AC04
29AB6C:  LDR             R0, =(gMobileMenu_ptr - 0x29AB72)
29AB6E:  ADD             R0, PC; gMobileMenu_ptr
29AB70:  B               loc_29AB76
29AB72:  LDR             R0, =(gMobileMenu_ptr - 0x29AB78)
29AB74:  ADD             R0, PC; gMobileMenu_ptr
29AB76:  LDR             R0, [R0]; gMobileMenu
29AB78:  LDRB.W          R0, [R0,#(word_6E00C0+1 - 0x6E006C)]
29AB7C:  CMP             R0, #0
29AB7E:  BNE             loc_29AC04
29AB80:  LDRB.W          R0, [R4,#0x6D]
29AB84:  CMP             R0, #0
29AB86:  BEQ             loc_29AC42
29AB88:  VMOV.F32        S0, #5.0
29AB8C:  LDRD.W          R0, R1, [R4,#0x24]
29AB90:  ADD.W           R0, R1, R0,LSL#2
29AB94:  LDR.W           R1, [R0,#-4]
29AB98:  LDR             R0, =(mapModeOpacity_ptr - 0x29ABA6)
29AB9A:  VMUL.F32        S0, S20, S0
29AB9E:  VLDR            S2, [R1,#8]
29ABA2:  ADD             R0, PC; mapModeOpacity_ptr
29ABA4:  LDR             R2, [R0]; mapModeOpacity
29ABA6:  VMOV            R0, S20; float
29ABAA:  VSUB.F32        S2, S2, S0
29ABAE:  VMAX.F32        D1, D1, D8
29ABB2:  VSTR            S2, [R1,#8]
29ABB6:  VLDR            S2, [R2]
29ABBA:  VADD.F32        S0, S0, S2
29ABBE:  VMIN.F32        D1, D0, D9
29ABC2:  VCMPE.F32       S0, #0.0
29ABC6:  VMRS            APSR_nzcv, FPSCR
29ABCA:  IT LT
29ABCC:  VMOVLT.F32      S2, S16
29ABD0:  VSTR            S2, [R2]
29ABD4:  BLX             j__Z14Menu_MapUpdatef; Menu_MapUpdate(float)
29ABD8:  MOVS            R0, #0x42 ; 'B'
29ABDA:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
29ABDE:  CBNZ            R0, loc_29ABF0
29ABE0:  MOVS            R0, #0x42 ; 'B'
29ABE2:  BLX             j__ZN4CHID18IsReleasedPositiveE10HIDMapping; CHID::IsReleasedPositive(HIDMapping)
29ABE6:  CBNZ            R0, loc_29ABF0
29ABE8:  BLX             j__Z11BackPressedv; BackPressed(void)
29ABEC:  CMP             R0, #1
29ABEE:  BNE             loc_29AC30
29ABF0:  MOVS            R0, #0
29ABF2:  STRB.W          R0, [R4,#0x6D]
29ABF6:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29ABFA:  CBNZ            R0, loc_29AC30
29ABFC:  LDR             R0, =(AudioEngine_ptr - 0x29AC04)
29ABFE:  MOVS            R1, #2
29AC00:  ADD             R0, PC; AudioEngine_ptr
29AC02:  B               loc_29AC92
29AC04:  VMOV.F32        S0, #-5.0
29AC08:  LDR             R0, =(mapModeOpacity_ptr - 0x29AC0E)
29AC0A:  ADD             R0, PC; mapModeOpacity_ptr
29AC0C:  LDR             R0, [R0]; mapModeOpacity ; this
29AC0E:  VMUL.F32        S0, S20, S0
29AC12:  VLDR            S2, [R0]
29AC16:  VADD.F32        S0, S2, S0
29AC1A:  VMIN.F32        D1, D0, D9
29AC1E:  VCMPE.F32       S0, #0.0
29AC22:  VMRS            APSR_nzcv, FPSCR
29AC26:  IT LT
29AC28:  VMOVLT.F32      S2, S16
29AC2C:  VSTR            S2, [R0]
29AC30:  BLX             j__ZN4CHID19CheckForInputChangeEv; CHID::CheckForInputChange(void)
29AC34:  ADD             SP, SP, #0x10
29AC36:  VPOP            {D8-D15}
29AC3A:  ADD             SP, SP, #4
29AC3C:  POP.W           {R8-R11}
29AC40:  POP             {R4-R7,PC}
29AC42:  VMOV.F32        S0, #-5.0
29AC46:  LDR             R0, =(mapModeOpacity_ptr - 0x29AC4C)
29AC48:  ADD             R0, PC; mapModeOpacity_ptr
29AC4A:  LDR             R0, [R0]; mapModeOpacity
29AC4C:  VMUL.F32        S0, S20, S0
29AC50:  VLDR            S2, [R0]
29AC54:  VADD.F32        S0, S2, S0
29AC58:  VMIN.F32        D1, D0, D9
29AC5C:  VCMPE.F32       S0, #0.0
29AC60:  VMRS            APSR_nzcv, FPSCR
29AC64:  IT LT
29AC66:  VMOVLT.F32      S2, S16
29AC6A:  VSTR            S2, [R0]
29AC6E:  MOVS            R0, #0x42 ; 'B'
29AC70:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
29AC74:  CBNZ            R0, loc_29AC7E
29AC76:  MOVS            R0, #0x42 ; 'B'
29AC78:  BLX             j__ZN4CHID18IsReleasedPositiveE10HIDMapping; CHID::IsReleasedPositive(HIDMapping)
29AC7C:  CBZ             R0, loc_29ACA0
29AC7E:  MOVS            R0, #1
29AC80:  STRB.W          R0, [R4,#0x6D]
29AC84:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29AC88:  CMP             R0, #0
29AC8A:  BNE             loc_29AC30
29AC8C:  LDR             R0, =(AudioEngine_ptr - 0x29AC94)
29AC8E:  MOVS            R1, #1; int
29AC90:  ADD             R0, PC; AudioEngine_ptr
29AC92:  LDR             R0, [R0]; AudioEngine ; this
29AC94:  MOVS            R2, #0; float
29AC96:  MOV.W           R3, #0x3F800000; float
29AC9A:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29AC9E:  B               loc_29AC30
29ACA0:  LDR             R0, =(lastDevice_ptr - 0x29ACA8)
29ACA2:  LDR             R1, =(gMobileMenu_ptr - 0x29ACAA)
29ACA4:  ADD             R0, PC; lastDevice_ptr
29ACA6:  ADD             R1, PC; gMobileMenu_ptr
29ACA8:  LDR             R0, [R0]; lastDevice
29ACAA:  LDR             R1, [R1]; gMobileMenu
29ACAC:  LDR             R0, [R0]
29ACAE:  ADD.W           R0, R1, R0,LSL#2
29ACB2:  LDR.W           R0, [R0,#0x90]
29ACB6:  CMP             R0, #0
29ACB8:  BNE             loc_29AC30
29ACBA:  LDR             R0, =(lastDevice_ptr - 0x29ACC2)
29ACBC:  LDR             R5, =(gMobileMenu_ptr - 0x29ACC4)
29ACBE:  ADD             R0, PC; lastDevice_ptr
29ACC0:  ADD             R5, PC; gMobileMenu_ptr
29ACC2:  LDR             R6, [R0]; lastDevice
29ACC4:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
29ACC8:  LDR             R1, [R6]
29ACCA:  LDR             R2, [R5]; gMobileMenu
29ACCC:  ADD.W           R2, R2, R1,LSL#2
29ACD0:  LDR.W           R2, [R2,#0xA0]
29ACD4:  SUBS            R0, R0, R2
29ACD6:  CMP             R0, #0xC7
29ACD8:  BHI             loc_29AC30
29ACDA:  ADD.W           R0, R4, R1,LSL#3
29ACDE:  VLDR            S0, [R0,#0x74]
29ACE2:  VCMPE.F32       S0, S22
29ACE6:  VMRS            APSR_nzcv, FPSCR
29ACEA:  BGE             loc_29AC30
29ACEC:  B               loc_29AC7E
