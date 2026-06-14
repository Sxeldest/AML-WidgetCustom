; =========================================================
; Game Engine Function: _ZN5CBike6RenderEv
; Address            : 0x566174 - 0x5661CE
; =========================================================

566174:  PUSH            {R4,R6,R7,LR}
566176:  ADD             R7, SP, #8
566178:  SUB             SP, SP, #8
56617A:  MOV             R4, R0
56617C:  MOVS            R0, #0
56617E:  ADD             R1, SP, #0x10+var_C
566180:  STR             R0, [SP,#0x10+var_C]
566182:  MOVS            R0, #0x1E
566184:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
566188:  MOVS            R0, #0x1E
56618A:  MOVS            R1, #1
56618C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
566190:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x566196)
566192:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
566194:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
566196:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
566198:  ADDW            R0, R0, #0xBB8
56619C:  STR.W           R0, [R4,#0x4E0]
5661A0:  MOV             R0, R4; this
5661A2:  BLX             j__ZN8CVehicle6RenderEv; CVehicle::Render(void)
5661A6:  LDRB.W          R0, [R4,#0x594]
5661AA:  LSLS            R0, R0, #0x1F
5661AC:  BEQ             loc_5661C2
5661AE:  MOV             R0, R4; this
5661B0:  BLX             j__ZN5CBike19CalculateLeanMatrixEv; CBike::CalculateLeanMatrix(void)
5661B4:  ADD.W           R2, R4, #0x5E0; CMatrix *
5661B8:  MOV             R0, R4; this
5661BA:  MOVS            R1, #0; int
5661BC:  MOVS            R3, #1; unsigned __int8
5661BE:  BLX             j__ZN8CVehicle15DoHeadLightBeamEiR7CMatrixh; CVehicle::DoHeadLightBeam(int,CMatrix &,uchar)
5661C2:  LDR             R1, [SP,#0x10+var_C]
5661C4:  MOVS            R0, #0x1E
5661C6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5661CA:  ADD             SP, SP, #8
5661CC:  POP             {R4,R6,R7,PC}
