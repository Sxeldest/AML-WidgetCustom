; =========================================================
; Game Engine Function: INT123_synth_2to1_real_mono
; Address            : 0x238828 - 0x2388F6
; =========================================================

238828:  PUSH            {R4-R7,LR}
23882A:  ADD             R7, SP, #0xC
23882C:  PUSH.W          {R8-R10}
238830:  SUB             SP, SP, #0x100
238832:  MOV             R4, R1
238834:  MOVW            R1, #0x91AC
238838:  LDR             R5, [R4,R1]
23883A:  MOVW            R8, #0xB2A8
23883E:  MOVW            R10, #0xB2A0
238842:  MOV             R1, SP
238844:  LDR.W           R9, [R4,R8]
238848:  LDR.W           R6, [R4,R10]
23884C:  STR.W           R1, [R4,R10]
238850:  MOVS            R1, #0
238852:  STR.W           R1, [R4,R8]
238856:  MOVS            R1, #0
238858:  MOV             R2, R4
23885A:  MOVS            R3, #0
23885C:  BLX             R5
23885E:  STR.W           R6, [R4,R10]
238862:  ADD.W           R1, R6, R9
238866:  VLDR            D16, [SP,#0x118+var_118]
23886A:  VSTR            D16, [R1]
23886E:  VLDR            D16, [SP,#0x118+var_108]
238872:  VSTR            D16, [R1,#8]
238876:  VLDR            D16, [SP,#0x118+var_F8]
23887A:  VSTR            D16, [R1,#0x10]
23887E:  VLDR            D16, [SP,#0x118+var_E8]
238882:  VSTR            D16, [R1,#0x18]
238886:  VLDR            D16, [SP,#0x118+var_D8]
23888A:  VSTR            D16, [R1,#0x20]
23888E:  VLDR            D16, [SP,#0x118+var_C8]
238892:  VSTR            D16, [R1,#0x28]
238896:  VLDR            D16, [SP,#0x118+var_B8]
23889A:  VSTR            D16, [R1,#0x30]
23889E:  VLDR            D16, [SP,#0x118+var_A8]
2388A2:  VSTR            D16, [R1,#0x38]
2388A6:  VLDR            D16, [SP,#0x118+var_98]
2388AA:  VSTR            D16, [R1,#0x40]
2388AE:  VLDR            D16, [SP,#0x118+var_88]
2388B2:  VSTR            D16, [R1,#0x48]
2388B6:  VLDR            D16, [SP,#0x118+var_78]
2388BA:  VSTR            D16, [R1,#0x50]
2388BE:  VLDR            D16, [SP,#0x118+var_68]
2388C2:  VSTR            D16, [R1,#0x58]
2388C6:  VLDR            D16, [SP,#0x118+var_58]
2388CA:  VSTR            D16, [R1,#0x60]
2388CE:  VLDR            D16, [SP,#0x118+var_48]
2388D2:  VSTR            D16, [R1,#0x68]
2388D6:  VLDR            D16, [SP,#0x118+var_38]
2388DA:  VSTR            D16, [R1,#0x70]
2388DE:  VLDR            D16, [SP,#0x118+var_28]
2388E2:  VSTR            D16, [R1,#0x78]
2388E6:  ADD.W           R1, R9, #0x80
2388EA:  STR.W           R1, [R4,R8]
2388EE:  ADD             SP, SP, #0x100
2388F0:  POP.W           {R8-R10}
2388F4:  POP             {R4-R7,PC}
