; =========================================================
; Game Engine Function: sub_99784
; Address            : 0x99784 - 0x997EC
; =========================================================

99784:  PUSH            {R4-R7,LR}
99786:  ADD             R7, SP, #0xC
99788:  PUSH.W          {R8}
9978C:  SUB             SP, SP, #8
9978E:  LDR             R4, =(dword_1ACF68 - 0x9979E)
99790:  MOVW            R5, #0x19AC
99794:  MOVS            R2, #0
99796:  MOV.W           R8, #0
9979A:  ADD             R4, PC; dword_1ACF68
9979C:  LDR             R0, [R4]
9979E:  LDR             R0, [R0,R5]
997A0:  LDR.W           R1, [R0,#0x27C]
997A4:  LDR.W           R6, [R0,#0x1C0]
997A8:  ADD.W           R0, R1, #0x64 ; 'd'
997AC:  BL              sub_9E5DE
997B0:  LDR             R0, [R4]
997B2:  MOVS            R1, #1
997B4:  ADDS            R6, #0x2C ; ','
997B6:  LDR             R4, [R0,R5]
997B8:  LDR.W           R0, [R4,#0x27C]; int
997BC:  STRB.W          R1, [R4,#0x7C]
997C0:  LDM             R6, {R1-R3,R6}; int
997C2:  STRD.W          R6, R8, [SP,#0x18+var_18]; float
997C6:  BL              sub_9BFD8
997CA:  LDR.W           R0, [R4,#0x27C]
997CE:  LDR             R1, [R0,#0x40]
997D0:  LDR             R0, [R0,#0x48]
997D2:  ADD.W           R0, R0, R1,LSL#4
997D6:  SUBS            R0, #0x10
997D8:  VLD1.32         {D16-D17}, [R0]
997DC:  ADD.W           R0, R4, #0x210
997E0:  VST1.32         {D16-D17}, [R0]
997E4:  ADD             SP, SP, #8
997E6:  POP.W           {R8}
997EA:  POP             {R4-R7,PC}
