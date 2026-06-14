; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr19HasCutsceneFinishedEv
; Address            : 0x465944 - 0x465978
; =========================================================

465944:  LDR             R0, =(byte_9AE231 - 0x46594A)
465946:  ADD             R0, PC; byte_9AE231
465948:  LDRB            R0, [R0]
46594A:  CMP             R0, #0
46594C:  ITT EQ
46594E:  MOVEQ           R0, #1
465950:  BXEQ            LR
465952:  PUSH            {R7,LR}
465954:  MOV             R7, SP
465956:  LDR             R0, =(TheCamera_ptr - 0x46595C)
465958:  ADD             R0, PC; TheCamera_ptr
46595A:  LDR             R0, [R0]; TheCamera ; this
46595C:  BLX             j__ZN7CCamera22GetPositionAlongSplineEv; CCamera::GetPositionAlongSpline(void)
465960:  VMOV.F32        S0, #1.0
465964:  VMOV            S2, R0
465968:  MOVS            R0, #0
46596A:  VCMP.F32        S2, S0
46596E:  VMRS            APSR_nzcv, FPSCR
465972:  IT EQ
465974:  MOVEQ           R0, #1
465976:  POP             {R7,PC}
