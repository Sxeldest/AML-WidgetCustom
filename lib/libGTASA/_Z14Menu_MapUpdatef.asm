; =========================================================
; Game Engine Function: _Z14Menu_MapUpdatef
; Address            : 0x2A9A48 - 0x2AAB3A
; =========================================================

2A9A48:  PUSH            {R4-R7,LR}
2A9A4A:  ADD             R7, SP, #0xC
2A9A4C:  PUSH.W          {R8-R11}
2A9A50:  SUB             SP, SP, #4
2A9A52:  VPUSH           {D8-D15}
2A9A56:  SUB             SP, SP, #0x30
2A9A58:  LDR.W           R1, =(RsGlobal_ptr - 0x2A9A6A)
2A9A5C:  VMOV            S17, R0
2A9A60:  VLDR            D17, =0.05
2A9A64:  MOVS            R0, #(stderr+1); this
2A9A66:  ADD             R1, PC; RsGlobal_ptr
2A9A68:  LDR             R1, [R1]; RsGlobal
2A9A6A:  LDR             R2, [R1,#(dword_9FC904 - 0x9FC8FC)]
2A9A6C:  VMOV            S0, R2
2A9A70:  LDR.W           R2, =(gMobileMenu_ptr - 0x2A9A7C)
2A9A74:  VCVT.F64.S32    D16, S0
2A9A78:  ADD             R2, PC; gMobileMenu_ptr
2A9A7A:  LDR             R4, [R2]; gMobileMenu
2A9A7C:  VLDR            S2, [R1,#4]
2A9A80:  VCVT.F32.S32    S0, S0
2A9A84:  LDR.W           R1, =(mapScroll_ptr - 0x2A9A90)
2A9A88:  VMUL.F64        D16, D16, D17
2A9A8C:  ADD             R1, PC; mapScroll_ptr
2A9A8E:  LDR             R1, [R1]; mapScroll
2A9A90:  VCVT.F32.S32    S2, S2
2A9A94:  VDIV.F32        S16, S2, S0
2A9A98:  VLDR            S0, [R1]
2A9A9C:  VCVT.S32.F64    S20, D16
2A9AA0:  STRB.W          R0, [R4,#(byte_6E00D8 - 0x6E006C)]
2A9AA4:  VADD.F32        S0, S0, S17
2A9AA8:  VSTR            S0, [R1]
2A9AAC:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2A9AB0:  VLDR            S18, =1.8
2A9AB4:  VMOV            R10, S20
2A9AB8:  VLDR            S22, [R4,#0x58]
2A9ABC:  VCMPE.F32       S16, S18
2A9AC0:  VMRS            APSR_nzcv, FPSCR
2A9AC4:  IT LE
2A9AC6:  MOVLE.W         R10, #0
2A9ACA:  CMP             R0, #1
2A9ACC:  BNE             loc_2A9B88
2A9ACE:  LDR.W           R0, =(RsGlobal_ptr - 0x2A9AE2)
2A9AD2:  MOV.W           R11, #0xE1
2A9AD6:  VLDR            S4, =-300.0
2A9ADA:  MOV.W           R8, #0xE4
2A9ADE:  ADD             R0, PC; RsGlobal_ptr
2A9AE0:  VLDR            S8, =1300.0
2A9AE4:  VLDR            S10, =800.0
2A9AE8:  LDR             R1, [R0]; RsGlobal
2A9AEA:  VLDR            S6, =250.0
2A9AEE:  LDRD.W          R0, R1, [R1,#(dword_9FC900 - 0x9FC8FC)]
2A9AF2:  VMOV            S0, R1
2A9AF6:  VLDR            S12, =220.0
2A9AFA:  VLDR            S14, =-400.0
2A9AFE:  VMOV            S2, R0
2A9B02:  VCVT.F32.S32    S0, S0
2A9B06:  VCVT.F32.S32    S2, S2
2A9B0A:  VDIV.F32        S0, S2, S0
2A9B0E:  VMOV.F32        S2, #-1.0
2A9B12:  VADD.F32        S0, S0, S2
2A9B16:  VADD.F32        S2, S22, S4
2A9B1A:  VLDR            S4, =530.0
2A9B1E:  VMUL.F32        S8, S0, S8
2A9B22:  VMUL.F32        S4, S0, S4
2A9B26:  VDIV.F32        S2, S2, S10
2A9B2A:  VMUL.F32        S10, S0, S12
2A9B2E:  VMUL.F32        S0, S0, S6
2A9B32:  VLDR            S6, =-410.0
2A9B36:  VADD.F32        S8, S8, S14
2A9B3A:  VADD.F32        S4, S4, S6
2A9B3E:  VLDR            S6, =200.0
2A9B42:  VADD.F32        S10, S10, S12
2A9B46:  VADD.F32        S0, S0, S6
2A9B4A:  VSUB.F32        S6, S8, S4
2A9B4E:  VSUB.F32        S0, S0, S10
2A9B52:  VMUL.F32        S6, S2, S6
2A9B56:  VMUL.F32        S0, S2, S0
2A9B5A:  VADD.F32        S2, S4, S6
2A9B5E:  VLDR            S6, =640.0
2A9B62:  VMOV            S4, R10
2A9B66:  VCVT.F32.S32    S4, S4
2A9B6A:  VADD.F32        S0, S10, S0
2A9B6E:  VADD.F32        S2, S2, S6
2A9B72:  VADD.F32        S0, S0, S4
2A9B76:  VCVT.S32.F32    S2, S2
2A9B7A:  VCVT.S32.F32    S0, S0
2A9B7E:  VMOV            R2, S2
2A9B82:  VMOV            R10, S0
2A9B86:  B               loc_2A9BA0
2A9B88:  LDR.W           R0, =(RsGlobal_ptr - 0x2A9B9C)
2A9B8C:  MOV.W           R2, #0x280
2A9B90:  MOV.W           R11, #0
2A9B94:  MOV.W           R8, #0x184
2A9B98:  ADD             R0, PC; RsGlobal_ptr
2A9B9A:  LDR             R1, [R0]; RsGlobal
2A9B9C:  LDRD.W          R0, R1, [R1,#(dword_9FC900 - 0x9FC8FC)]
2A9BA0:  STR             R2, [SP,#0x90+var_80]
2A9BA2:  VMOV            S0, R1
2A9BA6:  VMOV            S2, R0
2A9BAA:  LDR.W           R0, =(gMobileMenu_ptr - 0x2A9BBA)
2A9BAE:  VCVT.F32.S32    S0, S0
2A9BB2:  VCVT.F32.S32    S2, S2
2A9BB6:  ADD             R0, PC; gMobileMenu_ptr
2A9BB8:  LDR             R0, [R0]; gMobileMenu
2A9BBA:  VLDR            S30, [R0,#0x5C]
2A9BBE:  VLDR            S25, [R0,#0x60]
2A9BC2:  VDIV.F32        S4, S2, S0
2A9BC6:  VCMPE.F32       S4, S18
2A9BCA:  VMOV.F32        S4, S22
2A9BCE:  VMRS            APSR_nzcv, FPSCR
2A9BD2:  BGT             loc_2A9BDC
2A9BD4:  VMUL.F32        S2, S22, S2
2A9BD8:  VDIV.F32        S4, S2, S0
2A9BDC:  MOVS            R0, #0; bool
2A9BDE:  VSTR            S4, [SP,#0x90+var_90]
2A9BE2:  BLX             j__Z13UpdateMapAreab; UpdateMapArea(bool)
2A9BE6:  LDR.W           R0, =(byte_6E03D4 - 0x2A9BF2)
2A9BEA:  VLDR            S24, =224.0
2A9BEE:  ADD             R0, PC; byte_6E03D4
2A9BF0:  VLDR            S28, =320.0
2A9BF4:  LDRB            R0, [R0]
2A9BF6:  DMB.W           ISH
2A9BFA:  TST.W           R0, #1
2A9BFE:  BNE             loc_2A9C2C
2A9C00:  LDR.W           R0, =(byte_6E03D4 - 0x2A9C08)
2A9C04:  ADD             R0, PC; byte_6E03D4 ; __guard *
2A9C06:  BLX             j___cxa_guard_acquire
2A9C0A:  CBZ             R0, loc_2A9C2C
2A9C0C:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
2A9C10:  VMOV            D16, R0, R1
2A9C14:  LDR.W           R1, =(unk_6E03D0 - 0x2A9C24)
2A9C18:  LDR.W           R0, =(byte_6E03D4 - 0x2A9C26)
2A9C1C:  VCVT.F32.F64    S0, D16
2A9C20:  ADD             R1, PC; unk_6E03D0
2A9C22:  ADD             R0, PC; byte_6E03D4 ; __guard *
2A9C24:  VSTR            S0, [R1]
2A9C28:  BLX             j___cxa_guard_release
2A9C2C:  VSUB.F32        S21, S24, S25
2A9C30:  VSUB.F32        S23, S28, S30
2A9C34:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
2A9C38:  LDR.W           R4, =(unk_6E03D0 - 0x2A9C48)
2A9C3C:  VMOV            D17, R0, R1
2A9C40:  LDR.W           R0, =(unk_6E03C8 - 0x2A9C4A)
2A9C44:  ADD             R4, PC; unk_6E03D0
2A9C46:  ADD             R0, PC; unk_6E03C8
2A9C48:  VLDR            S0, [R4]
2A9C4C:  VCVT.F64.F32    D16, S0
2A9C50:  VSUB.F64        D16, D17, D16
2A9C54:  VCVT.F32.F64    S0, D16
2A9C58:  VSTR            S0, [R0]
2A9C5C:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
2A9C60:  VMOV            D16, R0, R1
2A9C64:  LDR.W           R0, =(lastDevice_ptr - 0x2A9C6E)
2A9C68:  MOVS            R1, #0; int
2A9C6A:  ADD             R0, PC; lastDevice_ptr
2A9C6C:  VCVT.F32.F64    S0, D16
2A9C70:  LDR             R0, [R0]; lastDevice
2A9C72:  LDR             R0, [R0]; int
2A9C74:  VSTR            S0, [R4]
2A9C78:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
2A9C7C:  ORR.W           R1, R0, #1
2A9C80:  CMP             R1, #3
2A9C82:  BNE             loc_2A9CC2
2A9C84:  CMP             R0, #2
2A9C86:  BNE             loc_2A9CA4
2A9C88:  LDR.W           R0, =(lastDevice_ptr - 0x2A9C96)
2A9C8C:  MOVS            R3, #0; float *
2A9C8E:  LDR.W           R1, =(dword_6E03D8 - 0x2A9C9C)
2A9C92:  ADD             R0, PC; lastDevice_ptr
2A9C94:  LDR.W           R2, =(dword_6E03DC - 0x2A9CA0)
2A9C98:  ADD             R1, PC; dword_6E03D8 ; int *
2A9C9A:  LDR             R0, [R0]; lastDevice
2A9C9C:  ADD             R2, PC; dword_6E03DC ; int *
2A9C9E:  LDR             R0, [R0]; int
2A9CA0:  BLX             j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
2A9CA4:  LDR.W           R0, =(unk_6E03CC - 0x2A9CB0)
2A9CA8:  LDR.W           R1, =(unk_6E03C8 - 0x2A9CB2)
2A9CAC:  ADD             R0, PC; unk_6E03CC
2A9CAE:  ADD             R1, PC; unk_6E03C8
2A9CB0:  VLDR            S0, [R0]
2A9CB4:  MOVS            R0, #0
2A9CB6:  VLDR            S2, [R1]
2A9CBA:  STR             R0, [SP,#0x90+var_8C]
2A9CBC:  VADD.F32        S0, S2, S0
2A9CC0:  B               loc_2A9DD6
2A9CC2:  CBZ             R0, loc_2A9CCA
2A9CC4:  MOVS            R0, #0
2A9CC6:  STR             R0, [SP,#0x90+var_8C]
2A9CC8:  B               loc_2A9DE0
2A9CCA:  LDR.W           R0, =(unk_6E03CC - 0x2A9CDA)
2A9CCE:  MOVS            R4, #0
2A9CD0:  VLDR            S0, =0.66
2A9CD4:  MOVS            R1, #0
2A9CD6:  ADD             R0, PC; unk_6E03CC
2A9CD8:  VLDR            S2, [R0]
2A9CDC:  VCMPE.F32       S2, S0
2A9CE0:  VMRS            APSR_nzcv, FPSCR
2A9CE4:  BGE             loc_2A9DC0
2A9CE6:  LDR.W           R0, =(lastDevice_ptr - 0x2A9CF4)
2A9CEA:  ADD             R1, SP, #0x90+var_68; int *
2A9CEC:  ADD             R2, SP, #0x90+var_70; int *
2A9CEE:  MOVS            R3, #0; float *
2A9CF0:  ADD             R0, PC; lastDevice_ptr
2A9CF2:  STR             R4, [SP,#0x90+var_68]
2A9CF4:  STR             R4, [SP,#0x90+var_70]
2A9CF6:  LDR             R0, [R0]; lastDevice
2A9CF8:  LDR             R0, [R0]; int
2A9CFA:  BLX             j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
2A9CFE:  VMOV            S0, R10
2A9D02:  LDR.W           R0, =(RsGlobal_ptr - 0x2A9D14)
2A9D06:  MOVS            R1, #0
2A9D08:  VCVT.F32.S32    S2, S0
2A9D0C:  VLDR            S0, =448.0
2A9D10:  ADD             R0, PC; RsGlobal_ptr
2A9D12:  LDR             R0, [R0]; RsGlobal
2A9D14:  VDIV.F32        S6, S2, S0
2A9D18:  VLDR            S2, [R0,#8]
2A9D1C:  VCVT.F32.S32    S2, S2
2A9D20:  LDR             R0, [SP,#0x90+var_68]
2A9D22:  VMOV            S4, R0
2A9D26:  VCVT.F32.S32    S4, S4
2A9D2A:  VMUL.F32        S6, S6, S2
2A9D2E:  VCMPE.F32       S6, S4
2A9D32:  VMRS            APSR_nzcv, FPSCR
2A9D36:  BGE             loc_2A9DC0
2A9D38:  LDR             R1, [SP,#0x90+var_80]
2A9D3A:  VMOV            S6, R1
2A9D3E:  VCVT.F32.S32    S6, S6
2A9D42:  VDIV.F32        S6, S6, S0
2A9D46:  VMUL.F32        S6, S6, S2
2A9D4A:  VCMPE.F32       S6, S4
2A9D4E:  VMRS            APSR_nzcv, FPSCR
2A9D52:  BLE             loc_2A9DBE
2A9D54:  VMOV            S4, R11
2A9D58:  LDR             R1, [SP,#0x90+var_70]
2A9D5A:  VCVT.F32.S32    S4, S4
2A9D5E:  VDIV.F32        S6, S4, S0
2A9D62:  VMOV            S4, R1
2A9D66:  VMUL.F32        S6, S6, S2
2A9D6A:  VCVT.F32.S32    S4, S4
2A9D6E:  VCMPE.F32       S6, S4
2A9D72:  VMRS            APSR_nzcv, FPSCR
2A9D76:  BGE             loc_2A9DBE
2A9D78:  VMOV            S6, R8
2A9D7C:  VCVT.F32.S32    S6, S6
2A9D80:  VDIV.F32        S0, S6, S0
2A9D84:  VMUL.F32        S0, S0, S2
2A9D88:  VCMPE.F32       S0, S4
2A9D8C:  VMRS            APSR_nzcv, FPSCR
2A9D90:  BLE             loc_2A9DBE
2A9D92:  LDR.W           R3, =(dword_6E03D8 - 0x2A9D9E)
2A9D96:  LDR.W           R2, =(dword_6E03DC - 0x2A9DA0)
2A9D9A:  ADD             R3, PC; dword_6E03D8
2A9D9C:  ADD             R2, PC; dword_6E03DC
2A9D9E:  LDR             R3, [R3]
2A9DA0:  LDR             R2, [R2]
2A9DA2:  SUBS            R0, R0, R3
2A9DA4:  IT MI
2A9DA6:  NEGMI           R0, R0
2A9DA8:  CMP             R0, #0xE
2A9DAA:  BGT             loc_2A9DBE
2A9DAC:  SUBS            R0, R1, R2
2A9DAE:  MOV.W           R1, #0
2A9DB2:  IT MI
2A9DB4:  NEGMI           R0, R0
2A9DB6:  CMP             R0, #0xF
2A9DB8:  IT LT
2A9DBA:  MOVLT           R1, #1
2A9DBC:  B               loc_2A9DC0
2A9DBE:  MOVS            R1, #0
2A9DC0:  LDR.W           R0, =(dword_6E03DC - 0x2A9DCE)
2A9DC4:  STR             R1, [SP,#0x90+var_8C]
2A9DC6:  LDR.W           R1, =(dword_6E03D8 - 0x2A9DD4)
2A9DCA:  ADD             R0, PC; dword_6E03DC
2A9DCC:  VLDR            S0, =0.0
2A9DD0:  ADD             R1, PC; dword_6E03D8
2A9DD2:  STR             R4, [R0]
2A9DD4:  STR             R4, [R1]
2A9DD6:  LDR.W           R0, =(unk_6E03CC - 0x2A9DDE)
2A9DDA:  ADD             R0, PC; unk_6E03CC
2A9DDC:  VSTR            S0, [R0]
2A9DE0:  MOVS            R0, #0x96
2A9DE2:  MOVS            R1, #0
2A9DE4:  MOVS            R2, #1
2A9DE6:  VDIV.F32        S29, S21, S22
2A9DEA:  MOVS            R4, #0
2A9DEC:  VDIV.F32        S31, S23, S22
2A9DF0:  BLX             j__ZN15CTouchInterface14IsPinchZoomingENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsPinchZooming(CTouchInterface::WidgetIDs,CVector2D *,int)
2A9DF4:  CMP             R0, #1
2A9DF6:  BNE             loc_2A9E78
2A9DF8:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2A9E00)
2A9DFC:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2A9DFE:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2A9E00:  LDR.W           R5, [R0,#(dword_6F39EC - 0x6F3794)]
2A9E04:  CMP             R5, #0
2A9E06:  BEQ             loc_2A9E86
2A9E08:  LDR.W           R0, =(byte_6E03E0 - 0x2A9E10)
2A9E0C:  ADD             R0, PC; byte_6E03E0
2A9E0E:  LDRB            R0, [R0]
2A9E10:  CMP             R0, #1
2A9E12:  BNE             loc_2A9E8C
2A9E14:  LDR.W           R0, =(dword_6E03E4 - 0x2A9E1C)
2A9E18:  ADD             R0, PC; dword_6E03E4
2A9E1A:  VLDR            S20, [R0]
2A9E1E:  B               loc_2A9EAA
2A9E20:  DCFD 0.05
2A9E28:  DCFS 1.8
2A9E2C:  DCFS -300.0
2A9E30:  DCFS 1300.0
2A9E34:  DCFS 800.0
2A9E38:  DCFS 250.0
2A9E3C:  DCFS 220.0
2A9E40:  DCFS -400.0
2A9E44:  DCFS 530.0
2A9E48:  DCFS -410.0
2A9E4C:  DCFS 200.0
2A9E50:  DCFS 640.0
2A9E54:  DCFS 224.0
2A9E58:  DCFS 320.0
2A9E5C:  DCFS 0.66
2A9E60:  DCFS 448.0
2A9E64:  DCFS 0.0
2A9E68:  DCFS -Inf
2A9E6C:  DCFS +Inf
2A9E70:  DCFS 100.0
2A9E74:  DCFS 1100.0
2A9E78:  LDR.W           R0, =(byte_6E03E0 - 0x2A9E84)
2A9E7C:  VMOV.F32        S19, #1.0
2A9E80:  ADD             R0, PC; byte_6E03E0
2A9E82:  STRB            R4, [R0]
2A9E84:  B               loc_2A9F18
2A9E86:  VMOV.F32        S19, #1.0
2A9E8A:  B               loc_2A9F18
2A9E8C:  LDR             R0, [R5]
2A9E8E:  LDR             R1, [R0,#0x18]
2A9E90:  MOV             R0, R5
2A9E92:  BLX             R1
2A9E94:  LDR.W           R1, =(dword_6E03E4 - 0x2A9EA4)
2A9E98:  VMOV            S20, R0
2A9E9C:  LDR.W           R2, =(byte_6E03E0 - 0x2A9EA6)
2A9EA0:  ADD             R1, PC; dword_6E03E4
2A9EA2:  ADD             R2, PC; byte_6E03E0
2A9EA4:  STR             R0, [R1]
2A9EA6:  MOVS            R0, #1
2A9EA8:  STRB            R0, [R2]
2A9EAA:  LDR             R0, [R5]
2A9EAC:  LDR             R1, [R0,#0x18]
2A9EAE:  MOV             R0, R5
2A9EB0:  BLX             R1
2A9EB2:  VMOV.F32        S16, #1.0
2A9EB6:  VMOV            S0, R0
2A9EBA:  VCMP.F32        S20, S0
2A9EBE:  VMRS            APSR_nzcv, FPSCR
2A9EC2:  VMOV.F32        S19, S16
2A9EC6:  BEQ             loc_2A9EFE
2A9EC8:  LDR             R0, [R5]
2A9ECA:  LDR             R1, [R0,#0x18]
2A9ECC:  MOV             R0, R5
2A9ECE:  BLX             R1
2A9ED0:  LDR.W           R1, =(dword_6E03E4 - 0x2A9EDC)
2A9ED4:  VMOV            S0, R0
2A9ED8:  ADD             R1, PC; dword_6E03E4
2A9EDA:  VLDR            S2, [R1]
2A9EDE:  VDIV.F32        S0, S0, S2
2A9EE2:  VLDR            S2, =-Inf
2A9EE6:  VCMP.F32        S0, S2
2A9EEA:  VMRS            APSR_nzcv, FPSCR
2A9EEE:  BNE             loc_2A9EF6
2A9EF0:  VLDR            S19, =+Inf
2A9EF4:  B               loc_2A9EFE
2A9EF6:  VSQRT.F32       S0, S0
2A9EFA:  VABS.F32        S19, S0
2A9EFE:  LDR             R0, [R5]
2A9F00:  LDR             R1, [R0,#0x18]
2A9F02:  MOV             R0, R5
2A9F04:  BLX             R1
2A9F06:  LDR.W           R1, =(dword_6E03E4 - 0x2A9F16)
2A9F0A:  VCMPE.F32       S19, S16
2A9F0E:  VMRS            APSR_nzcv, FPSCR
2A9F12:  ADD             R1, PC; dword_6E03E4
2A9F14:  STR             R0, [R1]
2A9F16:  BGT             loc_2A9F3A
2A9F18:  MOVS            R0, #0; int
2A9F1A:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
2A9F1E:  VMOV            S0, R0
2A9F22:  VCMPE.F32       S0, #0.0
2A9F26:  VMRS            APSR_nzcv, FPSCR
2A9F2A:  BGT             loc_2A9F3A
2A9F2C:  MOVS            R0, #0x61 ; 'a'
2A9F2E:  MOVS            R1, #0
2A9F30:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2A9F34:  CMP             R0, #1
2A9F36:  BNE.W           loc_2AA1AE
2A9F3A:  VMOV.F32        S26, #1.0
2A9F3E:  VCMP.F32        S19, S26
2A9F42:  VMRS            APSR_nzcv, FPSCR
2A9F46:  BNE             loc_2A9F6A
2A9F48:  VMOV.F32        S0, #7.0
2A9F4C:  LDR.W           R0, =(gMobileMenu_ptr - 0x2A9F58)
2A9F50:  VLDR            S2, =100.0
2A9F54:  ADD             R0, PC; gMobileMenu_ptr
2A9F56:  LDR             R0, [R0]; gMobileMenu
2A9F58:  VMUL.F32        S0, S17, S0
2A9F5C:  VMUL.F32        S0, S0, S2
2A9F60:  VLDR            S2, [R0,#0x58]
2A9F64:  VADD.F32        S0, S0, S2
2A9F68:  B               loc_2A9F7A
2A9F6A:  LDR.W           R0, =(gMobileMenu_ptr - 0x2A9F72)
2A9F6E:  ADD             R0, PC; gMobileMenu_ptr
2A9F70:  LDR             R0, [R0]; gMobileMenu
2A9F72:  VLDR            S0, [R0,#0x58]
2A9F76:  VMUL.F32        S0, S19, S0
2A9F7A:  LDR.W           R0, =(gMobileMenu_ptr - 0x2A9F82)
2A9F7E:  ADD             R0, PC; gMobileMenu_ptr
2A9F80:  LDR             R4, [R0]; gMobileMenu
2A9F82:  MOVS            R0, #0; int
2A9F84:  VSTR            S0, [R4,#0x58]
2A9F88:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
2A9F8C:  VMOV            S2, R0
2A9F90:  VLDR            S0, [R4,#0x58]
2A9F94:  VCMPE.F32       S2, #0.0
2A9F98:  VMRS            APSR_nzcv, FPSCR
2A9F9C:  BLE             loc_2A9FB2
2A9F9E:  VMOV.F32        S2, #21.0
2A9FA2:  LDR.W           R0, =(gMobileMenu_ptr - 0x2A9FAA)
2A9FA6:  ADD             R0, PC; gMobileMenu_ptr
2A9FA8:  LDR             R0, [R0]; gMobileMenu
2A9FAA:  VADD.F32        S0, S0, S2
2A9FAE:  VSTR            S0, [R0,#0x58]
2A9FB2:  VLDR            S2, =1100.0
2A9FB6:  VCMPE.F32       S0, S2
2A9FBA:  VMRS            APSR_nzcv, FPSCR
2A9FBE:  BLE             loc_2A9FD6
2A9FC0:  LDR.W           R0, =(gMobileMenu_ptr - 0x2A9FD0)
2A9FC4:  VMOV.F32        S0, S2
2A9FC8:  MOVW            R1, #0x8000
2A9FCC:  ADD             R0, PC; gMobileMenu_ptr
2A9FCE:  MOVT            R1, #0x4489
2A9FD2:  LDR             R0, [R0]; gMobileMenu
2A9FD4:  STR             R1, [R0,#(dword_6E00C4 - 0x6E006C)]
2A9FD6:  VMUL.F32        S2, S31, S0
2A9FDA:  LDR.W           R0, =(gMobileMenu_ptr - 0x2A9FE8)
2A9FDE:  VMUL.F32        S0, S29, S0
2A9FE2:  ADD             R4, SP, #0x90+var_68
2A9FE4:  ADD             R0, PC; gMobileMenu_ptr
2A9FE6:  LDR             R0, [R0]; gMobileMenu
2A9FE8:  VSUB.F32        S2, S2, S23
2A9FEC:  VLDR            S4, [R0,#0x5C]
2A9FF0:  VSUB.F32        S0, S0, S21
2A9FF4:  VLDR            S6, [R0,#0x60]
2A9FF8:  VSUB.F32        S2, S4, S2
2A9FFC:  VSUB.F32        S0, S6, S0
2AA000:  VSTR            S2, [R0,#0x5C]
2AA004:  VSTR            S0, [R0,#0x60]
2AA008:  LDRD.W          R1, R0, [R0,#(dword_6E00D0 - 0x6E006C)]
2AA00C:  STRD.W          R1, R0, [SP,#0x90+var_70]
2AA010:  ADD             R1, SP, #0x90+var_70
2AA012:  MOV             R0, R4
2AA014:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA018:  MOV             R0, R4
2AA01A:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA01E:  ADD             R0, SP, #0x90+var_70
2AA020:  MOV             R1, R4
2AA022:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA026:  LDR             R0, [SP,#0x90+var_80]
2AA028:  SUBS            R0, #4
2AA02A:  VMOV            S0, R0
2AA02E:  VCVT.F32.S32    S16, S0
2AA032:  VLDR            S0, [SP,#0x90+var_70]
2AA036:  VCMPE.F32       S0, S16
2AA03A:  VMRS            APSR_nzcv, FPSCR
2AA03E:  BLE             loc_2AA08C
2AA040:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA052)
2AA044:  VMOV.F32        S20, #-1.0
2AA048:  ADD             R5, SP, #0x90+var_68
2AA04A:  ADD.W           R9, SP, #0x90+var_78
2AA04E:  ADD             R0, PC; gMobileMenu_ptr
2AA050:  ADD             R4, SP, #0x90+var_70
2AA052:  LDR             R6, [R0]; gMobileMenu
2AA054:  VLDR            S0, [R6,#0x64]
2AA058:  MOV             R1, R9
2AA05A:  VADD.F32        S0, S0, S20
2AA05E:  VSTR            S0, [R6,#0x64]
2AA062:  LDR             R0, [R6,#(dword_6E00D4 - 0x6E006C)]
2AA064:  VSTR            S0, [SP,#0x90+var_78]
2AA068:  STR             R0, [SP,#0x90+var_74]
2AA06A:  MOV             R0, R5
2AA06C:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA070:  MOV             R0, R5
2AA072:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA076:  MOV             R0, R4
2AA078:  MOV             R1, R5
2AA07A:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA07E:  VLDR            S0, [SP,#0x90+var_70]
2AA082:  VCMPE.F32       S0, S16
2AA086:  VMRS            APSR_nzcv, FPSCR
2AA08A:  BGT             loc_2AA054
2AA08C:  ADD.W           R0, R10, #4
2AA090:  VMOV            S2, R0
2AA094:  VCVT.F32.S32    S16, S2
2AA098:  VCMPE.F32       S0, S16
2AA09C:  VMRS            APSR_nzcv, FPSCR
2AA0A0:  BGE             loc_2AA0EA
2AA0A2:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA0B2)
2AA0A6:  ADD             R5, SP, #0x90+var_68
2AA0A8:  ADD.W           R9, SP, #0x90+var_78
2AA0AC:  ADD             R6, SP, #0x90+var_70
2AA0AE:  ADD             R0, PC; gMobileMenu_ptr
2AA0B0:  LDR             R4, [R0]; gMobileMenu
2AA0B2:  VLDR            S0, [R4,#0x64]
2AA0B6:  MOV             R1, R9
2AA0B8:  VADD.F32        S0, S0, S26
2AA0BC:  VSTR            S0, [R4,#0x64]
2AA0C0:  LDR             R0, [R4,#(dword_6E00D4 - 0x6E006C)]
2AA0C2:  VSTR            S0, [SP,#0x90+var_78]
2AA0C6:  STR             R0, [SP,#0x90+var_74]
2AA0C8:  MOV             R0, R5
2AA0CA:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA0CE:  MOV             R0, R5
2AA0D0:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA0D4:  MOV             R0, R6
2AA0D6:  MOV             R1, R5
2AA0D8:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA0DC:  VLDR            S0, [SP,#0x90+var_70]
2AA0E0:  VCMPE.F32       S0, S16
2AA0E4:  VMRS            APSR_nzcv, FPSCR
2AA0E8:  BLT             loc_2AA0B2
2AA0EA:  ORR.W           R0, R11, #4
2AA0EE:  VMOV            S0, R0
2AA0F2:  VCVT.F32.S32    S16, S0
2AA0F6:  VLDR            S0, [SP,#0x90+var_6C]
2AA0FA:  VCMPE.F32       S0, S16
2AA0FE:  VMRS            APSR_nzcv, FPSCR
2AA102:  BGE             loc_2AA150
2AA104:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA116)
2AA108:  VMOV.F32        S20, #-1.0
2AA10C:  ADD             R5, SP, #0x90+var_68
2AA10E:  ADD.W           R9, SP, #0x90+var_78
2AA112:  ADD             R0, PC; gMobileMenu_ptr
2AA114:  ADD             R4, SP, #0x90+var_70
2AA116:  LDR             R6, [R0]; gMobileMenu
2AA118:  VLDR            S0, [R6,#0x68]
2AA11C:  MOV             R1, R9
2AA11E:  VADD.F32        S0, S0, S20
2AA122:  VSTR            S0, [R6,#0x68]
2AA126:  LDR             R0, [R6,#(dword_6E00D0 - 0x6E006C)]
2AA128:  VSTR            S0, [SP,#0x90+var_74]
2AA12C:  STR             R0, [SP,#0x90+var_78]
2AA12E:  MOV             R0, R5
2AA130:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA134:  MOV             R0, R5
2AA136:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA13A:  MOV             R0, R4
2AA13C:  MOV             R1, R5
2AA13E:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA142:  VLDR            S0, [SP,#0x90+var_6C]
2AA146:  VCMPE.F32       S0, S16
2AA14A:  VMRS            APSR_nzcv, FPSCR
2AA14E:  BLT             loc_2AA118
2AA150:  SUB.W           R0, R8, #4
2AA154:  VMOV            S2, R0
2AA158:  VCVT.F32.S32    S16, S2
2AA15C:  VCMPE.F32       S0, S16
2AA160:  VMRS            APSR_nzcv, FPSCR
2AA164:  BLE             loc_2AA1AE
2AA166:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA176)
2AA16A:  ADD             R4, SP, #0x90+var_68
2AA16C:  ADD.W           R9, SP, #0x90+var_78
2AA170:  ADD             R6, SP, #0x90+var_70
2AA172:  ADD             R0, PC; gMobileMenu_ptr
2AA174:  LDR             R5, [R0]; gMobileMenu
2AA176:  VLDR            S0, [R5,#0x68]
2AA17A:  MOV             R1, R9
2AA17C:  VADD.F32        S0, S0, S26
2AA180:  VSTR            S0, [R5,#0x68]
2AA184:  LDR             R0, [R5,#(dword_6E00D0 - 0x6E006C)]
2AA186:  VSTR            S0, [SP,#0x90+var_74]
2AA18A:  STR             R0, [SP,#0x90+var_78]
2AA18C:  MOV             R0, R4
2AA18E:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA192:  MOV             R0, R4
2AA194:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA198:  MOV             R0, R6
2AA19A:  MOV             R1, R4
2AA19C:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA1A0:  VLDR            S0, [SP,#0x90+var_6C]
2AA1A4:  VCMPE.F32       S0, S16
2AA1A8:  VMRS            APSR_nzcv, FPSCR
2AA1AC:  BGT             loc_2AA176
2AA1AE:  VMOV.F32        S26, #1.0
2AA1B2:  VCMPE.F32       S19, S26
2AA1B6:  VMRS            APSR_nzcv, FPSCR
2AA1BA:  BLT             loc_2AA1DC
2AA1BC:  MOVS            R0, #0; int
2AA1BE:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
2AA1C2:  VMOV            S0, R0
2AA1C6:  VCMPE.F32       S0, #0.0
2AA1CA:  VMRS            APSR_nzcv, FPSCR
2AA1CE:  BLT             loc_2AA1DC
2AA1D0:  MOVS            R0, #0x60 ; '`'
2AA1D2:  MOVS            R1, #0
2AA1D4:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2AA1D8:  CMP             R0, #1
2AA1DA:  BNE             loc_2AA2A2
2AA1DC:  VCMP.F32        S19, S26
2AA1E0:  VMRS            APSR_nzcv, FPSCR
2AA1E4:  BNE             loc_2AA208
2AA1E6:  VMOV.F32        S0, #-7.0
2AA1EA:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA1F6)
2AA1EE:  VLDR            S2, =100.0
2AA1F2:  ADD             R0, PC; gMobileMenu_ptr
2AA1F4:  LDR             R0, [R0]; gMobileMenu
2AA1F6:  VMUL.F32        S0, S17, S0
2AA1FA:  VMUL.F32        S0, S0, S2
2AA1FE:  VLDR            S2, [R0,#0x58]
2AA202:  VADD.F32        S0, S2, S0
2AA206:  B               loc_2AA218
2AA208:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA210)
2AA20C:  ADD             R0, PC; gMobileMenu_ptr
2AA20E:  LDR             R0, [R0]; gMobileMenu
2AA210:  VLDR            S0, [R0,#0x58]
2AA214:  VMUL.F32        S0, S19, S0
2AA218:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA220)
2AA21C:  ADD             R0, PC; gMobileMenu_ptr
2AA21E:  LDR             R4, [R0]; gMobileMenu
2AA220:  MOVS            R0, #0; int
2AA222:  VSTR            S0, [R4,#0x58]
2AA226:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
2AA22A:  VMOV            S2, R0
2AA22E:  VLDR            S0, [R4,#0x58]
2AA232:  VCMPE.F32       S2, #0.0
2AA236:  VMRS            APSR_nzcv, FPSCR
2AA23A:  BGE             loc_2AA250
2AA23C:  VMOV.F32        S2, #-21.0
2AA240:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA248)
2AA244:  ADD             R0, PC; gMobileMenu_ptr
2AA246:  LDR             R0, [R0]; gMobileMenu
2AA248:  VADD.F32        S0, S0, S2
2AA24C:  VSTR            S0, [R0,#0x58]
2AA250:  VLDR            S2, =300.0
2AA254:  VCMPE.F32       S0, S2
2AA258:  VMRS            APSR_nzcv, FPSCR
2AA25C:  BGE             loc_2AA272
2AA25E:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA26C)
2AA262:  VMOV.F32        S0, S2
2AA266:  MOVS            R1, #0
2AA268:  ADD             R0, PC; gMobileMenu_ptr
2AA26A:  MOVT            R1, #0x4396
2AA26E:  LDR             R0, [R0]; gMobileMenu
2AA270:  STR             R1, [R0,#(dword_6E00C4 - 0x6E006C)]
2AA272:  VMUL.F32        S2, S31, S0
2AA276:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA282)
2AA27A:  VMUL.F32        S0, S29, S0
2AA27E:  ADD             R0, PC; gMobileMenu_ptr
2AA280:  LDR             R0, [R0]; gMobileMenu
2AA282:  VSUB.F32        S2, S2, S23
2AA286:  VLDR            S4, [R0,#0x5C]
2AA28A:  VSUB.F32        S0, S0, S21
2AA28E:  VLDR            S6, [R0,#0x60]
2AA292:  VSUB.F32        S2, S4, S2
2AA296:  VSUB.F32        S0, S6, S0
2AA29A:  VSTR            S2, [R0,#0x5C]
2AA29E:  VSTR            S0, [R0,#0x60]
2AA2A2:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA2AC)
2AA2A6:  ADD             R4, SP, #0x90+var_68
2AA2A8:  ADD             R0, PC; gMobileMenu_ptr
2AA2AA:  LDR             R0, [R0]; gMobileMenu
2AA2AC:  LDRD.W          R1, R0, [R0,#(dword_6E00D0 - 0x6E006C)]
2AA2B0:  STRD.W          R1, R0, [SP,#0x90+var_78]
2AA2B4:  ADD             R1, SP, #0x90+var_78
2AA2B6:  MOV             R0, R4
2AA2B8:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA2BC:  MOV             R0, R4
2AA2BE:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA2C2:  ADD             R0, SP, #0x90+var_70
2AA2C4:  MOV             R1, R4
2AA2C6:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA2CA:  MOVW            R4, #0xFF80
2AA2CE:  BLX             j__Z6UpHeldv; UpHeld(void)
2AA2D2:  CMP             R0, #0
2AA2D4:  STR.W           R10, [SP,#0x90+var_84]
2AA2D8:  BNE             loc_2AA2E2
2AA2DA:  BLX             j__Z12ScrollUpHeldv; ScrollUpHeld(void)
2AA2DE:  CMP             R0, #1
2AA2E0:  BNE             loc_2AA2E8
2AA2E2:  MOVW            R10, #0xFF80
2AA2E6:  B               loc_2AA2EC
2AA2E8:  MOV.W           R10, #0
2AA2EC:  BLX             j__Z8DownHeldv; DownHeld(void)
2AA2F0:  CBZ             R0, loc_2AA2F8
2AA2F2:  MOV.W           R10, #0x80
2AA2F6:  B               loc_2AA304
2AA2F8:  BLX             j__Z14ScrollDownHeldv; ScrollDownHeld(void)
2AA2FC:  CMP             R0, #1
2AA2FE:  IT EQ
2AA300:  MOVEQ.W         R10, #0x80
2AA304:  BLX             j__Z8LeftHeldv; LeftHeld(void)
2AA308:  CBNZ            R0, loc_2AA314
2AA30A:  BLX             j__Z14ScrollLeftHeldv; ScrollLeftHeld(void)
2AA30E:  CMP             R0, #1
2AA310:  IT NE
2AA312:  MOVNE           R4, #0
2AA314:  BLX             j__Z9RightHeldv; RightHeld(void)
2AA318:  CBZ             R0, loc_2AA32C
2AA31A:  MOVS            R4, #0x80
2AA31C:  B               loc_2AA336
2AA31E:  ALIGN 0x10
2AA320:  DCFS 300.0
2AA324:  DCFS 128.0
2AA328:  DCFS -0.0078125
2AA32C:  BLX             j__Z15ScrollRightHeldv; ScrollRightHeld(void)
2AA330:  CMP             R0, #1
2AA332:  IT EQ
2AA334:  MOVEQ           R4, #0x80
2AA336:  MOVS            R0, #0
2AA338:  STR             R0, [SP,#0x90+var_7C]
2AA33A:  MOVS            R0, #0x1E
2AA33C:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2AA340:  CMP             R0, #1
2AA342:  BNE             loc_2AA364
2AA344:  ADD             R1, SP, #0x90+var_7C
2AA346:  MOVS            R0, #0x1E
2AA348:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2AA34C:  CMP             R0, #1
2AA34E:  BNE             loc_2AA364
2AA350:  VLDR            S0, =128.0
2AA354:  VLDR            S2, [SP,#0x90+var_7C]
2AA358:  VMUL.F32        S0, S2, S0
2AA35C:  VCVT.S32.F32    S0, S0
2AA360:  VMOV            R4, S0
2AA364:  MOVS            R0, #0x1F
2AA366:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2AA36A:  STR.W           R11, [SP,#0x90+var_88]
2AA36E:  CMP             R0, #1
2AA370:  MOV             R11, R8
2AA372:  BNE             loc_2AA394
2AA374:  ADD             R1, SP, #0x90+var_7C
2AA376:  MOVS            R0, #0x1F
2AA378:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2AA37C:  CMP             R0, #1
2AA37E:  BNE             loc_2AA394
2AA380:  VLDR            S0, =128.0
2AA384:  VLDR            S2, [SP,#0x90+var_7C]
2AA388:  VMUL.F32        S0, S2, S0
2AA38C:  VCVT.S32.F32    S0, S0
2AA390:  VMOV            R10, S0
2AA394:  SXTH.W          R9, R4
2AA398:  CMP.W           R9, #1
2AA39C:  BLT             loc_2AA466
2AA39E:  VLDR            S0, [SP,#0x90+var_90]
2AA3A2:  ADD             R4, SP, #0x90+var_68
2AA3A4:  VLDR            S2, =-0.0078125
2AA3A8:  VADD.F32        S16, S30, S0
2AA3AC:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA3B8)
2AA3B0:  VMOV            S0, R9
2AA3B4:  ADD             R0, PC; gMobileMenu_ptr
2AA3B6:  VCVT.F32.S32    S0, S0
2AA3BA:  LDR             R0, [R0]; gMobileMenu
2AA3BC:  VMUL.F32        S0, S0, S2
2AA3C0:  VLDR            S2, =300.0
2AA3C4:  VMUL.F32        S0, S0, S2
2AA3C8:  VLDR            S2, [R0,#0x5C]
2AA3CC:  VMUL.F32        S0, S0, S17
2AA3D0:  VADD.F32        S0, S2, S0
2AA3D4:  VSTR            S0, [R0,#0x5C]
2AA3D8:  LDRD.W          R1, R0, [R0,#(dword_6E00D0 - 0x6E006C)]
2AA3DC:  STRD.W          R1, R0, [SP,#0x90+var_78]
2AA3E0:  ADD             R1, SP, #0x90+var_78
2AA3E2:  MOV             R0, R4
2AA3E4:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA3E8:  MOV             R0, R4
2AA3EA:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA3EE:  ADD             R0, SP, #0x90+var_70
2AA3F0:  MOV             R1, R4
2AA3F2:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA3F6:  LDR             R0, [SP,#0x90+var_80]
2AA3F8:  VMOV            S0, R0
2AA3FC:  VCVT.F32.S32    S0, S0
2AA400:  VCMPE.F32       S16, S0
2AA404:  VMRS            APSR_nzcv, FPSCR
2AA408:  BLE.W           loc_2AA532
2AA40C:  VLDR            S0, [SP,#0x90+var_70]
2AA410:  VCMPE.F32       S0, S28
2AA414:  VMRS            APSR_nzcv, FPSCR
2AA418:  BGE.W           loc_2AA532
2AA41C:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA42A)
2AA420:  ADD             R4, SP, #0x90+var_68
2AA422:  ADD             R5, SP, #0x90+var_78
2AA424:  ADD             R6, SP, #0x90+var_70
2AA426:  ADD             R0, PC; gMobileMenu_ptr
2AA428:  LDR.W           R8, [R0]; gMobileMenu
2AA42C:  VLDR            S0, [R8,#0x64]
2AA430:  MOV             R1, R5
2AA432:  VADD.F32        S0, S0, S26
2AA436:  VSTR            S0, [R8,#0x64]
2AA43A:  LDR.W           R0, [R8,#(dword_6E00D4 - 0x6E006C)]
2AA43E:  VSTR            S0, [SP,#0x90+var_78]
2AA442:  STR             R0, [SP,#0x90+var_74]
2AA444:  MOV             R0, R4
2AA446:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA44A:  MOV             R0, R4
2AA44C:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA450:  MOV             R0, R6
2AA452:  MOV             R1, R4
2AA454:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA458:  VLDR            S0, [SP,#0x90+var_70]
2AA45C:  VCMPE.F32       S0, S28
2AA460:  VMRS            APSR_nzcv, FPSCR
2AA464:  BLT             loc_2AA42C
2AA466:  CMP.W           R9, #0xFFFFFFFF
2AA46A:  BGT             loc_2AA532
2AA46C:  RSB.W           R0, R9, #0
2AA470:  VLDR            S2, =0.0078125
2AA474:  ADD             R4, SP, #0x90+var_68
2AA476:  VSUB.F32        S16, S30, S22
2AA47A:  VMOV            S0, R0
2AA47E:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA48A)
2AA482:  VCVT.F32.S32    S0, S0
2AA486:  ADD             R0, PC; gMobileMenu_ptr
2AA488:  LDR             R0, [R0]; gMobileMenu
2AA48A:  VMUL.F32        S0, S0, S2
2AA48E:  VLDR            S2, =300.0
2AA492:  VMUL.F32        S0, S0, S2
2AA496:  VLDR            S2, [R0,#0x5C]
2AA49A:  VMUL.F32        S0, S0, S17
2AA49E:  VADD.F32        S0, S0, S2
2AA4A2:  VSTR            S0, [R0,#0x5C]
2AA4A6:  LDRD.W          R1, R0, [R0,#(dword_6E00D0 - 0x6E006C)]
2AA4AA:  STRD.W          R1, R0, [SP,#0x90+var_78]
2AA4AE:  ADD             R1, SP, #0x90+var_78
2AA4B0:  MOV             R0, R4
2AA4B2:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA4B6:  MOV             R0, R4
2AA4B8:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA4BC:  ADD             R0, SP, #0x90+var_70
2AA4BE:  MOV             R1, R4
2AA4C0:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA4C4:  LDR             R0, [SP,#0x90+var_84]
2AA4C6:  VMOV            S0, R0
2AA4CA:  VCVT.F32.S32    S0, S0
2AA4CE:  VCMPE.F32       S16, S0
2AA4D2:  VMRS            APSR_nzcv, FPSCR
2AA4D6:  BGE             loc_2AA532
2AA4D8:  VLDR            S0, [SP,#0x90+var_70]
2AA4DC:  VCMPE.F32       S0, S28
2AA4E0:  VMRS            APSR_nzcv, FPSCR
2AA4E4:  BLE             loc_2AA532
2AA4E6:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA4F8)
2AA4EA:  VMOV.F32        S16, #-1.0
2AA4EE:  ADD             R4, SP, #0x90+var_68
2AA4F0:  ADD.W           R8, SP, #0x90+var_78
2AA4F4:  ADD             R0, PC; gMobileMenu_ptr
2AA4F6:  ADD             R6, SP, #0x90+var_70
2AA4F8:  LDR             R5, [R0]; gMobileMenu
2AA4FA:  VLDR            S0, [R5,#0x64]
2AA4FE:  MOV             R1, R8
2AA500:  VADD.F32        S0, S0, S16
2AA504:  VSTR            S0, [R5,#0x64]
2AA508:  LDR             R0, [R5,#(dword_6E00D4 - 0x6E006C)]
2AA50A:  VSTR            S0, [SP,#0x90+var_78]
2AA50E:  STR             R0, [SP,#0x90+var_74]
2AA510:  MOV             R0, R4
2AA512:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA516:  MOV             R0, R4
2AA518:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA51C:  MOV             R0, R6
2AA51E:  MOV             R1, R4
2AA520:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA524:  VLDR            S0, [SP,#0x90+var_70]
2AA528:  VCMPE.F32       S0, S28
2AA52C:  VMRS            APSR_nzcv, FPSCR
2AA530:  BGT             loc_2AA4FA
2AA532:  SXTH.W          R10, R10
2AA536:  CMP.W           R10, #1
2AA53A:  BLT             loc_2AA600
2AA53C:  VMOV            S0, R10
2AA540:  VLDR            S2, =-0.0078125
2AA544:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA552)
2AA548:  ADD             R4, SP, #0x90+var_68
2AA54A:  VCVT.F32.S32    S0, S0
2AA54E:  ADD             R0, PC; gMobileMenu_ptr
2AA550:  VADD.F32        S16, S25, S22
2AA554:  LDR             R0, [R0]; gMobileMenu
2AA556:  VMUL.F32        S0, S0, S2
2AA55A:  VLDR            S2, =300.0
2AA55E:  VMUL.F32        S0, S0, S2
2AA562:  VLDR            S2, [R0,#0x60]
2AA566:  VMUL.F32        S0, S0, S17
2AA56A:  VADD.F32        S0, S2, S0
2AA56E:  VSTR            S0, [R0,#0x60]
2AA572:  LDRD.W          R1, R0, [R0,#(dword_6E00D0 - 0x6E006C)]
2AA576:  STRD.W          R1, R0, [SP,#0x90+var_78]
2AA57A:  ADD             R1, SP, #0x90+var_78
2AA57C:  MOV             R0, R4
2AA57E:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA582:  MOV             R0, R4
2AA584:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA588:  ADD             R0, SP, #0x90+var_70
2AA58A:  MOV             R1, R4
2AA58C:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA590:  VMOV            S0, R11
2AA594:  VCVT.F32.S32    S0, S0
2AA598:  VCMPE.F32       S16, S0
2AA59C:  VMRS            APSR_nzcv, FPSCR
2AA5A0:  BLE.W           loc_2AA6C8
2AA5A4:  VLDR            S0, [SP,#0x90+var_6C]
2AA5A8:  VCMPE.F32       S0, S24
2AA5AC:  VMRS            APSR_nzcv, FPSCR
2AA5B0:  BGE.W           loc_2AA6C8
2AA5B4:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA5C6)
2AA5B8:  VMOV.F32        S16, #-1.0
2AA5BC:  ADD             R4, SP, #0x90+var_68
2AA5BE:  ADD.W           R8, SP, #0x90+var_78
2AA5C2:  ADD             R0, PC; gMobileMenu_ptr
2AA5C4:  ADD             R6, SP, #0x90+var_70
2AA5C6:  LDR             R5, [R0]; gMobileMenu
2AA5C8:  VLDR            S0, [R5,#0x68]
2AA5CC:  MOV             R1, R8
2AA5CE:  VADD.F32        S0, S0, S16
2AA5D2:  VSTR            S0, [R5,#0x68]
2AA5D6:  LDR             R0, [R5,#(dword_6E00D0 - 0x6E006C)]
2AA5D8:  VSTR            S0, [SP,#0x90+var_74]
2AA5DC:  STR             R0, [SP,#0x90+var_78]
2AA5DE:  MOV             R0, R4
2AA5E0:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA5E4:  MOV             R0, R4
2AA5E6:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA5EA:  MOV             R0, R6
2AA5EC:  MOV             R1, R4
2AA5EE:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA5F2:  VLDR            S0, [SP,#0x90+var_6C]
2AA5F6:  VCMPE.F32       S0, S24
2AA5FA:  VMRS            APSR_nzcv, FPSCR
2AA5FE:  BLT             loc_2AA5C8
2AA600:  CMP.W           R10, #0xFFFFFFFF
2AA604:  BGT             loc_2AA6C8
2AA606:  RSB.W           R0, R10, #0
2AA60A:  VLDR            S2, =0.0078125
2AA60E:  ADD             R4, SP, #0x90+var_68
2AA610:  VSUB.F32        S16, S25, S22
2AA614:  VMOV            S0, R0
2AA618:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA624)
2AA61C:  VCVT.F32.S32    S0, S0
2AA620:  ADD             R0, PC; gMobileMenu_ptr
2AA622:  LDR             R0, [R0]; gMobileMenu
2AA624:  VMUL.F32        S0, S0, S2
2AA628:  VLDR            S2, =300.0
2AA62C:  VMUL.F32        S0, S0, S2
2AA630:  VLDR            S2, [R0,#0x60]
2AA634:  VMUL.F32        S0, S0, S17
2AA638:  VADD.F32        S0, S0, S2
2AA63C:  VSTR            S0, [R0,#0x60]
2AA640:  LDRD.W          R1, R0, [R0,#(dword_6E00D0 - 0x6E006C)]
2AA644:  STRD.W          R1, R0, [SP,#0x90+var_78]
2AA648:  ADD             R1, SP, #0x90+var_78
2AA64A:  MOV             R0, R4
2AA64C:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA650:  MOV             R0, R4
2AA652:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA656:  ADD             R0, SP, #0x90+var_70
2AA658:  MOV             R1, R4
2AA65A:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA65E:  LDR             R0, [SP,#0x90+var_88]
2AA660:  VMOV            S0, R0
2AA664:  VCVT.F32.S32    S0, S0
2AA668:  VCMPE.F32       S16, S0
2AA66C:  VMRS            APSR_nzcv, FPSCR
2AA670:  BGE             loc_2AA6C8
2AA672:  VLDR            S0, [SP,#0x90+var_6C]
2AA676:  VCMPE.F32       S0, S24
2AA67A:  VMRS            APSR_nzcv, FPSCR
2AA67E:  BLE             loc_2AA6C8
2AA680:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA690)
2AA684:  ADD             R4, SP, #0x90+var_68
2AA686:  ADD.W           R8, SP, #0x90+var_78
2AA68A:  ADD             R6, SP, #0x90+var_70
2AA68C:  ADD             R0, PC; gMobileMenu_ptr
2AA68E:  LDR             R5, [R0]; gMobileMenu
2AA690:  VLDR            S0, [R5,#0x68]
2AA694:  MOV             R1, R8
2AA696:  VADD.F32        S0, S0, S26
2AA69A:  VSTR            S0, [R5,#0x68]
2AA69E:  LDR             R0, [R5,#(dword_6E00D0 - 0x6E006C)]
2AA6A0:  VSTR            S0, [SP,#0x90+var_74]
2AA6A4:  STR             R0, [SP,#0x90+var_78]
2AA6A6:  MOV             R0, R4
2AA6A8:  BLX             j__ZN6CRadar35TransformRealWorldPointToRadarSpaceER9CVector2DRKS0_; CRadar::TransformRealWorldPointToRadarSpace(CVector2D &,CVector2D const&)
2AA6AC:  MOV             R0, R4
2AA6AE:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
2AA6B2:  MOV             R0, R6
2AA6B4:  MOV             R1, R4
2AA6B6:  BLX             j__ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToScreenSpace(CVector2D &,CVector2D const&)
2AA6BA:  VLDR            S0, [SP,#0x90+var_6C]
2AA6BE:  VCMPE.F32       S0, S24
2AA6C2:  VMRS            APSR_nzcv, FPSCR
2AA6C6:  BGT             loc_2AA690
2AA6C8:  LDR.W           R0, =(byte_6E03F0 - 0x2AA6D0)
2AA6CC:  ADD             R0, PC; byte_6E03F0
2AA6CE:  LDRB            R0, [R0]
2AA6D0:  DMB.W           ISH
2AA6D4:  TST.W           R0, #1
2AA6D8:  BNE             loc_2AA6FC
2AA6DA:  LDR.W           R0, =(byte_6E03F0 - 0x2AA6E2)
2AA6DE:  ADD             R0, PC; byte_6E03F0 ; __guard *
2AA6E0:  BLX             j___cxa_guard_acquire
2AA6E4:  CBZ             R0, loc_2AA6FC
2AA6E6:  LDR.W           R1, =(dword_6E03E8 - 0x2AA6F4)
2AA6EA:  MOVS            R2, #0
2AA6EC:  LDR.W           R0, =(byte_6E03F0 - 0x2AA6F6)
2AA6F0:  ADD             R1, PC; dword_6E03E8
2AA6F2:  ADD             R0, PC; byte_6E03F0 ; __guard *
2AA6F4:  STRD.W          R2, R2, [R1]
2AA6F8:  BLX             j___cxa_guard_release
2AA6FC:  MOVS            R0, #0
2AA6FE:  ADD             R1, SP, #0x90+var_78
2AA700:  STRD.W          R0, R0, [SP,#0x90+var_78]
2AA704:  MOVS            R0, #0x96
2AA706:  MOVS            R2, #2
2AA708:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
2AA70C:  LDR             R4, [SP,#0x90+var_84]
2AA70E:  CMP             R0, #1
2AA710:  BNE             loc_2AA752
2AA712:  BLX             j__ZN15CTouchInterface13GetNumTouchesEv; CTouchInterface::GetNumTouches(void)
2AA716:  CMP             R0, #1
2AA718:  BGT             loc_2AA752
2AA71A:  LDR.W           R0, =(RsGlobal_ptr - 0x2AA726)
2AA71E:  VLDR            S2, =448.0
2AA722:  ADD             R0, PC; RsGlobal_ptr
2AA724:  LDR             R0, [R0]; RsGlobal
2AA726:  VLDR            S0, [R0,#8]
2AA72A:  LDR.W           R0, =(dword_6E03E8 - 0x2AA73A)
2AA72E:  VCVT.F32.S32    S0, S0
2AA732:  VLDR            S6, [SP,#0x90+var_74]
2AA736:  ADD             R0, PC; dword_6E03E8
2AA738:  VDIV.F32        S0, S2, S0
2AA73C:  VLDR            S2, [SP,#0x90+var_78]
2AA740:  VMUL.F32        S4, S2, S0
2AA744:  VMUL.F32        S0, S6, S0
2AA748:  VSTR            S4, [R0]
2AA74C:  VSTR            S0, [R0,#4]
2AA750:  B               loc_2AA794
2AA752:  VMOV.F32        S0, #4.0
2AA756:  LDR.W           R0, =(dword_6E03E8 - 0x2AA75E)
2AA75A:  ADD             R0, PC; dword_6E03E8
2AA75C:  VLDR            S2, [R0]
2AA760:  VLDR            S6, [R0,#4]
2AA764:  VMUL.F32        S0, S17, S0
2AA768:  VMIN.F32        D0, D0, D13
2AA76C:  VSUB.F32        S0, S26, S0
2AA770:  VMUL.F32        S4, S0, S2
2AA774:  VMUL.F32        S0, S0, S6
2AA778:  VCMP.F32        S4, #0.0
2AA77C:  VSTR            S4, [R0]
2AA780:  VMRS            APSR_nzcv, FPSCR
2AA784:  VSTR            S0, [R0,#4]
2AA788:  ITT NE
2AA78A:  VCMPNE.F32      S0, #0.0
2AA78E:  VMRSNE          APSR_nzcv, FPSCR
2AA792:  BNE             loc_2AA7CC
2AA794:  LDRD.W          R6, R3, [SP,#0x90+var_8C]
2AA798:  B               loc_2AA806
2AA79A:  ALIGN 4
2AA79C:  DCD RsGlobal_ptr - 0x2A9A6A
2AA7A0:  DCD gMobileMenu_ptr - 0x2A9A7C
2AA7A4:  DCD mapScroll_ptr - 0x2A9A90
2AA7A8:  DCD RsGlobal_ptr - 0x2A9AE2
2AA7AC:  DCD RsGlobal_ptr - 0x2A9B9C
2AA7B0:  DCD gMobileMenu_ptr - 0x2A9BBA
2AA7B4:  DCFS 0.0078125
2AA7B8:  DCFS 448.0
2AA7BC:  DCD byte_6E03D4 - 0x2A9BF2
2AA7C0:  DCD byte_6E03D4 - 0x2A9C08
2AA7C4:  DCD unk_6E03D0 - 0x2A9C24
2AA7C8:  DCD byte_6E03D4 - 0x2A9C26
2AA7CC:  VMUL.F32        S2, S0, S0
2AA7D0:  VLDR            D16, =0.01
2AA7D4:  VMUL.F32        S6, S4, S4
2AA7D8:  LDRD.W          R6, R3, [SP,#0x90+var_8C]
2AA7DC:  VADD.F32        S2, S6, S2
2AA7E0:  VSQRT.F32       S2, S2
2AA7E4:  VCVT.F64.F32    D17, S2
2AA7E8:  VCMPE.F64       D17, D16
2AA7EC:  VMRS            APSR_nzcv, FPSCR
2AA7F0:  BGE             loc_2AA806
2AA7F2:  VLDR            S0, =0.0
2AA7F6:  MOVS            R1, #0
2AA7F8:  LDR.W           R0, =(dword_6E03E8 - 0x2AA804)
2AA7FC:  VMOV.F32        S4, S0
2AA800:  ADD             R0, PC; dword_6E03E8
2AA802:  STRD.W          R1, R1, [R0]
2AA806:  LDR.W           R0, =(RsGlobal_ptr - 0x2AA80E)
2AA80A:  ADD             R0, PC; RsGlobal_ptr
2AA80C:  LDR             R0, [R0]; RsGlobal
2AA80E:  VLDR            S2, [R0,#4]
2AA812:  VLDR            S6, [R0,#8]
2AA816:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AA826)
2AA81A:  VCVT.F32.S32    S6, S6
2AA81E:  VCVT.F32.S32    S10, S2
2AA822:  ADD             R0, PC; gMobileMenu_ptr
2AA824:  LDR             R0, [R0]; gMobileMenu
2AA826:  VLDR            S8, [R0,#0x5C]
2AA82A:  VLDR            S14, [R0,#0x60]
2AA82E:  VDIV.F32        S12, S10, S6
2AA832:  VADD.F32        S4, S4, S8
2AA836:  VLDR            S2, [R0,#0x58]
2AA83A:  VCMPE.F32       S12, S18
2AA83E:  VADD.F32        S0, S0, S14
2AA842:  VMRS            APSR_nzcv, FPSCR
2AA846:  VMOV.F32        S12, S2
2AA84A:  VSUB.F32        S8, S4, S2
2AA84E:  VSTR            S4, [R0,#0x5C]
2AA852:  VSTR            S0, [R0,#0x60]
2AA856:  BGT             loc_2AA860
2AA858:  VMUL.F32        S10, S2, S10
2AA85C:  VDIV.F32        S12, S10, S6
2AA860:  VMOV            S10, R4
2AA864:  VADD.F32        S6, S4, S12
2AA868:  VCVT.F32.S32    S22, S10
2AA86C:  LDR             R0, [SP,#0x90+var_80]
2AA86E:  VMOV            S10, R0
2AA872:  VCVT.F32.S32    S24, S10
2AA876:  VSUB.F32        S10, S22, S8
2AA87A:  VSUB.F32        S12, S6, S24
2AA87E:  VCVT.S32.F32    S10, S10
2AA882:  VCVT.S32.F32    S12, S12
2AA886:  VMOV            R0, S10
2AA88A:  VMOV            R1, S12
2AA88E:  ADD             R0, R1
2AA890:  CMP.W           R0, #0xFFFFFFFF
2AA894:  BGT             loc_2AA8AC
2AA896:  VMOV            S10, R0
2AA89A:  LDR             R0, =(gMobileMenu_ptr - 0x2AA8A4)
2AA89C:  VCVT.F32.S32    S10, S10
2AA8A0:  ADD             R0, PC; gMobileMenu_ptr
2AA8A2:  LDR             R0, [R0]; gMobileMenu
2AA8A4:  VSUB.F32        S10, S2, S10
2AA8A8:  VSTR            S10, [R0,#0x58]
2AA8AC:  VCMPE.F32       S8, S22
2AA8B0:  VMRS            APSR_nzcv, FPSCR
2AA8B4:  BLE             loc_2AA8C8
2AA8B6:  VSUB.F32        S8, S8, S22
2AA8BA:  LDR             R0, =(gMobileMenu_ptr - 0x2AA8C0)
2AA8BC:  ADD             R0, PC; gMobileMenu_ptr
2AA8BE:  LDR             R0, [R0]; gMobileMenu
2AA8C0:  VSUB.F32        S4, S4, S8
2AA8C4:  VSTR            S4, [R0,#0x5C]
2AA8C8:  VSUB.F32        S8, S0, S2
2AA8CC:  VCMPE.F32       S6, S24
2AA8D0:  VMRS            APSR_nzcv, FPSCR
2AA8D4:  BGE             loc_2AA8E8
2AA8D6:  VSUB.F32        S6, S24, S6
2AA8DA:  LDR             R0, =(gMobileMenu_ptr - 0x2AA8E0)
2AA8DC:  ADD             R0, PC; gMobileMenu_ptr
2AA8DE:  LDR             R0, [R0]; gMobileMenu
2AA8E0:  VADD.F32        S4, S6, S4
2AA8E4:  VSTR            S4, [R0,#0x5C]
2AA8E8:  VMOV            S4, R3
2AA8EC:  VADD.F32        S2, S0, S2
2AA8F0:  VCVT.F32.S32    S26, S4
2AA8F4:  VCMPE.F32       S8, S26
2AA8F8:  VMRS            APSR_nzcv, FPSCR
2AA8FC:  BLE             loc_2AA910
2AA8FE:  VSUB.F32        S4, S8, S26
2AA902:  LDR             R0, =(gMobileMenu_ptr - 0x2AA908)
2AA904:  ADD             R0, PC; gMobileMenu_ptr
2AA906:  LDR             R0, [R0]; gMobileMenu
2AA908:  VSUB.F32        S0, S0, S4
2AA90C:  VSTR            S0, [R0,#0x60]
2AA910:  VMOV            S4, R11
2AA914:  VCVT.F32.S32    S28, S4
2AA918:  VCMPE.F32       S2, S28
2AA91C:  VMRS            APSR_nzcv, FPSCR
2AA920:  BGE             loc_2AA934
2AA922:  VSUB.F32        S2, S28, S2
2AA926:  LDR             R0, =(gMobileMenu_ptr - 0x2AA92C)
2AA928:  ADD             R0, PC; gMobileMenu_ptr
2AA92A:  LDR             R0, [R0]; gMobileMenu
2AA92C:  VADD.F32        S0, S2, S0
2AA930:  VSTR            S0, [R0,#0x60]
2AA934:  LDR             R0, =(gMobileMenu_ptr - 0x2AA93E)
2AA936:  VLDR            S0, =3000.0
2AA93A:  ADD             R0, PC; gMobileMenu_ptr
2AA93C:  LDR             R0, [R0]; gMobileMenu
2AA93E:  VLDR            S2, [R0,#0x64]
2AA942:  VCMPE.F32       S2, S0
2AA946:  VMRS            APSR_nzcv, FPSCR
2AA94A:  BGT             loc_2AA95A
2AA94C:  VLDR            S0, =-3000.0
2AA950:  VCMPE.F32       S2, S0
2AA954:  VMRS            APSR_nzcv, FPSCR
2AA958:  BGE             loc_2AA964
2AA95A:  LDR             R0, =(gMobileMenu_ptr - 0x2AA960)
2AA95C:  ADD             R0, PC; gMobileMenu_ptr
2AA95E:  LDR             R0, [R0]; gMobileMenu
2AA960:  VSTR            S0, [R0,#0x64]
2AA964:  LDR             R0, =(gMobileMenu_ptr - 0x2AA972)
2AA966:  VMOV.F32        S31, S17
2AA96A:  VLDR            S0, =3000.0
2AA96E:  ADD             R0, PC; gMobileMenu_ptr
2AA970:  LDR             R0, [R0]; gMobileMenu
2AA972:  VLDR            S2, [R0,#0x68]
2AA976:  VCMPE.F32       S2, S0
2AA97A:  VMRS            APSR_nzcv, FPSCR
2AA97E:  BGT             loc_2AA98E
2AA980:  VLDR            S0, =-3000.0
2AA984:  VCMPE.F32       S2, S0
2AA988:  VMRS            APSR_nzcv, FPSCR
2AA98C:  BGE             loc_2AA998
2AA98E:  LDR             R0, =(gMobileMenu_ptr - 0x2AA994)
2AA990:  ADD             R0, PC; gMobileMenu_ptr
2AA992:  LDR             R0, [R0]; gMobileMenu
2AA994:  VSTR            S0, [R0,#0x68]
2AA998:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x2AA9A0)
2AA99A:  LDR             R1, =(dword_6E03C4 - 0x2AA9A2)
2AA99C:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
2AA99E:  ADD             R1, PC; dword_6E03C4
2AA9A0:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
2AA9A2:  LDR             R1, [R1]
2AA9A4:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
2AA9A6:  SUBS            R1, R0, R1
2AA9A8:  CMP             R1, #0x15
2AA9AA:  BCC             loc_2AA9B2
2AA9AC:  LDR             R1, =(dword_6E03C4 - 0x2AA9B2)
2AA9AE:  ADD             R1, PC; dword_6E03C4
2AA9B0:  STR             R0, [R1]
2AA9B2:  MOV             R0, R6; bool
2AA9B4:  BLX             j__Z14PlaceRedMarkerb; PlaceRedMarker(bool)
2AA9B8:  LDR             R0, =(gMobileMenu_ptr - 0x2AA9C8)
2AA9BA:  VMOV.F32        S0, #6.0
2AA9BE:  MOVS            R4, #0
2AA9C0:  VMOV.F32        S23, #3.0
2AA9C4:  ADD             R0, PC; gMobileMenu_ptr
2AA9C6:  VMOV.F32        S25, #10.0
2AA9CA:  VMOV.F32        S27, #5.0
2AA9CE:  LDR             R0, [R0]; gMobileMenu
2AA9D0:  VLDR            S2, [R0,#0x58]
2AA9D4:  VLDR            S4, [R0,#0x5C]
2AA9D8:  VDIV.F32        S30, S2, S0
2AA9DC:  VLDR            S6, [R0,#0x60]
2AA9E0:  VSUB.F32        S29, S4, S2
2AA9E4:  STRB.W          R4, [R0,#(byte_6E00D8 - 0x6E006C)]
2AA9E8:  LDR             R0, =(RsGlobal_ptr - 0x2AA9F2)
2AA9EA:  VSUB.F32        S19, S6, S2
2AA9EE:  ADD             R0, PC; RsGlobal_ptr
2AA9F0:  LDR             R6, [R0]; RsGlobal
2AA9F2:  ADD.W           R8, R4, #1
2AA9F6:  UXTB            R0, R4
2AA9F8:  VMOV            S2, R0; this
2AA9FC:  MOVS            R5, #0
2AA9FE:  VMOV            S0, R8
2AAA02:  VCVT.F32.S32    S0, S0
2AAA06:  VCVT.F32.U32    S2, S2
2AAA0A:  VMUL.F32        S0, S30, S0
2AAA0E:  VMUL.F32        S2, S30, S2
2AAA12:  VADD.F32        S0, S29, S0
2AAA16:  VADD.F32        S2, S29, S2
2AAA1A:  VCVT.F64.F32    D8, S0
2AAA1E:  VCVT.F64.F32    D10, S2
2AAA22:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2AAA26:  LDR             R1, [R6,#(dword_9FC904 - 0x9FC8FC)]
2AAA28:  CMP             R0, #1
2AAA2A:  VLDR            S0, [R6,#4]
2AAA2E:  VLDR            D17, =0.05
2AAA32:  VMOV            S2, R1
2AAA36:  VCVT.F32.S32    S4, S2
2AAA3A:  VCVT.F32.S32    S0, S0
2AAA3E:  VDIV.F32        S4, S0, S4
2AAA42:  VMOV.F32        S0, S23
2AAA46:  VCMPE.F32       S4, S18
2AAA4A:  IT EQ
2AAA4C:  VMOVEQ.F32      S0, S25
2AAA50:  VMRS            APSR_nzcv, FPSCR
2AAA54:  VCMPE.F32       S4, S18
2AAA58:  IT GT
2AAA5A:  VMOVGT.F32      S0, S27
2AAA5E:  VMRS            APSR_nzcv, FPSCR
2AAA62:  VCVT.F64.S32    D16, S2
2AAA66:  VMUL.F32        S0, S30, S0
2AAA6A:  VMUL.F64        D17, D16, D17
2AAA6E:  VSUB.F32        S2, S22, S0
2AAA72:  VMOV.I32        D16, #0
2AAA76:  IT GT
2AAA78:  VMOVGT.F64      D16, D17
2AAA7C:  VCVT.F64.F32    D18, S2
2AAA80:  VSUB.F64        D17, D18, D16
2AAA84:  VCMPE.F64       D17, D10
2AAA88:  VMRS            APSR_nzcv, FPSCR
2AAA8C:  BGE             loc_2AAAF6
2AAA8E:  UXTB            R0, R5
2AAA90:  VSUB.F32        S4, S26, S0
2AAA94:  VMOV            S2, R0
2AAA98:  VCVT.F32.U32    S2, S2
2AAA9C:  VMUL.F32        S2, S30, S2
2AAAA0:  VADD.F32        S2, S19, S2
2AAAA4:  VCMPE.F32       S2, S4
2AAAA8:  VMRS            APSR_nzcv, FPSCR
2AAAAC:  BLE             loc_2AAAF6
2AAAAE:  VADD.F32        S2, S0, S24
2AAAB2:  VCVT.F64.F32    D17, S2
2AAAB6:  VADD.F64        D16, D16, D17
2AAABA:  VCMPE.F64       D16, D8
2AAABE:  VMRS            APSR_nzcv, FPSCR
2AAAC2:  BLE             loc_2AAAF6
2AAAC4:  ADD.W           R9, R5, #1
2AAAC8:  VADD.F32        S0, S0, S28
2AAACC:  VMOV            S2, R9
2AAAD0:  VCVT.F32.S32    S2, S2
2AAAD4:  VMUL.F32        S2, S30, S2
2AAAD8:  VADD.F32        S2, S19, S2
2AAADC:  VCMPE.F32       S2, S0
2AAAE0:  VMRS            APSR_nzcv, FPSCR
2AAAE4:  BGE             loc_2AAAF6
2AAAE6:  MOV             R0, R4; this
2AAAE8:  MOV             R1, R5; int
2AAAEA:  BLX             j__ZN6CRadar17RequestMapSectionEii; CRadar::RequestMapSection(int,int)
2AAAEE:  MOV             R5, R9
2AAAF0:  CMP             R5, #0xC
2AAAF2:  BNE             loc_2AAA22
2AAAF4:  B               loc_2AAB04
2AAAF6:  MOV             R0, R4; this
2AAAF8:  MOV             R1, R5; int
2AAAFA:  BLX             j__ZN6CRadar16RemoveMapSectionEii; CRadar::RemoveMapSection(int,int)
2AAAFE:  ADDS            R5, #1
2AAB00:  CMP             R5, #0xC
2AAB02:  BNE             loc_2AAA22
2AAB04:  CMP.W           R8, #0xC
2AAB08:  MOV             R4, R8
2AAB0A:  BNE.W           loc_2AA9F2
2AAB0E:  VADD.F32        S0, S31, S31
2AAB12:  LDR             R1, =(gMobileMenu_ptr - 0x2AAB18)
2AAB14:  ADD             R1, PC; gMobileMenu_ptr
2AAB16:  LDR             R1, [R1]; gMobileMenu
2AAB18:  VMOV            R0, S0; this
2AAB1C:  LDRB.W          R2, [R1,#(byte_6E00D9 - 0x6E006C)]; bool
2AAB20:  MOVS            R1, #0
2AAB22:  CMP             R2, #0
2AAB24:  IT EQ
2AAB26:  MOVEQ           R1, #1; float
2AAB28:  BLX             j__ZN22TextureDatabaseRuntime15UpdateStreamingEfb; TextureDatabaseRuntime::UpdateStreaming(float,bool)
2AAB2C:  ADD             SP, SP, #0x30 ; '0'
2AAB2E:  VPOP            {D8-D15}
2AAB32:  ADD             SP, SP, #4
2AAB34:  POP.W           {R8-R11}
2AAB38:  POP             {R4-R7,PC}
