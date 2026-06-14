; =========================================================
; Game Engine Function: _Z10IsOnScreenRK7CVectorfb
; Address            : 0x596450 - 0x5964CC
; =========================================================

596450:  PUSH            {R4-R7,LR}
596452:  ADD             R7, SP, #0xC
596454:  PUSH.W          {R8}
596458:  VPUSH           {D8-D10}
59645C:  SUB             SP, SP, #0x58
59645E:  MOV             R6, R0
596460:  LDR             R0, =(Scene_ptr - 0x59646A)
596462:  ADD             R4, SP, #0x80+var_7C
596464:  MOV             R5, R1
596466:  ADD             R0, PC; Scene_ptr
596468:  MOV             R8, R2
59646A:  MOVS            R2, #0
59646C:  LDR             R0, [R0]; Scene
59646E:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
596470:  ADD.W           R1, R0, #0x20 ; ' '
596474:  VLDR            S20, [R0,#0x80]
596478:  VLDR            S16, [R0,#0x84]
59647C:  MOV             R0, R4
59647E:  BLX.W           j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
596482:  ADD             R0, SP, #0x80+var_34
596484:  MOV             R1, R4
596486:  MOV             R2, R6
596488:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
59648C:  MOV             R0, R4; this
59648E:  VLDR            S18, [SP,#0x80+var_2C]
596492:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
596496:  VMOV            S0, R5
59649A:  VSUB.F32        S0, S20, S0
59649E:  VCMPE.F32       S18, S0
5964A2:  VMRS            APSR_nzcv, FPSCR
5964A6:  BLE             loc_5964BE
5964A8:  VCMPE.F32       S18, S16
5964AC:  MOVS            R0, #1
5964AE:  VMRS            APSR_nzcv, FPSCR
5964B2:  BLT             loc_5964C0
5964B4:  CMP.W           R8, #0
5964B8:  IT NE
5964BA:  MOVNE           R0, #0
5964BC:  B               loc_5964C0
5964BE:  MOVS            R0, #0
5964C0:  ADD             SP, SP, #0x58 ; 'X'
5964C2:  VPOP            {D8-D10}
5964C6:  POP.W           {R8}
5964CA:  POP             {R4-R7,PC}
