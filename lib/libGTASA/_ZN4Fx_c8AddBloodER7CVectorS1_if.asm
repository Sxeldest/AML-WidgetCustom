; =========================================================
; Game Engine Function: _ZN4Fx_c8AddBloodER7CVectorS1_if
; Address            : 0x363DCC - 0x364112
; =========================================================

363DCC:  PUSH            {R4-R7,LR}
363DCE:  ADD             R7, SP, #0xC
363DD0:  PUSH.W          {R8-R11}
363DD4:  SUB             SP, SP, #4
363DD6:  VPUSH           {D8-D15}
363DDA:  SUB             SP, SP, #0x58
363DDC:  MOV             R4, R3
363DDE:  MOV             R5, R2
363DE0:  MOV             R6, R1
363DE2:  MOV             R8, R0
363DE4:  BLX             j__ZN13CLocalisation5BloodEv; CLocalisation::Blood(void)
363DE8:  CMP             R0, #0
363DEA:  BEQ.W           loc_364104
363DEE:  LDR             R0, =(TheCamera_ptr - 0x363DF8)
363DF0:  VLDR            S0, [R6]
363DF4:  ADD             R0, PC; TheCamera_ptr
363DF6:  LDR             R0, [R0]; TheCamera
363DF8:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
363DFA:  ADD.W           R2, R1, #0x30 ; '0'
363DFE:  CMP             R1, #0
363E00:  IT EQ
363E02:  ADDEQ           R2, R0, #4
363E04:  VLDR            D16, [R6,#4]
363E08:  VLDR            S2, [R2]
363E0C:  VLDR            D17, [R2,#4]
363E10:  VSUB.F32        S0, S2, S0
363E14:  VSUB.F32        D16, D17, D16
363E18:  VMUL.F32        D1, D16, D16
363E1C:  VMUL.F32        S0, S0, S0
363E20:  VADD.F32        S0, S0, S2
363E24:  VADD.F32        S0, S0, S3
363E28:  VLDR            S2, =625.0
363E2C:  VCMPE.F32       S0, S2
363E30:  VMRS            APSR_nzcv, FPSCR
363E34:  BGT.W           loc_364104
363E38:  MOVW            R0, #0xCCCD
363E3C:  MOVS            R2, #0
363E3E:  MOVT            R0, #0x3F4C
363E42:  MOV.W           R1, #0x3F800000
363E46:  STR.W           R8, [SP,#0xB8+var_8C]
363E4A:  MOVS            R3, #0; float
363E4C:  STRD.W          R1, R0, [SP,#0xB8+var_B8]; float
363E50:  MOV.W           R1, #0x3F000000; float
363E54:  STRD.W          R2, R0, [SP,#0xB8+var_B0]; float
363E58:  ADD             R0, SP, #0xB8+var_7C; this
363E5A:  MOVS            R2, #0; float
363E5C:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
363E60:  CMP             R4, #0
363E62:  BLE.W           loc_363FAC
363E66:  LDR             R0, =(g_fx_ptr - 0x363E78)
363E68:  VMOV.F32        S24, #1.5
363E6C:  VMOV.F32        S26, #-1.0
363E70:  MOVW            R8, #0x8BAD
363E74:  ADD             R0, PC; g_fx_ptr
363E76:  VLDR            S16, [R7,#arg_0]
363E7A:  VLDR            S18, =0.0001
363E7E:  ADD.W           R10, SP, #0xB8+var_88
363E82:  LDR.W           R9, [R0]; g_fx
363E86:  MOVT            R8, #0x68DB
363E8A:  VLDR            S20, =0.3
363E8E:  MOVW            R11, #0x2710
363E92:  VLDR            S22, =0.7
363E96:  BLX             rand
363E9A:  SMMUL.W         R1, R0, R8
363E9E:  ASRS            R2, R1, #0xC
363EA0:  ADD.W           R1, R2, R1,LSR#31
363EA4:  MLS.W           R0, R1, R11, R0
363EA8:  VMOV            S0, R0
363EAC:  VCVT.F32.S32    S0, S0
363EB0:  VMUL.F32        S0, S0, S18
363EB4:  VMUL.F32        S0, S0, S20
363EB8:  VADD.F32        S0, S0, S22
363EBC:  VSTR            S0, [SP,#0xB8+var_6C]
363EC0:  VLDR            S0, [R5]
363EC4:  VLDR            S2, [R5,#4]
363EC8:  VLDR            S4, [R5,#8]
363ECC:  VMUL.F32        S0, S0, S24
363ED0:  VMUL.F32        S2, S2, S24
363ED4:  VMUL.F32        S4, S4, S24
363ED8:  VSTR            S2, [SP,#0xB8+var_84]
363EDC:  VSTR            S0, [SP,#0xB8+var_88]
363EE0:  VSTR            S4, [SP,#0xB8+var_80]
363EE4:  BLX             rand
363EE8:  SMMUL.W         R1, R0, R8
363EEC:  ASRS            R2, R1, #0xC
363EEE:  ADD.W           R1, R2, R1,LSR#31
363EF2:  MLS.W           R0, R1, R11, R0
363EF6:  VMOV            S0, R0
363EFA:  VCVT.F32.S32    S0, S0
363EFE:  VLDR            S2, [SP,#0xB8+var_88]
363F02:  VMUL.F32        S0, S0, S18
363F06:  VADD.F32        S0, S0, S0
363F0A:  VADD.F32        S0, S0, S26
363F0E:  VADD.F32        S0, S2, S0
363F12:  VSTR            S0, [SP,#0xB8+var_88]
363F16:  BLX             rand
363F1A:  SMMUL.W         R1, R0, R8
363F1E:  ASRS            R2, R1, #0xC
363F20:  ADD.W           R1, R2, R1,LSR#31
363F24:  MLS.W           R0, R1, R11, R0
363F28:  VMOV            S0, R0
363F2C:  VCVT.F32.S32    S0, S0
363F30:  VLDR            S2, [SP,#0xB8+var_84]
363F34:  VMUL.F32        S0, S0, S18
363F38:  VADD.F32        S0, S0, S0
363F3C:  VADD.F32        S0, S0, S26
363F40:  VADD.F32        S0, S2, S0
363F44:  VSTR            S0, [SP,#0xB8+var_84]
363F48:  BLX             rand
363F4C:  SMMUL.W         R1, R0, R8
363F50:  MOVS            R3, #0; int
363F52:  ASRS            R2, R1, #0xC
363F54:  ADD.W           R1, R2, R1,LSR#31
363F58:  MOV             R2, R10; int
363F5A:  MLS.W           R0, R1, R11, R0
363F5E:  MOV             R1, #0x3F19999A
363F66:  VMOV            S0, R0
363F6A:  VCVT.F32.S32    S0, S0
363F6E:  VLDR            S2, [SP,#0xB8+var_80]
363F72:  STR             R1, [SP,#0xB8+var_AC]; int
363F74:  MOVS            R1, #0
363F76:  STR             R1, [SP,#0xB8+var_A8]; int
363F78:  ADD             R1, SP, #0xB8+var_7C
363F7A:  VSTR            S16, [SP,#0xB8+var_B0]
363F7E:  STR             R1, [SP,#0xB8+var_B8]; int
363F80:  MOVS            R1, #0
363F82:  LDR.W           R0, [R9]; int
363F86:  MOVT            R1, #0xBF80
363F8A:  STR             R1, [SP,#0xB8+var_B4]; float
363F8C:  MOV             R1, R6; int
363F8E:  VMUL.F32        S0, S0, S18
363F92:  VADD.F32        S0, S0, S0
363F96:  VADD.F32        S0, S0, S26
363F9A:  VADD.F32        S0, S2, S0
363F9E:  VSTR            S0, [SP,#0xB8+var_80]
363FA2:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
363FA6:  SUBS            R4, #1
363FA8:  BNE.W           loc_363E96
363FAC:  VLDR            S16, [R6]
363FB0:  VLDR            S18, [R6,#4]
363FB4:  VLDR            S20, [R6,#8]
363FB8:  VLDR            S22, [R5]
363FBC:  VLDR            S24, [R5,#4]
363FC0:  VLDR            S26, [R5,#8]
363FC4:  BLX             rand
363FC8:  MOVW            R4, #0x8BAD
363FCC:  MOVW            R5, #0x2710
363FD0:  MOVT            R4, #0x68DB
363FD4:  VLDR            S28, =0.0001
363FD8:  SMMUL.W         R1, R0, R4
363FDC:  VMOV.F32        S30, #0.5
363FE0:  VLDR            S17, =0.2
363FE4:  ASRS            R2, R1, #0xC
363FE6:  ADD.W           R1, R2, R1,LSR#31
363FEA:  VMUL.F32        S2, S22, S30
363FEE:  VLDR            S22, =-0.1
363FF2:  MLS.W           R0, R1, R5, R0
363FF6:  VMOV            S0, R0
363FFA:  VADD.F32        S2, S2, S16
363FFE:  VCVT.F32.S32    S0, S0
364002:  VMUL.F32        S0, S0, S28
364006:  VMUL.F32        S0, S0, S17
36400A:  VADD.F32        S0, S0, S22
36400E:  VADD.F32        S0, S2, S0
364012:  VSTR            S0, [SP,#0xB8+var_88]
364016:  BLX             rand
36401A:  SMMUL.W         R1, R0, R4
36401E:  VMUL.F32        S2, S26, S30
364022:  VMUL.F32        S4, S24, S30
364026:  VMOV.F32        S6, #1.0
36402A:  ASRS            R2, R1, #0xC
36402C:  ADD.W           R1, R2, R1,LSR#31
364030:  VADD.F32        S2, S2, S20
364034:  MLS.W           R0, R1, R5, R0
364038:  VADD.F32        S4, S4, S18
36403C:  VMOV            S0, R0
364040:  VADD.F32        S2, S2, S6
364044:  VCVT.F32.S32    S0, S0
364048:  LDR             R1, [SP,#0xB8+var_8C]
36404A:  VSTR            S2, [SP,#0xB8+var_80]
36404E:  VMUL.F32        S0, S0, S28
364052:  VMUL.F32        S0, S0, S17
364056:  VADD.F32        S0, S0, S22
36405A:  VADD.F32        S0, S4, S0
36405E:  VSTR            S0, [SP,#0xB8+var_84]
364062:  LDR             R0, [R1,#0x50]
364064:  ADDS            R0, #1
364066:  STR             R0, [R1,#0x50]
364068:  AND.W           R0, R0, #7
36406C:  CMP             R0, #2
36406E:  BEQ             loc_3640B4
364070:  CMP             R0, #5
364072:  BNE             loc_364104
364074:  LDR             R0, =(gpBloodPoolTex_ptr - 0x36407A)
364076:  ADD             R0, PC; gpBloodPoolTex_ptr
364078:  LDR             R0, [R0]; gpBloodPoolTex
36407A:  LDR             R4, [R0]
36407C:  BLX             rand
364080:  BFC.W           R0, #0xC, #0x14
364084:  MOVW            R6, #0xCCCD
364088:  MOV.W           R1, #0x3F800000
36408C:  ADD.W           R0, R0, #0x7D0
364090:  STRD.W          R0, R1, [SP,#0xB8+var_98]
364094:  MOVS            R1, #0
364096:  MOVS            R3, #0xFF
364098:  MOVT            R6, #0xBDCC
36409C:  STRD.W          R1, R1, [SP,#0xB8+var_B8]
3640A0:  MOV.W           R0, #0x40800000
3640A4:  STRD.W          R6, R3, [SP,#0xB8+var_B0]
3640A8:  MOVW            R3, #0xCCCD
3640AC:  MOVS            R2, #0xC8
3640AE:  MOVT            R3, #0x3DCC
3640B2:  B               loc_3640F2
3640B4:  LDR             R0, =(gpBloodPoolTex_ptr - 0x3640BA)
3640B6:  ADD             R0, PC; gpBloodPoolTex_ptr
3640B8:  LDR             R0, [R0]; gpBloodPoolTex
3640BA:  LDR             R4, [R0]
3640BC:  BLX             rand
3640C0:  BFC.W           R0, #0xC, #0x14
3640C4:  MOVW            R6, #0xCCCD
3640C8:  MOV.W           R1, #0x3F800000
3640CC:  ADD.W           R0, R0, #0x1F40
3640D0:  STRD.W          R0, R1, [SP,#0xB8+var_98]; int
3640D4:  MOVS            R1, #0
3640D6:  MOVS            R3, #0xFF
3640D8:  MOVT            R6, #0xBE4C
3640DC:  STRD.W          R1, R1, [SP,#0xB8+var_B8]; float
3640E0:  MOV.W           R0, #0x40800000
3640E4:  STRD.W          R6, R3, [SP,#0xB8+var_B0]; float
3640E8:  MOVW            R3, #0xCCCD
3640EC:  MOVS            R2, #0xC8
3640EE:  MOVT            R3, #0x3E4C; int
3640F2:  STRD.W          R2, R1, [SP,#0xB8+var_A8]; int
3640F6:  STRD.W          R1, R0, [SP,#0xB8+var_A0]; int
3640FA:  ADD             R2, SP, #0xB8+var_88; int
3640FC:  MOVS            R0, #1; int
3640FE:  MOV             R1, R4; int
364100:  BLX             j__ZN8CShadows18AddPermanentShadowEhP9RwTextureP7CVectorffffshhhfjf; CShadows::AddPermanentShadow(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,uint,float)
364104:  ADD             SP, SP, #0x58 ; 'X'
364106:  VPOP            {D8-D15}
36410A:  ADD             SP, SP, #4
36410C:  POP.W           {R8-R11}
364110:  POP             {R4-R7,PC}
