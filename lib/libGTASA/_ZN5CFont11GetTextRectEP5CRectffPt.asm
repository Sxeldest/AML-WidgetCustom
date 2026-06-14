; =========================================================
; Game Engine Function: _ZN5CFont11GetTextRectEP5CRectffPt
; Address            : 0x5AA394 - 0x5AA48C
; =========================================================

5AA394:  PUSH            {R4-R7,LR}
5AA396:  ADD             R7, SP, #0xC
5AA398:  PUSH.W          {R11}; unsigned __int16 *
5AA39C:  MOV             R4, R0
5AA39E:  MOVS            R0, #0; this
5AA3A0:  MOV             R5, R2
5AA3A2:  MOV             R6, R1
5AA3A4:  BLX.W           j__ZN5CFont20ProcessCurrentStringEhffPt; CFont::ProcessCurrentString(uchar,float,float,ushort *)
5AA3A8:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA3B6)
5AA3AA:  VMOV            S0, R5
5AA3AE:  VMOV            S2, R6
5AA3B2:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA3B4:  LDR             R1, [R1]; CFont::Details ...
5AA3B6:  LDRB            R1, [R1,#(byte_A297CD - 0xA297B4)]
5AA3B8:  CBZ             R1, loc_5AA3EE
5AA3BA:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA3C8)
5AA3BC:  VMOV.F32        S4, #0.5
5AA3C0:  VMOV.F32        S8, #4.0
5AA3C4:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA3C6:  LDR             R1, [R1]; CFont::Details ...
5AA3C8:  VLDR            S6, [R1,#0x2C]
5AA3CC:  VMUL.F32        S6, S6, S4
5AA3D0:  VADD.F32        S6, S6, S8
5AA3D4:  VSUB.F32        S6, S2, S6
5AA3D8:  VSTR            S6, [R4]
5AA3DC:  VLDR            S6, [R1,#0x2C]
5AA3E0:  VMUL.F32        S4, S6, S4
5AA3E4:  VADD.F32        S4, S4, S8
5AA3E8:  VADD.F32        S2, S4, S2
5AA3EC:  B               loc_5AA436
5AA3EE:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA3F4)
5AA3F0:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA3F2:  LDR             R1, [R1]; CFont::Details ...
5AA3F4:  LDRB            R1, [R1,#(byte_A297CE - 0xA297B4)]
5AA3F6:  CBZ             R1, loc_5AA418
5AA3F8:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA406)
5AA3FA:  VMOV.F32        S4, #-4.0
5AA3FE:  VMOV.F32        S6, #4.0
5AA402:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA404:  LDR             R1, [R1]; CFont::Details ...
5AA406:  VLDR            S8, [R1,#0x30]
5AA40A:  VADD.F32        S2, S2, S6
5AA40E:  VADD.F32        S4, S8, S4
5AA412:  VSTR            S4, [R4]
5AA416:  B               loc_5AA436
5AA418:  VMOV.F32        S4, #-4.0
5AA41C:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA422)
5AA41E:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA420:  LDR             R1, [R1]; CFont::Details ...
5AA422:  VADD.F32        S2, S2, S4
5AA426:  VMOV.F32        S4, #4.0
5AA42A:  VSTR            S2, [R4]
5AA42E:  VLDR            S2, [R1,#0x28]
5AA432:  VADD.F32        S2, S2, S4
5AA436:  VMOV.F32        S4, #-4.0
5AA43A:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AA446)
5AA43C:  VSTR            S2, [R4,#8]
5AA440:  UXTB            R0, R0
5AA442:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AA444:  VLDR            S6, =32.0
5AA448:  LDR             R1, [R1]; CFont::Details ...
5AA44A:  VADD.F32        S4, S0, S4
5AA44E:  VSTR            S4, [R4,#4]
5AA452:  VMOV.F32        S4, #0.5
5AA456:  VLDR            S2, [R1,#8]
5AA45A:  VMUL.F32        S6, S2, S6
5AA45E:  VADD.F32        S2, S2, S2
5AA462:  VMUL.F32        S4, S6, S4
5AA466:  VMOV            S6, R0
5AA46A:  VCVT.F32.U32    S6, S6
5AA46E:  VADD.F32        S2, S2, S4
5AA472:  VMOV.F32        S4, #4.0
5AA476:  VMUL.F32        S2, S2, S6
5AA47A:  VADD.F32        S0, S2, S0
5AA47E:  VADD.F32        S0, S0, S4
5AA482:  VSTR            S0, [R4,#0xC]
5AA486:  POP.W           {R11}
5AA48A:  POP             {R4-R7,PC}
