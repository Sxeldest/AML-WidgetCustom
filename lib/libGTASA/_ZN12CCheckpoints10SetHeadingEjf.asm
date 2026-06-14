; =========================================================
; Game Engine Function: _ZN12CCheckpoints10SetHeadingEjf
; Address            : 0x5C430C - 0x5C4364
; =========================================================

5C430C:  PUSH            {R4,R5,R7,LR}
5C430E:  ADD             R7, SP, #8
5C4310:  LDR             R2, =(_ZN12CCheckpoints15m_aCheckPtArrayE_ptr - 0x5C431E)
5C4312:  VMOV            S0, R1
5C4316:  MOV.W           R1, #0xFFFFFFFF
5C431A:  ADD             R2, PC; _ZN12CCheckpoints15m_aCheckPtArrayE_ptr
5C431C:  LDR             R2, [R2]; CCheckpoints::m_aCheckPtArray ...
5C431E:  ADD.W           R4, R2, #0x1C
5C4322:  B               loc_5C432E
5C4324:  ADDS            R1, #1
5C4326:  ADDS            R4, #0x38 ; '8'
5C4328:  CMP             R1, #0x1F
5C432A:  IT GE
5C432C:  POPGE           {R4,R5,R7,PC}
5C432E:  LDR.W           R2, [R4,#-0x18]
5C4332:  CMP             R2, R0
5C4334:  BNE             loc_5C4324
5C4336:  VLDR            S2, =3.1416
5C433A:  VMUL.F32        S0, S0, S2
5C433E:  VLDR            S2, =180.0
5C4342:  VDIV.F32        S0, S0, S2
5C4346:  VMOV            R5, S0
5C434A:  MOV             R0, R5; x
5C434C:  BLX.W           sinf
5C4350:  STR             R0, [R4,#4]
5C4352:  MOV             R0, R5; x
5C4354:  BLX.W           cosf
5C4358:  STR             R0, [R4]
5C435A:  MOV             R0, R4; this
5C435C:  POP.W           {R4,R5,R7,LR}
5C4360:  B.W             j_j__ZN7CVector9NormaliseEv; j_CVector::Normalise(void)
