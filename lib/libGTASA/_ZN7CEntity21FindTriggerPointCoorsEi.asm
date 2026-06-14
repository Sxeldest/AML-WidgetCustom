; =========================================================
; Game Engine Function: _ZN7CEntity21FindTriggerPointCoorsEi
; Address            : 0x3EE368 - 0x3EE3E6
; =========================================================

3EE368:  PUSH            {R4-R7,LR}
3EE36A:  ADD             R7, SP, #0xC
3EE36C:  PUSH.W          {R8-R11}
3EE370:  SUB             SP, SP, #4
3EE372:  MOV             R9, R0
3EE374:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EE37E)
3EE376:  MOV             R8, R1
3EE378:  MOV             R10, R2
3EE37A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EE37C:  LDRSH.W         R1, [R8,#0x26]
3EE380:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EE382:  LDR.W           R4, [R0,R1,LSL#2]
3EE386:  LDRB.W          R11, [R4,#0x23]
3EE38A:  CMP.W           R11, #0
3EE38E:  BEQ             loc_3EE3AE
3EE390:  MOVS            R6, #0
3EE392:  MOV             R0, R4; this
3EE394:  MOV             R1, R6; int
3EE396:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
3EE39A:  MOV             R5, R0
3EE39C:  LDRB            R0, [R5,#0xC]
3EE39E:  CMP             R0, #8
3EE3A0:  ITT EQ
3EE3A2:  LDREQ           R0, [R5,#0x10]
3EE3A4:  CMPEQ           R0, R10
3EE3A6:  BEQ             loc_3EE3BA
3EE3A8:  ADDS            R6, #1
3EE3AA:  CMP             R6, R11
3EE3AC:  BLT             loc_3EE392
3EE3AE:  MOVS            R0, #0
3EE3B0:  STRD.W          R0, R0, [R9]
3EE3B4:  STR.W           R0, [R9,#8]
3EE3B8:  B               loc_3EE3DE
3EE3BA:  LDR.W           R1, [R8,#0x14]
3EE3BE:  CBNZ            R1, loc_3EE3D6
3EE3C0:  MOV             R0, R8; this
3EE3C2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE3C6:  LDR.W           R1, [R8,#0x14]; CMatrix *
3EE3CA:  ADD.W           R0, R8, #4; this
3EE3CE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE3D2:  LDR.W           R1, [R8,#0x14]
3EE3D6:  MOV             R0, R9
3EE3D8:  MOV             R2, R5
3EE3DA:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EE3DE:  ADD             SP, SP, #4
3EE3E0:  POP.W           {R8-R11}
3EE3E4:  POP             {R4-R7,PC}
