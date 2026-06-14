; =========================================================
; Game Engine Function: _ZN9CIplStore21EnsureIplsAreInMemoryERK7CVector
; Address            : 0x281B48 - 0x281CA6
; =========================================================

281B48:  PUSH            {R4-R7,LR}
281B4A:  ADD             R7, SP, #0xC
281B4C:  PUSH.W          {R8-R11}
281B50:  SUB             SP, SP, #4
281B52:  VPUSH           {D8-D9}
281B56:  SUB             SP, SP, #8
281B58:  MOV             R4, R0
281B5A:  LDR             R0, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x281B60)
281B5C:  ADD             R0, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
281B5E:  LDR             R0, [R0]; CStreaming::ms_disableStreaming ...
281B60:  LDRB            R0, [R0]; CStreaming::ms_disableStreaming
281B62:  CMP             R0, #0
281B64:  BNE.W           loc_281C98
281B68:  MOV.W           R0, #0xFFFFFFFF; int
281B6C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
281B70:  CBZ             R0, loc_281B8C
281B72:  MOV.W           R0, #0xFFFFFFFF; int
281B76:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
281B7A:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x281B84)
281B7C:  LDRB.W          R0, [R0,#0x33]
281B80:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
281B82:  LDR             R1, [R1]; CGame::currArea ...
281B84:  LDR             R1, [R1]; CGame::currArea
281B86:  CMP             R1, R0
281B88:  BNE.W           loc_281C98
281B8C:  MOV             R0, R4; this
281B8E:  MOV.W           R1, #0xFFFFFFFF; CVector *
281B92:  BLX             j__ZN9CIplStore15SetIplsRequiredERK7CVectori; CIplStore::SetIplsRequired(CVector const&,int)
281B96:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x281BA8)
281B98:  MOV.W           R11, #0
281B9C:  VLDR            S16, =190.0
281BA0:  MOVW            R2, #0x62A8; int
281BA4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
281BA6:  VLDR            S18, =-190.0
281BAA:  MOV.W           R8, #0
281BAE:  MOV.W           R9, #0
281BB2:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
281BB4:  ADD.W           R0, R0, #0x7B000
281BB8:  ADD.W           R6, R0, #0x530
281BBC:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281BC2)
281BBE:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
281BC0:  LDR             R5, [R0]; CIplStore::ms_pPool ...
281BC2:  LDR             R0, =(TheCamera_ptr - 0x281BC8)
281BC4:  ADD             R0, PC; TheCamera_ptr
281BC6:  LDR.W           R12, [R0]; TheCamera
281BCA:  LDR             R0, =(FrontEndMenuManager_ptr - 0x281BD0)
281BCC:  ADD             R0, PC; FrontEndMenuManager_ptr
281BCE:  LDR             R3, [R0]; FrontEndMenuManager
281BD0:  LDR             R0, [R5]; CIplStore::ms_pPool
281BD2:  LDR             R1, [R0,#4]
281BD4:  ADD             R1, R9
281BD6:  LDRSB.W         R1, [R1,#1]
281BDA:  CMP             R1, #0
281BDC:  BLT             loc_281C88
281BDE:  LDR             R0, [R0]
281BE0:  ADD.W           R10, R0, R8
281BE4:  LDRB.W          R0, [R10,#0x63]
281BE8:  CMP             R0, #0
281BEA:  BNE             loc_281C88
281BEC:  LDRB.W          R0, [R10,#0x62]
281BF0:  CMP             R0, #0
281BF2:  BEQ             loc_281C88
281BF4:  VLDR            S0, [R10,#0x34]
281BF8:  VADD.F32        S2, S0, S16
281BFC:  VLDR            S0, [R4]
281C00:  VCMPE.F32       S0, S2
281C04:  VMRS            APSR_nzcv, FPSCR
281C08:  BLT             loc_281C84
281C0A:  VLDR            S2, [R10,#0x3C]
281C0E:  VADD.F32        S2, S2, S18
281C12:  VCMPE.F32       S0, S2
281C16:  VMRS            APSR_nzcv, FPSCR
281C1A:  BGT             loc_281C84
281C1C:  VLDR            S2, [R10,#0x40]
281C20:  VLDR            S0, [R4,#4]
281C24:  VADD.F32        S2, S2, S16
281C28:  VCMPE.F32       S0, S2
281C2C:  VMRS            APSR_nzcv, FPSCR
281C30:  BLT             loc_281C84
281C32:  VLDR            S2, [R10,#0x38]
281C36:  VADD.F32        S2, S2, S18
281C3A:  VCMPE.F32       S0, S2
281C3E:  VMRS            APSR_nzcv, FPSCR
281C42:  BGT             loc_281C84
281C44:  LDRB            R0, [R6]
281C46:  CMP             R0, #1
281C48:  BEQ             loc_281C84
281C4A:  ADD.W           R0, R9, R2; this
281C4E:  MOVS            R1, #0x18; int
281C50:  STR             R3, [SP,#0x38+var_38]
281C52:  STR.W           R12, [SP,#0x38+var_34]
281C56:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
281C5A:  LDR             R0, [SP,#0x38+var_34]; this
281C5C:  BLX             j__ZN7CCamera19GetScreenFadeStatusEv; CCamera::GetScreenFadeStatus(void)
281C60:  CBNZ            R0, loc_281C6E
281C62:  LDR             R0, [SP,#0x38+var_38]; this
281C64:  ADR             R1, aLoadcol; "LOADCOL"
281C66:  MOVS            R2, #0; bool
281C68:  MOVS            R3, #0; bool
281C6A:  BLX             j__ZN12CMenuManager13MessageScreenEPcbb; CMenuManager::MessageScreen(char *,bool,bool)
281C6E:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
281C72:  MOVS            R0, #(stderr+1); this
281C74:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
281C78:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
281C7C:  LDRD.W          R3, R12, [SP,#0x38+var_38]
281C80:  MOVW            R2, #0x62A8
281C84:  STRB.W          R11, [R10,#0x62]
281C88:  ADD.W           R9, R9, #1
281C8C:  ADD.W           R8, R8, #0x34 ; '4'
281C90:  ADDS            R6, #0x14
281C92:  BL              sub_4C6D18
281C96:  BNE             loc_281BD0
281C98:  ADD             SP, SP, #8
281C9A:  VPOP            {D8-D9}
281C9E:  ADD             SP, SP, #4
281CA0:  POP.W           {R8-R11}
281CA4:  POP             {R4-R7,PC}
