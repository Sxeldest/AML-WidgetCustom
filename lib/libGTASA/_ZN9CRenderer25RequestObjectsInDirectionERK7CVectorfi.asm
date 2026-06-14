; =========================================================
; Game Engine Function: _ZN9CRenderer25RequestObjectsInDirectionERK7CVectorfi
; Address            : 0x4119F0 - 0x411A94
; =========================================================

4119F0:  PUSH            {R4-R7,LR}
4119F2:  ADD             R7, SP, #0xC
4119F4:  PUSH.W          {R11}
4119F8:  SUB             SP, SP, #0x60
4119FA:  MOV             R4, R0
4119FC:  LDR             R0, =(unk_617250 - 0x411A06)
4119FE:  MOV             R5, R1
411A00:  LDR             R1, =(unk_617260 - 0x411A0A)
411A02:  ADD             R0, PC; unk_617250
411A04:  ADD             R6, SP, #0x70+var_50
411A06:  ADD             R1, PC; unk_617260
411A08:  MOVS            R2, #0
411A0A:  VLDR            D16, [R0]
411A0E:  MOVT            R2, #0x42B4
411A12:  LDR             R0, [R0,#(dword_617258 - 0x617250)]
411A14:  MOVS            R3, #0
411A16:  STR             R0, [SP,#0x70+var_58]
411A18:  VSTR            D16, [SP,#0x70+var_60]
411A1C:  LDR             R0, [R1,#(dword_617268 - 0x617260)]
411A1E:  VLDR            D16, [R1]
411A22:  MOV.W           R1, #0x3F800000
411A26:  STR             R0, [SP,#0x70+var_68]
411A28:  MOVS            R0, #0
411A2A:  STR             R1, [SP,#0x70+var_28]
411A2C:  STR             R1, [SP,#0x70+var_3C]
411A2E:  STR             R0, [SP,#0x70+var_40]
411A30:  VSTR            D16, [SP,#0x70+var_70]
411A34:  STR             R0, [SP,#0x70+var_38]
411A36:  STRD.W          R0, R0, [SP,#0x70+var_30]
411A3A:  STRD.W          R0, R0, [SP,#0x70+var_1C]
411A3E:  STR             R0, [SP,#0x70+var_48]
411A40:  STRD.W          R1, R0, [SP,#0x70+var_50]
411A44:  MOV.W           R1, #0xFFFFFFFF
411A48:  STR             R1, [SP,#0x70+var_44]
411A4A:  ADD             R1, SP, #0x70+var_60
411A4C:  STR             R0, [SP,#0x70+var_20]
411A4E:  MOV             R0, R6
411A50:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
411A54:  VLDR            S0, =180.0
411A58:  VMOV            S2, R5
411A5C:  VLDR            S4, =3.1416
411A60:  MOV             R1, SP
411A62:  VMUL.F32        S2, S2, S0
411A66:  MOV             R0, R6
411A68:  MOVS            R3, #2
411A6A:  VDIV.F32        S2, S2, S4
411A6E:  VADD.F32        S0, S2, S0
411A72:  VMOV            R2, S0
411A76:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
411A7A:  MOV             R0, R6
411A7C:  MOV             R1, R4
411A7E:  MOVS            R2, #2
411A80:  BLX             j__Z17RwMatrixTranslateP11RwMatrixTagPK5RwV3d15RwOpCombineType; RwMatrixTranslate(RwMatrixTag *,RwV3d const*,RwOpCombineType)
411A84:  MOV             R0, R6
411A86:  MOVS            R1, #0x20 ; ' '
411A88:  BLX             j__ZN9CRenderer23RequestObjectsInFrustumEP11RwMatrixTagi; CRenderer::RequestObjectsInFrustum(RwMatrixTag *,int)
411A8C:  ADD             SP, SP, #0x60 ; '`'
411A8E:  POP.W           {R11}
411A92:  POP             {R4-R7,PC}
