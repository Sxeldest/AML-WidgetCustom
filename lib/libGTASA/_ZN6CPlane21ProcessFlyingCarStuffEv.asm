; =========================================================
; Game Engine Function: _ZN6CPlane21ProcessFlyingCarStuffEv
; Address            : 0x576870 - 0x57739A
; =========================================================

576870:  PUSH            {R4-R7,LR}
576872:  ADD             R7, SP, #0xC
576874:  PUSH.W          {R8-R11}
576878:  SUB             SP, SP, #4
57687A:  VPUSH           {D8-D15}
57687E:  SUB             SP, SP, #0x90
576880:  MOV             R4, R0
576882:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57688A)
576886:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
576888:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
57688A:  VLDR            S16, [R0]
57688E:  VCMPE.F32       S16, #0.0
576892:  VMRS            APSR_nzcv, FPSCR
576896:  BLE.W           loc_577324
57689A:  LDR.W           R0, =(PLANE_DAMAGE_WAVE_COUNTER_VAR_ptr - 0x5768AA)
57689E:  VMOV.F32        S24, #1.0
5768A2:  VLDR            S20, =50.0
5768A6:  ADD             R0, PC; PLANE_DAMAGE_WAVE_COUNTER_VAR_ptr
5768A8:  LDR             R0, [R0]; PLANE_DAMAGE_WAVE_COUNTER_VAR
5768AA:  VLDR            S18, [R0]
5768AE:  BLX             rand
5768B2:  VDIV.F32        S0, S16, S20
5768B6:  ADDW            R2, R4, #0x9A4
5768BA:  ADDW            R1, R4, #0x99C
5768BE:  VMOV            S6, R0
5768C2:  VLDR            S22, [R4,#0x48]
5768C6:  VLDR            S30, [R4,#0x4C]
5768CA:  VSUB.F32        S2, S24, S18
5768CE:  VADD.F32        S4, S18, S24
5768D2:  VLDR            S28, [R4,#0x50]
5768D6:  VCVT.F32.S32    S6, S6
5768DA:  VLDR            S26, =4.6566e-10
5768DE:  VLDR            S8, =1000.0
5768E2:  ADDW            R0, R4, #0x4CC
5768E6:  VMUL.F32        S0, S0, S8
5768EA:  VSUB.F32        S4, S4, S2
5768EE:  VMUL.F32        S6, S6, S26
5768F2:  VCVT.U32.F32    S0, S0
5768F6:  VMUL.F32        S4, S4, S6
5768FA:  VCVT.F32.U32    S0, S0
5768FE:  STR             R2, [SP,#0xF0+var_A8]
576900:  VLDR            S16, [R2]
576904:  ADD.W           R2, R4, #0x9A0
576908:  STR             R2, [SP,#0xF0+var_AC]
57690A:  VLDR            S18, [R2]
57690E:  VADD.F32        S2, S2, S4
576912:  STR             R1, [SP,#0xF0+var_BC]
576914:  VLDR            S20, [R1]
576918:  VLDR            S4, =250.0
57691C:  VMUL.F32        S0, S2, S0
576920:  VCVT.U32.F32    S0, S0
576924:  VLDR            S2, [R0]
576928:  LDR.W           R1, [R4,#0x9E4]
57692C:  VCMPE.F32       S2, S4
576930:  VMRS            APSR_nzcv, FPSCR
576934:  VMOV            R0, S0
576938:  ADD             R0, R1
57693A:  STR.W           R0, [R4,#0x9E4]
57693E:  BGE             loc_5769EA
576940:  LDRB.W          R0, [R4,#0x3A]
576944:  CMP             R0, #7
576946:  BHI             loc_5769EA
576948:  ADDW            R5, R4, #0x5B4
57694C:  MOVS            R1, #0xC; int
57694E:  MOVS            R2, #2; unsigned int
576950:  MOV             R0, R5; this
576952:  BLX             j__ZN14CDamageManager22SetAeroplaneCompStatusEij; CDamageManager::SetAeroplaneCompStatus(int,uint)
576956:  MOV             R0, R5; this
576958:  MOVS            R1, #0xD; int
57695A:  MOVS            R2, #2; unsigned int
57695C:  BLX             j__ZN14CDamageManager22SetAeroplaneCompStatusEij; CDamageManager::SetAeroplaneCompStatus(int,uint)
576960:  VMOV.F32        S17, #0.5
576964:  LDR             R0, [R4,#0x14]
576966:  CBZ             R0, loc_5769C4
576968:  VLDR            S0, [R0]
57696C:  VLDR            S2, [R0,#4]
576970:  VMUL.F32        S0, S0, S0
576974:  VMUL.F32        S2, S2, S2
576978:  VADD.F32        S0, S0, S2
57697C:  VLDR            S2, [R0,#0x28]
576980:  VCMPE.F32       S2, #0.0
576984:  VMRS            APSR_nzcv, FPSCR
576988:  VSQRT.F32       S0, S0
57698C:  VNEG.F32        S4, S0
576990:  IT LT
576992:  VMOVLT.F32      S0, S4
576996:  LDR             R0, [R0,#8]; y
576998:  VMOV            R1, S0; x
57699C:  BLX             atan2f
5769A0:  VMOV            S0, R0
5769A4:  VLDR            S6, =2.3562
5769A8:  VMOV.F32        S2, #0.75
5769AC:  VABS.F32        S4, S0
5769B0:  VADD.F32        S2, S16, S2
5769B4:  VCMPE.F32       S4, S6
5769B8:  VMRS            APSR_nzcv, FPSCR
5769BC:  IT LT
5769BE:  VMOVLT.F32      S16, S2
5769C2:  B               loc_5769D0
5769C4:  VMOV.F32        S0, #0.75
5769C8:  VADD.F32        S16, S16, S0
5769CC:  VLDR            S0, =0.0
5769D0:  VABS.F32        S0, S0
5769D4:  VLDR            S2, =1.5708
5769D8:  VADD.F32        S20, S20, S17
5769DC:  VCMPE.F32       S0, S2
5769E0:  VMRS            APSR_nzcv, FPSCR
5769E4:  IT GT
5769E6:  VADDGT.F32      S18, S18, S17
5769EA:  LDRH            R0, [R4,#0x26]
5769EC:  CMP.W           R0, #0x1D0
5769F0:  BNE             loc_5769F8
5769F2:  ADD.W           R9, R4, #0x3A ; ':'
5769F6:  B               loc_5770BC
5769F8:  VMUL.F32        S2, S22, S22
5769FC:  ADD.W           R0, R4, #0x3A ; ':'
576A00:  VMUL.F32        S0, S30, S30
576A04:  STR             R0, [SP,#0xF0+var_C4]
576A06:  ADDW            R0, R4, #0x42C
576A0A:  STR             R0, [SP,#0xF0+var_A4]
576A0C:  ADDW            R0, R4, #0x9A8
576A10:  STR             R0, [SP,#0xF0+var_A0]
576A12:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x576A26)
576A16:  VMUL.F32        S4, S28, S28
576A1A:  VMOV.F32        S31, #0.5
576A1E:  ADDW            R8, R4, #0x68C
576A22:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
576A24:  VMOV.F32        S17, #0.25
576A28:  ADDW            R11, R4, #0x5B4
576A2C:  VLDR            S27, =0.1
576A30:  VADD.F32        S0, S2, S0
576A34:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
576A36:  STR             R0, [SP,#0xF0+var_B0]
576A38:  VMOV.F32        S2, #3.0
576A3C:  LDR.W           R0, =(TheCamera_ptr - 0x576A4C)
576A40:  MOV.W           R10, #0
576A44:  VLDR            S21, =-0.05
576A48:  ADD             R0, PC; TheCamera_ptr
576A4A:  VLDR            S22, =-0.2
576A4E:  LDR             R0, [R0]; TheCamera
576A50:  VADD.F32        S0, S0, S4
576A54:  STR             R0, [SP,#0xF0+var_C0]
576A56:  LDR.W           R0, =(g_fx_ptr - 0x576A5E)
576A5A:  ADD             R0, PC; g_fx_ptr
576A5C:  LDR             R0, [R0]; g_fx
576A5E:  STR             R0, [SP,#0xF0+var_D4]
576A60:  VSQRT.F32       S0, S0
576A64:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x576A6C)
576A68:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
576A6A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
576A6C:  STR             R0, [SP,#0xF0+var_D0]
576A6E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x576A76)
576A72:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
576A74:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
576A76:  STR             R0, [SP,#0xF0+var_D8]
576A78:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x576A80)
576A7C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
576A7E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
576A80:  STR             R0, [SP,#0xF0+var_B4]
576A82:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x576A8E)
576A86:  VMUL.F32        S0, S0, S2
576A8A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
576A8C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
576A8E:  STR             R0, [SP,#0xF0+var_C8]
576A90:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x576A9C)
576A94:  VMIN.F32        D14, D0, D12
576A98:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
576A9A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
576A9C:  STR             R0, [SP,#0xF0+var_B8]
576A9E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x576AA6)
576AA2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
576AA4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
576AA6:  STR             R0, [SP,#0xF0+var_CC]
576AA8:  ADD.W           R5, R10, #0xC
576AAC:  MOV             R0, R11; this
576AAE:  MOV             R1, R5; int
576AB0:  BLX             j__ZNK14CDamageManager22GetAeroplaneCompStatusEi; CDamageManager::GetAeroplaneCompStatus(int)
576AB4:  MOV             R6, R0
576AB6:  CMP             R6, #1
576AB8:  BLT.W           def_576B0A; jumptable 00576B0A default case
576ABC:  LDR.W           R0, [R8,R10,LSL#2]
576AC0:  CMP             R0, #0
576AC2:  BEQ.W           def_576B0A; jumptable 00576B0A default case
576AC6:  LDRSH.W         R0, [R4,#0x6C0]
576ACA:  CMP             R5, R0
576ACC:  BNE             loc_576AD4
576ACE:  MOV.W           R9, #0
576AD2:  B               loc_576B00
576AD4:  LDRSH.W         R0, [R4,#0x6E0]
576AD8:  CMP             R5, R0
576ADA:  BNE             loc_576AE2
576ADC:  MOV.W           R9, #1
576AE0:  B               loc_576B00
576AE2:  LDRSH.W         R0, [R4,#0x700]
576AE6:  CMP             R5, R0
576AE8:  BNE             loc_576AF0
576AEA:  MOV.W           R9, #2
576AEE:  B               loc_576B00
576AF0:  LDRSH.W         R0, [R4,#0x720]
576AF4:  MOV.W           R9, #0xFFFFFFFF
576AF8:  CMP             R5, R0
576AFA:  IT EQ
576AFC:  MOVEQ.W         R9, #3
576B00:  SUB.W           R0, R5, #0xC; switch 9 cases
576B04:  CMP             R0, #8
576B06:  BHI.W           def_576B0A; jumptable 00576B0A default case
576B0A:  TBH.W           [PC,R0,LSL#1]; switch jump
576B0E:  DCW 9; jump table for switch statement
576B10:  DCW 9
576B12:  DCW 9
576B14:  DCW 9
576B16:  DCW 0x14C
576B18:  DCW 0x83
576B1A:  DCW 0x83
576B1C:  DCW 0xE6
576B1E:  DCW 0xE6
576B20:  VMOV            S0, R6; jumptable 00576B0A cases 12-15
576B24:  VCVT.F32.S32    S19, S0
576B28:  LDR             R0, [SP,#0xF0+var_A0]
576B2A:  VLDR            S0, [R0]
576B2E:  VCMPE.F32       S0, #0.0
576B32:  VMRS            APSR_nzcv, FPSCR
576B36:  BLE             loc_576BB4
576B38:  LDR             R0, [SP,#0xF0+var_B0]
576B3A:  ADDW            R5, R4, #0x9E4
576B3E:  VLDR            S23, [R0]
576B42:  BLX             rand
576B46:  VLDR            S0, [R5]
576B4A:  VLDR            S2, =6.2832
576B4E:  VCVT.F32.U32    S0, S0
576B52:  VLDR            S4, =1.6
576B56:  VMUL.F32        S0, S0, S2
576B5A:  VLDR            S2, =2500.0
576B5E:  VDIV.F32        S0, S0, S2
576B62:  VMOV            S2, R0
576B66:  VMOV            R0, S0; x
576B6A:  VLDR            S0, =0.2
576B6E:  VCVT.F32.S32    S2, S2
576B72:  VMUL.F32        S0, S19, S0
576B76:  VMUL.F32        S2, S2, S26
576B7A:  VMUL.F32        S0, S0, S19
576B7E:  VMUL.F32        S2, S2, S4
576B82:  VMUL.F32        S23, S0, S23
576B86:  VLDR            S0, =0.2
576B8A:  VADD.F32        S30, S2, S0
576B8E:  BLX             sinf
576B92:  VMOV.F32        S4, #-1.0
576B96:  VMOV            S0, R0
576B9A:  LDR             R0, [SP,#0xF0+var_A0]
576B9C:  VMUL.F32        S2, S23, S30
576BA0:  VADD.F32        S0, S0, S4
576BA4:  VMUL.F32        S0, S0, S2
576BA8:  VLDR            S2, [R0]
576BAC:  VADD.F32        S0, S2, S0
576BB0:  VSTR            S0, [R0]
576BB4:  VMUL.F32        S19, S19, S31
576BB8:  B               loc_576E66
576BBA:  ALIGN 4
576BBC:  DCFS 50.0
576BC0:  DCFS 4.6566e-10
576BC4:  DCFS 1000.0
576BC8:  DCFS 250.0
576BCC:  DCFS 2.3562
576BD0:  DCFS 0.0
576BD4:  DCFS 1.5708
576BD8:  DCFS 0.1
576BDC:  DCFS -0.05
576BE0:  DCFS -0.2
576BE4:  DCFS 6.2832
576BE8:  DCFS 1.6
576BEC:  DCFS 2500.0
576BF0:  DCFS 0.2
576BF4:  DCFS 0.2
576BF8:  DCFS 0.004
576BFC:  DCFS -0.002
576C00:  DCFS 0.15
576C04:  DCFS 0.3
576C08:  DCFS 6400.0
576C0C:  DCFS 0.2
576C10:  DCFS 0.9
576C14:  VMOV            S0, R6; jumptable 00576B0A cases 17,18
576C18:  VCVT.F32.S32    S19, S0
576C1C:  LDR             R5, [SP,#0xF0+var_AC]
576C1E:  VLDR            S2, [R5]
576C22:  VMUL.F32        S0, S19, S22
576C26:  VADD.F32        S0, S0, S24
576C2A:  VMUL.F32        S0, S0, S2
576C2E:  VSTR            S0, [R5]
576C32:  BLX             rand
576C36:  VMOV            S0, R0
576C3A:  MUL.W           R0, R6, R6
576C3E:  CMP.W           R9, #0
576C42:  VCVT.F32.S32    S0, S0
576C46:  VMOV            S2, R0
576C4A:  VCVT.F32.S32    S2, S2
576C4E:  LDR             R0, [SP,#0xF0+var_B4]
576C50:  VMUL.F32        S0, S0, S26
576C54:  VMUL.F32        S23, S28, S2
576C58:  VLDR            S2, [R0]
576C5C:  VMUL.F32        S0, S0, S27
576C60:  VADD.F32        S0, S0, S21
576C64:  VMUL.F32        S0, S23, S0
576C68:  VMUL.F32        S0, S2, S0
576C6C:  VLDR            S2, [R5]
576C70:  VADD.F32        S18, S2, S0
576C74:  VSTR            S18, [R5]
576C78:  BLT             loc_576CD0
576C7A:  BLX             rand
576C7E:  VMOV            S0, R0
576C82:  VLDR            S2, =0.004
576C86:  VMOV.F32        S4, #-10.0
576C8A:  VCVT.F32.S32    S0, S0
576C8E:  LDR             R0, [SP,#0xF0+var_C8]
576C90:  VMUL.F32        S0, S0, S26
576C94:  VMUL.F32        S0, S0, S2
576C98:  VLDR            S2, =-0.002
576C9C:  VADD.F32        S0, S0, S2
576CA0:  VLDR            S2, [R0]
576CA4:  ADD.W           R0, R4, R9,LSL#5
576CA8:  ADDW            R1, R0, #0x6CC
576CAC:  ADD.W           R0, R0, #0x6D8
576CB0:  VMUL.F32        S0, S23, S0
576CB4:  VMUL.F32        S0, S2, S0
576CB8:  VLDR            S2, [R1]
576CBC:  VMUL.F32        S2, S2, S4
576CC0:  VLDR            S4, [R0]
576CC4:  VADD.F32        S0, S4, S0
576CC8:  VADD.F32        S18, S18, S2
576CCC:  VSTR            S0, [R0]
576CD0:  VLDR            S0, =0.15
576CD4:  VMUL.F32        S19, S19, S0
576CD8:  B               loc_576E66
576CDA:  VMOV            S0, R6; jumptable 00576B0A cases 19,20
576CDE:  VCVT.F32.S32    S19, S0
576CE2:  LDR             R5, [SP,#0xF0+var_A8]
576CE4:  VLDR            S2, [R5]
576CE8:  VMUL.F32        S0, S19, S22
576CEC:  VADD.F32        S0, S0, S24
576CF0:  VMUL.F32        S0, S0, S2
576CF4:  VSTR            S0, [R5]
576CF8:  BLX             rand
576CFC:  VMOV            S0, R0
576D00:  MUL.W           R0, R6, R6
576D04:  CMP.W           R9, #0
576D08:  VCVT.F32.S32    S0, S0
576D0C:  VMOV            S2, R0
576D10:  VCVT.F32.S32    S2, S2
576D14:  LDR             R0, [SP,#0xF0+var_B8]
576D16:  VMUL.F32        S0, S0, S26
576D1A:  VMUL.F32        S23, S28, S2
576D1E:  VLDR            S2, [R0]
576D22:  VMUL.F32        S0, S0, S27
576D26:  VADD.F32        S0, S0, S21
576D2A:  VMUL.F32        S0, S23, S0
576D2E:  VMUL.F32        S0, S2, S0
576D32:  VLDR            S2, [R5]
576D36:  VADD.F32        S16, S2, S0
576D3A:  VSTR            S16, [R5]
576D3E:  BLT             loc_576DA0
576D40:  BLX             rand
576D44:  VMOV            S0, R0
576D48:  VLDR            S2, =0.004
576D4C:  VMOV.F32        S4, #10.0
576D50:  CMP.W           R10, #7
576D54:  VCVT.F32.S32    S0, S0
576D58:  LDR             R0, [SP,#0xF0+var_CC]
576D5A:  VMUL.F32        S0, S0, S26
576D5E:  VMUL.F32        S0, S0, S2
576D62:  VLDR            S2, =-0.002
576D66:  VADD.F32        S0, S0, S2
576D6A:  VLDR            S2, [R0]
576D6E:  ADD.W           R0, R4, R9,LSL#5
576D72:  ADD.W           R1, R0, #0x6D8
576D76:  ADDW            R0, R0, #0x6CC
576D7A:  VMUL.F32        S0, S23, S0
576D7E:  VMUL.F32        S0, S2, S0
576D82:  VLDR            S2, [R1]
576D86:  VADD.F32        S2, S2, S0
576D8A:  VLDR            S0, [R0]
576D8E:  VMUL.F32        S0, S0, S4
576D92:  VSTR            S2, [R1]
576D96:  ITE NE
576D98:  VSUBNE.F32      S16, S16, S0
576D9C:  VADDEQ.F32      S16, S16, S0
576DA0:  VMUL.F32        S19, S19, S17
576DA4:  B               loc_576E66
576DA6:  VMOV            S0, R6; jumptable 00576B0A case 16
576DAA:  VLDR            S2, =0.2
576DAE:  VCVT.F32.S32    S0, S0
576DB2:  LDR             R5, [SP,#0xF0+var_BC]
576DB4:  VMUL.F32        S19, S0, S2
576DB8:  VLDR            S2, [R5]
576DBC:  VSUB.F32        S0, S24, S19
576DC0:  VMUL.F32        S0, S0, S2
576DC4:  VSTR            S0, [R5]
576DC8:  BLX             rand
576DCC:  VMOV            S0, R0
576DD0:  MUL.W           R0, R6, R6
576DD4:  CMP.W           R9, #0
576DD8:  VCVT.F32.S32    S0, S0
576DDC:  VMOV            S2, R0
576DE0:  VCVT.F32.S32    S2, S2
576DE4:  LDR             R0, [SP,#0xF0+var_D0]
576DE6:  VMUL.F32        S0, S0, S26
576DEA:  VMUL.F32        S23, S28, S2
576DEE:  VLDR            S2, [R0]
576DF2:  VMUL.F32        S0, S0, S27
576DF6:  VADD.F32        S0, S0, S21
576DFA:  VMUL.F32        S0, S23, S0
576DFE:  VMUL.F32        S0, S2, S0
576E02:  VLDR            S2, [R5]
576E06:  VADD.F32        S20, S2, S0
576E0A:  VSTR            S20, [R5]
576E0E:  BLT             loc_576E66
576E10:  BLX             rand
576E14:  VMOV            S0, R0
576E18:  VLDR            S2, =0.004
576E1C:  VMOV.F32        S4, #-10.0
576E20:  VCVT.F32.S32    S0, S0
576E24:  LDR             R0, [SP,#0xF0+var_D8]
576E26:  VMUL.F32        S0, S0, S26
576E2A:  VMUL.F32        S0, S0, S2
576E2E:  VLDR            S2, =-0.002
576E32:  VADD.F32        S0, S0, S2
576E36:  VLDR            S2, [R0]
576E3A:  ADD.W           R0, R4, R9,LSL#5
576E3E:  ADDW            R1, R0, #0x6CC
576E42:  ADD.W           R0, R0, #0x6D8
576E46:  VMUL.F32        S0, S23, S0
576E4A:  VMUL.F32        S0, S2, S0
576E4E:  VLDR            S2, [R1]
576E52:  VMUL.F32        S2, S2, S4
576E56:  VLDR            S4, [R0]
576E5A:  VADD.F32        S0, S4, S0
576E5E:  VADD.F32        S20, S20, S2
576E62:  VSTR            S0, [R0]
576E66:  VCMPE.F32       S19, #0.0
576E6A:  VMRS            APSR_nzcv, FPSCR
576E6E:  BLE.W           def_576B0A; jumptable 00576B0A default case
576E72:  LDR             R0, [SP,#0xF0+var_A4]
576E74:  LDRB            R0, [R0,#3]
576E76:  LSLS            R0, R0, #0x19
576E78:  BMI.W           def_576B0A; jumptable 00576B0A default case
576E7C:  VLDR            S0, =0.3
576E80:  VCMPE.F32       S28, S0
576E84:  VMRS            APSR_nzcv, FPSCR
576E88:  BGT             loc_576E96
576E8A:  BLX             rand
576E8E:  TST.W           R0, #7
576E92:  BNE.W           def_576B0A; jumptable 00576B0A default case
576E96:  LDR             R6, [SP,#0xF0+var_C0]
576E98:  LDR             R1, [R4,#0x14]
576E9A:  LDR             R2, [R6,#0x14]
576E9C:  ADD.W           R0, R1, #0x30 ; '0'
576EA0:  CMP             R1, #0
576EA2:  IT EQ
576EA4:  ADDEQ           R0, R4, #4
576EA6:  ADD.W           R3, R2, #0x30 ; '0'
576EAA:  CMP             R2, #0
576EAC:  VLDR            S0, [R0]
576EB0:  IT EQ
576EB2:  ADDEQ           R3, R6, #4
576EB4:  VLDR            D16, [R0,#4]
576EB8:  VLDR            S2, [R3]
576EBC:  VLDR            D17, [R3,#4]
576EC0:  VSUB.F32        S0, S0, S2
576EC4:  VSUB.F32        D16, D16, D17
576EC8:  VMUL.F32        D1, D16, D16
576ECC:  VMUL.F32        S0, S0, S0
576ED0:  VADD.F32        S0, S0, S2
576ED4:  VADD.F32        S0, S0, S3
576ED8:  VLDR            S2, =6400.0
576EDC:  VCMPE.F32       S0, S2
576EE0:  VMRS            APSR_nzcv, FPSCR
576EE4:  BLT             loc_576EF0
576EE6:  LDR             R0, [SP,#0xF0+var_C4]
576EE8:  LDRB            R0, [R0]
576EEA:  CMP             R0, #7
576EEC:  BHI.W           def_576B0A; jumptable 00576B0A default case
576EF0:  LDR.W           R0, [R8,R10,LSL#2]
576EF4:  CMP             R0, #0
576EF6:  BEQ.W           def_576B0A; jumptable 00576B0A default case
576EFA:  ADD             R6, SP, #0xF0+var_70
576EFC:  ADD             R5, SP, #0xF0+var_90
576EFE:  VLDR            D16, [R0,#0x40]
576F02:  LDR             R0, [R0,#0x48]
576F04:  MOV             R2, R6
576F06:  STR             R0, [SP,#0xF0+var_68]
576F08:  MOV             R0, R5
576F0A:  VSTR            D16, [SP,#0xF0+var_70]
576F0E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
576F12:  LDR             R0, [SP,#0xF0+var_88]
576F14:  MOVS            R1, #0; float
576F16:  STR             R0, [SP,#0xF0+var_68]
576F18:  MOVW            R0, #0xCCCD
576F1C:  VLDR            D16, [SP,#0xF0+var_90]
576F20:  MOVT            R0, #0x3E4C
576F24:  VSTR            S19, [SP,#0xF0+var_E4]
576F28:  MOVS            R2, #0; float
576F2A:  STR             R0, [SP,#0xF0+var_F0]; float
576F2C:  MOV.W           R0, #0x3F800000
576F30:  VSTR            D16, [SP,#0xF0+var_70]
576F34:  MOVS            R3, #0; float
576F36:  STRD.W          R0, R0, [SP,#0xF0+var_EC]; float
576F3A:  MOV             R0, R5; this
576F3C:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
576F40:  VLDR            S0, [R4,#0x48]
576F44:  VLDR            S2, [R4,#0x4C]
576F48:  VLDR            S4, [R4,#0x50]
576F4C:  VMUL.F32        S0, S0, S17
576F50:  VMUL.F32        S2, S2, S17
576F54:  VLDR            S6, =50.0
576F58:  VMUL.F32        S4, S4, S17
576F5C:  VMUL.F32        S0, S0, S6
576F60:  VMUL.F32        S2, S2, S6
576F64:  VMUL.F32        S4, S4, S6
576F68:  VSTR            S2, [SP,#0xF0+var_98]
576F6C:  VSTR            S0, [SP,#0xF0+var_9C]
576F70:  VSTR            S4, [SP,#0xF0+var_94]
576F74:  BLX             rand
576F78:  VMOV            S0, R0
576F7C:  VLDR            S2, =0.2
576F80:  VCVT.F32.S32    S0, S0
576F84:  VMOV.F32        S30, S2
576F88:  VLDR            S2, =0.9
576F8C:  VMOV.F32        S23, S2
576F90:  VLDR            S2, [SP,#0xF0+var_9C]
576F94:  VMUL.F32        S0, S0, S26
576F98:  VMUL.F32        S0, S0, S30
576F9C:  VADD.F32        S0, S0, S23
576FA0:  VMUL.F32        S0, S2, S0
576FA4:  VSTR            S0, [SP,#0xF0+var_9C]
576FA8:  BLX             rand
576FAC:  VMOV            S0, R0
576FB0:  VCVT.F32.S32    S0, S0
576FB4:  VLDR            S2, [SP,#0xF0+var_98]
576FB8:  VMUL.F32        S0, S0, S26
576FBC:  VMUL.F32        S0, S0, S30
576FC0:  VADD.F32        S0, S0, S23
576FC4:  VMUL.F32        S0, S2, S0
576FC8:  VSTR            S0, [SP,#0xF0+var_98]
576FCC:  BLX             rand
576FD0:  VMOV            S0, R0
576FD4:  VCVT.F32.S32    S0, S0
576FD8:  VLDR            S2, [SP,#0xF0+var_94]
576FDC:  VMUL.F32        S0, S0, S26
576FE0:  VMUL.F32        S0, S0, S30
576FE4:  VADD.F32        S0, S0, S23
576FE8:  VMUL.F32        S0, S2, S0
576FEC:  VSTR            S0, [SP,#0xF0+var_94]
576FF0:  BLX             rand
576FF4:  VMOV            S0, R0
576FF8:  VLDR            S2, =0.0
576FFC:  VCVT.F32.S32    S0, S0
577000:  VMUL.F32        S0, S0, S26
577004:  VADD.F32        S0, S0, S2
577008:  VSTR            S0, [SP,#0xF0+var_78]
57700C:  BLX             rand
577010:  VMOV            S0, R0
577014:  VADD.F32        S30, S19, S19
577018:  VCVT.F32.S32    S0, S0
57701C:  VLDR            S2, [SP,#0xF0+var_70]
577020:  VMUL.F32        S0, S0, S26
577024:  VMUL.F32        S0, S30, S0
577028:  VSUB.F32        S0, S0, S19
57702C:  VADD.F32        S0, S2, S0
577030:  VSTR            S0, [SP,#0xF0+var_70]
577034:  BLX             rand
577038:  VMOV            S0, R0
57703C:  VCVT.F32.S32    S0, S0
577040:  VLDR            S2, [SP,#0xF0+var_70+4]
577044:  VMUL.F32        S0, S0, S26
577048:  VMUL.F32        S0, S30, S0
57704C:  VSUB.F32        S0, S0, S19
577050:  VADD.F32        S0, S2, S0
577054:  VSTR            S0, [SP,#0xF0+var_70+4]
577058:  BLX             rand
57705C:  VMOV            S0, R0
577060:  MOVS            R1, #0xBF800000
577066:  ADD             R2, SP, #0xF0+var_9C; int
577068:  VCVT.F32.S32    S0, S0
57706C:  VLDR            S2, [SP,#0xF0+var_68]
577070:  LDR             R0, [SP,#0xF0+var_D4]
577072:  MOVS            R3, #0; int
577074:  STR             R5, [SP,#0xF0+var_F0]; float
577076:  STR             R1, [SP,#0xF0+var_EC]; float
577078:  MOV             R1, #0x3F99999A
577080:  LDR             R0, [R0,#0x20]; int
577082:  STR             R1, [SP,#0xF0+var_E8]; float
577084:  MOV             R1, #0x3F19999A
57708C:  VMUL.F32        S0, S0, S26
577090:  STR             R1, [SP,#0xF0+var_E4]; float
577092:  MOVS            R1, #0
577094:  STR             R1, [SP,#0xF0+var_E0]; int
577096:  MOV             R1, R6; int
577098:  VMUL.F32        S0, S30, S0
57709C:  VSUB.F32        S0, S0, S19
5770A0:  VADD.F32        S0, S2, S0
5770A4:  VSTR            S0, [SP,#0xF0+var_68]
5770A8:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5770AC:  ADD.W           R10, R10, #1; jumptable 00576B0A default case
5770B0:  CMP.W           R10, #0xD
5770B4:  BNE.W           loc_576AA8
5770B8:  LDR.W           R9, [SP,#0xF0+var_C4]
5770BC:  LDRB.W          R0, [R9]
5770C0:  LSRS            R0, R0, #3
5770C2:  CMP             R0, #8
5770C4:  BHI.W           loc_5772C0
5770C8:  MOVS            R1, #1
5770CA:  MOVW            R2, #0x109
5770CE:  LSLS            R1, R0
5770D0:  TST             R1, R2
5770D2:  BEQ.W           loc_5772C0
5770D6:  LDR             R1, =(_ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr - 0x5770E0)
5770D8:  ADDW            R8, R4, #0x9A8
5770DC:  ADD             R1, PC; _ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr
5770DE:  VLDR            S0, [R8]
5770E2:  LDR             R1, [R1]; CPlane::PLANE_STD_PROP_SPEED ...
5770E4:  VCMPE.F32       S0, #0.0
5770E8:  VMRS            APSR_nzcv, FPSCR
5770EC:  VLDR            S22, [R1]
5770F0:  BLE             loc_577102
5770F2:  LDR             R1, =(_ZN6CPlane20PLANE_MAX_PROP_SPEEDE_ptr - 0x5770F8)
5770F4:  ADD             R1, PC; _ZN6CPlane20PLANE_MAX_PROP_SPEEDE_ptr
5770F6:  LDR             R1, [R1]; CPlane::PLANE_MAX_PROP_SPEED ...
5770F8:  VLDR            S2, [R1]
5770FC:  VSUB.F32        S2, S2, S22
577100:  B               loc_577112
577102:  BGE             loc_57711A
577104:  LDR             R1, =(_ZN6CPlane20PLANE_MIN_PROP_SPEEDE_ptr - 0x57710A)
577106:  ADD             R1, PC; _ZN6CPlane20PLANE_MIN_PROP_SPEEDE_ptr
577108:  LDR             R1, [R1]; CPlane::PLANE_MIN_PROP_SPEED ...
57710A:  VLDR            S2, [R1]
57710E:  VSUB.F32        S2, S22, S2
577112:  VMUL.F32        S0, S0, S2
577116:  VADD.F32        S22, S22, S0
57711A:  ORR.W           R0, R0, #8
57711E:  AND.W           R0, R0, #0x1F
577122:  CMP             R0, #8
577124:  BNE             loc_5771BA
577126:  LDR             R0, [R4,#0x14]
577128:  ADDS            R6, R4, #4
57712A:  LDRH            R2, [R4,#0x26]
57712C:  MOVS            R5, #3
57712E:  CMP             R0, #0
577130:  MOV             R1, R6
577132:  IT NE
577134:  ADDNE.W         R1, R0, #0x30 ; '0'
577138:  CMP.W           R2, #0x1D0
57713C:  LDR             R1, [R1,#8]
57713E:  IT EQ
577140:  MOVEQ           R5, #1
577142:  MOV             R0, R4
577144:  MOV             R2, R5
577146:  BLX             j__ZN8CVehicle18HeightAboveCeilingEf12eFlightModel; CVehicle::HeightAboveCeiling(float,eFlightModel)
57714A:  VMOV            S0, R0
57714E:  VCMPE.F32       S0, #0.0
577152:  VMRS            APSR_nzcv, FPSCR
577156:  BLE             loc_5771BA
577158:  LDR             R0, [R4,#0x14]
57715A:  MOV             R1, R6
57715C:  MOV             R2, R5
57715E:  CMP             R0, #0
577160:  IT NE
577162:  ADDNE.W         R1, R0, #0x30 ; '0'
577166:  MOV             R0, R4
577168:  LDR             R1, [R1,#8]
57716A:  BLX             j__ZN8CVehicle18HeightAboveCeilingEf12eFlightModel; CVehicle::HeightAboveCeiling(float,eFlightModel)
57716E:  LDR             R1, [R4,#0x14]
577170:  VMOV            S26, R0
577174:  VLDR            S24, [R8]
577178:  MOV             R0, R4
57717A:  CMP             R1, #0
57717C:  MOV             R2, R5
57717E:  IT NE
577180:  ADDNE.W         R6, R1, #0x30 ; '0'
577184:  LDR             R1, [R6,#8]
577186:  BLX             j__ZN8CVehicle18HeightAboveCeilingEf12eFlightModel; CVehicle::HeightAboveCeiling(float,eFlightModel)
57718A:  VLDR            S4, =50.0
57718E:  VMOV.F32        S0, #-25.0
577192:  VMOV            S2, R0
577196:  VDIV.F32        S4, S26, S4
57719A:  VDIV.F32        S0, S2, S0
57719E:  VLDR            S2, =0.0
5771A2:  VADD.F32        S0, S24, S0
5771A6:  VMAX.F32        D1, D2, D1
5771AA:  VMUL.F32        S22, S22, S2
5771AE:  VMOV.F32        S2, #-1.0
5771B2:  VMAX.F32        D0, D0, D1
5771B6:  VSTR            S0, [R8]
5771BA:  ADDW            R1, R4, #0x9D8
5771BE:  LDR             R0, =(_ZN6CPlane20PLANE_ROC_PROP_SPEEDE_ptr - 0x5771CA)
5771C0:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5771CC)
5771C2:  VLDR            S0, [R1]
5771C6:  ADD             R0, PC; _ZN6CPlane20PLANE_ROC_PROP_SPEEDE_ptr
5771C8:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5771CA:  VSUB.F32        S2, S22, S0
5771CE:  LDR             R0, [R0]; CPlane::PLANE_ROC_PROP_SPEED ...
5771D0:  VLDR            S4, [R0]
5771D4:  LDR             R0, [R2]; CTimer::ms_fTimeStep ...
5771D6:  LDR.W           R2, [R4,#0x430]
5771DA:  VMUL.F32        S2, S2, S4
5771DE:  VLDR            S4, [R0]
5771E2:  LDR.W           R0, [R4,#0x42C]
5771E6:  TST.W           R0, #0x40000000
5771EA:  VMUL.F32        S2, S2, S4
5771EE:  VADD.F32        S0, S0, S2
5771F2:  VSTR            S0, [R1]
5771F6:  BEQ             loc_577210
5771F8:  ADDW            R3, R4, #0x42C
5771FC:  VLDR            S0, =0.0
577200:  BIC.W           R0, R0, #0x10
577204:  MOVS            R6, #0
577206:  STR             R6, [R1]
577208:  STR.W           R6, [R8]
57720C:  STRD.W          R0, R2, [R3]
577210:  LDRH            R1, [R4,#0x26]
577212:  CMP.W           R1, #0x1D0
577216:  BNE             loc_577238
577218:  MOVS            R1, #0x40000010
57721E:  ANDS            R0, R1
577220:  TEQ.W           R0, #0x10
577224:  BNE             loc_577324
577226:  VMOV            R2, S20
57722A:  VLDR            S0, [R8]
57722E:  VMOV            R3, S18
577232:  MOV             R0, R4
577234:  MOVS            R1, #1
577236:  B               loc_5772B2
577238:  LSLS            R0, R0, #0x1B
57723A:  BPL             loc_577324
57723C:  LDR             R0, =(_ZN6CPlane20PLANE_MIN_PROP_SPEEDE_ptr - 0x577242)
57723E:  ADD             R0, PC; _ZN6CPlane20PLANE_MIN_PROP_SPEEDE_ptr
577240:  LDR             R0, [R0]; CPlane::PLANE_MIN_PROP_SPEED ...
577242:  VLDR            S2, [R0]
577246:  VCMPE.F32       S0, S2
57724A:  VMRS            APSR_nzcv, FPSCR
57724E:  BGT             loc_577282
577250:  VLDR            S0, [R4,#0x48]
577254:  VLDR            S2, [R4,#0x4C]
577258:  VMUL.F32        S0, S0, S0
57725C:  VLDR            S4, [R4,#0x50]
577260:  VMUL.F32        S2, S2, S2
577264:  VLDR            D16, =0.05
577268:  VMUL.F32        S4, S4, S4
57726C:  VADD.F32        S0, S0, S2
577270:  VADD.F32        S0, S0, S4
577274:  VCVT.F64.F32    D17, S0
577278:  VCMPE.F64       D17, D16
57727C:  VMRS            APSR_nzcv, FPSCR
577280:  BLE             loc_577324
577282:  CMP.W           R1, #0x208
577286:  BNE             loc_5772A2
577288:  LDRB.W          R0, [R9]
57728C:  CMP             R0, #7
57728E:  BHI             loc_5772A2
577290:  LDR             R0, =(_ZN6CPlane27HARRIER_NOZZLE_SWITCH_LIMITE_ptr - 0x57729A)
577292:  LDRH.W          R1, [R4,#0x880]
577296:  ADD             R0, PC; _ZN6CPlane27HARRIER_NOZZLE_SWITCH_LIMITE_ptr
577298:  LDR             R0, [R0]; CPlane::HARRIER_NOZZLE_SWITCH_LIMIT ...
57729A:  LDRSH.W         R0, [R0]; CPlane::HARRIER_NOZZLE_SWITCH_LIMIT
57729E:  CMP             R1, R0
5772A0:  BGE             loc_577332
5772A2:  VMOV            R2, S20; int
5772A6:  VLDR            S0, [R8]
5772AA:  VMOV            R3, S18; int
5772AE:  MOV             R0, R4; int
5772B0:  MOVS            R1, #3; int
5772B2:  VSTR            S16, [SP,#0xF0+var_F0]
5772B6:  VSTR            S0, [SP,#0xF0+var_EC]
5772BA:  BLX             j__ZN8CVehicle13FlyingControlE12eFlightModelffff; CVehicle::FlyingControl(eFlightModel,float,float,float,float)
5772BE:  B               loc_577324
5772C0:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5772CA)
5772C2:  VLDR            S2, =0.001
5772C6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5772C8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5772CA:  VLDR            S0, [R0]
5772CE:  ADDW            R0, R4, #0x9D8
5772D2:  VMUL.F32        S4, S0, S2
5772D6:  VLDR            S2, [R0]
5772DA:  VCMPE.F32       S2, S4
5772DE:  VMRS            APSR_nzcv, FPSCR
5772E2:  BLE             loc_577314
5772E4:  LDR             R1, =(_ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr - 0x5772EA)
5772E6:  ADD             R1, PC; _ZN6CPlane20PLANE_STD_PROP_SPEEDE_ptr
5772E8:  LDR             R1, [R1]; CPlane::PLANE_STD_PROP_SPEED ...
5772EA:  VLDR            S4, [R1]
5772EE:  ADR             R1, loc_57740C
5772F0:  VCMPE.F32       S2, S4
5772F4:  VMRS            APSR_nzcv, FPSCR
5772F8:  IT GT
5772FA:  ADDGT           R1, #4
5772FC:  VLDR            S4, [R1]
577300:  VMUL.F32        S0, S0, S4
577304:  VSUB.F32        S0, S2, S0
577308:  VSTR            S0, [R0]
57730C:  MOVS            R0, #0
57730E:  STRB.W          R0, [R4,#0xBC]
577312:  B               loc_577324
577314:  MOVS            R1, #0
577316:  STR             R1, [R0]
577318:  LDR.W           R0, [R4,#0x42C]
57731C:  BIC.W           R0, R0, #0x10
577320:  STR.W           R0, [R4,#0x42C]
577324:  ADD             SP, SP, #0x90
577326:  VPOP            {D8-D15}
57732A:  ADD             SP, SP, #4
57732C:  POP.W           {R8-R11}
577330:  POP             {R4-R7,PC}
577332:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x57733A)
577334:  LDR             R2, =(mod_HandlingManager_ptr - 0x577340)
577336:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
577338:  LDR.W           R5, [R4,#0x38C]
57733C:  ADD             R2, PC; mod_HandlingManager_ptr
57733E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
577340:  LDR.W           R0, [R0,#(dword_91E35C - 0x91DCB8)]
577344:  LDRH.W          R1, [R0,#0x62]; unsigned __int8
577348:  LDR             R0, [R2]; mod_HandlingManager ; this
57734A:  BLX             j__ZN16cHandlingDataMgr16GetFlyingPointerEh; cHandlingDataMgr::GetFlyingPointer(uchar)
57734E:  STR.W           R0, [R4,#0x38C]
577352:  VLDR            S0, [R8]
577356:  VCMPE.F32       S0, #0.0
57735A:  VMRS            APSR_nzcv, FPSCR
57735E:  BGT             loc_577370
577360:  LDRB.W          R0, [R4,#0x974]
577364:  CMP             R0, #3
577366:  BHI             loc_577394
577368:  LDRB.W          R0, [R4,#0x47]
57736C:  LSLS            R0, R0, #0x1C
57736E:  BMI             loc_577394
577370:  VMOV            R2, S20; int
577374:  MOV             R0, R4; int
577376:  VMOV            R3, S18; int
57737A:  MOVS            R1, #6; int
57737C:  VMOV.F32        S2, #0.25
577380:  VNEG.F32        S4, S16
577384:  VMUL.F32        S0, S0, S2
577388:  VSTR            S4, [SP,#0xF0+var_F0]
57738C:  VSTR            S0, [SP,#0xF0+var_EC]
577390:  BLX             j__ZN8CVehicle13FlyingControlE12eFlightModelffff; CVehicle::FlyingControl(eFlightModel,float,float,float,float)
577394:  STR.W           R5, [R4,#0x38C]
577398:  B               loc_577324
