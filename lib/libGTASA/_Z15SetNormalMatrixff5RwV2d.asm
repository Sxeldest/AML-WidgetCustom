; =========================================================
; Game Engine Function: _Z15SetNormalMatrixff5RwV2d
; Address            : 0x2CAF40 - 0x2CB00E
; =========================================================

2CAF40:  PUSH            {R4-R7,LR}
2CAF42:  ADD             R7, SP, #0xC
2CAF44:  PUSH.W          {R8-R11}
2CAF48:  SUB             SP, SP, #0x44
2CAF4A:  VMOV.I32        Q8, #0
2CAF4E:  MOV             R10, R2
2CAF50:  MOV             R9, SP
2CAF52:  ORR.W           R2, R9, #4
2CAF56:  MOV.W           R11, #0
2CAF5A:  MOV             R8, R3
2CAF5C:  VST1.32         {D16-D17}, [R2]
2CAF60:  ADD.W           R2, R9, #0x18
2CAF64:  VST1.64         {D16-D17}, [R2]
2CAF68:  MOV.W           R2, #0x3F800000
2CAF6C:  STR             R0, [SP,#0x60+var_60]
2CAF6E:  STR             R1, [SP,#0x60+var_4C]
2CAF70:  STR             R2, [SP,#0x60+var_38]
2CAF72:  STR             R0, [SP,#0x60+var_30]
2CAF74:  MOVW            R0, #0x1702; unsigned int
2CAF78:  STR.W           R11, [SP,#0x60+var_34]
2CAF7C:  STR.W           R11, [SP,#0x60+var_24]
2CAF80:  STRD.W          R1, R11, [SP,#0x60+var_2C]
2CAF84:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
2CAF88:  BLX             j__Z16emu_glPushMatrixv; emu_glPushMatrix(void)
2CAF8C:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
2CAF90:  LDR             R0, =(RwEngineInstance_ptr - 0x2CAF96)
2CAF92:  ADD             R0, PC; RwEngineInstance_ptr
2CAF94:  LDR             R6, [R0]; RwEngineInstance
2CAF96:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
2CAF9A:  MOV             R4, R0
2CAF9C:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
2CAFA0:  MOV             R5, R0
2CAFA2:  LDR             R0, [R6]
2CAFA4:  LDR             R0, [R0]
2CAFA6:  LDR             R0, [R0,#4]
2CAFA8:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
2CAFAC:  MOV             R1, R0
2CAFAE:  ADD.W           R2, R0, #0x20 ; ' '
2CAFB2:  ADDS            R0, #0x30 ; '0'
2CAFB4:  VLD1.32         {D16-D17}, [R1]!
2CAFB8:  VLD1.32         {D22-D23}, [R0]
2CAFBC:  ADD.W           R0, R4, #0x30 ; '0'
2CAFC0:  VLD1.32         {D18-D19}, [R2]
2CAFC4:  MOV             R2, R9
2CAFC6:  VLD1.32         {D20-D21}, [R1]
2CAFCA:  MOV             R1, R4
2CAFCC:  VST1.32         {D22-D23}, [R0]
2CAFD0:  ADD.W           R0, R4, #0x20 ; ' '
2CAFD4:  VST1.32         {D18-D19}, [R0]
2CAFD8:  MOV             R0, R4
2CAFDA:  VST1.32         {D16-D17}, [R0]!
2CAFDE:  STR.W           R11, [R4,#0xC]
2CAFE2:  VST1.32         {D20-D21}, [R0]
2CAFE6:  MOV             R0, R5
2CAFE8:  STRD.W          R10, R8, [R4,#0x30]
2CAFEC:  STR.W           R11, [R4,#0x38]
2CAFF0:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
2CAFF4:  MOV             R0, R5
2CAFF6:  BLX             j__Z22_rwOpenGLApplyRwMatrixP11RwMatrixTag; _rwOpenGLApplyRwMatrix(RwMatrixTag *)
2CAFFA:  MOV             R0, R4
2CAFFC:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
2CB000:  MOV             R0, R5
2CB002:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
2CB006:  ADD             SP, SP, #0x44 ; 'D'
2CB008:  POP.W           {R8-R11}
2CB00C:  POP             {R4-R7,PC}
