; =========================================================
; Game Engine Function: _Z14AND_TouchEventiiii
; Address            : 0x2697C0 - 0x269A6E
; =========================================================

2697C0:  PUSH            {R4-R7,LR}
2697C2:  ADD             R7, SP, #0xC
2697C4:  PUSH.W          {R8-R11}
2697C8:  SUB             SP, SP, #0x34
2697CA:  MOVW            R6, #:lower16:(aZn6cworld51fin+0x26); "ledCollisionBoxSectorListER8CPtrListRK4"...
2697CE:  CMP             R0, #1
2697D0:  MOV             R9, R3
2697D2:  MOV             R11, R2
2697D4:  MOV             R10, R1
2697D6:  MOV.W           R5, #0
2697DA:  MOVT            R6, #:upper16:(aZn6cworld51fin+0x26); "ledCollisionBoxSectorListER8CPtrListRK4"...
2697DE:  IT NE
2697E0:  CMPNE           R0, #4
2697E2:  BEQ             loc_269806
2697E4:  CMP             R0, #2
2697E6:  BNE             loc_2698C2
2697E8:  LDR             R0, =(Points_ptr - 0x2697F6)
2697EA:  RSB.W           R1, R10, R10,LSL#3
2697EE:  MOV.W           R2, #0xFFFFFFFF
2697F2:  ADD             R0, PC; Points_ptr
2697F4:  LDR             R0, [R0]; Points
2697F6:  STR.W           R2, [R0,R1,LSL#2]
2697FA:  ADD.W           R0, R0, R1,LSL#2
2697FE:  MOVS            R1, #2
269800:  STRD.W          R2, R1, [R0,#4]
269804:  B               loc_2698C0
269806:  LDR             R0, =(Points_ptr - 0x269812)
269808:  RSB.W           R4, R10, R10,LSL#3
26980C:  MOVS            R1, #0; tz
26980E:  ADD             R0, PC; Points_ptr
269810:  LDR             R0, [R0]; Points
269812:  ADD.W           R0, R0, R4,LSL#2
269816:  STR             R5, [R0,#8]
269818:  MOV             R0, SP; tv
26981A:  BLX             gettimeofday
26981E:  VLDR            S0, [SP,#0x50+var_50]
269822:  VCVT.F64.S32    D16, S0
269826:  LDR             R0, [SP,#0x50+var_4C]
269828:  CMP             R0, R6
26982A:  BGT             loc_269844
26982C:  VMOV            S0, R0
269830:  CMP.W           R0, #0xFFFFFFFF
269834:  VCVT.F64.S32    D17, S0
269838:  BLE             loc_269844
26983A:  VLDR            D18, =1000000.0
26983E:  VDIV.F64        D17, D17, D18
269842:  B               loc_269860
269844:  LDR             R0, =(unk_6D70D8 - 0x26984A)
269846:  ADD             R0, PC; unk_6D70D8
269848:  VLDR            D17, [R0]
26984C:  VCVT.U32.F64    S0, D17
269850:  VCVT.F64.U32    D18, S0
269854:  VSUB.F64        D17, D17, D18
269858:  VLDR            D18, =0.00033
26985C:  VADD.F64        D17, D17, D18
269860:  VADD.F64        D16, D17, D16
269864:  LDR             R0, =(unk_6D70E0 - 0x26986A)
269866:  ADD             R0, PC; unk_6D70E0
269868:  VLDR            D17, [R0]
26986C:  VMOV.F64        D18, #5.0
269870:  LDR             R0, =(unk_6D70D8 - 0x269876)
269872:  ADD             R0, PC; unk_6D70D8
269874:  VSUB.F64        D17, D16, D17
269878:  VCMPE.F64       D17, D18
26987C:  VMRS            APSR_nzcv, FPSCR
269880:  VSTR            D16, [R0]
269884:  BLE             loc_26988E
269886:  LDR             R0, =(unk_6D70E0 - 0x26988C)
269888:  ADD             R0, PC; unk_6D70E0
26988A:  VSTR            D16, [R0]
26988E:  LDR             R0, =(base_time_ptr - 0x269896)
269890:  MOVS            R2, #0
269892:  ADD             R0, PC; base_time_ptr
269894:  LDR             R0, [R0]; base_time
269896:  VLDR            D17, [R0]
26989A:  LDR             R0, =(Points_ptr - 0x2698A4)
26989C:  VSUB.F64        D16, D16, D17
2698A0:  ADD             R0, PC; Points_ptr
2698A2:  LDR             R0, [R0]; Points
2698A4:  ADD.W           R0, R0, R4,LSL#2
2698A8:  LDR             R1, [R0,#0xC]
2698AA:  VCVT.F32.F64    S0, D16
2698AE:  ADD.W           R1, R0, R1,LSL#2
2698B2:  VSTR            S0, [R1,#0x10]
2698B6:  LDR             R1, [R0,#0xC]
2698B8:  CMP             R1, #0
2698BA:  IT EQ
2698BC:  MOVEQ           R2, #1
2698BE:  STR             R2, [R0,#0xC]
2698C0:  MOVS            R5, #1
2698C2:  LDR             R0, =(Points_ptr - 0x2698CC)
2698C4:  RSB.W           R6, R10, R10,LSL#3
2698C8:  ADD             R0, PC; Points_ptr
2698CA:  LDR             R1, [R0]; Points
2698CC:  ADD.W           R8, R1, R6,LSL#2
2698D0:  LDR.W           R0, [R1,R6,LSL#2]
2698D4:  MOV             R4, R8
2698D6:  LDR.W           R1, [R4,#4]!
2698DA:  CMP             R0, R11
2698DC:  IT EQ
2698DE:  CMPEQ           R1, R9
2698E0:  BEQ             loc_2699A4
2698E2:  STRD.W          R10, R0, [SP,#0x50+var_50]
2698E6:  ADD             R0, SP, #0x50+tv; tv
2698E8:  STRD.W          R1, R11, [SP,#0x50+var_48]
2698EC:  MOVS            R1, #0; tz
2698EE:  STR.W           R9, [SP,#0x50+var_40]
2698F2:  BLX             gettimeofday
2698F6:  VLDR            S0, [SP,#0x50+tv]
2698FA:  MOV             R1, #0xF4240
269902:  VCVT.F64.S32    D16, S0
269906:  LDR             R0, [SP,#0x50+tv.tv_usec]
269908:  CMP             R0, R1
26990A:  BGT             loc_269924
26990C:  VMOV            S0, R0
269910:  CMP.W           R0, #0xFFFFFFFF
269914:  VCVT.F64.S32    D17, S0
269918:  BLE             loc_269924
26991A:  VLDR            D18, =1000000.0
26991E:  VDIV.F64        D17, D17, D18
269922:  B               loc_269940
269924:  LDR             R0, =(unk_6D70D8 - 0x26992A)
269926:  ADD             R0, PC; unk_6D70D8
269928:  VLDR            D17, [R0]
26992C:  VCVT.U32.F64    S0, D17
269930:  VCVT.F64.U32    D18, S0
269934:  VSUB.F64        D17, D17, D18
269938:  VLDR            D18, =0.00033
26993C:  VADD.F64        D17, D17, D18
269940:  VADD.F64        D16, D17, D16
269944:  LDR             R0, =(unk_6D70E0 - 0x26994A)
269946:  ADD             R0, PC; unk_6D70E0
269948:  VLDR            D17, [R0]
26994C:  VMOV.F64        D18, #5.0
269950:  LDR             R0, =(unk_6D70D8 - 0x269956)
269952:  ADD             R0, PC; unk_6D70D8
269954:  VSUB.F64        D17, D16, D17
269958:  VCMPE.F64       D17, D18
26995C:  VMRS            APSR_nzcv, FPSCR
269960:  VSTR            D16, [R0]
269964:  BLE             loc_26996E
269966:  LDR             R0, =(unk_6D70E0 - 0x26996C)
269968:  ADD             R0, PC; unk_6D70E0
26996A:  VSTR            D16, [R0]
26996E:  LDR             R0, =(base_time_ptr - 0x26997A)
269970:  MOVS            R1, #0
269972:  STR.W           R11, [R8]
269976:  ADD             R0, PC; base_time_ptr
269978:  STR             R1, [SP,#0x50+var_30]
26997A:  STR.W           R9, [R4]
26997E:  LDR             R0, [R0]; base_time
269980:  VLDR            D17, [R0]
269984:  LDR             R0, =(pointers_ptr - 0x26998E)
269986:  VSUB.F64        D16, D16, D17
26998A:  ADD             R0, PC; pointers_ptr
26998C:  LDR             R0, [R0]; pointers
26998E:  ADD.W           R0, R0, R6,LSL#4
269992:  VSTR            D16, [SP,#0x50+var_38]
269996:  STRD.W          R11, R9, [R0,#0x18]
26999A:  STR             R1, [R0,#0x20]
26999C:  MOV             R1, SP
26999E:  MOVS            R0, #3
2699A0:  BLX             j__Z19OS_ApplicationEvent11OSEventTypePv; OS_ApplicationEvent(OSEventType,void *)
2699A4:  CMP             R5, #1
2699A6:  BNE             loc_269A66
2699A8:  LDR             R0, =(Points_ptr - 0x2699B4)
2699AA:  MOVS            R2, #0
2699AC:  STR.W           R10, [SP,#0x50+var_50]
2699B0:  ADD             R0, PC; Points_ptr
2699B2:  LDR             R0, [R0]; Points
2699B4:  ADD.W           R0, R0, R6,LSL#2
2699B8:  LDRD.W          R1, R0, [R0,#4]
2699BC:  STR             R2, [SP,#0x50+var_4C]
2699BE:  STR             R0, [SP,#0x50+var_38+4]
2699C0:  LDR.W           R0, [R8]
2699C4:  STRD.W          R0, R1, [SP,#0x50+var_48]
2699C8:  ADD             R0, SP, #0x50+tv; tv
2699CA:  MOVS            R1, #0; tz
2699CC:  BLX             gettimeofday
2699D0:  VLDR            S0, [SP,#0x50+tv]
2699D4:  MOV             R1, #0xF4240
2699DC:  VCVT.F64.S32    D16, S0
2699E0:  LDR             R0, [SP,#0x50+tv.tv_usec]
2699E2:  CMP             R0, R1
2699E4:  BGT             loc_2699FE
2699E6:  VMOV            S0, R0
2699EA:  CMP.W           R0, #0xFFFFFFFF
2699EE:  VCVT.F64.S32    D17, S0
2699F2:  BLE             loc_2699FE
2699F4:  VLDR            D18, =1000000.0
2699F8:  VDIV.F64        D17, D17, D18
2699FC:  B               loc_269A1A
2699FE:  LDR             R0, =(unk_6D70D8 - 0x269A04)
269A00:  ADD             R0, PC; unk_6D70D8
269A02:  VLDR            D17, [R0]
269A06:  VCVT.U32.F64    S0, D17
269A0A:  VCVT.F64.U32    D18, S0
269A0E:  VSUB.F64        D17, D17, D18
269A12:  VLDR            D18, =0.00033
269A16:  VADD.F64        D17, D17, D18
269A1A:  VADD.F64        D16, D17, D16
269A1E:  LDR             R0, =(unk_6D70E0 - 0x269A24)
269A20:  ADD             R0, PC; unk_6D70E0
269A22:  VLDR            D17, [R0]
269A26:  VMOV.F64        D18, #5.0
269A2A:  LDR             R0, =(unk_6D70D8 - 0x269A30)
269A2C:  ADD             R0, PC; unk_6D70D8
269A2E:  VSUB.F64        D17, D16, D17
269A32:  VCMPE.F64       D17, D18
269A36:  VMRS            APSR_nzcv, FPSCR
269A3A:  VSTR            D16, [R0]
269A3E:  BLE             loc_269A48
269A40:  LDR             R0, =(unk_6D70E0 - 0x269A46)
269A42:  ADD             R0, PC; unk_6D70E0
269A44:  VSTR            D16, [R0]
269A48:  LDR             R0, =(base_time_ptr - 0x269A50)
269A4A:  MOV             R1, SP
269A4C:  ADD             R0, PC; base_time_ptr
269A4E:  LDR             R0, [R0]; base_time
269A50:  VLDR            D17, [R0]
269A54:  MOVS            R0, #0
269A56:  STR             R0, [SP,#0x50+var_38]
269A58:  MOVS            R0, #4
269A5A:  VSUB.F64        D16, D16, D17
269A5E:  VSTR            D16, [SP,#0x50+var_40]
269A62:  BLX             j__Z14LIB_InputEvent11OSEventTypePv; LIB_InputEvent(OSEventType,void *)
269A66:  ADD             SP, SP, #0x34 ; '4'
269A68:  POP.W           {R8-R11}
269A6C:  POP             {R4-R7,PC}
