; =========================================================
; Game Engine Function: _ZN15CCutsceneObject14ProcessControlEv
; Address            : 0x465B84 - 0x465CF2
; =========================================================

465B84:  PUSH            {R4,R5,R7,LR}
465B86:  ADD             R7, SP, #8
465B88:  SUB             SP, SP, #0x48
465B8A:  MOV             R4, R0
465B8C:  LDR.W           R0, [R4,#0x184]
465B90:  CMP             R0, #0
465B92:  ITT NE
465B94:  LDRNE.W         R0, [R4,#0x188]
465B98:  CMPNE           R0, #0
465B9A:  BEQ             loc_465BB6
465B9C:  MOV             R0, R4
465B9E:  LDR.W           R1, [R0,#0x1C]!
465BA2:  TST.W           R1, #0x40
465BA6:  BNE             loc_465BB6
465BA8:  LDR             R2, [R0,#4]
465BAA:  ORR.W           R1, R1, #0x40 ; '@'
465BAE:  STRD.W          R1, R2, [R0]
465BB2:  ADD             SP, SP, #0x48 ; 'H'
465BB4:  POP             {R4,R5,R7,PC}
465BB6:  MOV             R0, R4; this
465BB8:  BLX             j__ZN9CPhysical14ProcessControlEv; CPhysical::ProcessControl(void)
465BBC:  LDR.W           R0, [R4,#0x184]
465BC0:  CBZ             R0, loc_465C0C
465BC2:  LDR.W           R1, [R4,#0x188]
465BC6:  CMP             R1, #0
465BC8:  BEQ.W           loc_465CD0
465BCC:  MOV             R0, R1; this
465BCE:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
465BD2:  LDR.W           R0, [R4,#0x188]
465BD6:  LDR             R0, [R0,#0x18]
465BD8:  BLX             j__Z25GetAnimHierarchyFromClumpP7RpClump; GetAnimHierarchyFromClump(RpClump *)
465BDC:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
465BE0:  LDR.W           R1, [R4,#0x184]
465BE4:  MOV             R5, SP
465BE6:  MOVS            R2, #0
465BE8:  ADD.W           R1, R0, R1,LSL#6
465BEC:  MOV             R0, R5
465BEE:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
465BF2:  LDR             R0, [R4,#0x14]
465BF4:  MOV             R1, R5
465BF6:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
465BFA:  MOV             R0, R5; this
465BFC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
465C00:  LDR             R0, [R4,#0x1C]
465C02:  BIC.W           R0, R0, #0x40 ; '@'
465C06:  STR             R0, [R4,#0x1C]
465C08:  ADD             SP, SP, #0x48 ; 'H'
465C0A:  POP             {R4,R5,R7,PC}
465C0C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x465C1E)
465C0E:  VMOV.F32        S2, #1.0
465C12:  VLDR            S4, =0.01
465C16:  MOVW            R1, #0x2020
465C1A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
465C1C:  VLDR            S6, =100.0
465C20:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
465C22:  VLDR            S0, [R0]
465C26:  VCMPE.F32       S0, S4
465C2A:  VMRS            APSR_nzcv, FPSCR
465C2E:  VDIV.F32        S2, S2, S0
465C32:  IT LT
465C34:  VMOVLT.F32      S2, S6
465C38:  LDRH.W          R0, [R4,#0x44]
465C3C:  VLDR            S4, [R4,#0x48]
465C40:  VLDR            S6, [R4,#0x4C]
465C44:  TST             R0, R1
465C46:  VLDR            S8, [R4,#0x50]
465C4A:  VMUL.F32        S4, S4, S2
465C4E:  VMUL.F32        S6, S2, S6
465C52:  VMUL.F32        S2, S2, S8
465C56:  VSTR            S4, [R4,#0x48]
465C5A:  VSTR            S6, [R4,#0x4C]
465C5E:  VSTR            S2, [R4,#0x50]
465C62:  ITTTT NE
465C64:  MOVNE           R0, #0
465C66:  STRDNE.W        R0, R0, [R4,#0x48]
465C6A:  STRNE           R0, [R4,#0x50]
465C6C:  ADDNE           SP, SP, #0x48 ; 'H'
465C6E:  IT NE
465C70:  POPNE           {R4,R5,R7,PC}
465C72:  VMUL.F32        S4, S0, S4
465C76:  VLDR            S14, [R4,#0x198]
465C7A:  VMUL.F32        S6, S0, S6
465C7E:  VLDR            S1, [R4,#0x19C]
465C82:  VMUL.F32        S0, S0, S2
465C86:  VLDR            S3, [R4,#0x1A0]
465C8A:  VLDR            S8, [R4,#0x18C]
465C8E:  VLDR            S10, [R4,#0x190]
465C92:  LDR             R0, [R4,#0x14]
465C94:  VLDR            S12, [R4,#0x194]
465C98:  VADD.F32        S2, S4, S14
465C9C:  VADD.F32        S4, S6, S1
465CA0:  VADD.F32        S0, S0, S3
465CA4:  VADD.F32        S6, S8, S2
465CA8:  VSTR            S2, [R4,#0x198]
465CAC:  VADD.F32        S8, S10, S4
465CB0:  VSTR            S4, [R4,#0x19C]
465CB4:  VSTR            S0, [R4,#0x1A0]
465CB8:  VADD.F32        S0, S0, S12
465CBC:  VSTR            S6, [R0,#0x30]
465CC0:  LDR             R0, [R4,#0x14]
465CC2:  VSTR            S8, [R0,#0x34]
465CC6:  LDR             R0, [R4,#0x14]
465CC8:  VSTR            S0, [R0,#0x38]
465CCC:  ADD             SP, SP, #0x48 ; 'H'
465CCE:  POP             {R4,R5,R7,PC}
465CD0:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
465CD4:  MOV             R5, SP
465CD6:  MOV             R1, R0
465CD8:  MOV             R0, R5
465CDA:  MOVS            R2, #0
465CDC:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
465CE0:  LDR             R0, [R4,#0x14]
465CE2:  MOV             R1, R5
465CE4:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
465CE8:  MOV             R0, R5; this
465CEA:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
465CEE:  ADD             SP, SP, #0x48 ; 'H'
465CF0:  POP             {R4,R5,R7,PC}
