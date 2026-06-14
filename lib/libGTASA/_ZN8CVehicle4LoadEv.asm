; =========================================================
; Game Engine Function: _ZN8CVehicle4LoadEv
; Address            : 0x487900 - 0x4879AC
; =========================================================

487900:  PUSH            {R4,R5,R7,LR}
487902:  ADD             R7, SP, #8
487904:  SUB             SP, SP, #0x88
487906:  MOV             R4, R0
487908:  MOVS            R0, #0
48790A:  STRD.W          R0, R0, [SP,#0x90+var_50]
48790E:  ADD             R0, SP, #0x90+var_C; this
487910:  MOVS            R1, #byte_4; void *
487912:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
487916:  MOV             R5, SP
487918:  MOVS            R1, #dword_80; void *
48791A:  MOV             R0, R5; this
48791C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
487920:  MOV             R0, R4; this
487922:  MOV             R1, R5; CMatrix *
487924:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
487928:  LDRB.W          R0, [SP,#0x90+var_48+1]
48792C:  MOVS            R2, #1; bool
48792E:  STRB.W          R0, [R4,#0x438]
487932:  LDRB.W          R0, [SP,#0x90+var_48+2]
487936:  STRB.W          R0, [R4,#0x439]
48793A:  LDRB.W          R0, [SP,#0x90+var_48+3]
48793E:  STRB.W          R0, [R4,#0x43A]
487942:  LDRB.W          R0, [SP,#0x90+var_44]
487946:  STRB.W          R0, [R4,#0x43B]
48794A:  LDRH.W          R0, [SP,#0x90+var_42]
48794E:  STRH.W          R0, [R4,#0x460]
487952:  LDRB.W          R0, [SP,#0x90+var_40]
487956:  STRB.W          R0, [R4,#0x48C]
48795A:  LDR             R0, [SP,#0x90+var_3C]
48795C:  STR.W           R0, [R4,#0x498]
487960:  LDRD.W          R0, R1, [SP,#0x90+var_38]
487964:  STR.W           R0, [R4,#0x4A0]
487968:  STR.W           R1, [R4,#0x4A4]
48796C:  LDRD.W          R0, R1, [SP,#0x90+var_30]
487970:  STR.W           R1, [R4,#0x430]
487974:  STR.W           R0, [R4,#0x42C]
487978:  MOV             R0, R4; this
48797A:  LDRB.W          R1, [SP,#0x90+var_48]; int
48797E:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
487982:  LDR             R0, [SP,#0x90+var_28]
487984:  STR.W           R0, [R4,#0x4CC]
487988:  LDR             R0, [SP,#0x90+var_24]
48798A:  STR.W           R0, [R4,#0x508]
48798E:  LDR             R0, [SP,#0x90+var_20]
487990:  STR             R0, [R4,#0x44]
487992:  LDRD.W          R0, R1, [SP,#0x90+var_1C]
487996:  STRD.W          R0, R1, [R4,#0x90]
48799A:  LDR             R0, [SP,#0x90+var_14]
48799C:  STR.W           R0, [R4,#0xA4]
4879A0:  MOV             R0, R5; this
4879A2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4879A6:  MOVS            R0, #1
4879A8:  ADD             SP, SP, #0x88
4879AA:  POP             {R4,R5,R7,PC}
