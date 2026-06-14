; =========================================================
; Game Engine Function: sub_13C4F8
; Address            : 0x13C4F8 - 0x13C568
; =========================================================

13C4F8:  PUSH            {R4,R5,R7,LR}
13C4FA:  ADD             R7, SP, #8
13C4FC:  SUB             SP, SP, #0x28; float
13C4FE:  MOV             R4, R0
13C500:  BL              sub_13DD5C
13C504:  LDR             R0, =(_ZTV12MsgBoxWidget - 0x13C50A); `vtable for'MsgBoxWidget ...
13C506:  ADD             R0, PC; `vtable for'MsgBoxWidget
13C508:  ADDS            R0, #8
13C50A:  STR             R0, [R4]
13C50C:  MOVS            R0, #0x78 ; 'x'; unsigned int
13C50E:  BLX             j__Znwj; operator new(uint)
13C512:  LDR             R1, =(byte_8F794 - 0x13C51A)
13C514:  MOV             R5, R0
13C516:  ADD             R1, PC; byte_8F794 ; s
13C518:  ADD             R0, SP, #0x30+var_14; int
13C51A:  BL              sub_DC6DC
13C51E:  LDR             R0, =(off_234980 - 0x13C52E)
13C520:  VMOV.F32        S0, #0.5
13C524:  VMOV.F32        Q8, #1.0
13C528:  ADD             R2, SP, #0x30+var_28; int
13C52A:  ADD             R0, PC; off_234980
13C52C:  LDR             R0, [R0]; dword_238EC0
13C52E:  VST1.64         {D16-D17}, [R2]
13C532:  VLDR            S2, [R0]
13C536:  VMUL.F32        S0, S2, S0
13C53A:  ADD             R1, SP, #0x30+var_14; int
13C53C:  MOV             R0, R5; int
13C53E:  MOVS            R3, #0; int
13C540:  VSTR            S0, [SP,#0x30+var_30]
13C544:  BL              sub_13D3DC
13C548:  LDRB.W          R0, [SP,#0x30+var_14]
13C54C:  STR             R5, [R4,#0x60]
13C54E:  LSLS            R0, R0, #0x1F
13C550:  BEQ             loc_13C55A
13C552:  LDR             R0, [SP,#0x30+var_C]; void *
13C554:  BLX             j__ZdlPv; operator delete(void *)
13C558:  LDR             R5, [R4,#0x60]
13C55A:  MOV             R0, R4
13C55C:  MOV             R1, R5
13C55E:  BL              sub_12BDF6
13C562:  MOV             R0, R4
13C564:  ADD             SP, SP, #0x28 ; '('
13C566:  POP             {R4,R5,R7,PC}
