; =========================================================
; Game Engine Function: _ZN6CRadar23DrawRotatingRadarSpriteEP9CSprite2dffff5CRGBA
; Address            : 0x441088 - 0x4412EC
; =========================================================

441088:  PUSH            {R4-R7,LR}
44108A:  ADD             R7, SP, #0xC
44108C:  PUSH.W          {R8-R10}
441090:  VPUSH           {D8-D15}
441094:  SUB             SP, SP, #0x18; float
441096:  MOV             R8, R0
441098:  LDR             R0, =(gMobileMenu_ptr - 0x4410A4)
44109A:  VMOV            S18, R2
44109E:  MOV             R5, R3
4410A0:  ADD             R0, PC; gMobileMenu_ptr
4410A2:  VMOV            S16, R1
4410A6:  LDR             R0, [R0]; gMobileMenu
4410A8:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
4410AC:  CMP             R0, #0
4410AE:  BEQ             loc_441172
4410B0:  LDR             R0, =(RsGlobal_ptr - 0x4410BA)
4410B2:  VLDR            S22, =448.0
4410B6:  ADD             R0, PC; RsGlobal_ptr
4410B8:  LDR             R0, [R0]; RsGlobal
4410BA:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
4410BC:  VMOV            S0, R0; this
4410C0:  VCVT.F32.S32    S0, S0
4410C4:  VDIV.F32        S0, S0, S22
4410C8:  VMUL.F32        S20, S0, S18
4410CC:  VMUL.F32        S16, S0, S16
4410D0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
4410D4:  CMP             R0, #1
4410D6:  BNE             loc_4410DE
4410D8:  VMOV.F32        S18, S20
4410DC:  B               loc_441172
4410DE:  LDR             R0, =(gMobileMenu_ptr - 0x4410E4)
4410E0:  ADD             R0, PC; gMobileMenu_ptr
4410E2:  LDR             R0, [R0]; gMobileMenu
4410E4:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
4410E6:  CMP             R1, #0
4410E8:  ITT EQ
4410EA:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
4410EC:  CMPEQ           R0, #0
4410EE:  BNE             loc_4410F6
4410F0:  VLDR            S0, =140.0
4410F4:  B               loc_441108
4410F6:  LDR             R0, =(gMobileMenu_ptr - 0x4410FC)
4410F8:  ADD             R0, PC; gMobileMenu_ptr
4410FA:  LDR             R0, [R0]; gMobileMenu
4410FC:  VLDR            S0, [R0,#0x58]
441100:  VCVT.S32.F32    S0, S0
441104:  VCVT.F32.S32    S0, S0
441108:  LDR             R0, =(RsGlobal_ptr - 0x441112)
44110A:  VLDR            S6, =640.0
44110E:  ADD             R0, PC; RsGlobal_ptr
441110:  LDR             R0, [R0]; RsGlobal
441112:  VLDR            S4, [R0,#8]
441116:  VLDR            S2, [R0,#4]
44111A:  VCVT.F32.S32    S4, S4
44111E:  LDR             R0, =(gMobileMenu_ptr - 0x441128)
441120:  VCVT.F32.S32    S2, S2
441124:  ADD             R0, PC; gMobileMenu_ptr
441126:  LDR             R0, [R0]; gMobileMenu
441128:  VDIV.F32        S4, S4, S22
44112C:  VDIV.F32        S2, S2, S6
441130:  VLDR            S8, [R0,#0x60]
441134:  VLDR            S6, [R0,#0x5C]
441138:  VADD.F32        S10, S0, S8
44113C:  VSUB.F32        S8, S8, S0
441140:  VSUB.F32        S12, S6, S0
441144:  VADD.F32        S0, S0, S6
441148:  VMUL.F32        S18, S10, S4
44114C:  VMUL.F32        S4, S8, S4
441150:  VMUL.F32        S6, S12, S2
441154:  VMUL.F32        S2, S0, S2
441158:  VMAX.F32        D0, D10, D2
44115C:  VMAX.F32        D16, D8, D3
441160:  VCMPE.F32       S0, S18
441164:  VMRS            APSR_nzcv, FPSCR
441168:  VMIN.F32        D8, D16, D1
44116C:  IT LE
44116E:  VMOVLE.F32      S18, S0
441172:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x441178)
441174:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
441176:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
441178:  LDR.W           R6, [R0,#(dword_6F3A18 - 0x6F3794)]
44117C:  CMP             R6, #0
44117E:  BEQ.W           loc_4412E0
441182:  VMOV            S0, R5
441186:  VLDR            S2, =-0.7854
44118A:  VLDR            S20, =0.0
44118E:  VADD.F32        S24, S0, S2
441192:  VLDR            S0, =4.7124
441196:  LDR.W           R10, [R7,#arg_4]
44119A:  VLDR            S22, [R7,#arg_0]
44119E:  VADD.F32        S0, S24, S0
4411A2:  VADD.F32        S26, S24, S20
4411A6:  VMOV            R5, S0
4411AA:  MOV             R0, R5; x
4411AC:  BLX             cosf
4411B0:  MOV             R4, R0
4411B2:  MOV             R0, R5; x
4411B4:  BLX             sinf
4411B8:  VMOV            R5, S26
4411BC:  VMOV            S26, R0
4411C0:  VMOV            S28, R4
4411C4:  VMUL.F32        S0, S26, S20
4411C8:  VSUB.F32        S30, S28, S0
4411CC:  MOV             R0, R5; x
4411CE:  BLX             sinf
4411D2:  VLDR            S0, =3.1416
4411D6:  MOV             R9, R0
4411D8:  VLDR            S4, [R6,#0x28]
4411DC:  VADD.F32        S0, S24, S0
4411E0:  VLDR            S2, =1.5708
4411E4:  VADD.F32        S2, S24, S2
4411E8:  VMOV            R4, S0
4411EC:  VLDR            S0, [R6,#0x20]
4411F0:  VSUB.F32        S0, S4, S0
4411F4:  VMOV            R6, S2
4411F8:  VLDR            S2, =0.1
4411FC:  VABS.F32        S0, S0
441200:  VMUL.F32        S24, S0, S2
441204:  MOV             R0, R4; x
441206:  BLX             cosf
44120A:  VMOV            S19, R0
44120E:  MOV             R0, R4; x
441210:  VMUL.F32        S28, S28, S20
441214:  VMUL.F32        S21, S19, S20
441218:  VMUL.F32        S22, S24, S22
44121C:  BLX             sinf
441220:  VMOV            S24, R0
441224:  MOV             R0, R6; x
441226:  VADD.F32        S26, S28, S26
44122A:  BLX             cosf
44122E:  VMOV            S28, R0
441232:  MOV             R0, R6; x
441234:  VADD.F32        S21, S21, S24
441238:  BLX             sinf
44123C:  VMOV            S23, R0
441240:  MOV             R0, R5; x
441242:  VMOV            S25, R9
441246:  VMUL.F32        S27, S28, S20
44124A:  VMUL.F32        S29, S23, S20
44124E:  VMUL.F32        S26, S22, S26
441252:  BLX             cosf
441256:  VMUL.F32        S2, S22, S30
44125A:  STR.W           R10, [SP,#0x70+var_5C]; CRGBA *
44125E:  VMUL.F32        S4, S22, S21
441262:  VMOV            S0, R0
441266:  MOV             R0, R8; this
441268:  VMUL.F32        S6, S25, S20
44126C:  VMUL.F32        S8, S0, S20
441270:  VMUL.F32        S10, S24, S20
441274:  VADD.F32        S1, S16, S26
441278:  VADD.F32        S2, S18, S2
44127C:  VADD.F32        S4, S16, S4
441280:  VSUB.F32        S12, S28, S29
441284:  VSUB.F32        S0, S0, S6
441288:  VADD.F32        S6, S8, S25
44128C:  VSUB.F32        S8, S19, S10
441290:  VADD.F32        S14, S27, S23
441294:  VMOV            R2, S2; float
441298:  VMOV            R3, S4; float
44129C:  VMOV            R1, S1; float
4412A0:  VMUL.F32        S0, S22, S0
4412A4:  VMUL.F32        S2, S22, S6
4412A8:  VMUL.F32        S10, S22, S12
4412AC:  VMUL.F32        S4, S22, S8
4412B0:  VMUL.F32        S12, S22, S14
4412B4:  VADD.F32        S0, S18, S0
4412B8:  VADD.F32        S2, S16, S2
4412BC:  VADD.F32        S6, S18, S10
4412C0:  VADD.F32        S4, S18, S4
4412C4:  VADD.F32        S8, S16, S12
4412C8:  VSTR            S4, [SP,#0x70+var_70]
4412CC:  VSTR            S2, [SP,#0x70+var_6C]
4412D0:  VSTR            S0, [SP,#0x70+var_68]
4412D4:  VSTR            S8, [SP,#0x70+var_64]
4412D8:  VSTR            S6, [SP,#0x70+var_60]
4412DC:  BLX             j__ZN9CSprite2d4DrawEffffffffRK5CRGBA; CSprite2d::Draw(float,float,float,float,float,float,float,float,CRGBA const&)
4412E0:  ADD             SP, SP, #0x18
4412E2:  VPOP            {D8-D15}
4412E6:  POP.W           {R8-R10}
4412EA:  POP             {R4-R7,PC}
