; =========================================================
; Game Engine Function: _ZN6CPools14LoadObjectPoolEv
; Address            : 0x488960 - 0x488BDA
; =========================================================

488960:  PUSH            {R4-R7,LR}
488962:  ADD             R7, SP, #0xC
488964:  PUSH.W          {R8-R11}
488968:  SUB             SP, SP, #4
48896A:  VPUSH           {D8}
48896E:  SUB.W           SP, SP, #0x9C0
488972:  LDR             R0, =(UseDataFence_ptr - 0x488978)
488974:  ADD             R0, PC; UseDataFence_ptr
488976:  LDR             R0, [R0]; UseDataFence
488978:  LDRB            R4, [R0]
48897A:  MOVS            R0, #0
48897C:  STR.W           R0, [R7,#var_6C]
488980:  CBZ             R4, loc_488996
488982:  LDR             R1, =(UseDataFence_ptr - 0x488988)
488984:  ADD             R1, PC; UseDataFence_ptr
488986:  LDR             R5, [R1]; UseDataFence
488988:  MOVS            R1, #(stderr+2); void *
48898A:  STRB            R0, [R5]
48898C:  ADD.W           R0, SP, #0x9E8+var_520; this
488990:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488994:  STRB            R4, [R5]
488996:  SUB.W           R0, R7, #-var_6C; this
48899A:  MOVS            R1, #byte_4; void *
48899C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4889A0:  LDR.W           R4, [R7,#var_6C]
4889A4:  CMP             R4, #0
4889A6:  BEQ.W           loc_488BBE
4889AA:  ADD.W           R0, SP, #0x9E8+var_520
4889AE:  MOV.W           R1, #0x4B0
4889B2:  MOVS            R2, #0xFF
4889B4:  BLX             j___aeabi_memset8_1
4889B8:  ADD             R0, SP, #0x9E8+var_9D0
4889BA:  MOV.W           R1, #0x4B0
4889BE:  BLX             j___aeabi_memclr8
4889C2:  CMP             R4, #1
4889C4:  BLT.W           loc_488BBA
4889C8:  LDR             R0, =(UseDataFence_ptr - 0x4889DA)
4889CA:  SUB.W           R5, R7, #-var_60
4889CE:  VLDR            S16, =0.01
4889D2:  MOV.W           R11, #0
4889D6:  ADD             R0, PC; UseDataFence_ptr
4889D8:  MOV.W           R8, #0
4889DC:  MOV.W           R9, #0
4889E0:  LDR             R0, [R0]; UseDataFence
4889E2:  STR             R0, [SP,#0x9E8+var_9D4]
4889E4:  LDR             R0, =(UseDataFence_ptr - 0x4889EA)
4889E6:  ADD             R0, PC; UseDataFence_ptr
4889E8:  LDR             R0, [R0]; UseDataFence
4889EA:  STR             R0, [SP,#0x9E8+var_9D8]
4889EC:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4889F2)
4889EE:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4889F0:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4889F2:  STR             R0, [SP,#0x9E8+var_9DC]
4889F4:  LDR             R0, =(UseDataFence_ptr - 0x4889FA)
4889F6:  ADD             R0, PC; UseDataFence_ptr
4889F8:  LDR             R0, [R0]; UseDataFence
4889FA:  STR             R0, [SP,#0x9E8+var_9E0]
4889FC:  LDR             R0, =(UseDataFence_ptr - 0x488A02)
4889FE:  ADD             R0, PC; UseDataFence_ptr
488A00:  LDR             R0, [R0]; UseDataFence
488A02:  STR             R0, [SP,#0x9E8+var_9E4]
488A04:  B               loc_488A14
488A06:  ADD.W           R1, SP, #0x9E8+var_520
488A0A:  STR.W           R0, [R1,R8,LSL#2]
488A0E:  ADD.W           R8, R8, #1
488A12:  B               loc_488B86
488A14:  LDR             R0, [SP,#0x9E8+var_9D4]
488A16:  LDRB            R4, [R0]
488A18:  CBZ             R4, loc_488A2A
488A1A:  LDR             R6, [SP,#0x9E8+var_9E4]
488A1C:  MOVS            R0, #0
488A1E:  MOVS            R1, #(stderr+2); void *
488A20:  STRB            R0, [R6]
488A22:  MOV             R0, R5; this
488A24:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488A28:  STRB            R4, [R6]
488A2A:  SUB.W           R0, R7, #-var_64; this
488A2E:  MOVS            R1, #byte_4; void *
488A30:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488A34:  LDR             R0, [SP,#0x9E8+var_9D8]
488A36:  LDRB            R4, [R0]
488A38:  CBZ             R4, loc_488A4A
488A3A:  LDR             R6, [SP,#0x9E8+var_9E0]
488A3C:  MOVS            R0, #0
488A3E:  MOVS            R1, #(stderr+2); void *
488A40:  STRB            R0, [R6]
488A42:  MOV             R0, R5; this
488A44:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488A48:  STRB            R4, [R6]
488A4A:  SUB.W           R0, R7, #-var_68; this
488A4E:  MOVS            R1, #byte_4; void *
488A50:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488A54:  LDR             R0, [SP,#0x9E8+var_9DC]
488A56:  LDR.W           R1, [R7,#var_64]; CObject *
488A5A:  LDR             R0, [R0]
488A5C:  ASRS            R2, R1, #8
488A5E:  LDR             R3, [R0,#4]
488A60:  LDRSB           R3, [R3,R2]
488A62:  CMP             R3, #0
488A64:  BLT             loc_488A7A
488A66:  LDR             R0, [R0]
488A68:  MOV.W           R3, #0x1A4
488A6C:  MLA.W           R0, R2, R3, R0; this
488A70:  CBZ             R0, loc_488A7A
488A72:  BLX             j__ZN11CPopulation20ConvertToDummyObjectEP7CObject; CPopulation::ConvertToDummyObject(CObject *)
488A76:  LDR.W           R1, [R7,#var_64]; unsigned int
488A7A:  MOV.W           R0, #(elf_hash_bucket+0x88); this
488A7E:  BLX             j__ZN7CObjectnwEji; CObject::operator new(uint,int)
488A82:  LDR.W           R1, [R7,#var_68]; int
488A86:  MOVS            R2, #0; bool
488A88:  MOV             R6, R0
488A8A:  MOVS            R4, #0
488A8C:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
488A90:  SUB.W           R0, R7, #-var_2C; this
488A94:  MOVS            R1, #byte_4; void *
488A96:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488A9A:  MOV             R0, R5; this
488A9C:  MOVS            R1, #dword_34; void *
488A9E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
488AA2:  MOV             R0, R5; this
488AA4:  MOV             R1, R6; CObject *
488AA6:  MOV             R10, R5
488AA8:  BLX             j__ZN20CObjectSaveStructure7ExtractEP7CObject; CObjectSaveStructure::Extract(CObject *)
488AAC:  LDR             R0, [R6,#0x14]
488AAE:  ADD             R5, SP, #0x9E8+var_9D0
488AB0:  ADD.W           R1, R0, #0x30 ; '0'
488AB4:  CMP             R0, #0
488AB6:  LDR             R0, =(unk_9ECD20 - 0x488AC6)
488AB8:  IT EQ
488ABA:  ADDEQ           R1, R6, #4; CEntity *
488ABC:  VLDR            S0, [R1]
488AC0:  MOV             R12, R5
488AC2:  ADD             R0, PC; unk_9ECD20
488AC4:  VLDR            S2, [R1,#4]
488AC8:  VLDR            S4, [R1,#8]
488ACC:  ADDS            R0, #4
488ACE:  VLDR            S6, [R0,#-4]
488AD2:  VLDR            S8, [R0]
488AD6:  VSUB.F32        S6, S0, S6
488ADA:  VLDR            S10, [R0,#4]
488ADE:  VSUB.F32        S8, S2, S8
488AE2:  VSUB.F32        S10, S4, S10
488AE6:  VMUL.F32        S6, S6, S6
488AEA:  VMUL.F32        S8, S8, S8
488AEE:  VMUL.F32        S10, S10, S10
488AF2:  VADD.F32        S6, S6, S8
488AF6:  VADD.F32        S6, S6, S10
488AFA:  VSQRT.F32       S6, S6
488AFE:  VCMPE.F32       S6, S16
488B02:  VMRS            APSR_nzcv, FPSCR
488B06:  BLT             loc_488B76
488B08:  ADDS            R4, #1
488B0A:  ADDS            R0, #0xC
488B0C:  CMP             R4, #0x16
488B0E:  BLS             loc_488ACE
488B10:  MOVS            R0, #0
488B12:  CMP.W           R9, #0
488B16:  BEQ             loc_488B7E
488B18:  CBNZ            R0, loc_488B86
488B1A:  CMP.W           R11, #1
488B1E:  MOVW            R5, #0xC0D
488B22:  BLT             loc_488B7E
488B24:  LDRSH.W         R1, [R6,#0x26]
488B28:  MOVS            R0, #0
488B2A:  ORR.W           R2, R1, #8
488B2E:  CMP             R2, R5
488B30:  BEQ             loc_488B6E
488B32:  LDR.W           R3, [R12,R0,LSL#2]
488B36:  LDR             R4, [R3,#0x14]
488B38:  ADD.W           R2, R4, #0x30 ; '0'
488B3C:  CMP             R4, #0
488B3E:  IT EQ
488B40:  ADDEQ           R2, R3, #4
488B42:  VLDR            S6, [R2]
488B46:  VCMP.F32        S6, S0
488B4A:  VMRS            APSR_nzcv, FPSCR
488B4E:  BNE             loc_488B6E
488B50:  VLDR            S6, [R2,#4]
488B54:  VCMP.F32        S6, S2
488B58:  VMRS            APSR_nzcv, FPSCR
488B5C:  ITTT EQ
488B5E:  VLDREQ          S6, [R2,#8]
488B62:  VCMPEQ.F32      S6, S4
488B66:  VMRSEQ          APSR_nzcv, FPSCR
488B6A:  BEQ.W           loc_488A06
488B6E:  ADDS            R0, #1
488B70:  CMP             R0, R11
488B72:  BLT             loc_488B2A
488B74:  B               loc_488B7E
488B76:  MOVS            R0, #1
488B78:  CMP.W           R9, #0
488B7C:  BNE             loc_488B18
488B7E:  STR.W           R6, [R12,R11,LSL#2]
488B82:  ADD.W           R11, R11, #1
488B86:  MOV             R0, R6; this
488B88:  MOV             R5, R10
488B8A:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
488B8E:  LDR.W           R0, [R7,#var_6C]
488B92:  ADD.W           R9, R9, #1
488B96:  CMP             R9, R0
488B98:  BLT.W           loc_488A14
488B9C:  ADD             R5, SP, #0x9E8+var_9D0
488B9E:  CMP.W           R8, #0
488BA2:  BEQ             loc_488BBA
488BA4:  ADD.W           R4, SP, #0x9E8+var_520
488BA8:  LDR.W           R0, [R4],#4
488BAC:  LDR.W           R0, [R5,R0,LSL#2]; this
488BB0:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
488BB4:  SUBS.W          R8, R8, #1
488BB8:  BNE             loc_488BA8
488BBA:  MOVS            R0, #1
488BBC:  B               loc_488BCA
488BBE:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x488BC6)
488BC0:  MOVS            R1, #1
488BC2:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
488BC4:  LDR             R0, [R0]; CGenericGameStorage::ms_bFailed ...
488BC6:  STRB            R1, [R0]; CGenericGameStorage::ms_bFailed
488BC8:  MOVS            R0, #0
488BCA:  ADD.W           SP, SP, #0x9C0
488BCE:  VPOP            {D8}
488BD2:  ADD             SP, SP, #4
488BD4:  POP.W           {R8-R11}
488BD8:  POP             {R4-R7,PC}
