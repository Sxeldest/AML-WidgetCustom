; =========================================================
; Game Engine Function: sub_F34B0
; Address            : 0xF34B0 - 0xF356E
; =========================================================

F34B0:  PUSH            {R4-R7,LR}
F34B2:  ADD             R7, SP, #0xC
F34B4:  PUSH.W          {R8-R10}
F34B8:  SUB             SP, SP, #0x18
F34BA:  LDR             R0, =(off_23FFE0 - 0xF34C0)
F34BC:  ADD             R0, PC; off_23FFE0
F34BE:  LDR             R0, [R0]
F34C0:  BLX             R0
F34C2:  LDR             R0, =(aMobile - 0xF34C8); "mobile" ...
F34C4:  ADD             R0, PC; "mobile"
F34C6:  BL              sub_163A6C
F34CA:  MOV             R8, R0
F34CC:  BL              sub_16398C
F34D0:  LDR             R4, =(dword_23FCE0 - 0xF34D6)
F34D2:  ADD             R4, PC; dword_23FCE0
F34D4:  LDR             R0, [R4]
F34D6:  BL              sub_163BFA
F34DA:  ADD             R5, SP, #0x30+var_28
F34DC:  VLD1.32         {D16-D17}, [R0]
F34E0:  MOVS            R0, #8
F34E2:  MOV             R1, R5
F34E4:  VLDR            D18, =-2.15
F34E8:  VST1.64         {D16-D17}, [R1],R0
F34EC:  MOVS            R0, #0xA8; unsigned int
F34EE:  VLDR            S0, [R1]
F34F2:  VLDR            S2, [SP,#0x30+var_28]
F34F6:  VCVT.F64.F32    D16, S0
F34FA:  VCVT.F64.F32    D17, S2
F34FE:  VMLA.F64        D17, D16, D18
F3502:  VCVT.F32.F64    S0, D17
F3506:  VSTR            S0, [SP,#0x30+var_28]
F350A:  BLX             j__Znwj; operator new(uint)
F350E:  LDR             R1, =(aSeatcar - 0xF3516); "seatcar" ...
F3510:  MOV             R6, R0
F3512:  ADD             R1, PC; "seatcar"
F3514:  MOV.W           R9, #1
F3518:  MOV.W           R10, #0x100
F351C:  MOV             R2, R5
F351E:  MOVS            R3, #1
F3520:  STRD.W          R10, R9, [SP,#0x30+var_30]
F3524:  BL              sub_F5F74
F3528:  MOVS            R0, #0xAC; unsigned int
F352A:  STR.W           R6, [R4,#(dword_23FFD8 - 0x23FCE0)]
F352E:  BLX             j__Znaj; operator new[](uint)
F3532:  MOV             R5, R0
F3534:  LDR             R0, =(off_23494C - 0xF3540)
F3536:  MOVW            R2, #:lower16:unk_2B4105
F353A:  MOVS            R3, #1
F353C:  ADD             R0, PC; off_23494C
F353E:  MOVT            R2, #:upper16:unk_2B4105
F3542:  LDR             R0, [R0]; dword_23DF24
F3544:  LDR             R0, [R0]
F3546:  LDR             R1, =(aGundoor - 0xF3550); "gundoor" ...
F3548:  ADDS            R6, R0, R2
F354A:  ADD             R2, SP, #0x30+var_28
F354C:  ADD             R1, PC; "gundoor"
F354E:  MOV             R0, R5
F3550:  STRD.W          R10, R9, [SP,#0x30+var_30]
F3554:  BLX             R6
F3556:  MOVS            R0, #0
F3558:  STR.W           R5, [R4,#(dword_23FFDC - 0x23FCE0)]
F355C:  STR.W           R0, [R5,#0xA8]
F3560:  MOV             R0, R8
F3562:  BL              sub_1639BC
F3566:  ADD             SP, SP, #0x18
F3568:  POP.W           {R8-R10}
F356C:  POP             {R4-R7,PC}
