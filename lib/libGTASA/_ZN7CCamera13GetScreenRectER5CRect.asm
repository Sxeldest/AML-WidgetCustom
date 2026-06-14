; =========================================================
; Game Engine Function: _ZN7CCamera13GetScreenRectER5CRect
; Address            : 0x3DB3D4 - 0x3DB48C
; =========================================================

3DB3D4:  LDR             R2, =(RsGlobal_ptr - 0x3DB3DA)
3DB3D6:  ADD             R2, PC; RsGlobal_ptr
3DB3D8:  LDR             R3, [R2]; RsGlobal
3DB3DA:  MOVS            R2, #0
3DB3DC:  STR             R2, [R1]
3DB3DE:  VLDR            S0, [R3,#4]
3DB3E2:  VCVT.F32.S32    S0, S0
3DB3E6:  VSTR            S0, [R1,#8]
3DB3EA:  LDRB.W          R3, [R0,#0x3B]
3DB3EE:  CMP             R3, #0
3DB3F0:  BEQ             loc_3DB476
3DB3F2:  LDR             R2, =(RsGlobal_ptr - 0x3DB400)
3DB3F4:  VMOV.F32        S10, #-22.0
3DB3F8:  VLDR            S2, [R0,#0x140]
3DB3FC:  ADD             R2, PC; RsGlobal_ptr
3DB3FE:  VLDR            S0, =100.0
3DB402:  VLDR            S6, =448.0
3DB406:  LDR             R2, [R2]; RsGlobal
3DB408:  VDIV.F32        S2, S2, S0
3DB40C:  LDR             R3, [R2,#(dword_9FC904 - 0x9FC8FC)]
3DB40E:  VMOV            S4, R3
3DB412:  ADD.W           R3, R3, R3,LSR#31
3DB416:  VCVT.F32.S32    S4, S4
3DB41A:  ASRS            R3, R3, #1
3DB41C:  VMOV            S8, R3
3DB420:  VCVT.F32.S32    S8, S8
3DB424:  VDIV.F32        S4, S4, S6
3DB428:  VMUL.F32        S2, S2, S8
3DB42C:  VMUL.F32        S4, S4, S10
3DB430:  VMOV.F32        S8, #-14.0
3DB434:  VADD.F32        S2, S2, S4
3DB438:  VSTR            S2, [R1,#4]
3DB43C:  VLDR            S2, [R0,#0x140]
3DB440:  LDR             R0, [R2,#(dword_9FC904 - 0x9FC8FC)]
3DB442:  VDIV.F32        S0, S2, S0
3DB446:  VMOV            S4, R0
3DB44A:  ADD.W           R0, R0, R0,LSR#31
3DB44E:  VCVT.F32.S32    S4, S4
3DB452:  ASRS            R0, R0, #1
3DB454:  VDIV.F32        S2, S4, S6
3DB458:  VMOV            S6, R0
3DB45C:  VMUL.F32        S2, S2, S8
3DB460:  VCVT.F32.S32    S6, S6
3DB464:  VMUL.F32        S0, S0, S6
3DB468:  VSUB.F32        S0, S4, S0
3DB46C:  VADD.F32        S0, S0, S2
3DB470:  VSTR            S0, [R1,#0xC]
3DB474:  BX              LR
3DB476:  LDR             R0, =(RsGlobal_ptr - 0x3DB47E)
3DB478:  STR             R2, [R1,#4]
3DB47A:  ADD             R0, PC; RsGlobal_ptr
3DB47C:  LDR             R0, [R0]; RsGlobal
3DB47E:  VLDR            S0, [R0,#8]
3DB482:  VCVT.F32.S32    S0, S0
3DB486:  VSTR            S0, [R1,#0xC]
3DB48A:  BX              LR
