; =========================================================
; Game Engine Function: sub_628D0
; Address            : 0x628D0 - 0x62C1E
; =========================================================

628D0:  PUSH            {R4-R7,LR}
628D2:  ADD             R7, SP, #0xC
628D4:  PUSH.W          {R8-R11}
628D8:  SUB             SP, SP, #4
628DA:  VPUSH           {D8-D14}
628DE:  SUB             SP, SP, #0x38
628E0:  LDR             R1, =(off_1A3A44 - 0x628E6)
628E2:  ADD             R1, PC; off_1A3A44
628E4:  LDR             R1, [R1]
628E6:  BLX             R1
628E8:  LDR             R0, =(off_114AD8 - 0x628EE)
628EA:  ADD             R0, PC; off_114AD8
628EC:  LDR             R0, [R0]; dword_1A4434
628EE:  LDR             R0, [R0]
628F0:  CMP             R0, #0
628F2:  BEQ.W           loc_62C10
628F6:  LDR.W           R1, [R0,#0x218]
628FA:  CMP             R1, #5
628FC:  BNE.W           loc_62C10
62900:  LDR.W           R0, [R0,#0x3B0]
62904:  LDR.W           R11, [R0,#4]
62908:  BL              sub_6C844
6290C:  LDR.W           R9, [R0,#8]
62910:  CMP.W           R9, #0
62914:  BNE             loc_62946
62916:  MOV             R5, R0
62918:  MOV.W           R0, #0x2F0; unsigned int
6291C:  BLX             j__Znwj; operator new(uint)
62920:  MOV             R9, R0
62922:  LDR             R0, =(off_114AB0 - 0x6292A)
62924:  LDR             R1, =(_ZTV10CPlayerPed - 0x6292C); `vtable for'CPlayerPed ...
62926:  ADD             R0, PC; off_114AB0
62928:  ADD             R1, PC; `vtable for'CPlayerPed
6292A:  LDR             R0, [R0]; dword_1A4408
6292C:  ADDS            R1, #8
6292E:  STR.W           R1, [R9]
62932:  MOV             R1, #0x103B89
6293A:  LDR             R0, [R0]
6293C:  ADD             R1, R0
6293E:  MOV             R0, R9
62940:  BLX             R1
62942:  STR.W           R9, [R5,#8]
62946:  CMP.W           R11, #0
6294A:  BEQ.W           loc_62C10
6294E:  MOVW            R0, #0x9C40
62952:  ADD.W           R4, R11, R0
62956:  LDR             R0, =(unk_50994 - 0x62968)
62958:  VMOV.I8         Q5, #0x5A ; 'Z'
6295C:  VMOV.I32        Q6, #0
62960:  MOVW            R6, #0xF830
62964:  ADD             R0, PC; unk_50994
62966:  STR             R0, [SP,#0x90+var_5C]
62968:  LDR             R0, =(unk_1A3B28 - 0x6297E)
6296A:  ADD.W           R5, R11, #0x3E80
6296E:  VLDR            S16, =0.0
62972:  MOVT            R6, #0xFFFF
62976:  VLDR            S18, =150.0
6297A:  ADD             R0, PC; unk_1A3B28
6297C:  STR             R0, [SP,#0x90+var_60]
6297E:  STR             R4, [SP,#0x90+var_64]
62980:  B               loc_629D6
62982:  VLDR            S0, [R10,#0x50]
62986:  MOVS            R0, #4; prio
62988:  VLDR            S2, [R5]
6298C:  VLDR            S4, [R5,#4]
62990:  VLDR            S6, [R5,#8]
62994:  VCVT.F64.F32    D16, S28
62998:  LDR             R1, =(aSampOrig - 0x629A0); "SAMP_ORIG" ...
6299A:  LDR             R2, =(unk_1A3AE0 - 0x629A2)
6299C:  ADD             R1, PC; "SAMP_ORIG"
6299E:  ADD             R2, PC; unk_1A3AE0 ; fmt
629A0:  VCVT.F64.F32    D17, S0
629A4:  VCVT.F64.F32    D18, S6
629A8:  VCVT.F64.F32    D19, S4
629AC:  VCVT.F64.F32    D20, S2
629B0:  VSTR            D16, [SP,#0x90+var_90]
629B4:  VSTR            D20, [SP,#0x90+var_88]
629B8:  VSTR            D19, [SP,#0x90+var_80]
629BC:  VSTR            D18, [SP,#0x90+var_78]
629C0:  VSTR            D17, [SP,#0x90+var_70]
629C4:  BLX             __android_log_print
629C8:  LDR             R4, [SP,#0x90+var_64]
629CA:  ADDS            R5, #0xC
629CC:  ADD.W           R11, R11, #4
629D0:  ADDS            R6, #1
629D2:  BCS.W           loc_62C10
629D6:  ADDS            R0, R4, R6
629D8:  LDRB.W          R0, [R0,#0x7D0]
629DC:  CMP             R0, #0
629DE:  ITT NE
629E0:  LDRNE.W         R10, [R11]
629E4:  CMPNE.W         R10, #0
629E8:  BEQ             loc_629CA
629EA:  VMOV.F32        S28, S16
629EE:  LDR.W           R0, [R9,#0x5C]
629F2:  CBZ             R0, loc_62A62
629F4:  VMOV.F32        S28, S16
629F8:  LDR.W           R1, [R10,#0xC]
629FC:  CBZ             R1, loc_62A62
629FE:  LDR             R0, [R0,#0x14]
62A00:  LDR             R1, [R1,#0x14]
62A02:  LDR             R3, [R0,#0x34]
62A04:  LDR             R2, [R1,#0x34]
62A06:  LDR.W           LR, [R0,#0x30]
62A0A:  VMOV            S0, R3
62A0E:  LDR.W           R12, [R0,#0x38]
62A12:  VMOV            S2, R2
62A16:  LDR             R0, [R1,#0x30]
62A18:  LDR             R1, [R1,#0x38]
62A1A:  VSUB.F32        S0, S2, S0
62A1E:  VMOV            S2, R0
62A22:  VCVT.F64.F32    D16, S0
62A26:  VMOV            S0, LR
62A2A:  VMUL.F64        D16, D16, D16
62A2E:  VSUB.F32        S0, S2, S0
62A32:  VMOV            S2, R1
62A36:  VCVT.F64.F32    D17, S0
62A3A:  VMLA.F64        D16, D17, D17
62A3E:  VMOV            S0, R12
62A42:  VSUB.F32        S0, S2, S0
62A46:  VCVT.F64.F32    D17, S0
62A4A:  VMLA.F64        D16, D17, D17
62A4E:  VSQRT.F64       D16, D16
62A52:  VCVT.F32.F64    S28, D16
62A56:  VCMP.F32        S28, S18
62A5A:  VMRS            APSR_nzcv, FPSCR
62A5E:  BPL.W           loc_62BA0
62A62:  LDR.W           R0, [R10,#4]
62A66:  CBZ             R0, loc_62A80
62A68:  LDR             R1, =(off_114AA8 - 0x62A78)
62A6A:  MOVW            R3, #0x7D24
62A6E:  LDR             R2, [R0]
62A70:  MOVT            R3, #0x66 ; 'f'
62A74:  ADD             R1, PC; off_114AA8
62A76:  LDR             R1, [R1]; dword_1A4404
62A78:  LDR             R1, [R1]
62A7A:  ADD             R3, R1
62A7C:  CMP             R2, R3
62A7E:  BNE             loc_62B24
62A80:  VLDR            S0, [R10,#0x50]
62A84:  LDR.W           R1, [R10,#8]
62A88:  VCVT.F64.F32    D16, S0
62A8C:  LDR             R0, [SP,#0x90+var_5C]
62A8E:  VMOV            R2, R3, D16
62A92:  BL              sub_682E8
62A96:  LDR             R0, [SP,#0x90+var_60]
62A98:  LDRB            R0, [R0]
62A9A:  DMB.W           ISH
62A9E:  LSLS            R0, R0, #0x1F
62AA0:  BEQ.W           loc_62BDA
62AA4:  LDR             R0, =(unk_1A3AE0 - 0x62AAA)
62AA6:  ADD             R0, PC; unk_1A3AE0
62AA8:  LDRB.W          R1, [R0,#(byte_1A3B24 - 0x1A3AE0)]
62AAC:  CMP             R1, #0
62AAE:  BEQ.W           loc_62982
62AB2:  MOV             R8, R0
62AB4:  MOVS            R1, #0x44 ; 'D'
62AB6:  VLD1.8          {D16-D17}, [R8@128],R1
62ABA:  MOVS            R1, #0x33 ; '3'
62ABC:  VEOR            Q8, Q8, Q5
62AC0:  MOVS            R4, #0x11
62AC2:  LDRB.W          R12, [R8]
62AC6:  VST1.8          {D16-D17}, [R0@128]!
62ACA:  MOV             R2, R0
62ACC:  VLD1.8          {D16-D17}, [R2@128],R1
62AD0:  MOVS            R1, #0x22 ; '"'
62AD2:  VEOR            Q8, Q8, Q5
62AD6:  LDRB.W          LR, [R2]
62ADA:  VST1.8          {D16-D17}, [R0@128]!
62ADE:  MOV             R3, R0
62AE0:  VLD1.8          {D16-D17}, [R3@128],R1
62AE4:  VEOR            Q8, Q8, Q5
62AE8:  VST1.8          {D16-D17}, [R0@128]!
62AEC:  MOV             R1, R0
62AEE:  VLD1.8          {D16-D17}, [R1@128],R4
62AF2:  EOR.W           R4, R12, #0x5A ; 'Z'
62AF6:  VEOR            Q8, Q8, Q5
62AFA:  LDRB.W          R12, [R3]
62AFE:  STRB.W          R4, [R8]
62B02:  EOR.W           R4, LR, #0x5A ; 'Z'
62B06:  VST1.8          {D16-D17}, [R0@128]!
62B0A:  STRB            R4, [R2]
62B0C:  EOR.W           R4, R12, #0x5A ; 'Z'
62B10:  LDRB            R2, [R1]
62B12:  STRB            R4, [R3]
62B14:  LDRB            R3, [R0]
62B16:  EOR.W           R2, R2, #0x5A ; 'Z'
62B1A:  STRB            R2, [R1]
62B1C:  EOR.W           R1, R3, #0x5A ; 'Z'
62B20:  STRB            R1, [R0]
62B22:  B               loc_62982
62B24:  LDR.W           R2, [R0,#0xB8]
62B28:  CMP             R2, #0
62B2A:  BNE.W           loc_629CA
62B2E:  LDR.W           R2, [R0,#0xB8]
62B32:  CMP             R2, #0
62B34:  BNE             loc_62A80
62B36:  ADD.W           R2, R0, #0x48 ; 'H'
62B3A:  MOVS            R3, #0
62B3C:  VST1.8          {D12-D13}, [R2]!
62B40:  STR             R3, [R2]
62B42:  MOV             R2, #0x4232BD
62B4A:  ADD             R1, R2
62B4C:  ADD.W           R1, R1, #0x10C
62B50:  STR             R3, [R0,#0x5C]
62B52:  BLX             R1
62B54:  VMOV.F32        S0, S16
62B58:  LDR.W           R0, [R10,#4]
62B5C:  VMOV.F32        S2, S16
62B60:  VMOV.F32        S4, S16
62B64:  CBZ             R0, loc_62B8C
62B66:  LDR             R0, [R0,#0x14]
62B68:  VMOV.F32        S0, S16
62B6C:  VMOV.F32        S2, S16
62B70:  VMOV.F32        S4, S16
62B74:  CMP             R0, #0
62B76:  ITTTT NE
62B78:  LDRNE           R1, [R0,#0x30]
62B7A:  LDRNE           R2, [R0,#0x34]
62B7C:  LDRNE           R0, [R0,#0x38]
62B7E:  VMOVNE          S4, R0
62B82:  ITT NE
62B84:  VMOVNE          S2, R2
62B88:  VMOVNE          S0, R1
62B8C:  VMOV            R1, S0
62B90:  MOV             R0, R10
62B92:  VMOV            R2, S2
62B96:  VMOV            R3, S4
62B9A:  BL              sub_66064
62B9E:  B               loc_62A80
62BA0:  LDR.W           R0, [R10,#4]
62BA4:  CMP             R0, #0
62BA6:  BEQ.W           loc_629CA
62BAA:  LDR             R1, =(off_114AA8 - 0x62BBA)
62BAC:  MOVW            R3, #0x7D24
62BB0:  LDR             R2, [R0]
62BB2:  MOVT            R3, #0x66 ; 'f'
62BB6:  ADD             R1, PC; off_114AA8
62BB8:  LDR             R1, [R1]; dword_1A4404
62BBA:  LDR             R1, [R1]
62BBC:  ADD             R3, R1
62BBE:  CMP             R2, R3
62BC0:  ITT NE
62BC2:  LDRNE.W         R2, [R0,#0xB8]
62BC6:  CMPNE           R2, #0
62BC8:  BEQ.W           loc_629CA
62BCC:  MOV             R2, #0x4232BD
62BD4:  ADD             R1, R2
62BD6:  BLX             R1
62BD8:  B               loc_629CA
62BDA:  LDR             R0, =(unk_1A3B28 - 0x62BE0)
62BDC:  ADD             R0, PC; unk_1A3B28 ; __guard *
62BDE:  BLX             j___cxa_guard_acquire
62BE2:  CMP             R0, #0
62BE4:  BEQ.W           loc_62AA4
62BE8:  LDR             R4, =(unk_1A3AE0 - 0x62BF2)
62BEA:  MOVS            R2, #0x45 ; 'E'; n
62BEC:  LDR             R1, =(unk_509A8 - 0x62BF4)
62BEE:  ADD             R4, PC; unk_1A3AE0
62BF0:  ADD             R1, PC; unk_509A8 ; src
62BF2:  MOV             R0, R4; dest
62BF4:  BLX             j_memcpy
62BF8:  LDR             R0, =(sub_66C72+1 - 0x62C02)
62BFA:  MOV             R1, R4; obj
62BFC:  LDR             R2, =(off_110560 - 0x62C04)
62BFE:  ADD             R0, PC; sub_66C72 ; lpfunc
62C00:  ADD             R2, PC; off_110560 ; lpdso_handle
62C02:  BLX             __cxa_atexit
62C06:  LDR             R0, =(unk_1A3B28 - 0x62C0C)
62C08:  ADD             R0, PC; unk_1A3B28 ; __guard *
62C0A:  BLX             j___cxa_guard_release
62C0E:  B               loc_62AA4
62C10:  ADD             SP, SP, #0x38 ; '8'
62C12:  VPOP            {D8-D14}
62C16:  ADD             SP, SP, #4
62C18:  POP.W           {R8-R11}
62C1C:  POP             {R4-R7,PC}
