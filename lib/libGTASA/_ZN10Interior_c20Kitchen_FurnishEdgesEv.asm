; =========================================================
; Game Engine Function: _ZN10Interior_c20Kitchen_FurnishEdgesEv
; Address            : 0x44AA04 - 0x44B1C8
; =========================================================

44AA04:  PUSH            {R4-R7,LR}
44AA06:  ADD             R7, SP, #0xC
44AA08:  PUSH.W          {R8-R11}
44AA0C:  SUB             SP, SP, #4
44AA0E:  VPUSH           {D8-D10}
44AA12:  SUB.W           SP, SP, #0x258
44AA16:  MOV             R10, R0
44AA18:  LDR.W           R1, =(g_furnitureMan_ptr - 0x44AA24)
44AA1C:  LDR.W           R0, [R10,#0x14]
44AA20:  ADD             R1, PC; g_furnitureMan_ptr
44AA22:  LDRSB.W         R3, [R10,#0x791]; __int16
44AA26:  LDRB.W          R9, [R0,#2]
44AA2A:  LDRB            R4, [R0,#3]
44AA2C:  LDRB            R2, [R0,#0x1F]
44AA2E:  LDR             R0, [R1]; g_furnitureMan ; this
44AA30:  MOVS            R1, #4; int
44AA32:  STR             R2, [SP,#0x290+var_290]; unsigned __int8
44AA34:  MOVS            R2, #7; int
44AA36:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44AA3A:  ADD.W           R11, SP, #0x290+var_3C
44AA3E:  MOVS            R6, #0
44AA40:  MOV.W           R8, #1
44AA44:  MOV             R5, R0
44AA46:  STRD.W          R6, R8, [SP,#0x290+var_290]; float
44AA4A:  ADD             R0, SP, #0x290+var_40
44AA4C:  STRD.W          R8, R11, [SP,#0x290+var_288]; int
44AA50:  MOV             R1, R5; int
44AA52:  STRD.W          R0, R6, [SP,#0x290+var_280]; int
44AA56:  MOV             R0, R10; int
44AA58:  STR             R4, [SP,#0x290+var_25C]
44AA5A:  SUBS            R4, #1
44AA5C:  MOVS            R2, #0; int
44AA5E:  MOV             R3, R4; int
44AA60:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44AA64:  STR             R0, [SP,#0x290+var_258]
44AA66:  ADD             R0, SP, #0x290+var_40
44AA68:  STRD.W          R6, R8, [SP,#0x290+var_290]; float
44AA6C:  MOV             R1, R5; int
44AA6E:  STRD.W          R6, R11, [SP,#0x290+var_288]; int
44AA72:  MOV             R3, R4; int
44AA74:  STRD.W          R0, R6, [SP,#0x290+var_280]; int
44AA78:  MOV             R0, R10; int
44AA7A:  STR.W           R9, [SP,#0x290+var_260]
44AA7E:  SUB.W           R9, R9, #1
44AA82:  STR             R3, [SP,#0x290+var_24C]
44AA84:  MOV             R2, R9; int
44AA86:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44AA8A:  LDR.W           R1, [R10,#0x14]
44AA8E:  MOVS            R5, #0
44AA90:  LDRSB.W         R2, [R1,#0xD]
44AA94:  LDRSB.W         R3, [R1,#7]
44AA98:  CMP             R3, R2
44AA9A:  IT GT
44AA9C:  MOVGT           R2, R3
44AA9E:  MOVS            R3, #0
44AAA0:  CMP             R2, #0
44AAA2:  IT GT
44AAA4:  UXTBGT          R3, R2
44AAA6:  LDRSB.W         R4, [R1,#0xF]
44AAAA:  LDRSB.W         R1, [R1,#9]
44AAAE:  CMP             R1, R4
44AAB0:  IT GT
44AAB2:  MOVGT           R4, R1
44AAB4:  CMP             R4, #0
44AAB6:  IT GT
44AAB8:  MOVGT           R5, R3
44AABA:  CMP             R2, #0
44AABC:  IT LE
44AABE:  MOVLE           R5, R6
44AAC0:  CMP             R4, #0
44AAC2:  ITE LE
44AAC4:  MOVLE           R5, R3
44AAC6:  UXTBGT          R6, R4
44AAC8:  CMP             R2, #0
44AACA:  STR             R0, [SP,#0x290+var_264]
44AACC:  ITT LE
44AACE:  SXTBLE          R0, R4
44AAD0:  CMPLE           R0, #0
44AAD2:  BGT             loc_44AB1E
44AAD4:  BLX             rand
44AAD8:  UXTH            R0, R0
44AADA:  VMOV            S0, R0
44AADE:  VCVT.F32.S32    S16, S0
44AAE2:  BLX             rand
44AAE6:  UXTH            R0, R0
44AAE8:  VLDR            S2, =0.000015259
44AAEC:  VMOV            S0, R0
44AAF0:  VMUL.F32        S6, S16, S2
44AAF4:  VCVT.F32.S32    S0, S0
44AAF8:  LDR             R0, [SP,#0x290+var_24C]
44AAFA:  VMOV            S4, R0
44AAFE:  VCVT.F32.S32    S4, S4
44AB02:  VMUL.F32        S0, S0, S2
44AB06:  VMUL.F32        S2, S6, S4
44AB0A:  VMUL.F32        S0, S0, S4
44AB0E:  VCVT.S32.F32    S2, S2
44AB12:  VCVT.S32.F32    S0, S0
44AB16:  VMOV            R5, S2
44AB1A:  VMOV            R6, S0
44AB1E:  CMP             R5, #1
44AB20:  BLT             loc_44AB38
44AB22:  MOVS            R1, #2
44AB24:  MOVS            R0, #0
44AB26:  STRD.W          R5, R1, [SP,#0x290+var_290]; int
44AB2A:  MOVS            R1, #0; int
44AB2C:  STR             R0, [SP,#0x290+var_288]; unsigned __int8
44AB2E:  MOV             R0, R10; this
44AB30:  MOVS            R2, #0; int
44AB32:  MOVS            R3, #1; int
44AB34:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44AB38:  CMP             R6, #1
44AB3A:  BLT             loc_44AB52
44AB3C:  MOVS            R1, #2
44AB3E:  MOVS            R0, #0
44AB40:  STRD.W          R6, R1, [SP,#0x290+var_290]; int
44AB44:  MOV             R1, R9; int
44AB46:  STR             R0, [SP,#0x290+var_288]; unsigned __int8
44AB48:  MOV             R0, R10; this
44AB4A:  MOVS            R2, #0; int
44AB4C:  MOVS            R3, #1; int
44AB4E:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44AB52:  LDR.W           R0, =(g_furnitureMan_ptr - 0x44AB62)
44AB56:  MOVS            R2, #0; int
44AB58:  LDR.W           R1, [R10,#0x14]
44AB5C:  MOV             R4, R10
44AB5E:  ADD             R0, PC; g_furnitureMan_ptr
44AB60:  LDRSB.W         R3, [R10,#0x791]; __int16
44AB64:  MOV.W           R10, #0
44AB68:  LDR.W           R8, [R0]; g_furnitureMan
44AB6C:  LDRB            R1, [R1,#0x1F]
44AB6E:  STR             R1, [SP,#0x290+var_290]; unsigned __int8
44AB70:  MOVS            R1, #4; int
44AB72:  MOV             R0, R8; this
44AB74:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44AB78:  MOV             R1, R0; int
44AB7A:  MOV.W           R11, #1
44AB7E:  ADD             R0, SP, #0x290+var_3C
44AB80:  STRD.W          R10, R11, [SP,#0x290+var_290]; float
44AB84:  STR.W           R11, [SP,#0x290+var_288]; int
44AB88:  MOVS            R2, #0; int
44AB8A:  STR             R0, [SP,#0x290+var_284]; int
44AB8C:  ADD             R0, SP, #0x290+var_40
44AB8E:  STRD.W          R0, R10, [SP,#0x290+var_280]; int
44AB92:  MOV             R0, R4; int
44AB94:  MOV             R3, R5; int
44AB96:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44AB9A:  LDR             R0, [R4,#0x14]
44AB9C:  MOVS            R1, #4; int
44AB9E:  LDRSB.W         R3, [R4,#0x791]; __int16
44ABA2:  MOVS            R2, #2; int
44ABA4:  LDRB            R0, [R0,#0x1F]
44ABA6:  STR             R0, [SP,#0x290+var_290]; unsigned __int8
44ABA8:  MOV             R0, R8; this
44ABAA:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44ABAE:  MOV             R1, R0; int
44ABB0:  MOVS            R0, #3
44ABB2:  STRD.W          R10, R11, [SP,#0x290+var_290]; float
44ABB6:  MOV             R2, R9; int
44ABB8:  STR             R0, [SP,#0x290+var_288]; int
44ABBA:  ADD             R0, SP, #0x290+var_3C
44ABBC:  STR             R0, [SP,#0x290+var_284]; int
44ABBE:  ADD             R0, SP, #0x290+var_40
44ABC0:  STRD.W          R0, R10, [SP,#0x290+var_280]; int
44ABC4:  MOV             R0, R4; int
44ABC6:  MOV             R3, R6; int
44ABC8:  STR.W           R9, [SP,#0x290+var_254]
44ABCC:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44ABD0:  LDR             R0, [R4,#0x14]
44ABD2:  ADD             R1, SP, #0x290+var_48
44ABD4:  LDRSB.W         R3, [R4,#0x791]; int
44ABD8:  MOVS            R2, #3; int
44ABDA:  LDRSB.W         R0, [R0,#0x10]
44ABDE:  STR             R1, [SP,#0x290+var_278]; int *
44ABE0:  ADD             R1, SP, #0x290+var_44
44ABE2:  STRD.W          R10, R10, [SP,#0x290+var_26C]; int *
44ABE6:  STRD.W          R10, R10, [SP,#0x290+var_274]; int *
44ABEA:  STRD.W          R10, R1, [SP,#0x290+var_280]; int
44ABEE:  MOVS            R1, #4; int
44ABF0:  STRD.W          R10, R0, [SP,#0x290+var_288]; int
44ABF4:  MOV             R0, R4; this
44ABF6:  STRD.W          R10, R11, [SP,#0x290+var_290]; float
44ABFA:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44ABFE:  CBZ             R0, loc_44AC38
44AC00:  LDR             R0, [SP,#0x290+var_48]
44AC02:  VMOV.F32        S0, #-1.5
44AC06:  ADDS            R0, #1
44AC08:  STR             R0, [SP,#0x290+var_48]
44AC0A:  LDR             R1, [R4,#0x14]
44AC0C:  VMOV            S4, R0
44AC10:  MOVS            R0, #2
44AC12:  LDRB            R1, [R1,#3]
44AC14:  VMOV            S2, R1
44AC18:  MOVS            R1, #5; int
44AC1A:  VCVT.F32.U32    S2, S2
44AC1E:  VCVT.F32.S32    S4, S4
44AC22:  STRD.W          R0, R10, [SP,#0x290+var_290]; int
44AC26:  MOV             R0, R4; this
44AC28:  VADD.F32        S0, S2, S0
44AC2C:  VMOV            R2, S4; float
44AC30:  VMOV            R3, S0; float
44AC34:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44AC38:  LDRSB.W         R3, [R4,#0x791]; int
44AC3C:  MOV.W           R8, #0xFFFFFFFF
44AC40:  ADD.W           R9, SP, #0x290+var_44
44AC44:  MOV             R0, R4; this
44AC46:  MOVS            R1, #4; int
44AC48:  MOVS            R2, #5; int
44AC4A:  STRD.W          R10, R10, [SP,#0x290+var_270]; int *
44AC4E:  STR.W           R10, [SP,#0x290+var_268]; int *
44AC52:  STRD.W          R10, R11, [SP,#0x290+var_290]; float
44AC56:  STRD.W          R8, R8, [SP,#0x290+var_288]; int
44AC5A:  STR.W           R10, [SP,#0x290+var_280]; int
44AC5E:  STR.W           R9, [SP,#0x290+var_27C]; int *
44AC62:  ADD.W           R9, SP, #0x290+var_48
44AC66:  STRD.W          R9, R10, [SP,#0x290+var_278]; int *
44AC6A:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44AC6E:  LDRSB.W         R3, [R4,#0x791]; int
44AC72:  ADD             R0, SP, #0x290+var_48
44AC74:  STRD.W          R10, R10, [SP,#0x290+var_270]; int *
44AC78:  ADD.W           R9, SP, #0x290+var_44
44AC7C:  STR.W           R10, [SP,#0x290+var_268]; int *
44AC80:  MOVS            R1, #4; int
44AC82:  STRD.W          R10, R11, [SP,#0x290+var_290]; float
44AC86:  MOVS            R2, #4; int
44AC88:  STRD.W          R8, R8, [SP,#0x290+var_288]; int
44AC8C:  STR.W           R10, [SP,#0x290+var_280]; int
44AC90:  STR.W           R9, [SP,#0x290+var_27C]; int *
44AC94:  STRD.W          R0, R10, [SP,#0x290+var_278]; int *
44AC98:  MOV             R0, R4; this
44AC9A:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44AC9E:  LDRSB.W         R3, [R4,#0x791]; int
44ACA2:  ADD             R0, SP, #0x290+var_48
44ACA4:  STRD.W          R10, R10, [SP,#0x290+var_270]; int *
44ACA8:  MOVS            R1, #4; int
44ACAA:  STR.W           R10, [SP,#0x290+var_268]; int *
44ACAE:  MOVS            R2, #6; int
44ACB0:  STRD.W          R0, R10, [SP,#0x290+var_278]; int *
44ACB4:  MOV             R0, R4; this
44ACB6:  STRD.W          R10, R9, [SP,#0x290+var_280]; int
44ACBA:  STRD.W          R8, R8, [SP,#0x290+var_288]; int
44ACBE:  STRD.W          R10, R11, [SP,#0x290+var_290]; float
44ACC2:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44ACC6:  LDR.W           R0, =(g_furnitureMan_ptr - 0x44ACD4)
44ACCA:  MOVS            R2, #1; int
44ACCC:  LDR             R1, [R4,#0x14]
44ACCE:  MOV             R9, R4
44ACD0:  ADD             R0, PC; g_furnitureMan_ptr
44ACD2:  LDRSB.W         R3, [R4,#0x791]; __int16
44ACD6:  LDR             R0, [R0]; g_furnitureMan ; this
44ACD8:  LDRB            R1, [R1,#0x1F]
44ACDA:  STR             R1, [SP,#0x290+var_290]; unsigned __int8
44ACDC:  MOVS            R1, #4; int
44ACDE:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44ACE2:  VMOV.I32        Q8, #0
44ACE6:  ADD             R1, SP, #0x290+var_248
44ACE8:  MOV             R8, R0
44ACEA:  ADD.W           R0, R1, #0x70 ; 'p'
44ACEE:  VMOV.F32        S16, #0.5
44ACF2:  MOVS            R4, #0
44ACF4:  VST1.64         {D16-D17}, [R0]
44ACF8:  ADD.W           R0, R1, #0x60 ; '`'
44ACFC:  MOVT            R4, #0x42B4
44AD00:  VST1.64         {D16-D17}, [R0]
44AD04:  ADD.W           R0, R1, #0x50 ; 'P'
44AD08:  VST1.64         {D16-D17}, [R0]
44AD0C:  ADD.W           R0, R1, #0x40 ; '@'
44AD10:  VST1.64         {D16-D17}, [R0]
44AD14:  ADD.W           R0, R1, #0x30 ; '0'
44AD18:  VST1.64         {D16-D17}, [R0]
44AD1C:  ADD.W           R0, R1, #0x20 ; ' '
44AD20:  VST1.64         {D16-D17}, [R0]
44AD24:  MOV             R0, R1
44AD26:  VST1.64         {D16-D17}, [R0]!
44AD2A:  VST1.64         {D16-D17}, [R0]
44AD2E:  MOVS            R0, #0
44AD30:  STR             R0, [SP,#0x290+var_250]
44AD32:  B               loc_44AD60
44AD34:  VMOV            S0, R5
44AD38:  ADD             R0, SP, #0x290+var_C8
44AD3A:  MOV.W           R2, #0x3F000000
44AD3E:  VCVT.F32.S32    S0, S0
44AD42:  LDR             R1, [SP,#0x290+var_250]
44AD44:  STR.W           R2, [R0,R1,LSL#2]
44AD48:  ADD             R0, SP, #0x290+var_148
44AD4A:  ADD.W           R0, R0, R1,LSL#2
44AD4E:  VADD.F32        S0, S0, S16
44AD52:  VSTR            S0, [R0]
44AD56:  ADD             R0, SP, #0x290+var_1C8
44AD58:  STR.W           R4, [R0,R1,LSL#2]
44AD5C:  ADDS            R1, #1
44AD5E:  STR             R1, [SP,#0x290+var_250]
44AD60:  LDR             R0, [SP,#0x290+var_24C]
44AD62:  ADDS            R5, #1
44AD64:  CMP             R5, R0
44AD66:  BGE             loc_44AD8C
44AD68:  ADD             R0, SP, #0x290+var_3C
44AD6A:  STRD.W          R10, R11, [SP,#0x290+var_290]; float
44AD6E:  STR.W           R11, [SP,#0x290+var_288]; int
44AD72:  MOV             R1, R8; int
44AD74:  STR             R0, [SP,#0x290+var_284]; int
44AD76:  ADD             R0, SP, #0x290+var_40
44AD78:  STRD.W          R0, R10, [SP,#0x290+var_280]; int
44AD7C:  MOV             R0, R9; int
44AD7E:  MOVS            R2, #0; int
44AD80:  MOV             R3, R5; int
44AD82:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44AD86:  CMP             R0, #0
44AD88:  BEQ             loc_44AD60
44AD8A:  B               loc_44AD34
44AD8C:  LDR             R1, [SP,#0x290+var_260]
44AD8E:  CMP             R1, #3
44AD90:  BCC             loc_44ADFC
44AD92:  LDR             R0, [SP,#0x290+var_24C]
44AD94:  SUB.W           R10, R1, #2
44AD98:  MOVS            R4, #0
44AD9A:  MOV.W           R11, #1
44AD9E:  MOVS            R5, #0
44ADA0:  VMOV            S0, R0
44ADA4:  VCVT.F32.S32    S0, S0
44ADA8:  VADD.F32        S18, S0, S16
44ADAC:  ADD             R0, SP, #0x290+var_3C
44ADAE:  STRD.W          R4, R11, [SP,#0x290+var_290]; float
44ADB2:  STR             R4, [SP,#0x290+var_288]; int
44ADB4:  ADDS            R5, #1
44ADB6:  STR             R0, [SP,#0x290+var_284]; int
44ADB8:  ADD             R0, SP, #0x290+var_40
44ADBA:  STRD.W          R0, R4, [SP,#0x290+var_280]; int
44ADBE:  MOV             R0, R9; int
44ADC0:  LDR             R3, [SP,#0x290+var_24C]; int
44ADC2:  MOV             R1, R8; int
44ADC4:  MOV             R2, R5; int
44ADC6:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44ADCA:  CBZ             R0, loc_44ADF8
44ADCC:  VMOV            S0, R5
44ADD0:  ADD             R0, SP, #0x290+var_C8
44ADD2:  VCVT.F32.S32    S0, S0
44ADD6:  LDR             R1, [SP,#0x290+var_250]
44ADD8:  ADD.W           R0, R0, R1,LSL#2
44ADDC:  VADD.F32        S0, S0, S16
44ADE0:  VSTR            S0, [R0]
44ADE4:  ADD             R0, SP, #0x290+var_148
44ADE6:  ADD.W           R0, R0, R1,LSL#2
44ADEA:  VSTR            S18, [R0]
44ADEE:  ADD             R0, SP, #0x290+var_1C8
44ADF0:  STR.W           R4, [R0,R1,LSL#2]
44ADF4:  ADDS            R1, #1
44ADF6:  STR             R1, [SP,#0x290+var_250]
44ADF8:  CMP             R10, R5
44ADFA:  BNE             loc_44ADAC
44ADFC:  LDR             R0, [SP,#0x290+var_254]
44ADFE:  MOVS            R5, #0
44AE00:  MOV.W           R10, #3
44AE04:  MOV.W           R11, #1
44AE08:  VMOV            S0, R0
44AE0C:  VCVT.F32.S32    S0, S0
44AE10:  LDR             R0, [SP,#0x290+var_25C]
44AE12:  SUBS            R4, R0, #2
44AE14:  VADD.F32        S18, S0, S16
44AE18:  B               loc_44AE4C
44AE1A:  VMOV            S0, R6
44AE1E:  ADD             R0, SP, #0x290+var_C8
44AE20:  MOVS            R2, #0
44AE22:  VCVT.F32.S32    S0, S0
44AE26:  LDR             R1, [SP,#0x290+var_250]
44AE28:  MOVT            R2, #0x4387
44AE2C:  ADD.W           R0, R0, R1,LSL#2
44AE30:  VSTR            S18, [R0]
44AE34:  ADD             R0, SP, #0x290+var_148
44AE36:  ADD.W           R0, R0, R1,LSL#2
44AE3A:  VADD.F32        S0, S0, S16
44AE3E:  VSTR            S0, [R0]
44AE42:  ADD             R0, SP, #0x290+var_1C8
44AE44:  STR.W           R2, [R0,R1,LSL#2]
44AE48:  ADDS            R1, #1
44AE4A:  STR             R1, [SP,#0x290+var_250]
44AE4C:  CMP             R6, R4
44AE4E:  BGE             loc_44AE7C
44AE50:  ADD             R0, SP, #0x290+var_3C
44AE52:  STRD.W          R5, R11, [SP,#0x290+var_290]; float
44AE56:  STR.W           R10, [SP,#0x290+var_288]; float
44AE5A:  ADDS            R6, #1
44AE5C:  STR             R0, [SP,#0x290+var_284]; int
44AE5E:  ADD             R0, SP, #0x290+var_40
44AE60:  STRD.W          R0, R5, [SP,#0x290+var_280]; int
44AE64:  MOV             R0, R9; int
44AE66:  LDR             R2, [SP,#0x290+var_254]; int
44AE68:  MOV             R1, R8; int
44AE6A:  MOV             R3, R6; int
44AE6C:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44AE70:  CMP             R0, #0
44AE72:  BEQ             loc_44AE4C
44AE74:  B               loc_44AE1A
44AE76:  ALIGN 4
44AE78:  DCFS 0.000015259
44AE7C:  LDR             R0, =(g_furnitureMan_ptr - 0x44AE8A)
44AE7E:  MOV             R8, R9
44AE80:  LDR.W           R1, [R8,#0x14]
44AE84:  MOVS            R2, #0xA; int
44AE86:  ADD             R0, PC; g_furnitureMan_ptr
44AE88:  MOV.W           R3, #0xFFFFFFFF; __int16
44AE8C:  LDR             R0, [R0]; g_furnitureMan ; this
44AE8E:  LDRB            R1, [R1,#0x1F]
44AE90:  STR             R1, [SP,#0x290+var_290]; float
44AE92:  MOVS            R1, #4; int
44AE94:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44AE98:  MOV             R4, R0
44AE9A:  BLX             rand
44AE9E:  LDR             R1, [SP,#0x290+var_258]
44AEA0:  CMP             R1, #0
44AEA2:  IT NE
44AEA4:  ANDSNE.W        R0, R0, #1
44AEA8:  BEQ             loc_44AEEE
44AEAA:  LDR.W           R0, [R8,#0x14]
44AEAE:  VMOV.F32        S0, #-0.5
44AEB2:  MOVW            R1, #0x6666
44AEB6:  MOV             R2, R4; int
44AEB8:  MOVT            R1, #0x3F86
44AEBC:  MOV.W           R3, #0x3F000000; int
44AEC0:  LDRB            R0, [R0,#3]
44AEC2:  VMOV            S2, R0
44AEC6:  MOVS            R0, #0x42340000
44AECC:  VCVT.F32.U32    S2, S2
44AED0:  STRD.W          R1, R0, [SP,#0x290+var_28C]; float
44AED4:  MOV             R0, R8; int
44AED6:  MOVS            R1, #1; int
44AED8:  VADD.F32        S0, S2, S0
44AEDC:  VSTR            S0, [SP,#0x290+var_290]
44AEE0:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44AEE4:  LDR             R6, [SP,#0x290+var_250]
44AEE6:  ADD             R5, SP, #0x290+var_248
44AEE8:  CMP             R6, #1
44AEEA:  BGE             loc_44AF46
44AEEC:  B               loc_44B1B8
44AEEE:  LDR             R0, [SP,#0x290+var_264]
44AEF0:  ADD             R5, SP, #0x290+var_248
44AEF2:  LDR             R6, [SP,#0x290+var_250]
44AEF4:  CBZ             R0, loc_44AF40
44AEF6:  LDR.W           R0, [R8,#0x14]
44AEFA:  VMOV.F32        S0, #-0.5
44AEFE:  MOV             R2, R4; int
44AF00:  LDRB            R1, [R0,#2]
44AF02:  LDRB            R0, [R0,#3]
44AF04:  VMOV            S2, R1
44AF08:  MOV             R1, #0x3F866666
44AF10:  VCVT.F32.U32    S2, S2
44AF14:  VADD.F32        S2, S2, S0
44AF18:  VMOV            R3, S2; int
44AF1C:  VMOV            S2, R0
44AF20:  MOV             R0, #0x439D8000
44AF28:  VCVT.F32.U32    S2, S2
44AF2C:  STRD.W          R1, R0, [SP,#0x290+var_28C]; float
44AF30:  MOV             R0, R8; int
44AF32:  MOVS            R1, #1; int
44AF34:  VADD.F32        S0, S2, S0
44AF38:  VSTR            S0, [SP,#0x290+var_290]
44AF3C:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44AF40:  CMP             R6, #1
44AF42:  BLT.W           loc_44B1B8
44AF46:  BLX             rand
44AF4A:  UXTH            R0, R0
44AF4C:  VLDR            S16, =0.000015259
44AF50:  VMOV            S0, R0
44AF54:  MOV.W           R0, #0x3F800000
44AF58:  VMOV            S2, R6
44AF5C:  VCVT.F32.S32    S0, S0
44AF60:  VCVT.F32.S32    S18, S2
44AF64:  VMUL.F32        S0, S0, S16
44AF68:  VMUL.F32        S0, S0, S18
44AF6C:  VCVT.S32.F32    S0, S0
44AF70:  VMOV            R1, S0
44AF74:  STR             R1, [SP,#0x290+var_258]
44AF76:  STR.W           R0, [R5,R1,LSL#2]
44AF7A:  BLX             rand
44AF7E:  UXTH            R0, R0
44AF80:  VMOV.F32        S20, #1.0
44AF84:  VMOV            S0, R0
44AF88:  VCVT.F32.S32    S0, S0
44AF8C:  VMUL.F32        S0, S0, S16
44AF90:  VMUL.F32        S0, S0, S18
44AF94:  VCVT.S32.F32    S0, S0
44AF98:  VMOV            R6, S0
44AF9C:  ADD.W           R0, R5, R6,LSL#2
44AFA0:  VLDR            S0, [R0]
44AFA4:  VCMP.F32        S0, S20
44AFA8:  VMRS            APSR_nzcv, FPSCR
44AFAC:  BNE             loc_44AFF2
44AFAE:  MOVS            R4, #0
44AFB0:  BLX             rand
44AFB4:  UXTH            R0, R0
44AFB6:  CMP             R4, #0x1C
44AFB8:  VMOV            S0, R0
44AFBC:  ADD.W           R0, R4, #1
44AFC0:  VCVT.F32.S32    S0, S0
44AFC4:  VMUL.F32        S0, S0, S16
44AFC8:  VMUL.F32        S0, S0, S18
44AFCC:  VCVT.S32.F32    S0, S0
44AFD0:  VMOV            R6, S0
44AFD4:  BGT             loc_44AFEA
44AFD6:  ADD.W           R1, R5, R6,LSL#2
44AFDA:  MOV             R4, R0
44AFDC:  VLDR            S0, [R1]
44AFE0:  VCMP.F32        S0, S20
44AFE4:  VMRS            APSR_nzcv, FPSCR
44AFE8:  BEQ             loc_44AFB0
44AFEA:  CMP             R0, #0x1E
44AFEC:  IT EQ
44AFEE:  MOVEQ.W         R6, #0xFFFFFFFF
44AFF2:  LDR.W           R0, [R8,#0x14]
44AFF6:  LDRB            R4, [R0,#0x1F]
44AFF8:  CMP             R4, #0x4B ; 'K'
44AFFA:  BCC             loc_44B020
44AFFC:  BLX             rand
44B000:  UXTH            R0, R0
44B002:  VMOV.F32        S2, #20.0
44B006:  VMOV            S0, R0
44B00A:  VCVT.F32.S32    S0, S0
44B00E:  VMUL.F32        S0, S0, S16
44B012:  VMUL.F32        S0, S0, S2
44B016:  VCVT.S32.F32    S0, S0
44B01A:  VMOV            R0, S0
44B01E:  B               loc_44B05C
44B020:  BLX             rand
44B024:  UXTH            R0, R0
44B026:  CMP             R4, #0x32 ; '2'
44B028:  VMOV            S0, R0
44B02C:  VCVT.F32.S32    S0, S0
44B030:  VMUL.F32        S0, S0, S16
44B034:  BCC             loc_44B04A
44B036:  VMOV.F32        S2, #30.0
44B03A:  VMUL.F32        S0, S0, S2
44B03E:  VCVT.S32.F32    S0, S0
44B042:  VMOV            R0, S0
44B046:  ADDS            R0, #0x14
44B048:  B               loc_44B05C
44B04A:  VLDR            S2, =50.0
44B04E:  VMUL.F32        S0, S0, S2
44B052:  VCVT.S32.F32    S0, S0
44B056:  VMOV            R0, S0
44B05A:  ADDS            R0, #0x32 ; '2'
44B05C:  STR             R0, [SP,#0x290+var_24C]
44B05E:  ADD.W           R11, SP, #0x290+var_248
44B062:  LDR             R0, =(g_furnitureMan_ptr - 0x44B070)
44B064:  ADD             R4, SP, #0x290+var_C8
44B066:  ADD.W           R8, SP, #0x290+var_148
44B06A:  ADD             R5, SP, #0x290+var_1C8
44B06C:  ADD             R0, PC; g_furnitureMan_ptr
44B06E:  VLDR            S18, =100.0
44B072:  MOV.W           R10, #0
44B076:  LDR             R0, [R0]; g_furnitureMan
44B078:  STR             R0, [SP,#0x290+var_254]
44B07A:  VLDR            S0, [R11]
44B07E:  VCMP.F32        S0, #0.0
44B082:  VMRS            APSR_nzcv, FPSCR
44B086:  BNE             loc_44B0F6
44B088:  BLX             rand
44B08C:  UXTH            R0, R0
44B08E:  VMOV            S0, R0
44B092:  VCVT.F32.S32    S0, S0
44B096:  VMUL.F32        S0, S0, S16
44B09A:  VMUL.F32        S0, S0, S18
44B09E:  VCVT.S32.F32    S0, S0
44B0A2:  LDR             R1, [SP,#0x290+var_24C]
44B0A4:  VMOV            R0, S0
44B0A8:  CMP             R1, R0
44B0AA:  BLE             loc_44B0F6
44B0AC:  BLX             rand
44B0B0:  LDR.W           R1, [R9,#0x14]
44B0B4:  MOVW            R2, #0xFFFF
44B0B8:  AND.W           R0, R0, #1
44B0BC:  SXTH            R3, R2; __int16
44B0BE:  RSB.W           R2, R0, #4; int
44B0C2:  LDRB            R0, [R1,#0x1F]
44B0C4:  MOVS            R1, #8; int
44B0C6:  STR             R0, [SP,#0x290+var_290]; float
44B0C8:  LDR             R0, [SP,#0x290+var_254]; this
44B0CA:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44B0CE:  MOV             R2, R0; int
44B0D0:  CBZ             R2, loc_44B0F6
44B0D2:  MOVW            R0, #0x6666
44B0D6:  VLDR            S2, [R5]
44B0DA:  LDR             R3, [R4]; int
44B0DC:  MOVT            R0, #0x3F86
44B0E0:  VLDR            S0, [R8]
44B0E4:  MOVS            R1, #0; int
44B0E6:  VSTR            S2, [SP,#0x290+var_288]
44B0EA:  STR             R0, [SP,#0x290+var_28C]; float
44B0EC:  MOV             R0, R9; int
44B0EE:  VSTR            S0, [SP,#0x290+var_290]
44B0F2:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44B0F6:  LDR             R0, [SP,#0x290+var_250]
44B0F8:  ADD.W           R10, R10, #1
44B0FC:  ADDS            R5, #4
44B0FE:  ADD.W           R8, R8, #4
44B102:  ADDS            R4, #4
44B104:  ADD.W           R11, R11, #4
44B108:  CMP             R0, R10
44B10A:  BNE             loc_44B07A
44B10C:  LDR             R5, [SP,#0x290+var_258]
44B10E:  MOV             R4, R9
44B110:  ADD.W           R8, SP, #0x290+var_C8
44B114:  ADD.W           R9, SP, #0x290+var_1C8
44B118:  ADD.W           R10, SP, #0x290+var_148
44B11C:  ADDS            R0, R5, #1
44B11E:  BEQ             loc_44B16A
44B120:  LDR             R0, =(g_furnitureMan_ptr - 0x44B12E)
44B122:  MOVW            R2, #0xFFFF
44B126:  LDR             R1, [R4,#0x14]
44B128:  SXTH            R3, R2; __int16
44B12A:  ADD             R0, PC; g_furnitureMan_ptr
44B12C:  MOVS            R2, #8; int
44B12E:  LDR             R0, [R0]; g_furnitureMan ; this
44B130:  LDRB            R1, [R1,#0x1F]
44B132:  STR             R1, [SP,#0x290+var_290]; float
44B134:  MOVS            R1, #4; int
44B136:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44B13A:  MOV             R2, R0; int
44B13C:  ADD.W           R0, R10, R5,LSL#2
44B140:  LDR.W           R3, [R8,R5,LSL#2]; int
44B144:  MOVS            R1, #1; int
44B146:  VLDR            S0, [R0]
44B14A:  ADD.W           R0, R9, R5,LSL#2
44B14E:  VLDR            S2, [R0]
44B152:  MOV             R0, #0x3F866666
44B15A:  VSTR            S2, [SP,#0x290+var_288]
44B15E:  STR             R0, [SP,#0x290+var_28C]; float
44B160:  MOV             R0, R4; int
44B162:  VSTR            S0, [SP,#0x290+var_290]
44B166:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44B16A:  ADDS            R0, R6, #1
44B16C:  BEQ             loc_44B1B8
44B16E:  LDR             R0, =(g_furnitureMan_ptr - 0x44B17C)
44B170:  MOVW            R2, #0xFFFF
44B174:  LDR             R1, [R4,#0x14]
44B176:  SXTH            R3, R2; __int16
44B178:  ADD             R0, PC; g_furnitureMan_ptr
44B17A:  MOVS            R2, #9; int
44B17C:  LDR             R0, [R0]; g_furnitureMan ; this
44B17E:  LDRB            R1, [R1,#0x1F]
44B180:  STR             R1, [SP,#0x290+var_290]; float
44B182:  MOVS            R1, #4; int
44B184:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44B188:  MOV             R2, R0; int
44B18A:  ADD.W           R0, R10, R6,LSL#2
44B18E:  LDR.W           R3, [R8,R6,LSL#2]; int
44B192:  MOVS            R1, #1; int
44B194:  VLDR            S0, [R0]
44B198:  ADD.W           R0, R9, R6,LSL#2
44B19C:  VLDR            S2, [R0]
44B1A0:  MOV             R0, #0x3F866666
44B1A8:  VSTR            S2, [SP,#0x290+var_288]
44B1AC:  STR             R0, [SP,#0x290+var_28C]; float
44B1AE:  MOV             R0, R4; int
44B1B0:  VSTR            S0, [SP,#0x290+var_290]
44B1B4:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
44B1B8:  ADD.W           SP, SP, #0x258
44B1BC:  VPOP            {D8-D10}
44B1C0:  ADD             SP, SP, #4
44B1C2:  POP.W           {R8-R11}
44B1C6:  POP             {R4-R7,PC}
