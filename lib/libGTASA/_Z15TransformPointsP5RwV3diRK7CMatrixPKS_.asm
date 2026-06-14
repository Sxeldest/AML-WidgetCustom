; =========================================================
; Game Engine Function: _Z15TransformPointsP5RwV3diRK7CMatrixPKS_
; Address            : 0x408574 - 0x4085C0
; =========================================================

408574:  PUSH            {R4-R7,LR}
408576:  ADD             R7, SP, #0xC
408578:  PUSH.W          {R8}
40857C:  MOV             R6, R0
40857E:  LDR             R0, =(_ZN5CGame17m_pWorkingMatrix1E_ptr - 0x408588)
408580:  MOV             R5, R1
408582:  MOV             R4, R3
408584:  ADD             R0, PC; _ZN5CGame17m_pWorkingMatrix1E_ptr
408586:  LDR.W           R8, [R0]; CGame::m_pWorkingMatrix1 ...
40858A:  MOV             R0, R2
40858C:  LDR.W           R1, [R8]; CGame::m_pWorkingMatrix1
408590:  BLX             j__ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag; CMatrix::CopyToRwMatrix(RwMatrixTag *)
408594:  LDR.W           R0, [R8]; CGame::m_pWorkingMatrix1
408598:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
40859C:  CBZ             R5, loc_4085BA
40859E:  LDR             R0, =(_ZN5CGame17m_pWorkingMatrix1E_ptr - 0x4085A4)
4085A0:  ADD             R0, PC; _ZN5CGame17m_pWorkingMatrix1E_ptr
4085A2:  LDR.W           R8, [R0]; CGame::m_pWorkingMatrix1 ...
4085A6:  LDR.W           R2, [R8]; CGame::m_pWorkingMatrix1
4085AA:  MOV             R0, R6
4085AC:  MOV             R1, R4
4085AE:  BLX             j__Z19RwV3dTransformPointP5RwV3dPKS_PK11RwMatrixTag; RwV3dTransformPoint(RwV3d *,RwV3d const*,RwMatrixTag const*)
4085B2:  ADDS            R4, #0xC
4085B4:  ADDS            R6, #0xC
4085B6:  SUBS            R5, #1
4085B8:  BNE             loc_4085A6
4085BA:  POP.W           {R8}
4085BE:  POP             {R4-R7,PC}
