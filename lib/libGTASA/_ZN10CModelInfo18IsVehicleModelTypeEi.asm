; =========================================================
; Game Engine Function: _ZN10CModelInfo18IsVehicleModelTypeEi
; Address            : 0x38639C - 0x3863CA
; =========================================================

38639C:  PUSH            {R4,R6,R7,LR}
38639E:  ADD             R7, SP, #8
3863A0:  MOVW            R1, #0x4E1F
3863A4:  CMP             R0, R1
3863A6:  BGT             loc_3863C4
3863A8:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3863AE)
3863AA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3863AC:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3863AE:  LDR.W           R4, [R1,R0,LSL#2]
3863B2:  CBZ             R4, loc_3863C4
3863B4:  LDR             R0, [R4]
3863B6:  LDR             R1, [R0,#0x14]
3863B8:  MOV             R0, R4
3863BA:  BLX             R1
3863BC:  CMP             R0, #6
3863BE:  ITT EQ
3863C0:  LDREQ           R0, [R4,#0x54]
3863C2:  POPEQ           {R4,R6,R7,PC}
3863C4:  MOV.W           R0, #0xFFFFFFFF
3863C8:  POP             {R4,R6,R7,PC}
