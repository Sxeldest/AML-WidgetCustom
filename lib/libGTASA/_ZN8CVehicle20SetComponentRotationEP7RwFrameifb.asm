; =========================================================
; Game Engine Function: _ZN8CVehicle20SetComponentRotationEP7RwFrameifb
; Address            : 0x588770 - 0x58883C
; =========================================================

588770:  PUSH            {R4-R7,LR}
588772:  ADD             R7, SP, #0xC
588774:  PUSH.W          {R8}
588778:  VPUSH           {D8-D10}
58877C:  SUB             SP, SP, #0x48
58877E:  MOV             R8, R3
588780:  MOV             R5, R2
588782:  CMP             R1, #0
588784:  BEQ             loc_588830
588786:  ADDS            R1, #0x10
588788:  MOVS            R6, #0
58878A:  MOV             R0, SP
58878C:  MOVS            R2, #0
58878E:  LDR             R4, [R7,#arg_0]
588790:  STRD.W          R6, R6, [SP,#0x70+var_30]
588794:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
588798:  VLDR            S16, [SP,#0x70+var_40]
58879C:  CMP             R4, #1
58879E:  VLDR            S18, [SP,#0x70+var_3C]
5887A2:  VLDR            S20, [SP,#0x70+var_38]
5887A6:  BNE             loc_5887BC
5887A8:  CBZ             R5, loc_5887D8
5887AA:  CMP             R5, #1
5887AC:  BEQ             loc_5887E2
5887AE:  CMP             R5, #2
5887B0:  BNE             loc_5887FE
5887B2:  MOV             R0, SP; this
5887B4:  MOV             R1, R8; x
5887B6:  BLX             j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
5887BA:  B               loc_5887FE
5887BC:  CMP             R5, #0
5887BE:  STRD.W          R6, R6, [SP,#0x70+var_40]
5887C2:  STR             R6, [SP,#0x70+var_38]
5887C4:  BEQ             loc_5887EC
5887C6:  CMP             R5, #1
5887C8:  BEQ             loc_5887F6
5887CA:  CMP             R5, #2
5887CC:  BNE             loc_5887FE
5887CE:  MOV             R0, SP; this
5887D0:  MOV             R1, R8; x
5887D2:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
5887D6:  B               loc_5887FE
5887D8:  MOV             R0, SP; this
5887DA:  MOV             R1, R8; x
5887DC:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
5887E0:  B               loc_5887FE
5887E2:  MOV             R0, SP; this
5887E4:  MOV             R1, R8; x
5887E6:  BLX             j__ZN7CMatrix10SetRotateYEf; CMatrix::SetRotateY(float)
5887EA:  B               loc_5887FE
5887EC:  MOV             R0, SP; this
5887EE:  MOV             R1, R8; x
5887F0:  BLX             j__ZN7CMatrix7RotateXEf; CMatrix::RotateX(float)
5887F4:  B               loc_5887FE
5887F6:  MOV             R0, SP; this
5887F8:  MOV             R1, R8; x
5887FA:  BLX             j__ZN7CMatrix7RotateYEf; CMatrix::RotateY(float)
5887FE:  VLDR            S0, [SP,#0x70+var_40]
588802:  MOV             R4, SP
588804:  VLDR            S2, [SP,#0x70+var_3C]
588808:  MOV             R0, R4; this
58880A:  VLDR            S4, [SP,#0x70+var_38]
58880E:  VADD.F32        S0, S16, S0
588812:  VADD.F32        S2, S18, S2
588816:  VADD.F32        S4, S20, S4
58881A:  VSTR            S0, [SP,#0x70+var_40]
58881E:  VSTR            S2, [SP,#0x70+var_3C]
588822:  VSTR            S4, [SP,#0x70+var_38]
588826:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
58882A:  MOV             R0, R4; this
58882C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
588830:  ADD             SP, SP, #0x48 ; 'H'
588832:  VPOP            {D8-D10}
588836:  POP.W           {R8}
58883A:  POP             {R4-R7,PC}
