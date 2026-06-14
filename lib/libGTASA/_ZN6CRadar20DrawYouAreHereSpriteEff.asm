; =========================================================
; Game Engine Function: _ZN6CRadar20DrawYouAreHereSpriteEff
; Address            : 0x440F64 - 0x441056
; =========================================================

440F64:  PUSH            {R4,R5,R7,LR}
440F66:  ADD             R7, SP, #8
440F68:  VPUSH           {D8-D12}
440F6C:  SUB             SP, SP, #0x10
440F6E:  LDR             R2, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x440F76)
440F70:  LDR             R3, =(dword_994EF0 - 0x440F7A)
440F72:  ADD             R2, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
440F74:  LDR             R5, =(byte_6AE3C8 - 0x440F7E)
440F76:  ADD             R3, PC; dword_994EF0
440F78:  LDR             R2, [R2]; CTimer::m_snTimeInMillisecondsPauseMode ...
440F7A:  ADD             R5, PC; byte_6AE3C8
440F7C:  LDR             R3, [R3]
440F7E:  LDRB            R5, [R5]
440F80:  LDR             R2, [R2]; CTimer::m_snTimeInMillisecondsPauseMode
440F82:  CMP             R5, #0
440F84:  SUB.W           R3, R2, R3
440F88:  BEQ             loc_440FA0
440F8A:  CMP.W           R3, #0x1F4
440F8E:  BLS             loc_440FB2
440F90:  LDR             R0, =(byte_6AE3C8 - 0x440F9A)
440F92:  MOVS            R3, #0
440F94:  LDR             R1, =(dword_994EF0 - 0x440F9C)
440F96:  ADD             R0, PC; byte_6AE3C8
440F98:  ADD             R1, PC; dword_994EF0
440F9A:  STRB            R3, [R0]
440F9C:  STR             R2, [R1]
440F9E:  B               loc_441036
440FA0:  CMP             R3, #0xC9
440FA2:  BCC             loc_441036
440FA4:  LDR             R3, =(byte_6AE3C8 - 0x440FAE)
440FA6:  MOVS            R4, #1
440FA8:  LDR             R5, =(dword_994EF0 - 0x440FB0)
440FAA:  ADD             R3, PC; byte_6AE3C8
440FAC:  ADD             R5, PC; dword_994EF0
440FAE:  STRB            R4, [R3]
440FB0:  STR             R2, [R5]
440FB2:  VMOV            S18, R0
440FB6:  MOVS            R0, #0; int
440FB8:  VMOV            S16, R1
440FBC:  BLX             j__Z17FindPlayerHeadingi; FindPlayerHeading(int)
440FC0:  ADD             R4, SP, #0x40+var_34
440FC2:  MOV             R5, R0
440FC4:  MOVS            R0, #0xFF
440FC6:  MOVS            R1, #0xFF; unsigned __int8
440FC8:  STR             R0, [SP,#0x40+var_40]; unsigned __int8
440FCA:  MOV             R0, R4; this
440FCC:  MOVS            R2, #0xFF; unsigned __int8
440FCE:  MOVS            R3, #0xFF; unsigned __int8
440FD0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
440FD4:  VLDR            S0, =3.1416
440FD8:  VMOV            S2, R5
440FDC:  VADD.F32        S20, S2, S0
440FE0:  VLDR            S0, =1.5708
440FE4:  VADD.F32        S0, S20, S0
440FE8:  VMOV            R5, S0
440FEC:  MOV             R0, R5; x
440FEE:  BLX             cosf
440FF2:  VMOV            S24, R0
440FF6:  MOV             R0, R5; x
440FF8:  VMOV.F32        S22, #17.0
440FFC:  BLX             sinf
441000:  VMOV            S0, R0
441004:  LDR             R0, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x441014)
441006:  VMUL.F32        S2, S24, S22
44100A:  MOVS            R5, #0
44100C:  VMUL.F32        S0, S0, S22
441010:  ADD             R0, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
441012:  VMOV            R3, S20
441016:  MOVT            R5, #0x4040
44101A:  LDR             R0, [R0]; CRadar::RadarBlipSprites ...
44101C:  STRD.W          R5, R4, [SP,#0x40+var_40]
441020:  ADDS            R0, #0xC
441022:  VADD.F32        S2, S2, S18
441026:  VSUB.F32        S0, S16, S0
44102A:  VMOV            R1, S2
44102E:  VMOV            R2, S0
441032:  BLX             j__ZN6CRadar23DrawRotatingRadarSpriteEP9CSprite2dffff5CRGBA; CRadar::DrawRotatingRadarSprite(CSprite2d *,float,float,float,float,CRGBA)
441036:  LDR             R0, =(_ZN6CRadar16MapLegendCounterE_ptr - 0x441040)
441038:  MOVS            R3, #3
44103A:  LDR             R1, =(_ZN6CRadar13MapLegendListE_ptr - 0x441042)
44103C:  ADD             R0, PC; _ZN6CRadar16MapLegendCounterE_ptr
44103E:  ADD             R1, PC; _ZN6CRadar13MapLegendListE_ptr
441040:  LDR             R0, [R0]; CRadar::MapLegendCounter ...
441042:  LDR             R1, [R1]; CRadar::MapLegendList ...
441044:  LDRH            R2, [R0]; CRadar::MapLegendCounter
441046:  STRH.W          R3, [R1,R2,LSL#1]
44104A:  ADDS            R1, R2, #1
44104C:  STRH            R1, [R0]; CRadar::MapLegendCounter
44104E:  ADD             SP, SP, #0x10
441050:  VPOP            {D8-D12}
441054:  POP             {R4,R5,R7,PC}
