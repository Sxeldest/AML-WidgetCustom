; =========================================================
; Game Engine Function: _Z15_rwPalQuantInitP10rwPalQuant
; Address            : 0x1AC260 - 0x1AC32E
; =========================================================

1AC260:  PUSH            {R4,R5,R7,LR}
1AC262:  ADD             R7, SP, #8
1AC264:  MOV             R4, R0
1AC266:  ADR             R0, dword_1AC330
1AC268:  VLD1.64         {D16-D17}, [R0@128]
1AC26C:  ADR             R0, dword_1AC340
1AC26E:  ADR             R1, dword_1AC390
1AC270:  ADR             R2, dword_1AC3A0
1AC272:  VLD1.64         {D18-D19}, [R0@128]
1AC276:  ADR             R0, dword_1AC350
1AC278:  VLD1.64         {D20-D21}, [R0@128]
1AC27C:  ADR             R0, dword_1AC360
1AC27E:  VLD1.64         {D22-D23}, [R0@128]
1AC282:  ADR             R0, dword_1AC370
1AC284:  VLD1.64         {D24-D25}, [R0@128]
1AC288:  ADR             R0, dword_1AC380
1AC28A:  VLD1.64         {D28-D29}, [R1@128]
1AC28E:  LDR             R1, =(unk_6B2DD0 - 0x1AC298)
1AC290:  VLD1.64         {D26-D27}, [R0@128]
1AC294:  ADD             R1, PC; unk_6B2DD0
1AC296:  LDR             R0, =(RwEngineInstance_ptr - 0x1AC2A2)
1AC298:  VLD1.64         {D30-D31}, [R2@128]
1AC29C:  MOV             R2, R1
1AC29E:  ADD             R0, PC; RwEngineInstance_ptr
1AC2A0:  VST1.32         {D16-D17}, [R2@128]!
1AC2A4:  LDR             R5, [R0]; RwEngineInstance
1AC2A6:  ADD.W           R0, R1, #0x20 ; ' '
1AC2AA:  VST1.64         {D18-D19}, [R2@128]
1AC2AE:  VST1.64         {D20-D21}, [R0@128]
1AC2B2:  ADD.W           R0, R1, #0x30 ; '0'
1AC2B6:  VST1.64         {D22-D23}, [R0@128]
1AC2BA:  ADD.W           R0, R1, #0x40 ; '@'
1AC2BE:  VST1.64         {D24-D25}, [R0@128]
1AC2C2:  ADD.W           R0, R1, #0x50 ; 'P'
1AC2C6:  VST1.64         {D26-D27}, [R0@128]
1AC2CA:  ADD.W           R0, R1, #0x60 ; '`'
1AC2CE:  ADDS            R1, #0x70 ; 'p'
1AC2D0:  VST1.64         {D28-D29}, [R0@128]
1AC2D4:  LDR             R0, [R5]
1AC2D6:  VST1.64         {D30-D31}, [R1@128]
1AC2DA:  MOV.W           R1, #0x100
1AC2DE:  LDR.W           R2, [R0,#0x138]
1AC2E2:  MOVS            R0, #8
1AC2E4:  BLX             R2
1AC2E6:  STR             R0, [R4]
1AC2E8:  MOV.W           R1, #0x100
1AC2EC:  LDR             R0, [R5]
1AC2EE:  LDR.W           R2, [R0,#0x138]
1AC2F2:  MOVS            R0, #4
1AC2F4:  BLX             R2
1AC2F6:  STR             R0, [R4,#4]
1AC2F8:  MOVS            R0, #0x40 ; '@'; int
1AC2FA:  MOVS            R1, #0x40 ; '@'; int
1AC2FC:  MOVS            R2, #4; int
1AC2FE:  BLX             j__Z16RwFreeListCreateiii; RwFreeListCreate(int,int,int)
1AC302:  STR             R0, [R4,#0xC]
1AC304:  LDR             R1, [R5]
1AC306:  LDR.W           R1, [R1,#0x13C]
1AC30A:  BLX             R1
1AC30C:  VMOV.I32        Q8, #0
1AC310:  ADD.W           R1, R0, #0x30 ; '0'
1AC314:  STR             R0, [R4,#8]
1AC316:  VST1.32         {D16-D17}, [R1]
1AC31A:  ADD.W           R1, R0, #0x20 ; ' '
1AC31E:  VST1.32         {D16-D17}, [R1]
1AC322:  VST1.32         {D16-D17}, [R0]!
1AC326:  VST1.32         {D16-D17}, [R0]
1AC32A:  MOVS            R0, #1
1AC32C:  POP             {R4,R5,R7,PC}
