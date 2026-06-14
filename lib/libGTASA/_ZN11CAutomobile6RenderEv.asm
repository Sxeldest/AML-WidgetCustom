; =========================================================
; Game Engine Function: _ZN11CAutomobile6RenderEv
; Address            : 0x55BB1C - 0x55BE42
; =========================================================

55BB1C:  PUSH            {R4-R7,LR}
55BB1E:  ADD             R7, SP, #0xC
55BB20:  PUSH.W          {R8-R11}
55BB24:  SUB             SP, SP, #4
55BB26:  VPUSH           {D8-D9}
55BB2A:  SUB             SP, SP, #0x50
55BB2C:  MOV             R6, R0
55BB2E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x55BB36)
55BB30:  ADD             R1, SP, #0x80+var_34
55BB32:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
55BB34:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
55BB36:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
55BB38:  ADDW            R0, R0, #0xBB8
55BB3C:  STR.W           R0, [R6,#0x4E0]
55BB40:  MOVS            R0, #1
55BB42:  STR             R0, [SP,#0x80+var_34]
55BB44:  MOVS            R0, #0x1E
55BB46:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
55BB4A:  MOVS            R0, #0x1E
55BB4C:  MOVS            R1, #1
55BB4E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
55BB52:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x55BB58)
55BB54:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
55BB56:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
55BB58:  LDRB.W          R0, [R0,#(byte_796816 - 0x7967F4)]
55BB5C:  CBZ             R0, loc_55BBDC
55BB5E:  LDR.W           R0, [R6,#0x66C]
55BB62:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BB66:  LDR             R5, [R0,#0x48]
55BB68:  LDR.W           R0, [R6,#0x66C]
55BB6C:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BB70:  BLX             R5
55BB72:  LDR.W           R0, [R6,#0x678]
55BB76:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BB7A:  LDR             R5, [R0,#0x48]
55BB7C:  LDR.W           R0, [R6,#0x678]
55BB80:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BB84:  BLX             R5
55BB86:  LDR.W           R0, [R6,#0x664]
55BB8A:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BB8E:  LDR             R5, [R0,#0x48]
55BB90:  LDR.W           R0, [R6,#0x664]
55BB94:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BB98:  BLX             R5
55BB9A:  LDR.W           R0, [R6,#0x670]
55BB9E:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BBA2:  LDR             R5, [R0,#0x48]
55BBA4:  LDR.W           R0, [R6,#0x670]
55BBA8:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BBAC:  BLX             R5
55BBAE:  LDR.W           R0, [R6,#0x668]
55BBB2:  CBZ             R0, loc_55BBC4
55BBB4:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BBB8:  LDR             R5, [R0,#0x48]
55BBBA:  LDR.W           R0, [R6,#0x668]
55BBBE:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BBC2:  BLX             R5
55BBC4:  LDR.W           R0, [R6,#0x674]
55BBC8:  CBZ             R0, loc_55BBE2
55BBCA:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BBCE:  LDR             R5, [R0,#0x48]
55BBD0:  LDR.W           R0, [R6,#0x674]
55BBD4:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BBD8:  BLX             R5
55BBDA:  B               loc_55BBE2
55BBDC:  MOV             R0, R6; this
55BBDE:  BLX             j__ZN8CVehicle6RenderEv; CVehicle::Render(void)
55BBE2:  LDRH            R0, [R6,#0x26]
55BBE4:  CMP.W           R0, #0x1B0
55BBE8:  BNE.W           loc_55BDD6
55BBEC:  MOV             R0, R6; this
55BBEE:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55BBF2:  LDR             R0, [R0,#0x2C]
55BBF4:  VMOV.F32        S16, #1.0
55BBF8:  STR             R0, [SP,#0x80+var_78]
55BBFA:  MOV.W           R11, #4
55BBFE:  LDR.W           R1, [R6,#0x630]
55BC02:  MOV.W           R8, #0x80
55BC06:  LDR.W           R0, [R6,#0x62C]
55BC0A:  VLDR            S18, =0.0
55BC0E:  STRD.W          R0, R1, [SP,#0x80+var_54]
55BC12:  LDR.W           R2, [R6,#0x63C]
55BC16:  VMOV            S0, R0
55BC1A:  LDR.W           R1, [R6,#0x638]
55BC1E:  ADD             R0, SP, #0x80+var_64
55BC20:  ADD.W           R10, R0, #0x14
55BC24:  ADDW            R0, R6, #0x88C
55BC28:  STRD.W          R1, R2, [SP,#0x80+var_4C]
55BC2C:  LDR.W           R2, [R6,#0x648]
55BC30:  LDR.W           R1, [R6,#0x644]
55BC34:  STRD.W          R1, R2, [SP,#0x80+var_44]
55BC38:  ADDW            R1, R6, #0x89C
55BC3C:  STR             R1, [SP,#0x80+var_7C]
55BC3E:  LDR.W           R2, [R6,#0x654]
55BC42:  LDR.W           R1, [R6,#0x650]
55BC46:  STRD.W          R1, R2, [SP,#0x80+var_3C]
55BC4A:  STR             R0, [SP,#0x80+var_74]
55BC4C:  B               loc_55BC5A
55BC4E:  ADD.W           R11, R11, #1
55BC52:  ADD.W           R8, R8, #0x20 ; ' '
55BC56:  VLDM            R10!, {S0}
55BC5A:  LDR             R0, [SP,#0x80+var_74]
55BC5C:  CMP.W           R11, #7
55BC60:  VLDR            S2, [R0]
55BC64:  LDR             R0, [SP,#0x80+var_7C]
55BC66:  VLDR            S4, [R0]
55BC6A:  LDR             R0, [SP,#0x80+var_78]
55BC6C:  VSUB.F32        S2, S4, S2
55BC70:  LDR             R0, [R0,#0x10]
55BC72:  ADD             R0, R8
55BC74:  VLDR            S6, [R0,#0x14]
55BC78:  VDIV.F32        S2, S2, S4
55BC7C:  VSUB.F32        S0, S0, S2
55BC80:  VLDR            S4, [R0,#0x10]
55BC84:  VLDR            S8, [R0,#0x18]
55BC88:  VLDR            S10, [R0]
55BC8C:  VLDR            S12, [R0,#4]
55BC90:  VLDR            S14, [R0,#8]
55BC94:  VMAX.F32        D0, D0, D9
55BC98:  VSUB.F32        S2, S16, S0
55BC9C:  VMUL.F32        S6, S6, S0
55BCA0:  VMUL.F32        S3, S4, S0
55BCA4:  VMUL.F32        S0, S8, S0
55BCA8:  VMUL.F32        S12, S2, S12
55BCAC:  VMUL.F32        S8, S2, S14
55BCB0:  VMUL.F32        S10, S10, S2
55BCB4:  VADD.F32        S4, S6, S12
55BCB8:  VADD.F32        S0, S0, S8
55BCBC:  VADD.F32        S2, S3, S10
55BCC0:  VSTR            S4, [SP,#0x80+var_6C]
55BCC4:  VSTR            S2, [SP,#0x80+var_70]
55BCC8:  VSTR            S0, [SP,#0x80+var_68]
55BCCC:  BGT             loc_55BD4C
55BCCE:  LDR.W           R0, [R6,#0x678]
55BCD2:  ADD             R4, SP, #0x80+var_70
55BCD4:  MOVS            R2, #2
55BCD6:  MOV             R1, R4
55BCD8:  VLDR            S6, [R0,#0x40]
55BCDC:  VLDR            S8, [R0,#0x44]
55BCE0:  VLDR            S10, [R0,#0x48]
55BCE4:  VSUB.F32        S2, S2, S6
55BCE8:  VSUB.F32        S4, S4, S8
55BCEC:  ADDS            R0, #0x10
55BCEE:  VSUB.F32        S0, S0, S10
55BCF2:  VSTR            S4, [SP,#0x80+var_6C]
55BCF6:  VSTR            S2, [SP,#0x80+var_70]
55BCFA:  VSTR            S0, [SP,#0x80+var_68]
55BCFE:  BLX             j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
55BD02:  LDR.W           R0, [R6,#0x678]
55BD06:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
55BD0A:  LDR.W           R0, [R6,#0x678]
55BD0E:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BD12:  LDR.W           R9, [R0,#0x48]
55BD16:  LDR.W           R0, [R6,#0x678]
55BD1A:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BD1E:  BLX             R9
55BD20:  VLDR            S0, [SP,#0x80+var_70]
55BD24:  MOV             R1, R4
55BD26:  VLDR            S2, [SP,#0x80+var_6C]
55BD2A:  VLDR            S4, [SP,#0x80+var_68]
55BD2E:  VNEG.F32        S0, S0
55BD32:  VNEG.F32        S2, S2
55BD36:  VNEG.F32        S4, S4
55BD3A:  VSTR            S0, [SP,#0x80+var_70]
55BD3E:  VSTR            S2, [SP,#0x80+var_6C]
55BD42:  VSTR            S4, [SP,#0x80+var_68]
55BD46:  LDR.W           R0, [R6,#0x678]
55BD4A:  B               loc_55BDC6
55BD4C:  LDR.W           R0, [R6,#0x66C]
55BD50:  ADD             R5, SP, #0x80+var_70
55BD52:  MOVS            R2, #2
55BD54:  MOV             R1, R5
55BD56:  VLDR            S6, [R0,#0x40]
55BD5A:  VLDR            S8, [R0,#0x44]
55BD5E:  VLDR            S10, [R0,#0x48]
55BD62:  VSUB.F32        S2, S2, S6
55BD66:  VSUB.F32        S4, S4, S8
55BD6A:  ADDS            R0, #0x10
55BD6C:  VSUB.F32        S0, S0, S10
55BD70:  VSTR            S4, [SP,#0x80+var_6C]
55BD74:  VSTR            S2, [SP,#0x80+var_70]
55BD78:  VSTR            S0, [SP,#0x80+var_68]
55BD7C:  BLX             j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
55BD80:  LDR.W           R0, [R6,#0x66C]
55BD84:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
55BD88:  LDR.W           R0, [R6,#0x66C]
55BD8C:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BD90:  LDR             R4, [R0,#0x48]
55BD92:  LDR.W           R0, [R6,#0x66C]
55BD96:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
55BD9A:  BLX             R4
55BD9C:  VLDR            S0, [SP,#0x80+var_70]
55BDA0:  MOV             R1, R5
55BDA2:  VLDR            S2, [SP,#0x80+var_6C]
55BDA6:  VLDR            S4, [SP,#0x80+var_68]
55BDAA:  VNEG.F32        S0, S0
55BDAE:  VNEG.F32        S2, S2
55BDB2:  VNEG.F32        S4, S4
55BDB6:  VSTR            S0, [SP,#0x80+var_70]
55BDBA:  VSTR            S2, [SP,#0x80+var_6C]
55BDBE:  VSTR            S4, [SP,#0x80+var_68]
55BDC2:  LDR.W           R0, [R6,#0x66C]
55BDC6:  ADDS            R0, #0x10
55BDC8:  MOVS            R2, #2
55BDCA:  BLX             j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
55BDCE:  CMP.W           R11, #0xB
55BDD2:  BNE.W           loc_55BC4E
55BDD6:  LDR             R1, [SP,#0x80+var_34]
55BDD8:  MOVS            R0, #0x1E
55BDDA:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
55BDDE:  LDRSH.W         R0, [R6,#0x26]
55BDE2:  ADDS            R1, R0, #2
55BDE4:  BEQ             loc_55BE34
55BDE6:  CMP.W           R0, #0x1B0
55BDEA:  ITT NE
55BDEC:  MOVWNE          R1, #0x1B9
55BDF0:  CMPNE           R0, R1
55BDF2:  BEQ             loc_55BE34
55BDF4:  LDRB.W          R0, [R6,#0x430]
55BDF8:  MOVS            R1, #0
55BDFA:  CMP.W           R1, R0,LSR#7
55BDFE:  BNE             loc_55BE34
55BE00:  MOV             R0, R6; this
55BE02:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
55BE06:  CMP             R0, #3
55BE08:  BEQ             loc_55BE34
55BE0A:  LDRB.W          R0, [R6,#0x594]
55BE0E:  TST.W           R0, #1
55BE12:  BEQ             loc_55BE24
55BE14:  LDR             R2, [R6,#0x14]; CMatrix *
55BE16:  MOV             R0, R6; this
55BE18:  MOVS            R1, #0; int
55BE1A:  MOVS            R3, #1; unsigned __int8
55BE1C:  BLX             j__ZN8CVehicle15DoHeadLightBeamEiR7CMatrixh; CVehicle::DoHeadLightBeam(int,CMatrix &,uchar)
55BE20:  LDRB.W          R0, [R6,#0x594]
55BE24:  LSLS            R0, R0, #0x1E
55BE26:  BPL             loc_55BE34
55BE28:  LDR             R2, [R6,#0x14]; CMatrix *
55BE2A:  MOV             R0, R6; this
55BE2C:  MOVS            R1, #0; int
55BE2E:  MOVS            R3, #0; unsigned __int8
55BE30:  BLX             j__ZN8CVehicle15DoHeadLightBeamEiR7CMatrixh; CVehicle::DoHeadLightBeam(int,CMatrix &,uchar)
55BE34:  ADD             SP, SP, #0x50 ; 'P'
55BE36:  VPOP            {D8-D9}
55BE3A:  ADD             SP, SP, #4
55BE3C:  POP.W           {R8-R11}
55BE40:  POP             {R4-R7,PC}
