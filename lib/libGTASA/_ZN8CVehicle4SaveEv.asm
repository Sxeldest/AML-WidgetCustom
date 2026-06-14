; =========================================================
; Game Engine Function: _ZN8CVehicle4SaveEv
; Address            : 0x487830 - 0x487900
; =========================================================

487830:  PUSH            {R4,R5,R7,LR}
487832:  ADD             R7, SP, #8
487834:  SUB             SP, SP, #0x80
487836:  MOV             R5, R0
487838:  MOVS            R0, #0
48783A:  STRD.W          R0, R0, [SP,#0x88+var_48]
48783E:  MOV             R4, SP
487840:  LDR             R1, [R5,#0x14]
487842:  MOV             R0, R4
487844:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
487848:  LDRB.W          R0, [R5,#0x438]
48784C:  STRB.W          R0, [SP,#0x88+var_3F]
487850:  LDRB.W          R0, [R5,#0x439]
487854:  STRB.W          R0, [SP,#0x88+var_3E]
487858:  LDRB.W          R0, [R5,#0x43A]
48785C:  STRB.W          R0, [SP,#0x88+var_3D]
487860:  LDRB.W          R0, [R5,#0x43B]
487864:  STRB.W          R0, [SP,#0x88+var_3C]
487868:  LDRH.W          R0, [R5,#0x460]
48786C:  STRH.W          R0, [SP,#0x88+var_3A]
487870:  LDRB.W          R0, [R5,#0x48C]
487874:  STRB.W          R0, [SP,#0x88+var_38]
487878:  LDR.W           R0, [R5,#0x498]
48787C:  STR             R0, [SP,#0x88+var_34]
48787E:  LDR.W           R1, [R5,#0x4A4]
487882:  LDR.W           R0, [R5,#0x4A0]
487886:  STRD.W          R0, R1, [SP,#0x88+var_30]
48788A:  LDR.W           R1, [R5,#0x430]
48788E:  LDR.W           R0, [R5,#0x42C]
487892:  STRD.W          R0, R1, [SP,#0x88+var_28]
487896:  LDRB.W          R0, [R5,#0x4A8]
48789A:  STRB.W          R0, [SP,#0x88+var_40]
48789E:  LDR.W           R0, [R5,#0x4CC]
4878A2:  STR             R0, [SP,#0x88+var_20]
4878A4:  LDR.W           R0, [R5,#0x508]
4878A8:  STR             R0, [SP,#0x88+var_1C]
4878AA:  LDR             R0, [R5,#0x44]
4878AC:  STR             R0, [SP,#0x88+var_18]
4878AE:  LDRD.W          R0, R1, [R5,#0x90]
4878B2:  STRD.W          R0, R1, [SP,#0x88+var_14]
4878B6:  LDR.W           R0, [R5,#0xA4]
4878BA:  STR             R0, [SP,#0x88+var_C]
4878BC:  MOVS            R0, #4; byte_count
4878BE:  BLX             malloc
4878C2:  MOV             R5, R0
4878C4:  MOVS            R0, #0x80
4878C6:  STR             R0, [R5]
4878C8:  MOV             R0, R5; this
4878CA:  MOVS            R1, #byte_4; void *
4878CC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4878D0:  MOV             R0, R5; p
4878D2:  BLX             free
4878D6:  MOVS            R0, #0x80; byte_count
4878D8:  BLX             malloc
4878DC:  MOV             R1, R4; void *
4878DE:  MOVS            R2, #0x80; size_t
4878E0:  MOV             R5, R0
4878E2:  BLX             memcpy_1
4878E6:  MOV             R0, R5; this
4878E8:  MOVS            R1, #dword_80; void *
4878EA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4878EE:  MOV             R0, R5; p
4878F0:  BLX             free
4878F4:  MOV             R0, R4; this
4878F6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4878FA:  MOVS            R0, #1
4878FC:  ADD             SP, SP, #0x80
4878FE:  POP             {R4,R5,R7,PC}
