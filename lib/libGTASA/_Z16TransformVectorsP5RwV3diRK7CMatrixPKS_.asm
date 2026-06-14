; =========================================================
; Game Engine Function: _Z16TransformVectorsP5RwV3diRK7CMatrixPKS_
; Address            : 0x408520 - 0x40856C
; =========================================================

408520:  PUSH            {R4-R7,LR}
408522:  ADD             R7, SP, #0xC
408524:  PUSH.W          {R8}
408528:  MOV             R6, R0
40852A:  LDR             R0, =(_ZN5CGame17m_pWorkingMatrix1E_ptr - 0x408534)
40852C:  MOV             R5, R1
40852E:  MOV             R4, R3
408530:  ADD             R0, PC; _ZN5CGame17m_pWorkingMatrix1E_ptr
408532:  LDR.W           R8, [R0]; CGame::m_pWorkingMatrix1 ...
408536:  MOV             R0, R2
408538:  LDR.W           R1, [R8]; CGame::m_pWorkingMatrix1
40853C:  BLX             j__ZNK7CMatrix14CopyToRwMatrixEP11RwMatrixTag; CMatrix::CopyToRwMatrix(RwMatrixTag *)
408540:  LDR.W           R0, [R8]; CGame::m_pWorkingMatrix1
408544:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
408548:  CBZ             R5, loc_408566
40854A:  LDR             R0, =(_ZN5CGame17m_pWorkingMatrix1E_ptr - 0x408550)
40854C:  ADD             R0, PC; _ZN5CGame17m_pWorkingMatrix1E_ptr
40854E:  LDR.W           R8, [R0]; CGame::m_pWorkingMatrix1 ...
408552:  LDR.W           R2, [R8]; CGame::m_pWorkingMatrix1
408556:  MOV             R0, R6
408558:  MOV             R1, R4
40855A:  BLX             j__Z20RwV3dTransformVectorP5RwV3dPKS_PK11RwMatrixTag; RwV3dTransformVector(RwV3d *,RwV3d const*,RwMatrixTag const*)
40855E:  ADDS            R4, #0xC
408560:  ADDS            R6, #0xC
408562:  SUBS            R5, #1
408564:  BNE             loc_408552
408566:  POP.W           {R8}
40856A:  POP             {R4-R7,PC}
