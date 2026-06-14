; =========================================================
; Game Engine Function: _ZN11CAutomobile18SetUpWheelColModelEP9CColModel
; Address            : 0x55D21C - 0x55D3E4
; =========================================================

55D21C:  PUSH            {R4-R7,LR}
55D21E:  ADD             R7, SP, #0xC
55D220:  PUSH.W          {R8-R10}
55D224:  VPUSH           {D8}
55D228:  SUB             SP, SP, #0x50
55D22A:  MOV             R4, R0
55D22C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55D238)
55D22E:  MOV             R5, R1
55D230:  LDRSH.W         R1, [R4,#0x26]
55D234:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55D236:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55D238:  LDR.W           R6, [R0,R1,LSL#2]
55D23C:  MOV             R0, R4; this
55D23E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55D242:  LDRSH.W         R2, [R4,#0x26]
55D246:  MOVS            R1, #0
55D248:  SUBW            R3, R2, #0x213
55D24C:  CMP             R3, #2
55D24E:  BCC.W           loc_55D3D6
55D252:  MOVW            R3, #0x23B
55D256:  CMP             R2, R3
55D258:  BEQ.W           loc_55D3D6
55D25C:  ADD.W           R1, R0, #0x18
55D260:  LDR.W           R9, [R5,#0x2C]
55D264:  VLD1.32         {D16-D17}, [R1]
55D268:  ADD.W           R1, R5, #0x18
55D26C:  ADD.W           R8, SP, #0x70+var_68
55D270:  MOVS            R2, #0
55D272:  VST1.32         {D16-D17}, [R1]
55D276:  VLD1.32         {D16-D17}, [R0]!
55D27A:  VLDR            D18, [R0]
55D27E:  MOVS            R0, #0
55D280:  VST1.32         {D16-D17}, [R5]!
55D284:  VSTR            D18, [R5]
55D288:  STRD.W          R0, R0, [SP,#0x70+var_28]
55D28C:  LDR.W           R0, [R4,#0x670]
55D290:  ADD.W           R1, R0, #0x10
55D294:  MOV             R0, R8
55D296:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55D29A:  VMOV.F32        S16, #0.5
55D29E:  VLDR            S0, [R6,#0x58]
55D2A2:  MOV.W           R10, #0xFF
55D2A6:  MOVS            R1, #0xD
55D2A8:  LDR.W           R0, [R9,#8]; this
55D2AC:  ADD.W           R5, R8, #0x30 ; '0'
55D2B0:  STRD.W          R1, R10, [SP,#0x70+var_70]; unsigned __int8
55D2B4:  MOVS            R3, #0x43 ; 'C'; unsigned __int8
55D2B6:  MOV             R2, R5; CVector *
55D2B8:  VMUL.F32        S0, S0, S16
55D2BC:  VMOV            R1, S0; float
55D2C0:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
55D2C4:  LDR.W           R0, [R4,#0x678]
55D2C8:  MOVS            R2, #0
55D2CA:  ADD.W           R1, R0, #0x10
55D2CE:  MOV             R0, R8
55D2D0:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55D2D4:  VLDR            S0, [R6,#0x5C]
55D2D8:  MOVS            R1, #0xF
55D2DA:  LDR.W           R0, [R9,#8]
55D2DE:  MOV             R2, R5; CVector *
55D2E0:  VMUL.F32        S0, S0, S16
55D2E4:  STRD.W          R1, R10, [SP,#0x70+var_70]; unsigned __int8
55D2E8:  ADDS            R0, #0x14; this
55D2EA:  MOVS            R3, #0x43 ; 'C'; unsigned __int8
55D2EC:  VMOV            R1, S0; float
55D2F0:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
55D2F4:  LDR.W           R0, [R4,#0x664]
55D2F8:  MOVS            R2, #0
55D2FA:  ADD.W           R1, R0, #0x10
55D2FE:  MOV             R0, R8
55D300:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55D304:  VLDR            S0, [R6,#0x58]
55D308:  MOVS            R1, #0xE
55D30A:  LDR.W           R0, [R9,#8]
55D30E:  MOV             R2, R5; CVector *
55D310:  VMUL.F32        S0, S0, S16
55D314:  STRD.W          R1, R10, [SP,#0x70+var_70]; unsigned __int8
55D318:  ADDS            R0, #0x28 ; '('; this
55D31A:  MOVS            R3, #0x43 ; 'C'; unsigned __int8
55D31C:  VMOV            R1, S0; float
55D320:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
55D324:  LDR.W           R0, [R4,#0x66C]
55D328:  MOVS            R2, #0
55D32A:  ADD.W           R1, R0, #0x10
55D32E:  MOV             R0, R8
55D330:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55D334:  VLDR            S0, [R6,#0x5C]
55D338:  MOVS            R2, #0x10
55D33A:  LDR.W           R0, [R9,#8]
55D33E:  MOVS            R3, #0x43 ; 'C'; unsigned __int8
55D340:  VMUL.F32        S0, S0, S16
55D344:  STRD.W          R2, R10, [SP,#0x70+var_70]; unsigned __int8
55D348:  ADDS            R0, #0x3C ; '<'; this
55D34A:  MOV             R2, R5; CVector *
55D34C:  VMOV            R1, S0; float
55D350:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
55D354:  LDR.W           R0, [R4,#0x674]
55D358:  CBZ             R0, loc_55D3C8
55D35A:  LDR.W           R1, [R4,#0x668]
55D35E:  CBZ             R1, loc_55D3C8
55D360:  ADD.W           R8, SP, #0x70+var_68
55D364:  ADD.W           R1, R0, #0x10
55D368:  MOVS            R2, #0
55D36A:  MOV             R0, R8
55D36C:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55D370:  VLDR            S0, [R6,#0x5C]
55D374:  MOV.W           R10, #0xFF
55D378:  LDR.W           R0, [R9,#8]
55D37C:  MOVS            R2, #0xF
55D37E:  VMUL.F32        S0, S0, S16
55D382:  STRD.W          R2, R10, [SP,#0x70+var_70]; unsigned __int8
55D386:  ADDS            R0, #0x50 ; 'P'; this
55D388:  MOV             R2, R5; CVector *
55D38A:  MOVS            R3, #0x43 ; 'C'; unsigned __int8
55D38C:  VMOV            R1, S0; float
55D390:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
55D394:  LDR.W           R0, [R4,#0x668]
55D398:  MOVS            R2, #0
55D39A:  ADD.W           R1, R0, #0x10
55D39E:  MOV             R0, R8
55D3A0:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
55D3A4:  VLDR            S0, [R6,#0x5C]
55D3A8:  MOVS            R2, #0x10
55D3AA:  LDR.W           R0, [R9,#8]
55D3AE:  MOVS            R3, #0x43 ; 'C'; unsigned __int8
55D3B0:  VMUL.F32        S0, S0, S16
55D3B4:  STRD.W          R2, R10, [SP,#0x70+var_70]; unsigned __int8
55D3B8:  ADDS            R0, #0x64 ; 'd'; this
55D3BA:  MOV             R2, R5; CVector *
55D3BC:  VMOV            R1, S0; float
55D3C0:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
55D3C4:  MOVS            R0, #6
55D3C6:  B               loc_55D3CA
55D3C8:  MOVS            R0, #4
55D3CA:  STRH.W          R0, [R9]
55D3CE:  ADD             R0, SP, #0x70+var_68; this
55D3D0:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55D3D4:  MOVS            R1, #1
55D3D6:  MOV             R0, R1
55D3D8:  ADD             SP, SP, #0x50 ; 'P'
55D3DA:  VPOP            {D8}
55D3DE:  POP.W           {R8-R10}
55D3E2:  POP             {R4-R7,PC}
