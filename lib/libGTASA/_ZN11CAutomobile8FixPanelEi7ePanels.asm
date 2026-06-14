; =========================================================
; Game Engine Function: _ZN11CAutomobile8FixPanelEi7ePanels
; Address            : 0x55D736 - 0x55D7B2
; =========================================================

55D736:  PUSH            {R4,R5,R7,LR}
55D738:  ADD             R7, SP, #8
55D73A:  SUB             SP, SP, #0x48
55D73C:  MOV             R4, R0
55D73E:  ADDW            R0, R4, #0x5B4; this
55D742:  MOV             R5, R1
55D744:  MOV             R1, R2; int
55D746:  MOVS            R2, #0; unsigned int
55D748:  BLX             j__ZN14CDamageManager14SetPanelStatusEij; CDamageManager::SetPanelStatus(int,uint)
55D74C:  LDRSH.W         R1, [R4,#0x6C0]
55D750:  MOVW            R0, #0xFFFF
55D754:  CMP             R1, R5
55D756:  IT EQ
55D758:  STRHEQ.W        R0, [R4,#0x6C0]
55D75C:  LDRSH.W         R1, [R4,#0x6E0]
55D760:  CMP             R1, R5
55D762:  IT EQ
55D764:  STRHEQ.W        R0, [R4,#0x6E0]
55D768:  LDRSH.W         R1, [R4,#0x700]
55D76C:  CMP             R1, R5
55D76E:  IT EQ
55D770:  STRHEQ.W        R0, [R4,#0x700]
55D774:  ADD.W           R0, R4, R5,LSL#2
55D778:  LDR.W           R1, [R0,#0x65C]
55D77C:  CBZ             R1, loc_55D7AE
55D77E:  ADDW            R5, R0, #0x65C
55D782:  MOV             R0, R4
55D784:  MOVS            R2, #1
55D786:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
55D78A:  LDR             R0, [R5]
55D78C:  MOV             R4, SP
55D78E:  MOVS            R2, #0
55D790:  ADD.W           R1, R0, #0x10
55D794:  MOV             R0, R4
55D796:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
55D79A:  ADD             R3, SP, #0x50+var_20
55D79C:  LDM             R3, {R1-R3}; float
55D79E:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
55D7A2:  MOV             R0, R4; this
55D7A4:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
55D7A8:  MOV             R0, R4; this
55D7AA:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55D7AE:  ADD             SP, SP, #0x48 ; 'H'
55D7B0:  POP             {R4,R5,R7,PC}
