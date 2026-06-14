; =========================================================
; Game Engine Function: bs2b_set_srate
; Address            : 0x25F960 - 0x25FA6A
; =========================================================

25F960:  PUSH            {R4-R7,LR}
25F962:  ADD             R7, SP, #0xC
25F964:  PUSH.W          {R8}
25F968:  VPUSH           {D8-D11}
25F96C:  MOV             R4, R0
25F96E:  LDR             R0, [R4,#4]
25F970:  CMP             R0, R1
25F972:  BEQ             loc_25FA60
25F974:  LDR             R3, [R4]
25F976:  MOVW            R12, #:lower16:stru_2E628.st_size
25F97A:  SUB.W           R0, R1, #0x7D0
25F97E:  MOVT            R12, #:upper16:stru_2E628.st_size
25F982:  CMP             R0, R12
25F984:  MOV             R2, R1
25F986:  SUB.W           R3, R3, #1
25F98A:  IT HI
25F98C:  MOVWHI          R2, #0xAC44
25F990:  CMP             R3, #5
25F992:  STR             R2, [R4,#4]
25F994:  BCS             loc_25F9CC
25F996:  LDR             R2, =(unk_60A5D0 - 0x25F9A0)
25F998:  LDR.W           LR, =(unk_60A630 - 0x25F9A8)
25F99C:  ADD             R2, PC; unk_60A5D0
25F99E:  LDR             R5, =(unk_60A600 - 0x25F9B2)
25F9A0:  LDR.W           R8, =(unk_60A5A0 - 0x25F9B4)
25F9A4:  ADD             LR, PC; unk_60A630
25F9A6:  ADD.W           R2, R2, R3,LSL#3
25F9AA:  ADD.W           R6, LR, R3,LSL#3
25F9AE:  ADD             R5, PC; unk_60A600
25F9B0:  ADD             R8, PC; unk_60A5A0
25F9B2:  VLDR            D16, [R6]
25F9B6:  ADD.W           R6, R5, R3,LSL#3
25F9BA:  VLDR            D9, [R2]
25F9BE:  ADD.W           R2, R8, R3,LSL#3
25F9C2:  VLDR            D8, [R6]
25F9C6:  VLDR            D10, [R2]
25F9CA:  B               loc_25F9E0
25F9CC:  MOVS            R2, #6
25F9CE:  VLDR            D16, =-4398.22972
25F9D2:  VLDR            D8, =0.205671765
25F9D6:  VLDR            D9, =0.398107171
25F9DA:  VLDR            D10, =-6126.10567
25F9DE:  STR             R2, [R4]
25F9E0:  VMOV            S0, R1
25F9E4:  VLDR            D17, =44100.0
25F9E8:  CMP             R0, R12
25F9EA:  VCVT.F64.S32    D11, S0
25F9EE:  IT HI
25F9F0:  VMOVHI.F64      D11, D17
25F9F4:  VDIV.F64        D16, D16, D11
25F9F8:  VMOV            R0, R1, D16; x
25F9FC:  BLX             exp
25FA00:  VDIV.F64        D16, D10, D11
25FA04:  VMOV.F64        D10, #1.0
25FA08:  VMOV            D17, R0, R1
25FA0C:  VMOV            R0, R1, D16; x
25FA10:  VSUB.F64        D18, D10, D17
25FA14:  VMUL.F64        D16, D9, D18
25FA18:  VSTR            D16, [R4,#8]
25FA1C:  VSTR            D17, [R4,#0x10]
25FA20:  BLX             exp
25FA24:  VSUB.F64        D16, D10, D8
25FA28:  VADD.F64        D16, D9, D16
25FA2C:  VMOV            D17, R0, R1
25FA30:  EOR.W           R1, R1, #0x80000000
25FA34:  VCVT.F32.F64    S2, D16
25FA38:  VSUB.F64        D16, D10, D17
25FA3C:  VMOV.F32        S0, #1.0
25FA40:  VMUL.F64        D16, D8, D16
25FA44:  VDIV.F32        S0, S0, S2
25FA48:  VSUB.F64        D16, D10, D16
25FA4C:  VMOV            D18, R0, R1
25FA50:  VSTR            S0, [R4,#0x30]
25FA54:  VSTR            D16, [R4,#0x18]
25FA58:  VSTR            D18, [R4,#0x20]
25FA5C:  VSTR            D17, [R4,#0x28]
25FA60:  VPOP            {D8-D11}
25FA64:  POP.W           {R8}
25FA68:  POP             {R4-R7,PC}
