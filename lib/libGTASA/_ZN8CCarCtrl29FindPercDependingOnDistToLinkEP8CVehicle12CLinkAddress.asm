; =========================================================
; Game Engine Function: _ZN8CCarCtrl29FindPercDependingOnDistToLinkEP8CVehicle12CLinkAddress
; Address            : 0x2F8E24 - 0x2F8EC8
; =========================================================

2F8E24:  SUB             SP, SP, #4
2F8E26:  LDR             R2, =(ThePaths_ptr - 0x2F8E38)
2F8E28:  UBFX.W          R3, R1, #0xA, #6
2F8E2C:  BFC.W           R1, #0xA, #0x16
2F8E30:  VMOV.I32        D18, #0x3E000000
2F8E34:  ADD             R2, PC; ThePaths_ptr
2F8E36:  VMOV.F32        S2, #5.0
2F8E3A:  RSB.W           R1, R1, R1,LSL#3
2F8E3E:  LDR             R2, [R2]; ThePaths
2F8E40:  ADD.W           R2, R2, R3,LSL#2
2F8E44:  LDR.W           R2, [R2,#0x924]
2F8E48:  LDR.W           R1, [R2,R1,LSL#1]
2F8E4C:  STR             R1, [SP,#4+var_4]
2F8E4E:  MOV             R1, SP
2F8E50:  VLD1.32         {D16[0]}, [R1@32,#4+var_4]
2F8E54:  LDR             R1, [R0,#0x14]
2F8E56:  ADD.W           R2, R1, #0x30 ; '0'
2F8E5A:  CMP             R1, #0
2F8E5C:  VMOVL.S16       Q8, D16
2F8E60:  IT EQ
2F8E62:  ADDEQ           R2, R0, #4
2F8E64:  VCVT.F32.S32    D16, D16
2F8E68:  VLDR            D17, [R2]
2F8E6C:  VMUL.F32        D16, D16, D18
2F8E70:  VSUB.F32        D16, D16, D17
2F8E74:  VMUL.F32        D0, D16, D16
2F8E78:  VADD.F32        S0, S0, S1
2F8E7C:  VSQRT.F32       S0, S0
2F8E80:  VCMPE.F32       S0, S2
2F8E84:  VMRS            APSR_nzcv, FPSCR
2F8E88:  BGE             loc_2F8E90
2F8E8A:  VMOV.F32        S0, #0.5
2F8E8E:  B               loc_2F8EC0
2F8E90:  VMOV.F32        S2, #15.0
2F8E94:  VCMPE.F32       S0, S2
2F8E98:  VMRS            APSR_nzcv, FPSCR
2F8E9C:  BGE             loc_2F8EBC
2F8E9E:  VMOV.F32        S2, #-5.0
2F8EA2:  VMOV.F32        S4, #0.5
2F8EA6:  VADD.F32        S0, S0, S2
2F8EAA:  VMOV.F32        S2, #10.0
2F8EAE:  VMUL.F32        S0, S0, S4
2F8EB2:  VDIV.F32        S0, S0, S2
2F8EB6:  VADD.F32        S0, S0, S4
2F8EBA:  B               loc_2F8EC0
2F8EBC:  VMOV.F32        S0, #1.0
2F8EC0:  VMOV            R0, S0
2F8EC4:  ADD             SP, SP, #4
2F8EC6:  BX              LR
