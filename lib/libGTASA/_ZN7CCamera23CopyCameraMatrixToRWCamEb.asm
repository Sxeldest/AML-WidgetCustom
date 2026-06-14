; =========================================================
; Game Engine Function: _ZN7CCamera23CopyCameraMatrixToRWCamEb
; Address            : 0x3DE810 - 0x3DEB14
; =========================================================

3DE810:  PUSH            {R4-R7,LR}
3DE812:  ADD             R7, SP, #0xC
3DE814:  PUSH.W          {R8-R11}
3DE818:  SUB             SP, SP, #4
3DE81A:  MOV             R4, R0
3DE81C:  MOV             R8, R1
3DE81E:  LDR.W           R0, [R4,#0x8D8]
3DE822:  CMP.W           R8, #0
3DE826:  LDR             R5, [R0,#4]
3DE828:  ADD.W           R9, R5, #0x10
3DE82C:  BNE             loc_3DE838
3DE82E:  ADDW            R0, R4, #0x944
3DE832:  MOV             R1, R9
3DE834:  BLX             j__ZN7CMatrix12UpdateMatrixEP11RwMatrixTag; CMatrix::UpdateMatrix(RwMatrixTag *)
3DE838:  LDR.W           R0, [R4,#0x92C]
3DE83C:  MOV             R6, R5
3DE83E:  STR.W           R0, [R6,#0x40]!
3DE842:  LDR.W           R0, [R4,#0x930]
3DE846:  STR             R0, [R6,#4]
3DE848:  LDR.W           R0, [R4,#0x934]
3DE84C:  STR             R0, [R6,#8]
3DE84E:  LDR.W           R0, [R4,#0x90C]
3DE852:  STR.W           R0, [R6,#-0x10]
3DE856:  LDR.W           R0, [R4,#0x910]
3DE85A:  STR.W           R0, [R6,#-0xC]
3DE85E:  LDR.W           R0, [R4,#0x914]
3DE862:  STR.W           R0, [R6,#-8]
3DE866:  LDR.W           R0, [R4,#0x91C]
3DE86A:  STR.W           R0, [R6,#-0x20]
3DE86E:  LDR.W           R0, [R4,#0x920]
3DE872:  STR.W           R0, [R6,#-0x1C]
3DE876:  LDR.W           R0, [R4,#0x924]
3DE87A:  STR.W           R0, [R6,#-0x18]
3DE87E:  LDR.W           R0, [R4,#0x8FC]
3DE882:  STR.W           R0, [R6,#-0x30]
3DE886:  LDR.W           R0, [R4,#0x900]
3DE88A:  LDR             R1, =(byte_952F04 - 0x3DE898)
3DE88C:  STR.W           R0, [R6,#-0x2C]
3DE890:  LDR.W           R0, [R4,#0x904]
3DE894:  ADD             R1, PC; byte_952F04
3DE896:  STR.W           R0, [R6,#-0x28]
3DE89A:  LDRB            R0, [R1]
3DE89C:  DMB.W           ISH
3DE8A0:  TST.W           R0, #1
3DE8A4:  BNE             loc_3DE8CA
3DE8A6:  LDR             R0, =(byte_952F04 - 0x3DE8AC)
3DE8A8:  ADD             R0, PC; byte_952F04 ; __guard *
3DE8AA:  BLX             j___cxa_guard_acquire
3DE8AE:  CBZ             R0, loc_3DE8CA
3DE8B0:  LDR             R1, =(dword_952EF8 - 0x3DE8C0)
3DE8B2:  MOVW            R2, #0x4F80
3DE8B6:  LDR             R0, =(byte_952F04 - 0x3DE8C2)
3DE8B8:  MOVT            R2, #0xC7C3
3DE8BC:  ADD             R1, PC; dword_952EF8
3DE8BE:  ADD             R0, PC; byte_952F04 ; __guard *
3DE8C0:  STRD.W          R2, R2, [R1]
3DE8C4:  STR             R2, [R1,#(dword_952F00 - 0x952EF8)]
3DE8C6:  BLX             j___cxa_guard_release
3DE8CA:  LDR             R0, =(byte_952F14 - 0x3DE8D0)
3DE8CC:  ADD             R0, PC; byte_952F14
3DE8CE:  LDRB            R0, [R0]
3DE8D0:  DMB.W           ISH
3DE8D4:  TST.W           R0, #1
3DE8D8:  BNE             loc_3DE8FE
3DE8DA:  LDR             R0, =(byte_952F14 - 0x3DE8E0)
3DE8DC:  ADD             R0, PC; byte_952F14 ; __guard *
3DE8DE:  BLX             j___cxa_guard_acquire
3DE8E2:  CBZ             R0, loc_3DE8FE
3DE8E4:  LDR             R1, =(dword_952F08 - 0x3DE8F4)
3DE8E6:  MOVW            R2, #0x4F80
3DE8EA:  LDR             R0, =(byte_952F14 - 0x3DE8F6)
3DE8EC:  MOVT            R2, #0xC7C3
3DE8F0:  ADD             R1, PC; dword_952F08
3DE8F2:  ADD             R0, PC; byte_952F14 ; __guard *
3DE8F4:  STRD.W          R2, R2, [R1]
3DE8F8:  STR             R2, [R1,#(dword_952F10 - 0x952F08)]
3DE8FA:  BLX             j___cxa_guard_release
3DE8FE:  LDR             R0, =(byte_952F24 - 0x3DE908)
3DE900:  ADD.W           R11, R6, #4
3DE904:  ADD             R0, PC; byte_952F24
3DE906:  LDRB            R0, [R0]
3DE908:  DMB.W           ISH
3DE90C:  TST.W           R0, #1
3DE910:  BNE             loc_3DE936
3DE912:  LDR             R0, =(byte_952F24 - 0x3DE918)
3DE914:  ADD             R0, PC; byte_952F24 ; __guard *
3DE916:  BLX             j___cxa_guard_acquire
3DE91A:  CBZ             R0, loc_3DE936
3DE91C:  LDR             R1, =(dword_952F18 - 0x3DE92C)
3DE91E:  MOVW            R2, #0x4F80
3DE922:  LDR             R0, =(byte_952F24 - 0x3DE92E)
3DE924:  MOVT            R2, #0xC7C3
3DE928:  ADD             R1, PC; dword_952F18
3DE92A:  ADD             R0, PC; byte_952F24 ; __guard *
3DE92C:  STRD.W          R2, R2, [R1]
3DE930:  STR             R2, [R1,#(dword_952F20 - 0x952F18)]
3DE932:  BLX             j___cxa_guard_release
3DE936:  LDR             R0, =(byte_952F34 - 0x3DE940)
3DE938:  SUB.W           R10, R6, #0xC
3DE93C:  ADD             R0, PC; byte_952F34
3DE93E:  LDRB            R0, [R0]
3DE940:  DMB.W           ISH
3DE944:  TST.W           R0, #1
3DE948:  BNE             loc_3DE96E
3DE94A:  LDR             R0, =(byte_952F34 - 0x3DE950)
3DE94C:  ADD             R0, PC; byte_952F34 ; __guard *
3DE94E:  BLX             j___cxa_guard_acquire
3DE952:  CBZ             R0, loc_3DE96E
3DE954:  LDR             R1, =(dword_952F28 - 0x3DE964)
3DE956:  MOVW            R2, #0x4F80
3DE95A:  LDR             R0, =(byte_952F34 - 0x3DE966)
3DE95C:  MOVT            R2, #0xC7C3
3DE960:  ADD             R1, PC; dword_952F28
3DE962:  ADD             R0, PC; byte_952F34 ; __guard *
3DE964:  STRD.W          R2, R2, [R1]
3DE968:  STR             R2, [R1,#(dword_952F30 - 0x952F28)]
3DE96A:  BLX             j___cxa_guard_release
3DE96E:  LDR             R1, =(dword_952EF8 - 0x3DE980)
3DE970:  SUB.W           R12, R6, #0x1C
3DE974:  VLDR            S0, [R5,#0x40]
3DE978:  SUB.W           R0, R6, #0x10
3DE97C:  ADD             R1, PC; dword_952EF8
3DE97E:  VLDR            D16, [R11]
3DE982:  VLDR            S2, [R1]
3DE986:  VLDR            D17, [R1,#4]
3DE98A:  VSUB.F32        S0, S2, S0
3DE98E:  VSUB.F32        D16, D17, D16
3DE992:  VMUL.F32        D1, D16, D16
3DE996:  VMUL.F32        S0, S0, S0
3DE99A:  VADD.F32        S0, S0, S2
3DE99E:  VADD.F32        S2, S0, S3
3DE9A2:  VLDR            S0, =1.0e-10
3DE9A6:  VCMPE.F32       S2, S0
3DE9AA:  VMRS            APSR_nzcv, FPSCR
3DE9AE:  BGE             loc_3DE9C0
3DE9B0:  LDR             R1, =(dword_952EF8 - 0x3DE9B6)
3DE9B2:  ADD             R1, PC; dword_952EF8
3DE9B4:  VLDR            D16, [R1]
3DE9B8:  LDR             R1, [R1,#(dword_952F00 - 0x952EF8)]
3DE9BA:  STR             R1, [R6,#8]
3DE9BC:  VSTR            D16, [R6]
3DE9C0:  LDR             R2, =(dword_952F08 - 0x3DE9D2)
3DE9C2:  SUB.W           R3, R6, #0x2C ; ','
3DE9C6:  VLDR            S2, [R5,#0x30]
3DE9CA:  SUB.W           R1, R6, #0x20 ; ' '
3DE9CE:  ADD             R2, PC; dword_952F08
3DE9D0:  VLDR            D16, [R10]
3DE9D4:  VLDR            S4, [R2]
3DE9D8:  VLDR            D17, [R2,#4]
3DE9DC:  VSUB.F32        S2, S4, S2
3DE9E0:  VSUB.F32        D16, D17, D16
3DE9E4:  VMUL.F32        D2, D16, D16
3DE9E8:  VMUL.F32        S2, S2, S2
3DE9EC:  VADD.F32        S2, S2, S4
3DE9F0:  VADD.F32        S2, S2, S5
3DE9F4:  VCMPE.F32       S2, S0
3DE9F8:  VMRS            APSR_nzcv, FPSCR
3DE9FC:  BGE             loc_3DEA0E
3DE9FE:  LDR             R2, =(dword_952F08 - 0x3DEA04)
3DEA00:  ADD             R2, PC; dword_952F08
3DEA02:  VLDR            D16, [R2]
3DEA06:  LDR             R2, [R2,#(dword_952F10 - 0x952F08)]
3DEA08:  STR             R2, [R0,#8]
3DEA0A:  VSTR            D16, [R0]
3DEA0E:  LDR             R2, =(dword_952F18 - 0x3DEA18)
3DEA10:  VLDR            S2, [R5,#0x20]
3DEA14:  ADD             R2, PC; dword_952F18
3DEA16:  VLDR            D16, [R12]
3DEA1A:  VLDR            S4, [R2]
3DEA1E:  VLDR            D17, [R2,#4]
3DEA22:  VSUB.F32        S2, S4, S2
3DEA26:  VSUB.F32        D16, D17, D16
3DEA2A:  VMUL.F32        D2, D16, D16
3DEA2E:  VMUL.F32        S2, S2, S2
3DEA32:  VADD.F32        S2, S2, S4
3DEA36:  VADD.F32        S2, S2, S5
3DEA3A:  VCMPE.F32       S2, S0
3DEA3E:  VMRS            APSR_nzcv, FPSCR
3DEA42:  BGE             loc_3DEA54
3DEA44:  LDR             R2, =(dword_952F18 - 0x3DEA4A)
3DEA46:  ADD             R2, PC; dword_952F18
3DEA48:  VLDR            D16, [R2]
3DEA4C:  LDR             R2, [R2,#(dword_952F20 - 0x952F18)]
3DEA4E:  STR             R2, [R1,#8]
3DEA50:  VSTR            D16, [R1]
3DEA54:  LDR             R2, =(dword_952F28 - 0x3DEA5E)
3DEA56:  VLDR            S2, [R5,#0x10]
3DEA5A:  ADD             R2, PC; dword_952F28
3DEA5C:  VLDR            D16, [R3]
3DEA60:  VLDR            S4, [R2]
3DEA64:  VLDR            D17, [R2,#4]
3DEA68:  VSUB.F32        S2, S4, S2
3DEA6C:  VSUB.F32        D16, D17, D16
3DEA70:  VMUL.F32        D2, D16, D16
3DEA74:  VMUL.F32        S2, S2, S2
3DEA78:  VADD.F32        S2, S2, S4
3DEA7C:  VADD.F32        S2, S2, S5
3DEA80:  VCMPE.F32       S2, S0
3DEA84:  VMRS            APSR_nzcv, FPSCR
3DEA88:  BGE             loc_3DEA9C
3DEA8A:  LDR             R2, =(dword_952F28 - 0x3DEA90)
3DEA8C:  ADD             R2, PC; dword_952F28
3DEA8E:  VLDR            D16, [R2]
3DEA92:  LDR             R2, [R2,#(dword_952F30 - 0x952F28)]
3DEA94:  STR.W           R2, [R9,#8]
3DEA98:  VSTR            D16, [R9]
3DEA9C:  LDR             R2, =(dword_952EF8 - 0x3DEAA6)
3DEA9E:  VLDR            D16, [R6]
3DEAA2:  ADD             R2, PC; dword_952EF8
3DEAA4:  LDR             R3, [R6,#8]
3DEAA6:  LDR             R6, =(dword_952F08 - 0x3DEAB2)
3DEAA8:  STR             R3, [R2,#(dword_952F00 - 0x952EF8)]
3DEAAA:  VSTR            D16, [R2]
3DEAAE:  ADD             R6, PC; dword_952F08
3DEAB0:  VLDR            D16, [R0]
3DEAB4:  LDR             R0, [R0,#8]
3DEAB6:  LDR             R2, =(dword_952F18 - 0x3DEAC2)
3DEAB8:  STR             R0, [R6,#(dword_952F10 - 0x952F08)]
3DEABA:  VSTR            D16, [R6]
3DEABE:  ADD             R2, PC; dword_952F18
3DEAC0:  VLDR            D16, [R1]
3DEAC4:  LDR             R0, [R1,#8]
3DEAC6:  LDR             R1, =(dword_952F28 - 0x3DEAD2)
3DEAC8:  STR             R0, [R2,#(dword_952F20 - 0x952F18)]
3DEACA:  VSTR            D16, [R2]
3DEACE:  ADD             R1, PC; dword_952F28
3DEAD0:  VLDR            D16, [R9]
3DEAD4:  LDR.W           R0, [R9,#8]
3DEAD8:  STR             R0, [R1,#(dword_952F30 - 0x952F28)]
3DEADA:  MOV             R0, R9
3DEADC:  VSTR            D16, [R1]
3DEAE0:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
3DEAE4:  MOV             R0, R5
3DEAE6:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
3DEAEA:  MOV             R0, R5
3DEAEC:  BLX             j__Z21RwFrameOrthoNormalizeP7RwFrame; RwFrameOrthoNormalize(RwFrame *)
3DEAF0:  LDRB.W          R0, [R4,#0x8F5]
3DEAF4:  CBZ             R0, loc_3DEB0C
3DEAF6:  CMP.W           R8, #0
3DEAFA:  BNE             loc_3DEB0C
3DEAFC:  ADDW            R0, R4, #0x944
3DEB00:  MOV             R1, R9
3DEB02:  BLX             j__ZN7CMatrix12UpdateMatrixEP11RwMatrixTag; CMatrix::UpdateMatrix(RwMatrixTag *)
3DEB06:  MOVS            R0, #0
3DEB08:  STRB.W          R0, [R4,#0x8F5]
3DEB0C:  ADD             SP, SP, #4
3DEB0E:  POP.W           {R8-R11}
3DEB12:  POP             {R4-R7,PC}
