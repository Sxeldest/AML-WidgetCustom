; =========================================================
; Game Engine Function: _ZN7CPickup29IsPickUpCloseEnoughForObjectsEv
; Address            : 0x31D468 - 0x31D4B8
; =========================================================

31D468:  ADDS            R0, #0x10
31D46A:  LDR             R1, =(TheCamera_ptr - 0x31D478)
31D46C:  VLDR            S2, =100.0
31D470:  VLD1.32         {D16[0]}, [R0@32]
31D474:  ADD             R1, PC; TheCamera_ptr
31D476:  VMOVL.S16       Q8, D16
31D47A:  LDR             R0, [R1]; TheCamera
31D47C:  VCVT.F32.S32    D16, D16
31D480:  VMOV.I32        D17, #0x3E000000
31D484:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
31D486:  ADD.W           R2, R1, #0x30 ; '0'
31D48A:  CMP             R1, #0
31D48C:  VMUL.F32        D16, D16, D17
31D490:  IT EQ
31D492:  ADDEQ           R2, R0, #4
31D494:  VLDR            D17, [R2]
31D498:  MOVS            R0, #0
31D49A:  VSUB.F32        D16, D17, D16
31D49E:  VMUL.F32        D0, D16, D16
31D4A2:  VADD.F32        S0, S0, S1
31D4A6:  VSQRT.F32       S0, S0
31D4AA:  VCMPE.F32       S0, S2
31D4AE:  VMRS            APSR_nzcv, FPSCR
31D4B2:  IT LT
31D4B4:  MOVLT           R0, #1
31D4B6:  BX              LR
