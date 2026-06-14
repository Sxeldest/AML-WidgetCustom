; =========================================================
; Game Engine Function: _ZN13CWidgetButton4DrawEv
; Address            : 0x2B419C - 0x2B4320
; =========================================================

2B419C:  PUSH            {R4-R7,LR}
2B419E:  ADD             R7, SP, #0xC
2B41A0:  PUSH.W          {R8,R9,R11}
2B41A4:  VPUSH           {D8}
2B41A8:  SUB             SP, SP, #0x40
2B41AA:  MOV             R4, R0
2B41AC:  LDRB.W          R0, [R4,#0x4C]
2B41B0:  CMP             R0, #0
2B41B2:  BEQ.W           loc_2B4314
2B41B6:  MOV             R0, R4
2B41B8:  LDR.W           R1, [R0,#8]!
2B41BC:  CMP             R1, #0
2B41BE:  ITTT NE
2B41C0:  ADDNE.W         R2, R4, #0x49 ; 'I'
2B41C4:  ADDNE.W         R1, R4, #0x20 ; ' '
2B41C8:  BLXNE           j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2B41CC:  MOV             R5, R4
2B41CE:  LDR.W           R0, [R5,#0x98]!
2B41D2:  CMP             R0, #0
2B41D4:  BEQ             loc_2B42B6
2B41D6:  VLDR            S2, [R4,#0xA0]
2B41DA:  VMOV.F32        S8, #1.0
2B41DE:  VLDR            S4, [R4,#0xA4]
2B41E2:  ADD.W           R8, SP, #0x60+var_40
2B41E6:  VLDR            S0, [R4,#0x9C]
2B41EA:  MOVS            R2, #0xFF; unsigned __int8
2B41EC:  VSUB.F32        S4, S4, S2
2B41F0:  VLDR            S6, [R4,#0x2C]
2B41F4:  LDR             R0, [R4,#0x28]
2B41F6:  MOVS            R3, #0xFF; unsigned __int8
2B41F8:  LDR             R1, [R4,#0x20]
2B41FA:  VMUL.F32        S0, S4, S0
2B41FE:  VLDR            S4, [R4,#0x24]
2B4202:  STR             R1, [SP,#0x60+var_30]
2B4204:  MOVS            R1, #0xFF; unsigned __int8
2B4206:  VSUB.F32        S4, S4, S6
2B420A:  STR             R0, [SP,#0x60+var_28]
2B420C:  VSTR            S6, [SP,#0x60+var_24]
2B4210:  VADD.F32        S0, S2, S0
2B4214:  VABS.F32        S2, S4
2B4218:  VSUB.F32        S16, S8, S0
2B421C:  VMUL.F32        S0, S16, S2
2B4220:  VADD.F32        S0, S6, S0
2B4224:  VSTR            S0, [SP,#0x60+var_2C]
2B4228:  LDRB.W          R0, [R4,#0x4C]
2B422C:  STR             R0, [SP,#0x60+var_60]; unsigned __int8
2B422E:  MOV             R0, R8; this
2B4230:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B4234:  ADD             R1, SP, #0x60+var_30; int
2B4236:  MOV.W           R6, #0x3F800000
2B423A:  MOV.W           R9, #0
2B423E:  MOV             R0, R5; int
2B4240:  MOV             R2, R8; int
2B4242:  MOVS            R3, #0; int
2B4244:  VSTR            S16, [SP,#0x60+var_48]
2B4248:  STR             R6, [SP,#0x60+var_4C]; float
2B424A:  VSTR            S16, [SP,#0x60+var_50]
2B424E:  STRD.W          R9, R6, [SP,#0x60+var_60]; float
2B4252:  STRD.W          R9, R9, [SP,#0x60+var_58]; int
2B4256:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2B425A:  VLDR            S0, [R4,#0x24]
2B425E:  ADD.W           R8, SP, #0x60+var_44
2B4262:  VLDR            S2, [R4,#0x2C]
2B4266:  MOVS            R2, #0xCC; unsigned __int8
2B4268:  LDR             R0, [R4,#0x28]
2B426A:  MOVS            R3, #0x99; unsigned __int8
2B426C:  VSUB.F32        S4, S0, S2
2B4270:  LDR             R1, [R4,#0x20]
2B4272:  STR             R1, [SP,#0x60+var_40]
2B4274:  MOVS            R1, #0x99; unsigned __int8
2B4276:  STR             R0, [SP,#0x60+var_38]
2B4278:  VSTR            S0, [SP,#0x60+var_3C]
2B427C:  VABS.F32        S4, S4
2B4280:  VMUL.F32        S4, S16, S4
2B4284:  VADD.F32        S2, S2, S4
2B4288:  VSTR            S2, [SP,#0x60+var_34]
2B428C:  LDRB.W          R0, [R4,#0x4C]
2B4290:  STR             R0, [SP,#0x60+var_60]; float
2B4292:  MOV             R0, R8; this
2B4294:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B4298:  ADD             R1, SP, #0x60+var_40; int
2B429A:  MOV             R0, R5; int
2B429C:  MOV             R2, R8; int
2B429E:  MOVS            R3, #0; int
2B42A0:  STRD.W          R9, R6, [SP,#0x60+var_54]; float
2B42A4:  STRD.W          R6, R6, [SP,#0x60+var_4C]; float
2B42A8:  VSTR            S16, [SP,#0x60+var_58]
2B42AC:  STR             R6, [SP,#0x60+var_5C]; float
2B42AE:  VSTR            S16, [SP,#0x60+var_60]
2B42B2:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2B42B6:  LDR             R0, [R4,#4]
2B42B8:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2B42BC:  CMP             R0, #1
2B42BE:  BNE             loc_2B4314
2B42C0:  LDR.W           R0, [R4,#0x80]
2B42C4:  LSLS            R0, R0, #0x14
2B42C6:  BMI             loc_2B42D2
2B42C8:  LDR             R0, =(_ZN6CCheat15m_bShowMappingsE_ptr - 0x2B42CE)
2B42CA:  ADD             R0, PC; _ZN6CCheat15m_bShowMappingsE_ptr
2B42CC:  LDR             R0, [R0]; CCheat::m_bShowMappings ...
2B42CE:  LDRB            R0, [R0]; CCheat::m_bShowMappings
2B42D0:  CBZ             R0, loc_2B4314
2B42D2:  VLDR            S0, [R4,#0x24]
2B42D6:  VMOV.F32        S6, #0.375
2B42DA:  VLDR            S4, [R4,#0x2C]
2B42DE:  MOVS            R6, #0
2B42E0:  VLDR            S2, [R4,#0x28]
2B42E4:  VSUB.F32        S4, S0, S4
2B42E8:  LDR             R1, [R4,#4]; int
2B42EA:  LDRB.W          R0, [R4,#0x4C]
2B42EE:  STRD.W          R0, R6, [SP,#0x60+var_5C]; int
2B42F2:  MOVS            R0, #0; int
2B42F4:  VABS.F32        S4, S4
2B42F8:  VMUL.F32        S4, S4, S6
2B42FC:  VSUB.F32        S2, S2, S4
2B4300:  VSTR            S4, [SP,#0x60+var_60]
2B4304:  VSUB.F32        S0, S0, S4
2B4308:  VMOV            R2, S2; int
2B430C:  VMOV            R3, S0; int
2B4310:  BLX             j__ZN4CHID12DrawHelpIconEPKc10HIDMappingfffib; CHID::DrawHelpIcon(char const*,HIDMapping,float,float,float,int,bool)
2B4314:  ADD             SP, SP, #0x40 ; '@'
2B4316:  VPOP            {D8}
2B431A:  POP.W           {R8,R9,R11}
2B431E:  POP             {R4-R7,PC}
