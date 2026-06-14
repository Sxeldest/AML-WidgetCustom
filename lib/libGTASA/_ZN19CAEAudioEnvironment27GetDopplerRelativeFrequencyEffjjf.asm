; =========================================================
; Game Engine Function: _ZN19CAEAudioEnvironment27GetDopplerRelativeFrequencyEffjjf
; Address            : 0x391CE0 - 0x391D94
; =========================================================

391CE0:  PUSH            {R4-R7,LR}
391CE2:  ADD             R7, SP, #0xC
391CE4:  PUSH.W          {R8}
391CE8:  MOV             R4, R0
391CEA:  LDR             R0, =(TheCamera_ptr - 0x391CF4)
391CEC:  MOV             R8, R3
391CEE:  MOV             R5, R2
391CF0:  ADD             R0, PC; TheCamera_ptr
391CF2:  MOV             R6, R1
391CF4:  LDR             R0, [R0]; TheCamera ; this
391CF6:  BLX             j__ZN7CCamera24Get_Just_Switched_StatusEv; CCamera::Get_Just_Switched_Status(void)
391CFA:  VMOV.F32        S0, #1.0
391CFE:  CMP             R8, R5
391D00:  BLS             loc_391D8A
391D02:  VMOV            S2, R4
391D06:  VMOV            S4, R6
391D0A:  VSUB.F32        S4, S4, S2
391D0E:  VCMP.F32        S4, #0.0
391D12:  VMRS            APSR_nzcv, FPSCR
391D16:  ITTT NE
391D18:  VLDRNE          S2, [R7,#arg_0]
391D1C:  VCMPNE.F32      S2, #0.0
391D20:  VMRSNE          APSR_nzcv, FPSCR
391D24:  BEQ             loc_391D8A
391D26:  CBNZ            R0, loc_391D8A
391D28:  VCVT.F64.F32    D16, S4
391D2C:  SUB.W           R0, R8, R5
391D30:  VMOV            S4, R0
391D34:  VLDR            D17, =1000.0
391D38:  VCVT.F32.U32    S4, S4
391D3C:  VMUL.F64        D16, D16, D17
391D40:  VCVT.F64.F32    D17, S4
391D44:  VDIV.F64        D16, D16, D17
391D48:  VCVT.F64.F32    D17, S2
391D4C:  VMUL.F64        D16, D16, D17
391D50:  VCVT.F32.F64    S4, D16
391D54:  VABS.F32        S6, S4
391D58:  VLDR            S2, =340.0
391D5C:  VCMPE.F32       S6, S2
391D60:  VMRS            APSR_nzcv, FPSCR
391D64:  BGE             loc_391D8A
391D66:  VCMPE.F32       S4, #0.0
391D6A:  VMRS            APSR_nzcv, FPSCR
391D6E:  BGE             loc_391D7A
391D70:  VLDR            S0, =-35.0
391D74:  VMAX.F32        D0, D2, D0
391D78:  B               loc_391D82
391D7A:  VLDR            S0, =35.0
391D7E:  VMIN.F32        D0, D2, D0
391D82:  VADD.F32        S0, S0, S2
391D86:  VDIV.F32        S0, S2, S0
391D8A:  VMOV            R0, S0
391D8E:  POP.W           {R8}
391D92:  POP             {R4-R7,PC}
