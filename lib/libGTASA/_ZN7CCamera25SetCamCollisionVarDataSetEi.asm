; =========================================================
; Game Engine Function: _ZN7CCamera25SetCamCollisionVarDataSetEi
; Address            : 0x3E19E4 - 0x3E1A24
; =========================================================

3E19E4:  LDR             R1, =(gCurCamColVars_ptr - 0x3E19EA)
3E19E6:  ADD             R1, PC; gCurCamColVars_ptr
3E19E8:  LDR             R1, [R1]; gCurCamColVars
3E19EA:  LDRB            R1, [R1]
3E19EC:  CMP             R1, R0
3E19EE:  IT EQ
3E19F0:  BXEQ            LR
3E19F2:  LDR             R1, =(gCurCamColVars_ptr - 0x3E19FA)
3E19F4:  LDR             R2, =(gCurDistForCam_ptr - 0x3E1A02)
3E19F6:  ADD             R1, PC; gCurCamColVars_ptr
3E19F8:  LDR.W           R12, =(gpCamColVars_ptr - 0x3E1A04)
3E19FC:  LDR             R3, =(gCamColVars_ptr - 0x3E1A08)
3E19FE:  ADD             R2, PC; gCurDistForCam_ptr
3E1A00:  ADD             R12, PC; gpCamColVars_ptr
3E1A02:  LDR             R1, [R1]; gCurCamColVars
3E1A04:  ADD             R3, PC; gCamColVars_ptr
3E1A06:  LDR             R2, [R2]; gCurDistForCam
3E1A08:  LDR.W           R12, [R12]; gpCamColVars
3E1A0C:  STRB            R0, [R1]
3E1A0E:  ADD.W           R0, R0, R0,LSL#1
3E1A12:  LDR             R3, [R3]; gCamColVars
3E1A14:  MOV.W           R1, #0x3F800000
3E1A18:  STR             R1, [R2]
3E1A1A:  ADD.W           R0, R3, R0,LSL#3
3E1A1E:  STR.W           R0, [R12]
3E1A22:  BX              LR
