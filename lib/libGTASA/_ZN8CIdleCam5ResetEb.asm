; =========================================================
; Game Engine Function: _ZN8CIdleCam5ResetEb
; Address            : 0x3D23E8 - 0x3D2454
; =========================================================

3D23E8:  PUSH            {R4,R6,R7,LR}
3D23EA:  ADD             R7, SP, #8
3D23EC:  MOVS            R3, #0
3D23EE:  MOVS            R4, #0
3D23F0:  VMOV.I32        Q8, #0
3D23F4:  MOVS            R2, #0
3D23F6:  MOVT            R3, #0xBF80
3D23FA:  MOVT            R4, #0x428C
3D23FE:  STRD.W          R2, R2, [R0,#0x18]
3D2402:  MOV.W           R12, #3
3D2406:  STR             R2, [R0,#0x20]
3D2408:  CMP             R1, #0
3D240A:  STR             R3, [R0,#0x2C]
3D240C:  STR             R3, [R0,#0x34]
3D240E:  STR             R3, [R0,#0x3C]
3D2410:  STR             R4, [R0,#0x70]
3D2412:  MOV.W           R4, #0x3F800000
3D2416:  STRD.W          R2, R12, [R0,#0x54]
3D241A:  STRD.W          R3, R3, [R0,#0x5C]
3D241E:  STR             R3, [R0,#0x64]
3D2420:  STR.W           R3, [R0,#0x80]
3D2424:  STR             R4, [R0,#0x24]
3D2426:  STRH.W          R2, [R0,#0x78]
3D242A:  VST1.32         {D16-D17}, [R0]!
3D242E:  STR             R3, [R0]
3D2430:  IT EQ
3D2432:  POPEQ           {R4,R6,R7,PC}
3D2434:  LDR             R0, =(currentPad_ptr - 0x3D243C)
3D2436:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3D243E)
3D2438:  ADD             R0, PC; currentPad_ptr
3D243A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3D243C:  LDR             R0, [R0]; currentPad
3D243E:  LDR             R1, [R1]; int
3D2440:  LDR             R0, [R0]
3D2442:  LDR             R4, [R1]; CTimer::m_snTimeInMilliseconds
3D2444:  CMP             R0, #0
3D2446:  ITT EQ
3D2448:  MOVEQ           R0, #0; this
3D244A:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3D244E:  STR.W           R4, [R0,#0x134]
3D2452:  POP             {R4,R6,R7,PC}
