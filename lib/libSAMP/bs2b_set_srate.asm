; =========================================================
; Game Engine Function: bs2b_set_srate
; Address            : 0x1DA750 - 0x1DA87C
; =========================================================

1DA750:  PUSH            {R4-R6,R10,R11,LR}
1DA754:  ADD             R11, SP, #0x10
1DA758:  VPUSH           {D8-D11}
1DA75C:  MOV             R4, R0
1DA760:  LDR             R0, [R4,#4]
1DA764:  CMP             R0, R1
1DA768:  BEQ             loc_1DA874
1DA76C:  LDR             R3, [R4]
1DA770:  MOVW            R12, #:lower16:(aZnkst6Ndk17num_5+6); "6__ndk17num_getIcNS_19istreambuf_iterat"...
1DA774:  SUB             R0, R1, #0x7D0
1DA778:  MOVT            R12, #:upper16:(aZnkst6Ndk17num_5+6); "6__ndk17num_getIcNS_19istreambuf_iterat"...
1DA77C:  CMP             R0, R12
1DA780:  MOV             R2, R1
1DA784:  SUB             R3, R3, #1
1DA788:  MOVWHI          R2, #0xAC44
1DA78C:  CMP             R3, #5
1DA790:  STR             R2, [R4,#4]
1DA794:  BCS             loc_1DA7DC
1DA798:  LDR             R6, =(unk_D2480 - 0x1DA7A8)
1DA79C:  LDR             R2, =(unk_D2420 - 0x1DA7B0)
1DA7A0:  ADD             R6, PC, R6; unk_D2480
1DA7A4:  LDR             R5, =(unk_D2450 - 0x1DA7C0)
1DA7A8:  ADD             R2, PC, R2; unk_D2420
1DA7AC:  ADD             R6, R6, R3,LSL#3
1DA7B0:  LDR             LR, =(unk_D23F0 - 0x1DA7C8)
1DA7B4:  ADD             R2, R2, R3,LSL#3
1DA7B8:  ADD             R5, PC, R5; unk_D2450
1DA7BC:  VLDR            D0, [R6]
1DA7C0:  ADD             R6, PC, LR; unk_D23F0
1DA7C4:  ADD             R5, R5, R3,LSL#3
1DA7C8:  VLDR            D9, [R2]
1DA7CC:  ADD             R2, R6, R3,LSL#3
1DA7D0:  VLDR            D8, [R5]
1DA7D4:  VLDR            D10, [R2]
1DA7D8:  B               loc_1DA7F4
1DA7DC:  MOV             R2, #6
1DA7E0:  VLDR            D0, =-4398.22972
1DA7E4:  VLDR            D8, =0.205671765
1DA7E8:  VLDR            D9, =0.398107171
1DA7EC:  VLDR            D10, =-6126.10567
1DA7F0:  STR             R2, [R4]
1DA7F4:  VMOV            S2, R1
1DA7F8:  CMP             R0, R12
1DA7FC:  VCVT.F64.S32    D11, S2
1DA800:  VLDR            D1, =44100.0
1DA804:  VMOVHI.F64      D11, D1
1DA808:  VDIV.F64        D0, D0, D11
1DA80C:  VMOV            R0, R1, D0; x
1DA810:  BL              exp
1DA814:  VDIV.F64        D0, D10, D11
1DA818:  VMOV.F64        D10, #1.0
1DA81C:  VMOV            D1, R0, R1
1DA820:  VMOV            R0, R1, D0; x
1DA824:  VSUB.F64        D2, D10, D1
1DA828:  VMUL.F64        D0, D2, D9
1DA82C:  VSTR            D0, [R4,#8]
1DA830:  VSTR            D1, [R4,#0x10]
1DA834:  BL              exp
1DA838:  VADD.F64        D0, D9, D10
1DA83C:  VSUB.F64        D0, D0, D8
1DA840:  VMOV            D1, R0, R1
1DA844:  EOR             R1, R1, #0x80000000
1DA848:  VMOV.F32        S4, #1.0
1DA84C:  VSUB.F64        D3, D1, D10
1DA850:  VCVT.F32.F64    S0, D0
1DA854:  VDIV.F32        S0, S4, S0
1DA858:  VMUL.F64        D2, D3, D8
1DA85C:  VADD.F64        D2, D2, D10
1DA860:  VMOV            D3, R0, R1
1DA864:  VSTR            S0, [R4,#0x30]
1DA868:  VSTR            D2, [R4,#0x18]
1DA86C:  VSTR            D3, [R4,#0x20]
1DA870:  VSTR            D1, [R4,#0x28]
1DA874:  VPOP            {D8-D11}
1DA878:  POP             {R4-R6,R10,R11,PC}
