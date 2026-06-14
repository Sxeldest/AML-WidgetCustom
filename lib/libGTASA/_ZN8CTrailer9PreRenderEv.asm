; =========================================================
; Game Engine Function: _ZN8CTrailer9PreRenderEv
; Address            : 0x57BAFC - 0x57BCE4
; =========================================================

57BAFC:  PUSH            {R4-R7,LR}
57BAFE:  ADD             R7, SP, #0xC
57BB00:  PUSH.W          {R11}
57BB04:  SUB             SP, SP, #0x50
57BB06:  MOV             R4, R0
57BB08:  BLX             j__ZN11CAutomobile9PreRenderEv; CAutomobile::PreRender(void)
57BB0C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x57BB16)
57BB0E:  LDRSH.W         R2, [R4,#0x26]
57BB12:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
57BB14:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
57BB16:  LDR.W           R0, [R0,R2,LSL#2]
57BB1A:  LDR             R0, [R0,#0x2C]
57BB1C:  LDR             R6, [R0,#0x2C]
57BB1E:  MOVS            R0, #0
57BB20:  STRD.W          R0, R0, [SP,#0x60+var_18]
57BB24:  UXTH            R0, R2
57BB26:  LDR.W           R1, [R4,#0x6AC]
57BB2A:  CMP             R1, #0
57BB2C:  BEQ             loc_57BC28
57BB2E:  LDRSB.W         R2, [R6,#6]
57BB32:  CMP             R2, #5
57BB34:  BLT             loc_57BC28
57BB36:  VLDR            S0, [R4,#0x48]
57BB3A:  VCMP.F32        S0, #0.0
57BB3E:  VMRS            APSR_nzcv, FPSCR
57BB42:  BNE             loc_57BB92
57BB44:  VLDR            S0, [R4,#0x4C]
57BB48:  VCMP.F32        S0, #0.0
57BB4C:  VMRS            APSR_nzcv, FPSCR
57BB50:  BNE             loc_57BB92
57BB52:  VLDR            S0, [R4,#0x50]
57BB56:  VCMP.F32        S0, #0.0
57BB5A:  VMRS            APSR_nzcv, FPSCR
57BB5E:  BNE             loc_57BB92
57BB60:  VLDR            S0, [R4,#0x54]
57BB64:  VCMP.F32        S0, #0.0
57BB68:  VMRS            APSR_nzcv, FPSCR
57BB6C:  BNE             loc_57BB92
57BB6E:  VLDR            S0, [R4,#0x58]
57BB72:  VCMP.F32        S0, #0.0
57BB76:  VMRS            APSR_nzcv, FPSCR
57BB7A:  BNE             loc_57BB92
57BB7C:  VLDR            S0, [R4,#0x5C]
57BB80:  VCMP.F32        S0, #0.0
57BB84:  VMRS            APSR_nzcv, FPSCR
57BB88:  BNE             loc_57BB92
57BB8A:  LDRB.W          R2, [R4,#0xBC]
57BB8E:  CMP             R2, #0
57BB90:  BNE             loc_57BC28
57BB92:  ADD             R5, SP, #0x60+var_58
57BB94:  ADDS            R1, #0x10
57BB96:  MOVS            R2, #0
57BB98:  MOV             R0, R5
57BB9A:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
57BB9E:  LDR             R0, [R6,#0x10]
57BBA0:  VMOV.F32        S12, #0.5
57BBA4:  VLDR            S0, [SP,#0x60+var_24]
57BBA8:  LDR             R1, [SP,#0x60+var_28]; float
57BBAA:  VLDR            S2, [R0,#0x84]
57BBAE:  VMOV            R2, S0; float
57BBB2:  VLDR            S4, [R0,#0x88]
57BBB6:  VLDR            S6, [R0,#0x98]
57BBBA:  ADDW            R0, R4, #0x9F8
57BBBE:  VDIV.F32        S2, S0, S2
57BBC2:  VLDR            S8, [R0]
57BBC6:  ADDW            R0, R4, #0x9F4
57BBCA:  VSUB.F32        S6, S6, S4
57BBCE:  VLDR            S10, [R0]
57BBD2:  ADD.W           R0, R4, #0xA00
57BBD6:  VADD.F32        S8, S10, S8
57BBDA:  VLDR            S10, [R0]
57BBDE:  ADDW            R0, R4, #0x8AC
57BBE2:  VMUL.F32        S8, S8, S12
57BBE6:  VMIN.F32        D4, D4, D5
57BBEA:  VMUL.F32        S6, S8, S6
57BBEE:  VMOV.F32        S8, #1.0
57BBF2:  VADD.F32        S4, S4, S6
57BBF6:  VSUB.F32        S6, S8, S2
57BBFA:  VLDR            S8, [R0]
57BBFE:  ADDW            R0, R4, #0x9FC
57BC02:  VMUL.F32        S2, S2, S4
57BC06:  VMUL.F32        S4, S6, S8
57BC0A:  VLDR            S6, [R0]
57BC0E:  MOV             R0, R5; this
57BC10:  VSUB.F32        S2, S2, S4
57BC14:  VMIN.F32        D1, D1, D3
57BC18:  VMOV            R3, S2; float
57BC1C:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
57BC20:  MOV             R0, R5; this
57BC22:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
57BC26:  LDRH            R0, [R4,#0x26]
57BC28:  MOVW            R1, #0x262
57BC2C:  CMP             R0, R1
57BC2E:  BNE             loc_57BCD6
57BC30:  ADDW            R0, R4, #0x96C
57BC34:  VLDR            S2, =6.2832
57BC38:  VLDR            S0, [R0]
57BC3C:  VCMPE.F32       S0, S2
57BC40:  VMRS            APSR_nzcv, FPSCR
57BC44:  ITTT GT
57BC46:  VLDRGT          S2, =-6.2832
57BC4A:  VADDGT.F32      S0, S0, S2
57BC4E:  VSTRGT          S0, [R0]
57BC52:  LDR             R1, [R4,#0x14]
57BC54:  VLDR            S2, [R4,#0x48]
57BC58:  VLDR            S4, [R4,#0x4C]
57BC5C:  VLDR            S8, [R1,#0x10]
57BC60:  VLDR            S10, [R1,#0x14]
57BC64:  VMUL.F32        S2, S2, S8
57BC68:  VLDR            S6, [R4,#0x50]
57BC6C:  VMUL.F32        S4, S4, S10
57BC70:  VLDR            S12, [R1,#0x18]
57BC74:  VMUL.F32        S6, S6, S12
57BC78:  VADD.F32        S2, S2, S4
57BC7C:  VADD.F32        S4, S2, S6
57BC80:  VLDR            S2, =0.1
57BC84:  VCMPE.F32       S4, S2
57BC88:  VMRS            APSR_nzcv, FPSCR
57BC8C:  ITT LE
57BC8E:  VCMPELE.F32     S4, #0.0
57BC92:  VMRSLE          APSR_nzcv, FPSCR
57BC96:  BGE             loc_57BC9E
57BC98:  VLDR            S2, =0.0
57BC9C:  B               loc_57BCAC
57BC9E:  VCMPE.F32       S4, S2
57BCA2:  VMRS            APSR_nzcv, FPSCR
57BCA6:  IT LE
57BCA8:  VMOVLE.F32      S2, S4
57BCAC:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57BCB4)
57BCAE:  MOVS            R2, #0
57BCB0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57BCB2:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57BCB4:  VLDR            S4, [R1]
57BCB8:  VMUL.F32        S2, S2, S4
57BCBC:  VSUB.F32        S0, S0, S2
57BCC0:  VMOV            R3, S0
57BCC4:  VSTR            S0, [R0]
57BCC8:  LDR.W           R1, [R4,#0x6B0]
57BCCC:  MOVS            R0, #1
57BCCE:  STR             R0, [SP,#0x60+var_60]
57BCD0:  MOV             R0, R4
57BCD2:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
57BCD6:  ADD             R0, SP, #0x60+var_58; this
57BCD8:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
57BCDC:  ADD             SP, SP, #0x50 ; 'P'
57BCDE:  POP.W           {R11}
57BCE2:  POP             {R4-R7,PC}
