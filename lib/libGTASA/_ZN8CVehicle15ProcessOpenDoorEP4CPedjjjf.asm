; =========================================================
; Game Engine Function: _ZN8CVehicle15ProcessOpenDoorEP4CPedjjjf
; Address            : 0x59182C - 0x591BC6
; =========================================================

59182C:  PUSH            {R4-R7,LR}
59182E:  ADD             R7, SP, #0xC
591830:  PUSH.W          {R8,R9,R11}
591834:  VPUSH           {D8}
591838:  SUB             SP, SP, #8
59183A:  MOV             R9, R2
59183C:  MOV             R6, R0
59183E:  SUB.W           R0, R9, #8
591842:  MOV             R8, R1
591844:  CMP             R0, #3
591846:  MOV             R5, R3
591848:  ITTE LS
59184A:  ADRLS.W         R1, dword_591BC8
59184E:  LDRLS.W         R4, [R1,R0,LSL#2]
591852:  MOVHI           R4, #2
591854:  LDR             R0, [R6]
591856:  LDR.W           R2, [R0,#0x88]
59185A:  MOV             R0, R6
59185C:  MOV             R1, R4
59185E:  BLX             R2
591860:  CMP             R0, #0
591862:  BNE.W           def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591866:  LDR             R0, [R7,#arg_0]
591868:  SUBW            R0, R0, #0x163; switch 34 cases
59186C:  CMP             R0, #0x21 ; '!'
59186E:  BHI.W           def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591872:  VLDR            S16, [R7,#arg_4]
591876:  TBH.W           [PC,R0,LSL#1]; switch jump
59187A:  DCW 0x3B; jump table for switch statement
59187C:  DCW 0x3B
59187E:  DCW 0x3B
591880:  DCW 0x3B
591882:  DCW 0x1A0
591884:  DCW 0x1A0
591886:  DCW 0x1A0
591888:  DCW 0x1A0
59188A:  DCW 0x1A0
59188C:  DCW 0xF5
59188E:  DCW 0xF5
591890:  DCW 0xF5
591892:  DCW 0x64
591894:  DCW 0x64
591896:  DCW 0x64
591898:  DCW 0x64
59189A:  DCW 0x1A0
59189C:  DCW 0x1A0
59189E:  DCW 0x93
5918A0:  DCW 0x93
5918A2:  DCW 0x93
5918A4:  DCW 0x93
5918A6:  DCW 0x1A0
5918A8:  DCW 0x22
5918AA:  DCW 0x22
5918AC:  DCW 0xC5
5918AE:  DCW 0xC5
5918B0:  DCW 0xC5
5918B2:  DCW 0xC5
5918B4:  DCW 0x107
5918B6:  DCW 0x107
5918B8:  DCW 0x140
5918BA:  DCW 0x22
5918BC:  DCW 0x22
5918BE:  VLDR            S0, =0.1; jumptable 00591876 cases 378,379,387,388
5918C2:  VCMPE.F32       S16, S0
5918C6:  VMRS            APSR_nzcv, FPSCR
5918CA:  BLE.W           loc_591AB8
5918CE:  VLDR            S2, =0.4
5918D2:  VCMPE.F32       S16, S2
5918D6:  VMRS            APSR_nzcv, FPSCR
5918DA:  BGE.W           loc_591AB8
5918DE:  VLDR            S0, =-0.1
5918E2:  VLDR            S2, =0.3
5918E6:  VADD.F32        S0, S16, S0
5918EA:  VDIV.F32        S0, S0, S2
5918EE:  B               loc_591B3E
5918F0:  LDR.W           R0, [R6,#0x388]; jumptable 00591876 cases 355-358
5918F4:  MOVS            R2, #0x94
5918F6:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5918FC)
5918F8:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5918FA:  LDRB.W          R0, [R0,#0xDE]
5918FE:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
591900:  SMLABB.W        R0, R0, R2, R1
591904:  VLDR            S0, [R0,#0x20]
591908:  VLDR            S2, [R0,#0x30]
59190C:  VCMPE.F32       S0, S16
591910:  VMRS            APSR_nzcv, FPSCR
591914:  BGE             loc_591920
591916:  VCMPE.F32       S2, S16
59191A:  VMRS            APSR_nzcv, FPSCR
59191E:  BGT             loc_5919D0
591920:  VCMPE.F32       S2, S16
591924:  VMRS            APSR_nzcv, FPSCR
591928:  BLT.W           loc_591AE2
59192C:  VCMPE.F32       S0, S16
591930:  VMRS            APSR_nzcv, FPSCR
591934:  BLE.W           def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591938:  LDR             R0, [R6]
59193A:  LDR             R5, [R0,#0x70]
59193C:  MOVS            R0, #0
59193E:  STR             R0, [SP,#0x28+var_28]
591940:  B               loc_591BAE
591942:  LDR.W           R0, [R6,#0x388]; jumptable 00591876 cases 367-370
591946:  MOVS            R2, #0x94
591948:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x59194E)
59194A:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
59194C:  LDRB.W          R0, [R0,#0xDE]
591950:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
591952:  SMLABB.W        R0, R0, R2, R1
591956:  VLDR            S0, [R0,#0x24]
59195A:  VLDR            S2, [R0,#0x34]
59195E:  VCMPE.F32       S0, S16
591962:  VMRS            APSR_nzcv, FPSCR
591966:  BGE             loc_591A4C
591968:  VCMPE.F32       S2, S16
59196C:  VMRS            APSR_nzcv, FPSCR
591970:  BLE             loc_591A4C
591972:  VSUB.F32        S2, S2, S0
591976:  LDR             R0, [R6]
591978:  VSUB.F32        S0, S16, S0
59197C:  MOV             R1, R4
59197E:  LDR             R2, [R0,#0x78]
591980:  MOV             R0, R6
591982:  VDIV.F32        S0, S0, S2
591986:  VMOV.F32        S2, #1.0
59198A:  VSUB.F32        S16, S2, S0
59198E:  BLX             R2
591990:  VMOV            S0, R0
591994:  VCMPE.F32       S0, S16
591998:  VMRS            APSR_nzcv, FPSCR
59199C:  BGT             loc_5919F6
59199E:  B               def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
5919A0:  LDR.W           R0, [R6,#0x388]; jumptable 00591876 cases 373-376
5919A4:  MOVS            R2, #0x94
5919A6:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5919AC)
5919A8:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5919AA:  LDRB.W          R0, [R0,#0xDE]
5919AE:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5919B0:  SMLABB.W        R0, R0, R2, R1
5919B4:  VLDR            S0, [R0,#0x28]
5919B8:  VLDR            S2, [R0,#0x38]
5919BC:  VCMPE.F32       S0, S16
5919C0:  VMRS            APSR_nzcv, FPSCR
5919C4:  BGE             loc_591ABE
5919C6:  VCMPE.F32       S2, S16
5919CA:  VMRS            APSR_nzcv, FPSCR
5919CE:  BLE             loc_591ABE
5919D0:  VSUB.F32        S2, S2, S0
5919D4:  LDR             R0, [R6]
5919D6:  VSUB.F32        S0, S16, S0
5919DA:  MOV             R1, R4
5919DC:  LDR             R2, [R0,#0x78]
5919DE:  MOV             R0, R6
5919E0:  VDIV.F32        S16, S0, S2
5919E4:  BLX             R2
5919E6:  VMOV            S0, R0
5919EA:  VCMPE.F32       S0, S16
5919EE:  VMRS            APSR_nzcv, FPSCR
5919F2:  BGE.W           def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
5919F6:  LDR             R0, [R6]
5919F8:  LDR             R5, [R0,#0x70]
5919FA:  MOVS            R0, #1
5919FC:  STR             R0, [SP,#0x28+var_24]
5919FE:  VSTR            S16, [SP,#0x28+var_28]
591A02:  B               loc_591BB0
591A04:  LDR.W           R0, [R6,#0x388]; jumptable 00591876 cases 380-383
591A08:  MOVS            R2, #0x94
591A0A:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x591A10)
591A0C:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
591A0E:  LDRB.W          R0, [R0,#0xDE]
591A12:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
591A14:  SMLABB.W        R0, R0, R2, R1
591A18:  VLDR            S0, [R0,#0x2C]
591A1C:  VLDR            S2, [R0,#0x3C]
591A20:  VCMPE.F32       S0, S16
591A24:  VMRS            APSR_nzcv, FPSCR
591A28:  BGE             loc_591A4C
591A2A:  VCMPE.F32       S2, S16
591A2E:  VMRS            APSR_nzcv, FPSCR
591A32:  BLE             loc_591A4C
591A34:  VSUB.F32        S2, S2, S0
591A38:  LDR             R0, [R6]
591A3A:  VSUB.F32        S0, S16, S0
591A3E:  VDIV.F32        S0, S0, S2
591A42:  VMOV.F32        S2, #1.0
591A46:  VSUB.F32        S0, S2, S0
591A4A:  B               loc_591B40
591A4C:  VCMPE.F32       S2, S16
591A50:  VMRS            APSR_nzcv, FPSCR
591A54:  BLT.W           loc_591BA4
591A58:  VCMPE.F32       S0, S16
591A5C:  VMRS            APSR_nzcv, FPSCR
591A60:  BGT             loc_591AE2
591A62:  B               def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591A64:  SUB.W           R1, R5, #0x58 ; 'X'; jumptable 00591876 cases 364-366
591A68:  CMP             R1, #0x19
591A6A:  BHI.W           def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591A6E:  MOVW            R2, #0x8007
591A72:  MOVS            R0, #1
591A74:  LSL.W           R1, R0, R1
591A78:  MOVT            R2, #0x259
591A7C:  TST             R1, R2
591A7E:  BEQ.W           def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591A82:  LDR             R1, [R6]
591A84:  LDR             R5, [R1,#0x70]
591A86:  B               loc_591AE8
591A88:  VLDR            S0, =0.01; jumptable 00591876 cases 384,385
591A8C:  VCMPE.F32       S16, S0
591A90:  VMRS            APSR_nzcv, FPSCR
591A94:  BLE             loc_591AD4
591A96:  VLDR            S2, =0.1
591A9A:  VCMPE.F32       S16, S2
591A9E:  VMRS            APSR_nzcv, FPSCR
591AA2:  BGE             loc_591AD4
591AA4:  LDR             R0, [R6]
591AA6:  MOV             R1, R4
591AA8:  LDR             R2, [R0,#0x78]
591AAA:  MOV             R0, R6
591AAC:  BLX             R2
591AAE:  VLDR            S0, =-0.01
591AB2:  VLDR            S2, =0.09
591AB6:  B               loc_591B28
591AB8:  VLDR            S2, =0.4
591ABC:  B               loc_591AD8
591ABE:  VCMPE.F32       S2, S16
591AC2:  VMRS            APSR_nzcv, FPSCR
591AC6:  BLT             loc_591AE2
591AC8:  VCMPE.F32       S0, S16
591ACC:  VMRS            APSR_nzcv, FPSCR
591AD0:  BLE             def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591AD2:  B               loc_591BA4
591AD4:  VLDR            S2, =0.1
591AD8:  VCMPE.F32       S16, S2
591ADC:  VMRS            APSR_nzcv, FPSCR
591AE0:  BLE             loc_591AEE
591AE2:  LDR             R0, [R6]
591AE4:  LDR             R5, [R0,#0x70]
591AE6:  MOVS            R0, #1
591AE8:  MOV.W           R1, #0x3F800000
591AEC:  B               loc_591BAC
591AEE:  VCMPE.F32       S16, S0
591AF2:  VMRS            APSR_nzcv, FPSCR
591AF6:  BLT             loc_591BA4
591AF8:  B               def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591AFA:  VLDR            S0, =0.3; jumptable 00591876 case 386
591AFE:  VCMPE.F32       S16, S0
591B02:  VMRS            APSR_nzcv, FPSCR
591B06:  BGE             loc_591B4C
591B08:  VLDR            S2, =0.05
591B0C:  VCMPE.F32       S16, S2
591B10:  VMRS            APSR_nzcv, FPSCR
591B14:  BLE             loc_591B4C
591B16:  LDR             R0, [R6]
591B18:  MOV             R1, R4
591B1A:  LDR             R2, [R0,#0x78]
591B1C:  MOV             R0, R6
591B1E:  BLX             R2
591B20:  VLDR            S0, =-0.05
591B24:  VLDR            S2, =0.15
591B28:  VADD.F32        S0, S16, S0
591B2C:  VDIV.F32        S0, S0, S2
591B30:  VMOV            S2, R0
591B34:  VCMPE.F32       S2, S0
591B38:  VMRS            APSR_nzcv, FPSCR
591B3C:  BGE             def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591B3E:  LDR             R0, [R6]
591B40:  LDR             R5, [R0,#0x70]
591B42:  MOVS            R0, #1
591B44:  STR             R0, [SP,#0x28+var_24]
591B46:  VSTR            S0, [SP,#0x28+var_28]
591B4A:  B               loc_591BB0
591B4C:  VCMPE.F32       S16, S0
591B50:  VMRS            APSR_nzcv, FPSCR
591B54:  BLE             loc_591B96
591B56:  VLDR            S0, =0.475
591B5A:  VCMPE.F32       S16, S0
591B5E:  VMRS            APSR_nzcv, FPSCR
591B62:  BGE             loc_591B96
591B64:  LDR             R0, [R6]
591B66:  MOV             R1, R4
591B68:  LDR             R2, [R0,#0x78]
591B6A:  MOV             R0, R6
591B6C:  BLX             R2
591B6E:  VLDR            S0, =-0.3
591B72:  VLDR            S2, =-0.175
591B76:  VADD.F32        S0, S16, S0
591B7A:  VDIV.F32        S0, S0, S2
591B7E:  VMOV.F32        S2, #1.0
591B82:  VADD.F32        S0, S0, S2
591B86:  VMOV            S2, R0
591B8A:  VCMPE.F32       S2, S0
591B8E:  VMRS            APSR_nzcv, FPSCR
591B92:  BGT             loc_591B3E
591B94:  B               def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591B96:  VLDR            S0, =0.475
591B9A:  VCMPE.F32       S16, S0
591B9E:  VMRS            APSR_nzcv, FPSCR
591BA2:  BLE             def_591876; jumptable 00591876 default case, cases 359-363,371,372,377
591BA4:  LDR             R0, [R6]
591BA6:  MOVS            R1, #0
591BA8:  LDR             R5, [R0,#0x70]
591BAA:  MOVS            R0, #1
591BAC:  STR             R1, [SP,#0x28+var_28]
591BAE:  STR             R0, [SP,#0x28+var_24]
591BB0:  MOV             R0, R6
591BB2:  MOV             R1, R8
591BB4:  MOV             R2, R9
591BB6:  MOV             R3, R4
591BB8:  BLX             R5
591BBA:  ADD             SP, SP, #8; jumptable 00591876 default case, cases 359-363,371,372,377
591BBC:  VPOP            {D8}
591BC0:  POP.W           {R8,R9,R11}
591BC4:  POP             {R4-R7,PC}
