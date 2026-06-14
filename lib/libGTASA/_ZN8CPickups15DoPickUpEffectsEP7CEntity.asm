; =========================================================
; Game Engine Function: _ZN8CPickups15DoPickUpEffectsEP7CEntity
; Address            : 0x31FBE0 - 0x320332
; =========================================================

31FBE0:  PUSH            {R4-R7,LR}
31FBE2:  ADD             R7, SP, #0xC
31FBE4:  PUSH.W          {R8}
31FBE8:  VPUSH           {D8-D10}
31FBEC:  SUB             SP, SP, #0x68
31FBEE:  LDR.W           R2, =(_ZN8CPickups8aPickUpsE_ptr - 0x31FC00)
31FBF2:  MOV             R4, R0
31FBF4:  LDR.W           R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31FC06)
31FBF8:  MOV.W           R1, #0xFFFFFFFF
31FBFC:  ADD             R2, PC; _ZN8CPickups8aPickUpsE_ptr
31FBFE:  MOVW            R3, #0x26B
31FC02:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31FC04:  LDR             R2, [R2]; CPickups::aPickUps ...
31FC06:  LDR             R0, [R0]; CPickups::aPickUps ...
31FC08:  LDRB            R6, [R0,#0x1C]
31FC0A:  CBZ             R6, loc_31FC12
31FC0C:  LDR             R6, [R0,#4]
31FC0E:  CMP             R6, R4
31FC10:  BEQ             loc_31FC1C
31FC12:  ADDS            R1, #1
31FC14:  ADDS            R0, #0x20 ; ' '
31FC16:  CMP             R1, R3
31FC18:  BLT             loc_31FC08
31FC1A:  MOV             R0, R2; this
31FC1C:  LDR.W           R1, =(MI_PICKUP_CAMERA_ptr - 0x31FC26)
31FC20:  STR             R0, [SP,#0x90+var_2C]
31FC22:  ADD             R1, PC; MI_PICKUP_CAMERA_ptr
31FC24:  LDRSH.W         R2, [R4,#0x26]
31FC28:  LDR             R1, [R1]; MI_PICKUP_CAMERA
31FC2A:  LDRH            R1, [R1]
31FC2C:  CMP             R2, R1
31FC2E:  BNE             loc_31FC5C
31FC30:  LDR.W           R0, =(TheCamera_ptr - 0x31FC3C)
31FC34:  ADD.W           R6, R4, #0x144
31FC38:  ADD             R0, PC; TheCamera_ptr
31FC3A:  LDR             R1, [R0]; TheCamera
31FC3C:  LDR.W           R0, [R4,#0x144]
31FC40:  LDRB.W          R2, [R1,#(byte_951FFF - 0x951FA8)]
31FC44:  ADD.W           R2, R2, R2,LSL#5
31FC48:  ADD.W           R1, R1, R2,LSL#4
31FC4C:  LDRH.W          R1, [R1,#0x17E]
31FC50:  CMP             R1, #0x2E ; '.'
31FC52:  BNE             loc_31FC76
31FC54:  BIC.W           R0, R0, #0x2000000
31FC58:  STR             R0, [R6]
31FC5A:  B               loc_31FD66
31FC5C:  BLX             j__ZN7CPickup23PickUpShouldBeInvisibleEv; CPickup::PickUpShouldBeInvisible(void)
31FC60:  LDR.W           R1, [R4,#0x144]
31FC64:  ADD.W           R6, R4, #0x144
31FC68:  BIC.W           R1, R1, #0x2000000
31FC6C:  ORR.W           R0, R1, R0,LSL#25
31FC70:  STR.W           R0, [R4,#0x144]
31FC74:  B               loc_31FD66
31FC76:  LDR.W           R1, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x31FC84)
31FC7A:  ORR.W           R0, R0, #0x2000000
31FC7E:  STR             R0, [R6]
31FC80:  ADD             R1, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
31FC82:  LDR             R1, [R1]; CClock::ms_nGameClockHours ...
31FC84:  LDRB            R0, [R1]; this
31FC86:  CMP             R0, #5
31FC88:  BCC             loc_31FC92
31FC8A:  BLX             j__ZN12CPostEffects16IsVisionFXActiveEv; CPostEffects::IsVisionFXActive(void)
31FC8E:  CMP             R0, #1
31FC90:  BNE             loc_31FD66
31FC92:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31FC9A)
31FC96:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31FC98:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds ...
31FC9A:  BLX             rand
31FC9E:  LDR             R1, [R5]; CTimer::m_snTimeInMilliseconds
31FCA0:  UXTH            R0, R0
31FCA2:  VLDR            S2, =0.0007666
31FCA6:  BFC.W           R1, #0xD, #0x13
31FCAA:  VMOV            S0, R1
31FCAE:  VCVT.F32.U32    S0, S0
31FCB2:  VMUL.F32        S0, S0, S2
31FCB6:  VLDR            S2, =0.000015259
31FCBA:  VMOV            R1, S0
31FCBE:  VMOV            S0, R0
31FCC2:  VCVT.F32.S32    S0, S0
31FCC6:  VMUL.F32        S0, S0, S2
31FCCA:  VLDR            S2, =50.0
31FCCE:  VMUL.F32        S16, S0, S2
31FCD2:  MOV             R0, R1; x
31FCD4:  BLX             sinf
31FCD8:  MOVS            R2, #0
31FCDA:  MOVS            R3, #0
31FCDC:  MOVT            R2, #0x4170
31FCE0:  LDR             R1, [R4,#0x14]
31FCE2:  STRD.W          R3, R3, [SP,#0x90+var_54]; float
31FCE6:  MOV.W           R5, #0x3FC00000
31FCEA:  STR             R2, [SP,#0x90+var_58]; float
31FCEC:  VCVT.S32.F32    S6, S16
31FCF0:  STR             R3, [SP,#0x90+var_5C]; float
31FCF2:  VMOV            S8, R0
31FCF6:  VLDR            S2, =0.7
31FCFA:  MOVS            R0, #1
31FCFC:  CMP             R1, #0
31FCFE:  VLDR            S4, =1.7
31FD02:  VLDR            S0, =3.7
31FD06:  VADD.F32        S4, S8, S4
31FD0A:  VMOV            R2, S6
31FD0E:  VMUL.F32        S0, S4, S0
31FD12:  ADD.W           R2, R2, #0x64 ; 'd'
31FD16:  VMOV            S6, R2
31FD1A:  UXTB            R2, R2; CEntity *
31FD1C:  VCVT.F32.S32    S6, S6
31FD20:  STR             R5, [SP,#0x90+var_60]; float
31FD22:  MOV             R5, #0x42C80000
31FD2A:  STRD.W          R5, R0, [SP,#0x90+var_80]; float
31FD2E:  ADD.W           R0, R1, #0x30 ; '0'
31FD32:  STRD.W          R3, R3, [SP,#0x90+var_78]; unsigned __int8
31FD36:  MOV.W           R1, #0; unsigned int
31FD3A:  STRD.W          R3, R3, [SP,#0x90+var_70]; unsigned __int8
31FD3E:  STRD.W          R3, R3, [SP,#0x90+var_68]; float
31FD42:  IT EQ
31FD44:  ADDEQ           R0, R4, #4
31FD46:  VMUL.F32        S2, S6, S2
31FD4A:  STR             R0, [SP,#0x90+var_88]; unsigned __int8
31FD4C:  MOVS            R0, #0xFF
31FD4E:  VCVT.U32.F32    S2, S2
31FD52:  STR             R0, [SP,#0x90+var_8C]; unsigned __int8
31FD54:  ADD             R0, SP, #0x90+var_2C
31FD56:  ADDS            R0, #0x1D; this
31FD58:  VMOV            R3, S2; unsigned __int8
31FD5C:  STR             R3, [SP,#0x90+var_90]; unsigned __int8
31FD5E:  VSTR            S0, [SP,#0x90+var_84]
31FD62:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
31FD66:  LDR             R0, [R6]
31FD68:  TST.W           R0, #0x2000000
31FD6C:  BNE.W           loc_3202D4
31FD70:  LDR.W           R1, =(MI_PICKUP_ADRENALINE_ptr - 0x31FD78)
31FD74:  ADD             R1, PC; MI_PICKUP_ADRENALINE_ptr
31FD76:  LDR             R2, [R1]; MI_PICKUP_ADRENALINE
31FD78:  LDRSH.W         R1, [R4,#0x26]
31FD7C:  LDRH            R2, [R2]
31FD7E:  CMP             R1, R2
31FD80:  BNE             loc_31FD88
31FD82:  MOV.W           R8, #0x2F ; '/'
31FD86:  B               loc_31FDCC
31FD88:  LDR.W           R2, =(MI_PICKUP_BODYARMOUR_ptr - 0x31FD90)
31FD8C:  ADD             R2, PC; MI_PICKUP_BODYARMOUR_ptr
31FD8E:  LDR             R2, [R2]; MI_PICKUP_BODYARMOUR
31FD90:  LDRH            R2, [R2]
31FD92:  CMP             R1, R2
31FD94:  BNE             loc_31FD9C
31FD96:  MOV.W           R8, #0x30 ; '0'
31FD9A:  B               loc_31FDCC
31FD9C:  LDR.W           R2, =(MI_PICKUP_BRIBE_ptr - 0x31FDA4)
31FDA0:  ADD             R2, PC; MI_PICKUP_BRIBE_ptr
31FDA2:  LDR             R2, [R2]; MI_PICKUP_BRIBE
31FDA4:  LDRH            R2, [R2]
31FDA6:  CMP             R1, R2
31FDA8:  BEQ             loc_31FDC8
31FDAA:  LDR.W           R2, =(MI_PICKUP_INFO_ptr - 0x31FDB2)
31FDAE:  ADD             R2, PC; MI_PICKUP_INFO_ptr
31FDB0:  LDR             R2, [R2]; MI_PICKUP_INFO
31FDB2:  LDRH            R2, [R2]
31FDB4:  CMP             R1, R2
31FDB6:  BEQ             loc_31FDC8
31FDB8:  LDR.W           R2, =(MI_PICKUP_KILLFRENZY_ptr - 0x31FDC0)
31FDBC:  ADD             R2, PC; MI_PICKUP_KILLFRENZY_ptr
31FDBE:  LDR             R2, [R2]; MI_PICKUP_KILLFRENZY
31FDC0:  LDRH            R2, [R2]
31FDC2:  CMP             R1, R2
31FDC4:  BNE.W           loc_3200BA
31FDC8:  MOV.W           R8, #0
31FDCC:  TST.W           R0, #0xC
31FDD0:  ITT EQ
31FDD2:  LDRBEQ.W        R0, [R4,#0x141]
31FDD6:  CMPEQ           R0, #0
31FDD8:  BEQ             loc_31FEB4
31FDDA:  LDR.W           R0, =(TheCamera_ptr - 0x31FDE4)
31FDDE:  LDR             R1, [R4,#0x14]
31FDE0:  ADD             R0, PC; TheCamera_ptr
31FDE2:  CMP             R1, #0
31FDE4:  LDR             R2, [R0]; TheCamera
31FDE6:  ADD.W           R0, R1, #0x30 ; '0'
31FDEA:  LDR             R3, [R2,#(dword_951FBC - 0x951FA8)]
31FDEC:  IT EQ
31FDEE:  ADDEQ           R0, R4, #4
31FDF0:  ADD.W           R1, R3, #0x30 ; '0'
31FDF4:  CMP             R3, #0
31FDF6:  IT EQ
31FDF8:  ADDEQ           R1, R2, #4
31FDFA:  LDR.W           R2, =(_ZN8CPickups11NumMessagesE_ptr - 0x31FE02)
31FDFE:  ADD             R2, PC; _ZN8CPickups11NumMessagesE_ptr
31FE00:  LDR             R2, [R2]; CPickups::NumMessages ...
31FE02:  LDRH            R2, [R2]; CPickups::NumMessages
31FE04:  CMP             R2, #0xF
31FE06:  BHI.W           loc_320144
31FE0A:  VLDR            S0, [R0]
31FE0E:  VLDR            S4, [R1]
31FE12:  VLDR            S2, [R0,#4]
31FE16:  VLDR            S6, [R1,#4]
31FE1A:  VSUB.F32        S4, S4, S0
31FE1E:  VSUB.F32        S6, S6, S2
31FE22:  VMUL.F32        S4, S4, S4
31FE26:  VMUL.F32        S6, S6, S6
31FE2A:  VADD.F32        S4, S4, S6
31FE2E:  VSQRT.F32       S16, S4
31FE32:  VMOV.F32        S4, #14.0
31FE36:  VCMPE.F32       S16, S4
31FE3A:  VMRS            APSR_nzcv, FPSCR
31FE3E:  BGE.W           loc_320144
31FE42:  VSTR            S2, [SP,#0x90+var_40]
31FE46:  ADD             R1, SP, #0x90+var_38
31FE48:  VSTR            S0, [SP,#0x90+var_44]
31FE4C:  ADD             R2, SP, #0x90+var_48
31FE4E:  VLDR            S0, [R0,#8]
31FE52:  MOVS            R0, #1
31FE54:  VLDR            S4, =0.7
31FE58:  ADD             R3, SP, #0x90+var_4C
31FE5A:  VADD.F32        S0, S0, S4
31FE5E:  VSTR            S0, [SP,#0x90+var_3C]
31FE62:  STRD.W          R0, R0, [SP,#0x90+var_90]
31FE66:  ADD             R0, SP, #0x90+var_44
31FE68:  BLX             j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
31FE6C:  CMP             R0, #1
31FE6E:  BNE.W           loc_320144
31FE72:  LDR.W           R0, =(_ZN8CPickups11NumMessagesE_ptr - 0x31FE7E)
31FE76:  LDR.W           R1, =(_ZN8CPickups9aMessagesE_ptr - 0x31FE84)
31FE7A:  ADD             R0, PC; _ZN8CPickups11NumMessagesE_ptr
31FE7C:  LDR.W           R2, =(MI_PICKUP_BODYARMOUR_ptr - 0x31FE8A)
31FE80:  ADD             R1, PC; _ZN8CPickups9aMessagesE_ptr
31FE82:  LDR             R3, [SP,#0x90+var_38]
31FE84:  LDR             R0, [R0]; CPickups::NumMessages ...
31FE86:  ADD             R2, PC; MI_PICKUP_BODYARMOUR_ptr
31FE88:  LDR             R1, [R1]; CPickups::aMessages ...
31FE8A:  LDR             R2, [R2]; MI_PICKUP_BODYARMOUR
31FE8C:  LDRH            R0, [R0]; CPickups::NumMessages
31FE8E:  ADD.W           R0, R0, R0,LSL#3
31FE92:  STR.W           R3, [R1,R0,LSL#2]
31FE96:  ADD.W           R0, R1, R0,LSL#2
31FE9A:  LDR             R3, [SP,#0x90+var_34]
31FE9C:  STR             R3, [R0,#4]
31FE9E:  LDR             R3, [SP,#0x90+var_4C]
31FEA0:  LDR             R1, [SP,#0x90+var_48]
31FEA2:  STRD.W          R1, R3, [R0,#0xC]
31FEA6:  LDRSH.W         R0, [R4,#0x26]
31FEAA:  LDRH            R1, [R2]
31FEAC:  CMP             R1, R0
31FEAE:  BNE             loc_31FEBE
31FEB0:  MOVS            R0, #0x30 ; '0'
31FEB2:  B               loc_31FED0
31FEB4:  LDRH.W          R0, [R4,#0x142]
31FEB8:  CMP             R0, #0
31FEBA:  BNE             loc_31FDDA
31FEBC:  B               loc_320144
31FEBE:  LDR.W           R1, =(MI_PICKUP_HEALTH_ptr - 0x31FEC6)
31FEC2:  ADD             R1, PC; MI_PICKUP_HEALTH_ptr
31FEC4:  LDR             R1, [R1]; MI_PICKUP_HEALTH
31FEC6:  LDRH            R1, [R1]
31FEC8:  CMP             R1, R0
31FECA:  BNE.W           loc_32001C
31FECE:  MOVS            R0, #0x2F ; '/'
31FED0:  VMOV.F32        S0, #-14.0
31FED4:  LDR.W           R1, =(_ZN8CPickups11NumMessagesE_ptr - 0x31FEE4)
31FED8:  VMOV.F32        S2, #1.0
31FEDC:  LDR.W           R2, =(_ZN8CPickups9aMessagesE_ptr - 0x31FEEA)
31FEE0:  ADD             R1, PC; _ZN8CPickups11NumMessagesE_ptr
31FEE2:  LDR.W           R5, =(unk_60FEF8 - 0x31FEF2)
31FEE6:  ADD             R2, PC; _ZN8CPickups9aMessagesE_ptr
31FEE8:  LDR.W           R12, =(MI_PICKUP_PROPERTY_ptr - 0x31FEF6)
31FEEC:  LDR             R1, [R1]; CPickups::NumMessages ...
31FEEE:  ADD             R5, PC; unk_60FEF8
31FEF0:  LDR             R2, [R2]; CPickups::aMessages ...
31FEF2:  ADD             R12, PC; MI_PICKUP_PROPERTY_ptr
31FEF4:  LDRH.W          R6, [R5,R8,LSL#3]
31FEF8:  ADD.W           R5, R5, R8,LSL#3
31FEFC:  VDIV.F32        S0, S16, S0
31FF00:  LDRH            R1, [R1]; CPickups::NumMessages
31FF02:  LDRB            R5, [R5,#2]
31FF04:  ADD.W           LR, R1, R1,LSL#3
31FF08:  ADD.W           R2, R2, LR,LSL#2
31FF0C:  LDRB.W          R3, [R2,#0x18]!
31FF10:  STR.W           R0, [R2,#-0x10]
31FF14:  STRH.W          R6, [R2,#-4]
31FF18:  VADD.F32        S0, S0, S2
31FF1C:  VLDR            S2, =255.0
31FF20:  VMUL.F32        S0, S0, S2
31FF24:  VCVT.U32.F32    S0, S0
31FF28:  STRB.W          R5, [R2,#-2]
31FF2C:  VMOV            R0, S0
31FF30:  STRB.W          R0, [R2,#-1]
31FF34:  BIC.W           R0, R3, #1
31FF38:  LDR.W           R5, [R4,#0x144]
31FF3C:  TST.W           R5, #8
31FF40:  LDR.W           R5, [R12]; MI_PICKUP_PROPERTY
31FF44:  IT NE
31FF46:  ORRNE.W         R0, R3, #1
31FF4A:  STRB            R0, [R2]
31FF4C:  LDRB.W          R3, [R4,#0x141]
31FF50:  STRB            R3, [R2,#1]
31FF52:  LDRH.W          R3, [R4,#0x142]
31FF56:  ADD.W           R3, R3, R3,LSL#2
31FF5A:  STR             R3, [R2,#4]
31FF5C:  LDRSH.W         R6, [R4,#0x26]
31FF60:  LDRH            R3, [R5]
31FF62:  CMP             R6, R3
31FF64:  BNE             loc_31FFB8
31FF66:  LDR.W           R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31FF7A)
31FF6A:  MOV.W           R1, #0xFFFFFFFF
31FF6E:  LDR.W           R2, =(_ZN8CPickups8aPickUpsE_ptr - 0x31FF7C)
31FF72:  MOVW            R3, #0x26B
31FF76:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31FF78:  ADD             R2, PC; _ZN8CPickups8aPickUpsE_ptr
31FF7A:  LDR             R0, [R0]; CPickups::aPickUps ...
31FF7C:  LDR             R2, [R2]; CPickups::aPickUps ...
31FF7E:  LDRB            R6, [R0,#0x1C]
31FF80:  CBZ             R6, loc_31FF88
31FF82:  LDR             R6, [R0,#4]
31FF84:  CMP             R6, R4
31FF86:  BEQ             loc_31FF92
31FF88:  ADDS            R1, #1
31FF8A:  ADDS            R0, #0x20 ; ' '
31FF8C:  CMP             R1, R3
31FF8E:  BLT             loc_31FF7E
31FF90:  MOV             R0, R2
31FF92:  LDRB            R0, [R0,#0x1D]
31FF94:  UBFX.W          R0, R0, #4, #3; this
31FF98:  CMP             R0, #2
31FF9A:  BEQ             loc_320086
31FF9C:  CMP             R0, #1
31FF9E:  BNE             loc_32008C
31FFA0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
31FFA4:  LDR.W           R2, =(aProp3x - 0x31FFB2); "PROP_3X"
31FFA8:  CMP             R0, #0
31FFAA:  LDR.W           R1, =(aProp3 - 0x31FFB4); "PROP_3"
31FFAE:  ADD             R2, PC; "PROP_3X"
31FFB0:  ADD             R1, PC; "PROP_3"
31FFB2:  IT NE
31FFB4:  MOVNE           R1, R2
31FFB6:  B               loc_320090
31FFB8:  LDR.W           R3, =(MI_PICKUP_PROPERTY_FORSALE_ptr - 0x31FFC0)
31FFBC:  ADD             R3, PC; MI_PICKUP_PROPERTY_FORSALE_ptr
31FFBE:  LDR             R3, [R3]; MI_PICKUP_PROPERTY_FORSALE
31FFC0:  LDRH            R3, [R3]
31FFC2:  CMP             R6, R3
31FFC4:  BNE             loc_320070
31FFC6:  LDR.W           R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31FFDA)
31FFCA:  MOV.W           R1, #0xFFFFFFFF
31FFCE:  LDR.W           R2, =(_ZN8CPickups8aPickUpsE_ptr - 0x31FFDC)
31FFD2:  MOVW            R3, #0x26B
31FFD6:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31FFD8:  ADD             R2, PC; _ZN8CPickups8aPickUpsE_ptr
31FFDA:  LDR             R0, [R0]; CPickups::aPickUps ...
31FFDC:  LDR             R2, [R2]; CPickups::aPickUps ...
31FFDE:  LDRB            R6, [R0,#0x1C]
31FFE0:  CBZ             R6, loc_31FFE8
31FFE2:  LDR             R6, [R0,#4]
31FFE4:  CMP             R6, R4
31FFE6:  BEQ             loc_31FFF2
31FFE8:  ADDS            R1, #1
31FFEA:  ADDS            R0, #0x20 ; ' '
31FFEC:  CMP             R1, R3
31FFEE:  BLT             loc_31FFDE
31FFF0:  MOV             R0, R2
31FFF2:  LDRB            R0, [R0,#0x1D]
31FFF4:  UBFX.W          R0, R0, #4, #3; this
31FFF8:  CMP             R0, #2
31FFFA:  BEQ.W           loc_320106
31FFFE:  CMP             R0, #1
320000:  BNE.W           loc_32010C
320004:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
320008:  LDR.W           R2, =(aProp3x - 0x320016); "PROP_3X"
32000C:  CMP             R0, #0
32000E:  LDR.W           R1, =(aProp3 - 0x320018); "PROP_3"
320012:  ADD             R2, PC; "PROP_3X"
320014:  ADD             R1, PC; "PROP_3"
320016:  IT NE
320018:  MOVNE           R1, R2
32001A:  B               loc_320110
32001C:  LDR             R1, =(MI_PICKUP_ADRENALINE_ptr - 0x320022)
32001E:  ADD             R1, PC; MI_PICKUP_ADRENALINE_ptr
320020:  LDR             R1, [R1]; MI_PICKUP_ADRENALINE
320022:  LDRH            R1, [R1]
320024:  CMP             R1, R0
320026:  BEQ.W           loc_31FEB0
32002A:  ADDS            R1, R0, #1
32002C:  BEQ.W           loc_3202E0
320030:  CMP.W           R0, #0x172
320034:  BEQ.W           loc_31FECE
320038:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x32003E)
32003A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
32003C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
32003E:  LDR.W           R5, [R1,R0,LSL#2]
320042:  LDR             R0, [R5]
320044:  LDR             R1, [R0,#0x14]
320046:  MOV             R0, R5
320048:  BLX             R1
32004A:  CMP             R0, #4
32004C:  BNE.W           loc_3202E0
320050:  LDR             R0, [R5,#0x3C]
320052:  B               loc_31FED0
320054:  DCFS 0.0007666
320058:  DCFS 0.000015259
32005C:  DCFS 50.0
320060:  DCFS 0.7
320064:  DCFS 1.7
320068:  DCFS 3.7
32006C:  DCFS 255.0
320070:  LDR             R3, =(_ZN8CPickups9aMessagesE_ptr - 0x32007C)
320072:  MOVS            R6, #0
320074:  AND.W           R0, R0, #0xFD
320078:  ADD             R3, PC; _ZN8CPickups9aMessagesE_ptr
32007A:  LDR             R3, [R3]; CPickups::aMessages ...
32007C:  ADD.W           R3, R3, LR,LSL#2
320080:  STR             R6, [R3,#0x20]
320082:  STRB            R0, [R2]
320084:  B               loc_32013A
320086:  LDR             R1, =(aProp4 - 0x32008C); "PROP_4"
320088:  ADD             R1, PC; "PROP_4"
32008A:  B               loc_320090
32008C:  LDR             R1, =(aFeszCa - 0x320092); "FESZ_CA"
32008E:  ADD             R1, PC; "FESZ_CA"
320090:  LDR             R0, =(TheText_ptr - 0x320096)
320092:  ADD             R0, PC; TheText_ptr
320094:  LDR             R0, [R0]; TheText ; this
320096:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
32009A:  LDR             R1, =(_ZN8CPickups11NumMessagesE_ptr - 0x3200A2)
32009C:  LDR             R2, =(_ZN8CPickups9aMessagesE_ptr - 0x3200A4)
32009E:  ADD             R1, PC; _ZN8CPickups11NumMessagesE_ptr
3200A0:  ADD             R2, PC; _ZN8CPickups9aMessagesE_ptr
3200A2:  LDR             R1, [R1]; CPickups::NumMessages ...
3200A4:  LDR             R2, [R2]; CPickups::aMessages ...
3200A6:  LDRH            R1, [R1]; CPickups::NumMessages
3200A8:  ADD.W           R3, R1, R1,LSL#3
3200AC:  ADD.W           R2, R2, R3,LSL#2
3200B0:  LDRB            R3, [R2,#0x18]
3200B2:  STR             R0, [R2,#0x20]
3200B4:  AND.W           R0, R3, #0xFD
3200B8:  B               loc_320138
3200BA:  LDR             R2, =(MI_PICKUP_HEALTH_ptr - 0x3200C0)
3200BC:  ADD             R2, PC; MI_PICKUP_HEALTH_ptr
3200BE:  LDR             R2, [R2]; MI_PICKUP_HEALTH
3200C0:  LDRH            R2, [R2]
3200C2:  CMP             R1, R2
3200C4:  BEQ.W           loc_31FD82
3200C8:  LDR             R2, =(MI_PICKUP_BONUS_ptr - 0x3200CE)
3200CA:  ADD             R2, PC; MI_PICKUP_BONUS_ptr
3200CC:  LDR             R2, [R2]; MI_PICKUP_BONUS
3200CE:  LDRH            R2, [R2]
3200D0:  CMP             R1, R2
3200D2:  BEQ.W           loc_31FD82
3200D6:  LDR             R2, =(MI_PICKUP_PROPERTY_ptr - 0x3200DC)
3200D8:  ADD             R2, PC; MI_PICKUP_PROPERTY_ptr
3200DA:  LDR             R2, [R2]; MI_PICKUP_PROPERTY
3200DC:  LDRH            R2, [R2]
3200DE:  CMP             R1, R2
3200E0:  BEQ.W           loc_31FDC8
3200E4:  LDR             R2, =(MI_PICKUP_PROPERTY_FORSALE_ptr - 0x3200EA)
3200E6:  ADD             R2, PC; MI_PICKUP_PROPERTY_FORSALE_ptr
3200E8:  LDR             R2, [R2]; MI_PICKUP_PROPERTY_FORSALE
3200EA:  LDRH            R2, [R2]
3200EC:  CMP             R1, R2
3200EE:  BEQ.W           loc_31FD82
3200F2:  LDR             R2, =(MI_PICKUP_REVENUE_ptr - 0x3200F8)
3200F4:  ADD             R2, PC; MI_PICKUP_REVENUE_ptr
3200F6:  LDR             R2, [R2]; MI_PICKUP_REVENUE
3200F8:  LDRH            R2, [R2]
3200FA:  CMP             R1, R2
3200FC:  BNE.W           loc_3202E4
320100:  MOV.W           R8, #0x35 ; '5'
320104:  B               loc_31FDCC
320106:  LDR             R1, =(aProp4 - 0x32010C); "PROP_4"
320108:  ADD             R1, PC; "PROP_4"
32010A:  B               loc_320110
32010C:  LDR             R1, =(aFeszCa - 0x320112); "FESZ_CA"
32010E:  ADD             R1, PC; "FESZ_CA"
320110:  LDR             R0, =(TheText_ptr - 0x320116)
320112:  ADD             R0, PC; TheText_ptr
320114:  LDR             R0, [R0]; TheText ; this
320116:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
32011A:  LDR             R1, =(_ZN8CPickups11NumMessagesE_ptr - 0x320122)
32011C:  LDR             R2, =(_ZN8CPickups9aMessagesE_ptr - 0x320124)
32011E:  ADD             R1, PC; _ZN8CPickups11NumMessagesE_ptr
320120:  ADD             R2, PC; _ZN8CPickups9aMessagesE_ptr
320122:  LDR             R1, [R1]; CPickups::NumMessages ...
320124:  LDR             R2, [R2]; CPickups::aMessages ...
320126:  LDRH            R1, [R1]; CPickups::NumMessages
320128:  ADD.W           R3, R1, R1,LSL#3
32012C:  ADD.W           R2, R2, R3,LSL#2
320130:  LDRB            R3, [R2,#0x18]
320132:  STR             R0, [R2,#0x20]
320134:  ORR.W           R0, R3, #2
320138:  STRB            R0, [R2,#0x18]
32013A:  LDR             R0, =(_ZN8CPickups11NumMessagesE_ptr - 0x320142)
32013C:  ADDS            R1, #1
32013E:  ADD             R0, PC; _ZN8CPickups11NumMessagesE_ptr
320140:  LDR             R0, [R0]; CPickups::NumMessages ...
320142:  STRH            R1, [R0]; CPickups::NumMessages
320144:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x320152)
320146:  VMOV.F32        S16, #1.0
32014A:  LDRSH.W         R1, [R4,#0x26]
32014E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
320150:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
320152:  LDR.W           R0, [R0,R1,LSL#2]
320156:  LDR             R0, [R0,#0x2C]
320158:  VLDR            S2, [R0,#4]
32015C:  VLDR            S8, [R0,#0x10]
320160:  VLDR            S4, [R0,#8]
320164:  VLDR            S10, [R0,#0x14]
320168:  VSUB.F32        S2, S8, S2
32016C:  VLDR            S0, [R0]
320170:  VSUB.F32        S4, S10, S4
320174:  VLDR            S6, [R0,#0xC]
320178:  UXTH            R0, R1
32017A:  VSUB.F32        S6, S6, S0
32017E:  VLDR            S0, =1.2
320182:  VMAX.F32        D16, D1, D2
320186:  VMAX.F32        D1, D3, D16
32018A:  VDIV.F32        S2, S0, S2
32018E:  VCMPE.F32       S2, S16
320192:  VMRS            APSR_nzcv, FPSCR
320196:  BLT             loc_3201B0
320198:  VMOV.F32        S4, #-1.0
32019C:  VMOV.F32        S6, #1.0
3201A0:  VADD.F32        S2, S2, S4
3201A4:  VLDR            S4, =0.6
3201A8:  VMUL.F32        S2, S2, S4
3201AC:  VADD.F32        S16, S2, S6
3201B0:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3201BE)
3201B2:  CMP.W           R0, #0x16A
3201B6:  VLDR            S4, =0.0030566
3201BA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3201BC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3201BE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3201C0:  BFC.W           R1, #0xB, #0x15
3201C4:  VMOV            S2, R1
3201C8:  VCVT.F32.U32    S2, S2
3201CC:  IT EQ
3201CE:  VMOVEQ.F32      S16, S0
3201D2:  VMUL.F32        S2, S2, S4
3201D6:  VMOV            R5, S2
3201DA:  MOV             R0, R5; x
3201DC:  BLX             cosf
3201E0:  MOV             R6, R0
3201E2:  MOV             R0, R5; x
3201E4:  BLX             sinf
3201E8:  VMOV            S0, R6
3201EC:  VMOV            S20, R0
3201F0:  LDR             R0, [R4,#0x14]
3201F2:  VMUL.F32        S18, S0, S16
3201F6:  CMP             R0, #0
3201F8:  BNE             loc_32020A
3201FA:  MOV             R0, R4; this
3201FC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320200:  LDR             R1, [R4,#0x14]; CMatrix *
320202:  ADDS            R0, R4, #4; this
320204:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320208:  LDR             R0, [R4,#0x14]
32020A:  VMUL.F32        S20, S16, S20
32020E:  VSTR            S18, [R0]
320212:  LDR             R0, [R4,#0x14]
320214:  CBNZ            R0, loc_320226
320216:  MOV             R0, R4; this
320218:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
32021C:  LDR             R1, [R4,#0x14]; CMatrix *
32021E:  ADDS            R0, R4, #4; this
320220:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320224:  LDR             R0, [R4,#0x14]
320226:  VSTR            S20, [R0,#4]
32022A:  LDR             R0, [R4,#0x14]
32022C:  CBNZ            R0, loc_32023E
32022E:  MOV             R0, R4; this
320230:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320234:  LDR             R1, [R4,#0x14]; CMatrix *
320236:  ADDS            R0, R4, #4; this
320238:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
32023C:  LDR             R0, [R4,#0x14]
32023E:  VNEG.F32        S20, S20
320242:  MOVS            R1, #0
320244:  STR             R1, [R0,#8]
320246:  LDR             R0, [R4,#0x14]
320248:  CBNZ            R0, loc_32025A
32024A:  MOV             R0, R4; this
32024C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320250:  LDR             R1, [R4,#0x14]; CMatrix *
320252:  ADDS            R0, R4, #4; this
320254:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320258:  LDR             R0, [R4,#0x14]
32025A:  VSTR            S20, [R0,#0x10]
32025E:  LDR             R0, [R4,#0x14]
320260:  CBNZ            R0, loc_320272
320262:  MOV             R0, R4; this
320264:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320268:  LDR             R1, [R4,#0x14]; CMatrix *
32026A:  ADDS            R0, R4, #4; this
32026C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320270:  LDR             R0, [R4,#0x14]
320272:  VSTR            S18, [R0,#0x14]
320276:  LDR             R0, [R4,#0x14]
320278:  CBNZ            R0, loc_32028A
32027A:  MOV             R0, R4; this
32027C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320280:  LDR             R1, [R4,#0x14]; CMatrix *
320282:  ADDS            R0, R4, #4; this
320284:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320288:  LDR             R0, [R4,#0x14]
32028A:  MOVS            R5, #0
32028C:  STR             R5, [R0,#0x18]
32028E:  LDR             R0, [R4,#0x14]
320290:  CBNZ            R0, loc_3202A2
320292:  MOV             R0, R4; this
320294:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320298:  LDR             R1, [R4,#0x14]; CMatrix *
32029A:  ADDS            R0, R4, #4; this
32029C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3202A0:  LDR             R0, [R4,#0x14]
3202A2:  STR             R5, [R0,#0x20]
3202A4:  LDR             R0, [R4,#0x14]
3202A6:  CBNZ            R0, loc_3202B8
3202A8:  MOV             R0, R4; this
3202AA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3202AE:  LDR             R1, [R4,#0x14]; CMatrix *
3202B0:  ADDS            R0, R4, #4; this
3202B2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3202B6:  LDR             R0, [R4,#0x14]
3202B8:  MOVS            R1, #0
3202BA:  STR             R1, [R0,#0x24]
3202BC:  LDR             R0, [R4,#0x14]
3202BE:  CBNZ            R0, loc_3202D0
3202C0:  MOV             R0, R4; this
3202C2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3202C6:  LDR             R1, [R4,#0x14]; CMatrix *
3202C8:  ADDS            R0, R4, #4; this
3202CA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3202CE:  LDR             R0, [R4,#0x14]
3202D0:  VSTR            S16, [R0,#0x28]
3202D4:  ADD             SP, SP, #0x68 ; 'h'
3202D6:  VPOP            {D8-D10}
3202DA:  POP.W           {R8}
3202DE:  POP             {R4-R7,PC}
3202E0:  MOVS            R0, #0
3202E2:  B               loc_31FED0
3202E4:  LDR             R2, =(MI_PICKUP_SAVEGAME_ptr - 0x3202EA)
3202E6:  ADD             R2, PC; MI_PICKUP_SAVEGAME_ptr
3202E8:  LDR             R2, [R2]; MI_PICKUP_SAVEGAME
3202EA:  LDRH            R2, [R2]
3202EC:  CMP             R1, R2
3202EE:  BEQ.W           loc_31FDC8
3202F2:  LDR             R2, =(MI_PICKUP_CLOTHES_ptr - 0x3202F8)
3202F4:  ADD             R2, PC; MI_PICKUP_CLOTHES_ptr
3202F6:  LDR             R2, [R2]; MI_PICKUP_CLOTHES
3202F8:  LDRH            R2, [R2]
3202FA:  CMP             R1, R2
3202FC:  BEQ.W           loc_31FD82
320300:  ADDS            R0, R1, #1
320302:  BEQ             loc_320328
320304:  CMP.W           R1, #0x172
320308:  BNE             loc_32030E
32030A:  MOVS            R1, #0x2F ; '/'
32030C:  B               loc_32032A
32030E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x320314)
320310:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
320312:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
320314:  LDR.W           R5, [R0,R1,LSL#2]
320318:  LDR             R0, [R5]
32031A:  LDR             R1, [R0,#0x14]
32031C:  MOV             R0, R5
32031E:  BLX             R1
320320:  CMP             R0, #4
320322:  BNE             loc_320328
320324:  LDR             R1, [R5,#0x3C]
320326:  B               loc_32032A
320328:  MOVS            R1, #0
32032A:  LDR             R0, [R6]
32032C:  SXTH.W          R8, R1
320330:  B               loc_31FDCC
