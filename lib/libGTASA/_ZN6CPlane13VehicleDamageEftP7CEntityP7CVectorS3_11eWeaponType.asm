; =========================================================
; Game Engine Function: _ZN6CPlane13VehicleDamageEftP7CEntityP7CVectorS3_11eWeaponType
; Address            : 0x578840 - 0x578CFE
; =========================================================

578840:  PUSH            {R4-R7,LR}
578842:  ADD             R7, SP, #0xC
578844:  PUSH.W          {R8-R10}
578848:  VPUSH           {D8-D13}
57884C:  SUB             SP, SP, #0x30
57884E:  MOV             R4, R0
578850:  VMOV            S16, R1
578854:  LDRH            R0, [R4,#0x26]
578856:  MOV             R6, R3
578858:  MOVW            R3, #0x21B
57885C:  CMP             R0, R3
57885E:  BNE             loc_578876
578860:  MOV             R0, R4
578862:  MOV             R3, R6
578864:  ADD             SP, SP, #0x30 ; '0'
578866:  VPOP            {D8-D13}
57886A:  POP.W           {R8-R10}
57886E:  POP.W           {R4-R7,LR}
578872:  B.W             sub_18D558
578876:  LDRB.W          R0, [R4,#0x42E]
57887A:  LSLS            R0, R0, #0x1A
57887C:  BMI             loc_57888A
57887E:  ADD             SP, SP, #0x30 ; '0'
578880:  VPOP            {D8-D13}
578884:  POP.W           {R8-R10}
578888:  POP             {R4-R7,PC}
57888A:  LDR.W           R0, =(PLANE_DAMAGE_DESTROY_THRESHHOLD_ptr - 0x578896)
57888E:  LDR.W           R1, =(PLANE_DAMAGE_THRESHHOLD_ptr - 0x57889C)
578892:  ADD             R0, PC; PLANE_DAMAGE_DESTROY_THRESHHOLD_ptr
578894:  LDR.W           R10, [R7,#arg_8]
578898:  ADD             R1, PC; PLANE_DAMAGE_THRESHHOLD_ptr
57889A:  LDR.W           R9, [R7,#arg_0]
57889E:  LDR             R0, [R0]; PLANE_DAMAGE_DESTROY_THRESHHOLD
5788A0:  LDR             R1, [R1]; PLANE_DAMAGE_THRESHHOLD
5788A2:  VLDR            S22, [R0]
5788A6:  LDRB.W          R0, [R4,#0x3A]
5788AA:  VLDR            S20, [R1]
5788AE:  CMP             R0, #8
5788B0:  BCC             loc_5788DC
5788B2:  LDRB.W          R0, [R4,#0x46]
5788B6:  LSLS            R0, R0, #0x19
5788B8:  BPL             loc_5788DC
5788BA:  MOV.W           R0, #0xFFFFFFFF; int
5788BE:  LDR.W           R5, [R4,#0xE0]
5788C2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5788C6:  CMP             R5, R0
5788C8:  BEQ             loc_5788DC
5788CA:  MOV.W           R0, #0xFFFFFFFF; int
5788CE:  MOVS            R1, #0; bool
5788D0:  LDR.W           R5, [R4,#0xE0]
5788D4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5788D8:  CMP             R5, R0
5788DA:  BNE             loc_57887E
5788DC:  VCMP.F32        S16, #0.0
5788E0:  VMRS            APSR_nzcv, FPSCR
5788E4:  BEQ             loc_57894A
5788E6:  MOVS            R0, #0
5788E8:  ADD             R3, SP, #0x78+var_58
5788EA:  STRB.W          R0, [SP,#0x78+var_58]
5788EE:  MOV             R0, R4
5788F0:  MOV             R1, R6
5788F2:  MOV             R2, R10
5788F4:  BLX             j__ZN8CVehicle19CanVehicleBeDamagedEP7CEntity11eWeaponTypePh; CVehicle::CanVehicleBeDamaged(CEntity *,eWeaponType,uchar *)
5788F8:  CMP             R0, #0
5788FA:  BEQ             loc_57887E
5788FC:  SUB.W           R0, R10, #0x13
578900:  CMP             R0, #3
578902:  BCC             loc_57890A
578904:  CMP.W           R10, #0x33 ; '3'
578908:  BNE             loc_57887E
57890A:  VLDR            S16, =0.0
57890E:  MOV.W           R8, #1
578912:  VLDR            S18, =0.333
578916:  LDR.W           R0, [R4,#0x388]
57891A:  ADDW            R6, R4, #0x4CC
57891E:  MOVS            R1, #0; bool
578920:  ADDW            R5, R4, #0x42C
578924:  VLDR            S24, [R6]
578928:  VLDR            S0, [R0,#0xC8]
57892C:  MOV.W           R0, #0xFFFFFFFF; int
578930:  VMUL.F32        S26, S16, S0
578934:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
578938:  LDR             R1, [R5]
57893A:  CMP             R4, R0
57893C:  AND.W           R1, R1, #0x8000
578940:  BEQ             loc_5789A2
578942:  CBZ             R1, loc_5789B8
578944:  VMOV.F32        S0, #12.0
578948:  B               loc_5789B2
57894A:  VLDR            S16, [R4,#0xDC]
57894E:  VCMPE.F32       S16, #0.0
578952:  VMRS            APSR_nzcv, FPSCR
578956:  BLE             loc_57887E
578958:  LDRB.W          R0, [R4,#0x46]
57895C:  LSLS            R0, R0, #0x1B
57895E:  BMI             loc_57887E
578960:  LDR             R0, =(PLANE_DAMAGE_SCALE_MASS_ptr - 0x578972)
578962:  VMOV.F32        S18, #1.0
578966:  VLDR            S0, [R4,#0x90]
57896A:  ADD.W           R9, R4, #0xF0
57896E:  ADD             R0, PC; PLANE_DAMAGE_SCALE_MASS_ptr
578970:  LDR             R0, [R0]; PLANE_DAMAGE_SCALE_MASS
578972:  VLDR            S2, [R0]
578976:  LDR.W           R0, [R4,#0xE0]
57897A:  VDIV.F32        S0, S0, S2
57897E:  CMP             R0, #0
578980:  VMAX.F32        D1, D0, D9
578984:  VMUL.F32        S22, S22, S0
578988:  VMUL.F32        S20, S20, S2
57898C:  BEQ             loc_57899C
57898E:  LDRB.W          R0, [R0,#0x3A]
578992:  AND.W           R0, R0, #7
578996:  CMP             R0, #3
578998:  BEQ.W           loc_57887E
57899C:  MOV.W           R8, #0
5789A0:  B               loc_578916
5789A2:  VMOV.F32        S2, #6.0
5789A6:  CMP             R1, #0
5789A8:  VMOV.F32        S0, #2.0
5789AC:  IT NE
5789AE:  VMOVNE.F32      S0, S2
5789B2:  VDIV.F32        S0, S26, S0
5789B6:  B               loc_5789D6
5789B8:  LDR.W           R5, [R4,#0xE0]
5789BC:  CBZ             R5, loc_5789CE
5789BE:  MOV.W           R0, #0xFFFFFFFF; int
5789C2:  MOVS            R1, #0; bool
5789C4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5789C8:  CMP             R5, R0
5789CA:  BEQ.W           loc_578B52
5789CE:  VMOV.F32        S0, #0.25
5789D2:  VMUL.F32        S0, S26, S0
5789D6:  VLDR            S2, [R6]
5789DA:  MOVS            R1, #0
5789DC:  MOVS            R0, #0
5789DE:  VSUB.F32        S0, S2, S0
5789E2:  VMOV.F32        S2, #1.0
5789E6:  VCMPE.F32       S0, #0.0
5789EA:  VMRS            APSR_nzcv, FPSCR
5789EE:  VMOV.F32        S4, S0
5789F2:  VCMPE.F32       S24, #0.0
5789F6:  IT LE
5789F8:  VMOVLE.F32      S4, S2
5789FC:  VMRS            APSR_nzcv, FPSCR
578A00:  IT GT
578A02:  VMOVGT.F32      S0, S4
578A06:  VCMPE.F32       S0, S2
578A0A:  VSTR            S0, [R6]
578A0E:  VMRS            APSR_nzcv, FPSCR
578A12:  VCMPE.F32       S24, #0.0
578A16:  IT LE
578A18:  MOVLE           R1, #1
578A1A:  VMRS            APSR_nzcv, FPSCR
578A1E:  VCMPE.F32       S16, S22
578A22:  IT GT
578A24:  MOVGT           R0, #1
578A26:  VMRS            APSR_nzcv, FPSCR
578A2A:  BGT.W           loc_578B42
578A2E:  ANDS            R0, R1
578A30:  CMP             R0, #1
578A32:  BEQ.W           loc_578B42
578A36:  VCMPE.F32       S16, S20
578A3A:  MOVS            R0, #0
578A3C:  VMRS            APSR_nzcv, FPSCR
578A40:  IT GT
578A42:  MOVGT           R0, #1
578A44:  ORRS.W          R0, R0, R8
578A48:  BEQ.W           loc_57887E
578A4C:  LDRB.W          R0, [R4,#0x3A]
578A50:  AND.W           R0, R0, #0xF8
578A54:  CMP             R0, #0x28 ; '('
578A56:  BEQ.W           loc_57887E
578A5A:  VLDR            S20, =1000.0
578A5E:  VLDR            S0, [R4,#0x90]
578A62:  VCMPE.F32       S0, S20
578A66:  VMRS            APSR_nzcv, FPSCR
578A6A:  BLE.W           loc_57887E
578A6E:  LDR             R2, [R4,#0x14]
578A70:  ADD             R6, SP, #0x78+var_68
578A72:  VLDR            S0, [R9]
578A76:  ADD             R1, SP, #0x78+var_58; CMatrix *
578A78:  ADD.W           R0, R2, #0x30 ; '0'
578A7C:  CMP             R2, #0
578A7E:  VLDR            S2, [R9,#4]
578A82:  VLDR            S4, [R9,#8]
578A86:  IT EQ
578A88:  ADDEQ           R0, R4, #4
578A8A:  VLDR            S6, [R0]
578A8E:  VLDR            S8, [R0,#4]
578A92:  VLDR            S10, [R0,#8]
578A96:  VSUB.F32        S0, S0, S6
578A9A:  VSUB.F32        S2, S2, S8
578A9E:  MOV             R0, R6; CVector *
578AA0:  VSUB.F32        S4, S4, S10
578AA4:  VSTR            S2, [SP,#0x78+var_58+4]
578AA8:  VSTR            S0, [SP,#0x78+var_58]
578AAC:  VSTR            S4, [SP,#0x78+var_50]
578AB0:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
578AB4:  VLDR            D16, [SP,#0x78+var_68]
578AB8:  ORR.W           R1, R6, #4
578ABC:  LDR             R0, [SP,#0x78+var_60]
578ABE:  MOV.W           R8, #0xFFFFFFFF
578AC2:  STR             R0, [SP,#0x78+var_50]
578AC4:  ADDW            R0, R4, #0x68C
578AC8:  VSTR            D16, [SP,#0x78+var_58]
578ACC:  MOVS            R2, #0
578ACE:  VLDR            D16, [SP,#0x78+var_58+4]
578AD2:  VLDR            S0, [SP,#0x78+var_58]
578AD6:  LDR.W           R3, [R0,R2,LSL#2]
578ADA:  CBZ             R3, loc_578B1E
578ADC:  VLDR            D17, [R3,#0x40]
578AE0:  VMUL.F32        S6, S20, S20
578AE4:  VSTR            D17, [SP,#0x78+var_68]
578AE8:  VLDR            S2, [SP,#0x78+var_68]
578AEC:  LDR             R3, [R3,#0x48]
578AEE:  VSUB.F32        S2, S2, S0
578AF2:  STR             R3, [SP,#0x78+var_60]
578AF4:  VLDR            D17, [R1]
578AF8:  VSUB.F32        D17, D17, D16
578AFC:  VMUL.F32        S2, S2, S2
578B00:  VMUL.F32        D2, D17, D17
578B04:  VADD.F32        S2, S2, S4
578B08:  VADD.F32        S2, S2, S5
578B0C:  VCMPE.F32       S2, S6
578B10:  VMRS            APSR_nzcv, FPSCR
578B14:  BGE             loc_578B1E
578B16:  VSQRT.F32       S20, S2
578B1A:  ADD.W           R8, R2, #0xC
578B1E:  ADDS            R2, #1
578B20:  CMP             R2, #0xD
578B22:  BNE             loc_578AD6
578B24:  CMP.W           R8, #0xFFFFFFFF
578B28:  BLE.W           loc_57887E
578B2C:  CMP.W           R8, #0x10
578B30:  BNE             loc_578B7E
578B32:  BLX             rand
578B36:  TST.W           R0, #1
578B3A:  BNE             loc_578B58
578B3C:  MOV.W           R8, #0x10
578B40:  B               loc_578B7E
578B42:  LDR             R0, [R4]
578B44:  MOV             R1, R4
578B46:  MOVS            R2, #0
578B48:  LDR.W           R3, [R0,#0xA8]
578B4C:  MOV             R0, R4
578B4E:  BLX             R3
578B50:  B               loc_57887E
578B52:  VMOV.F32        S0, #1.5
578B56:  B               loc_5789B2
578B58:  LDR.W           R0, [R4,#0x6A0]
578B5C:  CBZ             R0, loc_578B68
578B5E:  BLX             rand
578B62:  TST.W           R0, #1
578B66:  BNE             loc_578B7A
578B68:  LDR.W           R0, [R4,#0x6A4]
578B6C:  MOV.W           R8, #0x12
578B70:  CMP             R0, #0
578B72:  IT EQ
578B74:  MOVEQ.W         R8, #0x10
578B78:  B               loc_578B7E
578B7A:  MOV.W           R8, #0x11
578B7E:  ADDW            R6, R4, #0x5B4
578B82:  UXTB.W          R1, R8; unsigned __int8
578B86:  MOV             R0, R6; this
578B88:  BLX             j__ZN14CDamageManager23ProgressAeroplaneDamageEh; CDamageManager::ProgressAeroplaneDamage(uchar)
578B8C:  CMP             R0, #1
578B8E:  BNE             loc_578BE6
578B90:  MOV             R0, R6; this
578B92:  MOV             R1, R8; int
578B94:  BLX             j__ZNK14CDamageManager22GetAeroplaneCompStatusEi; CDamageManager::GetAeroplaneCompStatus(int)
578B98:  SUB.W           R1, R8, #0x10
578B9C:  CMP             R1, #6
578B9E:  BHI             loc_578BC4
578BA0:  CMP             R0, #1
578BA2:  BNE             loc_578BC4
578BA4:  LDRSH.W         R0, [R4,#0x6C0]
578BA8:  ADDS            R1, R0, #1
578BAA:  BNE             loc_578BE2
578BAC:  ADD.W           R0, R4, #0x6C0; this
578BB0:  MOVW            R3, #0xD70A
578BB4:  SXTH.W          R1, R8; __int16
578BB8:  MOVT            R3, #0xBCA3; float
578BBC:  MOVS            R2, #0; __int16
578BBE:  BLX             j__ZN14CBouncingPanel8SetPanelEssf; CBouncingPanel::SetPanel(short,short,float)
578BC2:  B               loc_578BE6
578BC4:  MOV             R0, R6; this
578BC6:  MOV             R1, R8; int
578BC8:  BLX             j__ZNK14CDamageManager22GetAeroplaneCompStatusEi; CDamageManager::GetAeroplaneCompStatus(int)
578BCC:  CMP             R0, #2
578BCE:  BNE             loc_578BE6
578BD0:  ADD.W           R0, R4, R8,LSL#2
578BD4:  MOVS            R2, #2
578BD6:  LDR.W           R1, [R0,#0x65C]
578BDA:  MOV             R0, R4
578BDC:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
578BE0:  B               loc_578BE6
578BE2:  CMP             R8, R0
578BE4:  BNE             loc_578CC0
578BE6:  VMUL.F32        S0, S18, S16
578BEA:  MOV             R0, R4
578BEC:  MOV             R1, R9
578BEE:  MOV             R3, R10
578BF0:  VMOV            R2, S0
578BF4:  BLX             j__ZN11CAutomobile28dmgDrawCarCollidingParticlesERK7CVectorf11eWeaponType; CAutomobile::dmgDrawCarCollidingParticles(CVector const&,float,eWeaponType)
578BF8:  ADD.W           R0, R4, R8,LSL#2
578BFC:  LDR.W           R0, [R0,#0x65C]
578C00:  VLDR            D16, [R0,#0x40]
578C04:  LDR             R0, [R0,#0x48]
578C06:  STR             R0, [SP,#0x78+var_60]
578C08:  VSTR            D16, [SP,#0x78+var_68]
578C0C:  LDR.W           R0, [R4,#0xA0C]; this
578C10:  CBZ             R0, loc_578C1C
578C12:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
578C16:  MOVS            R0, #0
578C18:  STR.W           R0, [R4,#0xA0C]
578C1C:  LDR             R0, [R4,#0x18]
578C1E:  CMP             R0, #0
578C20:  BEQ.W           loc_57887E
578C24:  LDR             R2, =(g_fxMan_ptr - 0x578C2E)
578C26:  MOVS            R1, #0
578C28:  LDR             R0, [R0,#4]
578C2A:  ADD             R2, PC; g_fxMan_ptr
578C2C:  STR             R1, [SP,#0x78+var_78]; int
578C2E:  ADD.W           R3, R0, #0x10; int
578C32:  ADR             R1, aFireMed_0; "fire_med"
578C34:  LDR             R0, [R2]; g_fxMan ; int
578C36:  ADD             R2, SP, #0x78+var_68; int
578C38:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
578C3C:  CMP             R0, #0
578C3E:  STR.W           R0, [R4,#0xA0C]
578C42:  BEQ.W           loc_57887E
578C46:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
578C4A:  VMOV.F32        S0, #-5.0
578C4E:  VLDR            S2, [R4,#0x48]
578C52:  VLDR            S4, [R4,#0x4C]
578C56:  ADD             R1, SP, #0x78+var_74
578C58:  VLDR            S6, [R4,#0x50]
578C5C:  VMUL.F32        S4, S4, S0
578C60:  VMUL.F32        S2, S2, S0
578C64:  VMUL.F32        S0, S6, S0
578C68:  VSTR            S4, [SP,#0x78+var_70]
578C6C:  VSTR            S2, [SP,#0x78+var_74]
578C70:  VSTR            S0, [SP,#0x78+var_6C]
578C74:  LDR.W           R0, [R4,#0xA0C]
578C78:  BLX             j__ZN10FxSystem_c9SetVelAddEP5RwV3d; FxSystem_c::SetVelAdd(RwV3d *)
578C7C:  LDR.W           R0, [R4,#0xA0C]; this
578C80:  MOVS            R1, #1; unsigned __int8
578C82:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
578C86:  BLX             rand
578C8A:  UXTH            R0, R0
578C8C:  VLDR            S2, =0.000015259
578C90:  VMOV            S0, R0
578C94:  VCVT.F32.S32    S0, S0
578C98:  VMUL.F32        S0, S0, S2
578C9C:  VLDR            S2, =2000.0
578CA0:  VMUL.F32        S0, S0, S2
578CA4:  VCVT.S32.F32    S0, S0
578CA8:  VMOV            R0, S0
578CAC:  ADD.W           R0, R0, #0x7D0
578CB0:  STR.W           R0, [R4,#0xA10]
578CB4:  B               loc_57887E
578CB6:  ALIGN 4
578CB8:  DCFS 0.0
578CBC:  DCFS 0.333
578CC0:  LDRH.W          R1, [R4,#0x6E0]
578CC4:  MOVW            R0, #0xFFFF
578CC8:  CMP             R1, R0
578CCA:  BNE             loc_578CD2
578CCC:  ADD.W           R0, R4, #0x6E0
578CD0:  B               loc_578BB0
578CD2:  SXTH            R1, R1
578CD4:  CMP             R8, R1
578CD6:  BEQ             loc_578BE6
578CD8:  LDRH.W          R1, [R4,#0x700]
578CDC:  CMP             R1, R0
578CDE:  BNE             loc_578CE6
578CE0:  ADD.W           R0, R4, #0x700
578CE4:  B               loc_578BB0
578CE6:  SXTH            R1, R1
578CE8:  CMP             R8, R1
578CEA:  BEQ.W           loc_578BE6
578CEE:  LDRH.W          R1, [R4,#0x720]
578CF2:  CMP             R1, R0
578CF4:  BNE.W           loc_578BE6
578CF8:  ADD.W           R0, R4, #0x720
578CFC:  B               loc_578BB0
