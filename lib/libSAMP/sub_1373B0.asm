; =========================================================
; Game Engine Function: sub_1373B0
; Address            : 0x1373B0 - 0x137470
; =========================================================

1373B0:  PUSH            {R4-R7,LR}
1373B2:  ADD             R7, SP, #0xC
1373B4:  PUSH.W          {R8}
1373B8:  SUB             SP, SP, #0x58
1373BA:  MOV             R4, R0
1373BC:  BL              sub_12BC78
1373C0:  LDR             R0, =(_ZTV12SplashScreen - 0x1373C6); `vtable for'SplashScreen ...
1373C2:  ADD             R0, PC; `vtable for'SplashScreen
1373C4:  ADDS            R0, #8
1373C6:  STR             R0, [R4]
1373C8:  MOVS            R0, #0x58 ; 'X'; unsigned int
1373CA:  BLX             j__Znwj; operator new(uint)
1373CE:  LDR             R1, =(aSamp - 0x1373D6); "samp" ...
1373D0:  MOV             R5, R0
1373D2:  ADD             R1, PC; "samp"
1373D4:  ADD             R0, SP, #0x68+var_20; int
1373D6:  BL              sub_DC6DC
1373DA:  LDR             R1, =(aArzLogo - 0x1373E0); "arz_logo" ...
1373DC:  ADD             R1, PC; "arz_logo"
1373DE:  ADD             R0, SP, #0x68+var_30; int
1373E0:  BL              sub_DC6DC
1373E4:  ADD.W           R8, SP, #0x68+var_20
1373E8:  ADD             R6, SP, #0x68+var_30
1373EA:  MOV             R0, R5
1373EC:  MOV             R1, R8
1373EE:  MOV             R2, R6
1373F0:  BL              sub_13D2EC
1373F4:  LDRB.W          R0, [SP,#0x68+var_30]
1373F8:  STR             R5, [R4,#0x54]
1373FA:  LSLS            R0, R0, #0x1F
1373FC:  ITT NE
1373FE:  LDRNE           R0, [SP,#0x68+var_28]; void *
137400:  BLXNE           j__ZdlPv; operator delete(void *)
137404:  LDRB.W          R0, [SP,#0x68+var_20]
137408:  LSLS            R0, R0, #0x1F
13740A:  ITT NE
13740C:  LDRNE           R0, [SP,#0x68+var_18]; void *
13740E:  BLXNE           j__ZdlPv; operator delete(void *)
137412:  LDR             R1, [R4,#0x54]
137414:  MOV             R0, R4
137416:  BL              sub_12BDF6
13741A:  MOVS            R0, #0xC0; unsigned int
13741C:  BLX             j__Znwj; operator new(uint)
137420:  MOV             R5, R0
137422:  ADR             R0, dword_1374A8
137424:  VLD1.64         {D16-D17}, [R0]
137428:  ADR             R0, dword_1374B8
13742A:  ADD             R1, SP, #0x68+var_60
13742C:  ADD             R3, SP, #0x68+var_40
13742E:  VLD1.64         {D18-D19}, [R0]
137432:  ADR             R0, dword_1374C8
137434:  VLD1.64         {D20-D21}, [R0]
137438:  ADD             R0, SP, #0x68+var_50
13743A:  VST1.64         {D20-D21}, [R8]
13743E:  VST1.64         {D16-D17}, [R6]
137442:  VST1.64         {D18-D19}, [R3]
137446:  VST1.64         {D18-D19}, [R0]
13744A:  VST1.64         {D16-D17}, [R1]
13744E:  STRD.W          R0, R1, [SP,#0x68+var_68]
137452:  MOV             R0, R5
137454:  MOV             R1, R8
137456:  MOV             R2, R6
137458:  BL              sub_13DB74
13745C:  STR             R5, [R4,#0x58]
13745E:  MOV             R0, R4
137460:  MOV             R1, R5
137462:  BL              sub_12BDF6
137466:  MOV             R0, R4
137468:  ADD             SP, SP, #0x58 ; 'X'
13746A:  POP.W           {R8}
13746E:  POP             {R4-R7,PC}
