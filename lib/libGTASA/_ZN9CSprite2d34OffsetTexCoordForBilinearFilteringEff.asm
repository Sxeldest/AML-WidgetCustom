; =========================================================
; Game Engine Function: _ZN9CSprite2d34OffsetTexCoordForBilinearFilteringEff
; Address            : 0x5C9538 - 0x5C95BC
; =========================================================

5C9538:  VMOV            S0, R0
5C953C:  LDR             R0, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5C954A)
5C953E:  VMOV            S4, R1
5C9542:  VMOV.F32        S2, #1.0
5C9546:  ADD             R0, PC; _ZN9CSprite2d10maVerticesE_ptr
5C9548:  VADD.F32        S0, S0, S0
5C954C:  VADD.F32        S4, S4, S4
5C9550:  LDR             R0, [R0]; CSprite2d::maVertices ...
5C9552:  VLDR            S6, [R0,#0x18]
5C9556:  VLDR            S8, [R0,#0x30]
5C955A:  VLDR            S10, [R0,#0x34]
5C955E:  VDIV.F32        S0, S2, S0
5C9562:  VDIV.F32        S2, S2, S4
5C9566:  VLDR            S4, [R0,#0x14]
5C956A:  VADD.F32        S6, S2, S6
5C956E:  VLDR            S12, [R0,#0x4C]
5C9572:  VADD.F32        S8, S0, S8
5C9576:  VLDR            S14, [R0,#0x50]
5C957A:  VADD.F32        S4, S0, S4
5C957E:  VLDR            S1, [R0,#0x68]
5C9582:  VADD.F32        S12, S0, S12
5C9586:  VLDR            S3, [R0,#0x6C]
5C958A:  VADD.F32        S10, S2, S10
5C958E:  VADD.F32        S14, S2, S14
5C9592:  VADD.F32        S0, S0, S1
5C9596:  VADD.F32        S2, S2, S3
5C959A:  VSTR            S4, [R0,#0x14]
5C959E:  VSTR            S6, [R0,#0x18]
5C95A2:  VSTR            S8, [R0,#0x30]
5C95A6:  VSTR            S10, [R0,#0x34]
5C95AA:  VSTR            S12, [R0,#0x4C]
5C95AE:  VSTR            S14, [R0,#0x50]
5C95B2:  VSTR            S0, [R0,#0x68]
5C95B6:  VSTR            S2, [R0,#0x6C]
5C95BA:  BX              LR
