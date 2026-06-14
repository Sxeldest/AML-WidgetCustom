; =========================================================
; Game Engine Function: _ZN6CWorld20ProcessForAnimViewerEv
; Address            : 0x4276A8 - 0x4276EE
; =========================================================

4276A8:  PUSH            {R4,R5,R7,LR}
4276AA:  ADD             R7, SP, #8
4276AC:  LDR             R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x4276B2)
4276AE:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
4276B0:  LDR             R0, [R0]; CWorld::ms_listMovingEntityPtrs ...
4276B2:  LDR             R5, [R0]; CWorld::ms_listMovingEntityPtrs
4276B4:  B               loc_4276BC
4276B6:  MOV             R0, R4; this
4276B8:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
4276BC:  CMP             R5, #0
4276BE:  IT EQ
4276C0:  POPEQ           {R4,R5,R7,PC}
4276C2:  LDRD.W          R4, R5, [R5]
4276C6:  LDRB            R0, [R4,#0x1D]
4276C8:  LSLS            R0, R0, #0x1C
4276CA:  BMI             loc_4276BC
4276CC:  MOV             R0, R4; this
4276CE:  BLX             j__ZN7CEntity10UpdateAnimEv; CEntity::UpdateAnim(void)
4276D2:  LDR             R0, [R4,#0x18]
4276D4:  CMP             R0, #0
4276D6:  BEQ             loc_4276B6
4276D8:  LDR             R1, [R0,#4]
4276DA:  LDR             R0, [R4,#0x14]
4276DC:  ADDS            R1, #0x10
4276DE:  CBZ             R0, loc_4276E6
4276E0:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
4276E4:  B               loc_4276B6
4276E6:  ADDS            R0, R4, #4
4276E8:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
4276EC:  B               loc_4276B6
