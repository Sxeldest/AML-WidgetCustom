; =========================================================
; Game Engine Function: _ZN10CTapEffect4DrawEv
; Address            : 0x2AC464 - 0x2AC4D6
; =========================================================

2AC464:  PUSH            {R4-R7,LR}
2AC466:  ADD             R7, SP, #0xC
2AC468:  PUSH.W          {R11}
2AC46C:  SUB             SP, SP, #8
2AC46E:  MOV             R5, R0
2AC470:  MOV             R4, R5
2AC472:  LDR.W           R0, [R4,#8]!
2AC476:  CBZ             R0, loc_2AC4CE
2AC478:  VMOV.F32        S2, #30.0
2AC47C:  VLDR            S0, [R5,#0x14]
2AC480:  VCMPE.F32       S0, S2
2AC484:  VMRS            APSR_nzcv, FPSCR
2AC488:  BLE             loc_2AC4B0
2AC48A:  VMOV.F32        S2, #-30.0
2AC48E:  VADD.F32        S0, S0, S2
2AC492:  VDIV.F32        S0, S0, S2
2AC496:  VMOV.F32        S2, #1.0
2AC49A:  VADD.F32        S0, S0, S2
2AC49E:  VLDR            S2, =128.0
2AC4A2:  VMUL.F32        S0, S0, S2
2AC4A6:  VCVT.U32.F32    S0, S0
2AC4AA:  VMOV            R0, S0
2AC4AE:  B               loc_2AC4B2
2AC4B0:  MOVS            R0, #0x80
2AC4B2:  ADD             R6, SP, #0x18+var_14
2AC4B4:  STR             R0, [SP,#0x18+var_18]; unsigned __int8
2AC4B6:  MOVS            R1, #0xFF; unsigned __int8
2AC4B8:  MOVS            R2, #0xFF; unsigned __int8
2AC4BA:  MOV             R0, R6; this
2AC4BC:  MOVS            R3, #0xFF; unsigned __int8
2AC4BE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AC4C2:  ADD.W           R1, R5, #0x1C
2AC4C6:  MOV             R0, R4
2AC4C8:  MOV             R2, R6
2AC4CA:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2AC4CE:  ADD             SP, SP, #8
2AC4D0:  POP.W           {R11}
2AC4D4:  POP             {R4-R7,PC}
