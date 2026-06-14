; =========================================================
; Game Engine Function: _ZN9CPhysicalC2Ev
; Address            : 0x3FCC30 - 0x3FCCF4
; =========================================================

3FCC30:  PUSH            {R4,R5,R7,LR}
3FCC32:  ADD             R7, SP, #8
3FCC34:  MOV             R4, R0
3FCC36:  BLX             j__ZN7CEntityC2Ev; CEntity::CEntity(void)
3FCC3A:  LDR             R0, =(_ZTV9CPhysical_ptr - 0x3FCC46)
3FCC3C:  MOVS            R5, #0
3FCC3E:  STR.W           R5, [R4,#0xB4]
3FCC42:  ADD             R0, PC; _ZTV9CPhysical_ptr
3FCC44:  LDR             R0, [R0]; `vtable for'CPhysical ...
3FCC46:  ADDS            R0, #8
3FCC48:  STR             R0, [R4]
3FCC4A:  MOV             R0, R4; this
3FCC4C:  BLX             j__ZN10CPlaceable20AllocateStaticMatrixEv; CPlaceable::AllocateStaticMatrix(void)
3FCC50:  LDR             R0, [R4,#0x14]; this
3FCC52:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
3FCC56:  ADR             R0, dword_3FCD00
3FCC58:  VMOV.I32        Q8, #0
3FCC5C:  VLD1.64         {D18-D19}, [R0@128]
3FCC60:  ADD.W           R0, R4, #0x90
3FCC64:  MOV.W           R1, #0x3F800000
3FCC68:  VST1.32         {D18-D19}, [R0]
3FCC6C:  ADD.W           R0, R4, #0xC0
3FCC70:  VST1.32         {D16-D17}, [R0]
3FCC74:  ADD.W           R0, R4, #0x78 ; 'x'
3FCC78:  VST1.32         {D16-D17}, [R0]
3FCC7C:  ADD.W           R0, R4, #0x68 ; 'h'
3FCC80:  VST1.32         {D16-D17}, [R0]
3FCC84:  ADD.W           R0, R4, #0x58 ; 'X'
3FCC88:  VST1.32         {D16-D17}, [R0]
3FCC8C:  ADD.W           R0, R4, #0x48 ; 'H'
3FCC90:  VST1.32         {D16-D17}, [R0]
3FCC94:  ADD.W           R0, R4, #0xEC
3FCC98:  STRD.W          R5, R5, [R4,#0xD0]
3FCC9C:  STRD.W          R5, R5, [R4,#0x88]
3FCCA0:  STRB.W          R5, [R4,#0xBE]
3FCCA4:  STRH.W          R5, [R4,#0xBC]
3FCCA8:  VST1.32         {D16-D17}, [R0]
3FCCAC:  ADD.W           R0, R4, #0xDC
3FCCB0:  VST1.32         {D16-D17}, [R0]
3FCCB4:  ADD.W           R0, R4, #0x11C
3FCCB8:  STR.W           R5, [R4,#0xB8]
3FCCBC:  STRH.W          R5, [R4,#0xFC]
3FCCC0:  VST1.32         {D16-D17}, [R0]
3FCCC4:  MOVS            R0, #0x42C80000
3FCCCA:  STR             R0, [R4,#0x3C]
3FCCCC:  MOVS            R0, #2
3FCCCE:  STRD.W          R5, R5, [R4,#0xA8]
3FCCD2:  STR.W           R5, [R4,#0xB0]
3FCCD6:  STR.W           R5, [R4,#0x100]
3FCCDA:  STR.W           R5, [R4,#0xD8]
3FCCDE:  STR             R0, [R4,#0x44]
3FCCE0:  LDR             R0, [R4,#0x1C]
3FCCE2:  STRD.W          R5, R1, [R4,#0x12C]
3FCCE6:  ORR.W           R0, R0, #1
3FCCEA:  STRD.W          R5, R5, [R4,#0x134]
3FCCEE:  STR             R0, [R4,#0x1C]
3FCCF0:  MOV             R0, R4
3FCCF2:  POP             {R4,R5,R7,PC}
