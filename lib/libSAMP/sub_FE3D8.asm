; =========================================================
; Game Engine Function: sub_FE3D8
; Address            : 0xFE3D8 - 0xFE4C2
; =========================================================

FE3D8:  PUSH            {R4-R7,LR}
FE3DA:  ADD             R7, SP, #0xC
FE3DC:  PUSH.W          {R8-R11}
FE3E0:  SUB             SP, SP, #4
FE3E2:  VPUSH           {D8-D10}
FE3E6:  SUB             SP, SP, #0x28
FE3E8:  MOV             R6, R1
FE3EA:  LDR             R1, =(aCodeway - 0xFE3F6); "CODEWAY" ...
FE3EC:  LDR.W           R9, [R7,#s1]
FE3F0:  MOV             R5, R2
FE3F2:  ADD             R1, PC; "CODEWAY"
FE3F4:  MOV             R8, R0
FE3F6:  MOVS            R2, #7; n
FE3F8:  MOV             R11, R3
FE3FA:  MOV             R0, R9; s1
FE3FC:  BLX             strncmp
FE400:  LDRD.W          R2, R1, [R7,#arg_0]
FE404:  VMOV            S0, R11
FE408:  VMOV            S18, R5
FE40C:  CMP             R0, #0
FE40E:  VMOV            S16, R6
FE412:  BNE             loc_FE49C
FE414:  LDR             R0, =(off_23494C - 0xFE424)
FE416:  MOV             R4, R1
FE418:  MOVW            R1, #:lower16:unk_2D5069
FE41C:  VSTR            S0, [SP,#0x60+var_3C]
FE420:  ADD             R0, PC; off_23494C
FE422:  MOVT            R1, #:upper16:unk_2D5069
FE426:  VSTR            S18, [SP,#0x60+var_40]
FE42A:  LDR.W           R10, [R0]; dword_23DF24
FE42E:  VSTR            S16, [SP,#0x60+var_44]
FE432:  LDR.W           R0, [R10]
FE436:  ADD             R1, R0
FE438:  ADD             R0, SP, #0x60+var_44
FE43A:  BLX             R1
FE43C:  LDR.W           R0, [R10]
FE440:  MOV             R1, #0x42A775
FE448:  ADDS            R2, R0, R1
FE44A:  MOV             R0, R6
FE44C:  MOV             R1, R5
FE44E:  BLX             R2
FE450:  VMOV.F32        S0, #1.5
FE454:  LDR             R1, =(aAxl - 0xFE464); "AXL" ...
FE456:  VMOV            S2, R0
FE45A:  LDR             R2, =(aOnplayerclickm - 0xFE466); "OnPlayerClickMap: %f, %f, %f" ...
FE45C:  VCVT.F64.F32    D16, S18
FE460:  ADD             R1, PC; "AXL"
FE462:  ADD             R2, PC; "OnPlayerClickMap: %f, %f, %f"
FE464:  MOVS            R0, #4; prio
FE466:  VADD.F32        S20, S2, S0
FE46A:  VSTR            D16, [SP,#0x60+var_58]
FE46E:  VCVT.F64.F32    D17, S16
FE472:  VSTR            D17, [SP,#0x60+var_60]
FE476:  VCVT.F64.F32    D18, S20
FE47A:  VSTR            D18, [SP,#0x60+var_50]
FE47E:  BLX             __android_log_print
FE482:  LDR             R0, =(off_23496C - 0xFE488)
FE484:  ADD             R0, PC; off_23496C
FE486:  LDR             R0, [R0]; dword_23DEF4
FE488:  LDR             R0, [R0]
FE48A:  CBZ             R0, loc_FE498
FE48C:  VMOV            R3, S20
FE490:  MOV             R1, R6
FE492:  MOV             R2, R5
FE494:  BL              sub_144604
FE498:  LDR             R2, [R7,#arg_0]
FE49A:  MOV             R1, R4
FE49C:  LDR             R0, =(off_2475F4 - 0xFE4AA)
FE49E:  MOV             R3, R11
FE4A0:  STRD.W          R2, R1, [SP,#0x60+var_60]
FE4A4:  MOV             R1, R6
FE4A6:  ADD             R0, PC; off_2475F4
FE4A8:  MOV             R2, R5
FE4AA:  STR.W           R9, [SP,#0x60+var_58]
FE4AE:  LDR             R4, [R0]
FE4B0:  MOV             R0, R8
FE4B2:  BLX             R4
FE4B4:  ADD             SP, SP, #0x28 ; '('
FE4B6:  VPOP            {D8-D10}
FE4BA:  ADD             SP, SP, #4
FE4BC:  POP.W           {R8-R11}
FE4C0:  POP             {R4-R7,PC}
