; =========================================================
; Game Engine Function: _ZN8CVehicle23SetTransmissionRotationEP7RwFrameff7CVectorb
; Address            : 0x58883C - 0x588932
; =========================================================

58883C:  CMP             R1, #0
58883E:  IT EQ
588840:  BXEQ            LR
588842:  PUSH            {R4-R7,LR}
588844:  ADD             R7, SP, #0x14+var_8
588846:  PUSH.W          {R8,R9,R11}
58884A:  VPUSH           {D8-D12}
58884E:  SUB             SP, SP, #0x48 ; 'H'
588850:  MOVS            R0, #0
588852:  ADDS            R1, #0x10
588854:  MOV             R4, SP
588856:  LDRD.W          R8, R6, [R7,#8]
58885A:  LDRD.W          R5, R9, [R7,#0x10]
58885E:  VMOV            S18, R2
588862:  STRD.W          R0, R0, [SP,#0x90+var_50]
588866:  MOV             R0, R4
588868:  MOVS            R2, #0
58886A:  VMOV            S16, R3
58886E:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
588872:  VMOV.F32        S0, #0.5
588876:  VLDR            S22, [SP,#0x90+var_5C]
58887A:  VADD.F32        S2, S18, S16
58887E:  VLDR            S20, [SP,#0x90+var_60]
588882:  VMOV            S4, R5
588886:  VLDR            S24, [SP,#0x90+var_58]
58888A:  VMUL.F32        S0, S2, S0
58888E:  VMOV            S2, R6
588892:  VSUB.F32        S2, S22, S2
588896:  VSUB.F32        S0, S0, S4
58889A:  VMOV            R1, S2; x
58889E:  VMOV            R0, S0; y
5888A2:  BLX             atan2f
5888A6:  VLDR            S2, =3.1416
5888AA:  BIC.W           R1, R8, #0x80000000
5888AE:  VLDR            S0, =-0.0
5888B2:  CMP.W           R9, #0
5888B6:  IT NE
5888B8:  VMOVNE.F32      S0, S2
5888BC:  VMOV            S2, R1
5888C0:  VSUB.F32        S4, S18, S16
5888C4:  VADD.F32        S2, S2, S2
5888C8:  VMOV            S6, R0
5888CC:  VSUB.F32        S0, S0, S6
5888D0:  VMOV            R0, S4; y
5888D4:  VMOV            R1, S2; x
5888D8:  VMOV            R5, S0
5888DC:  BLX             atan2f
5888E0:  MOV             R6, R0
5888E2:  MOV             R0, R4; this
5888E4:  MOV             R1, R5; x
5888E6:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
5888EA:  MOV             R0, R4; this
5888EC:  MOV             R1, R6; x
5888EE:  BLX             j__ZN7CMatrix7RotateYEf; CMatrix::RotateY(float)
5888F2:  VLDR            S0, [SP,#0x90+var_60]
5888F6:  MOV             R0, R4; this
5888F8:  VLDR            S2, [SP,#0x90+var_5C]
5888FC:  VLDR            S4, [SP,#0x90+var_58]
588900:  VADD.F32        S0, S20, S0
588904:  VADD.F32        S2, S22, S2
588908:  VADD.F32        S4, S24, S4
58890C:  VSTR            S0, [SP,#0x90+var_60]
588910:  VSTR            S2, [SP,#0x90+var_5C]
588914:  VSTR            S4, [SP,#0x90+var_58]
588918:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
58891C:  MOV             R0, R4; this
58891E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
588922:  ADD             SP, SP, #0x48 ; 'H'
588924:  VPOP            {D8-D12}
588928:  POP.W           {R8,R9,R11}
58892C:  POP.W           {R4-R7,LR}
588930:  BX              LR
