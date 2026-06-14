; =========================================================
; Game Engine Function: INT123_synth_1to1_real_mono
; Address            : 0x2381A0 - 0x2382F2
; =========================================================

2381A0:  PUSH            {R4-R7,LR}
2381A2:  ADD             R7, SP, #0xC
2381A4:  PUSH.W          {R8-R10}
2381A8:  SUB.W           SP, SP, #0x200
2381AC:  MOV             R4, R1
2381AE:  MOVW            R1, #0x919C
2381B2:  LDR             R5, [R4,R1]
2381B4:  MOVW            R8, #0xB2A8
2381B8:  MOVW            R10, #0xB2A0
2381BC:  MOV             R1, SP
2381BE:  LDR.W           R9, [R4,R8]
2381C2:  LDR.W           R6, [R4,R10]
2381C6:  STR.W           R1, [R4,R10]
2381CA:  MOVS            R1, #0
2381CC:  STR.W           R1, [R4,R8]
2381D0:  MOVS            R1, #0
2381D2:  MOV             R2, R4
2381D4:  MOVS            R3, #0
2381D6:  BLX             R5
2381D8:  STR.W           R6, [R4,R10]
2381DC:  ADD.W           R1, R6, R9
2381E0:  VLDR            D16, [SP,#0x218+var_218]
2381E4:  VSTR            D16, [R1]
2381E8:  VLDR            D16, [SP,#0x218+var_208]
2381EC:  VSTR            D16, [R1,#8]
2381F0:  VLDR            D16, [SP,#0x218+var_1F8]
2381F4:  VSTR            D16, [R1,#0x10]
2381F8:  VLDR            D16, [SP,#0x218+var_1E8]
2381FC:  VSTR            D16, [R1,#0x18]
238200:  VLDR            D16, [SP,#0x218+var_1D8]
238204:  VSTR            D16, [R1,#0x20]
238208:  VLDR            D16, [SP,#0x218+var_1C8]
23820C:  VSTR            D16, [R1,#0x28]
238210:  VLDR            D16, [SP,#0x218+var_1B8]
238214:  VSTR            D16, [R1,#0x30]
238218:  VLDR            D16, [SP,#0x218+var_1A8]
23821C:  VSTR            D16, [R1,#0x38]
238220:  VLDR            D16, [SP,#0x218+var_198]
238224:  VSTR            D16, [R1,#0x40]
238228:  VLDR            D16, [SP,#0x218+var_188]
23822C:  VSTR            D16, [R1,#0x48]
238230:  VLDR            D16, [SP,#0x218+var_178]
238234:  VSTR            D16, [R1,#0x50]
238238:  VLDR            D16, [SP,#0x218+var_168]
23823C:  VSTR            D16, [R1,#0x58]
238240:  VLDR            D16, [SP,#0x218+var_158]
238244:  VSTR            D16, [R1,#0x60]
238248:  VLDR            D16, [SP,#0x218+var_148]
23824C:  VSTR            D16, [R1,#0x68]
238250:  VLDR            D16, [SP,#0x218+var_138]
238254:  VSTR            D16, [R1,#0x70]
238258:  VLDR            D16, [SP,#0x218+var_128]
23825C:  VSTR            D16, [R1,#0x78]
238260:  VLDR            D16, [SP,#0x218+var_118]
238264:  VSTR            D16, [R1,#0x80]
238268:  VLDR            D16, [SP,#0x218+var_108]
23826C:  VSTR            D16, [R1,#0x88]
238270:  VLDR            D16, [SP,#0x218+var_F8]
238274:  VSTR            D16, [R1,#0x90]
238278:  VLDR            D16, [SP,#0x218+var_E8]
23827C:  VSTR            D16, [R1,#0x98]
238280:  VLDR            D16, [SP,#0x218+var_D8]
238284:  VSTR            D16, [R1,#0xA0]
238288:  VLDR            D16, [SP,#0x218+var_C8]
23828C:  VSTR            D16, [R1,#0xA8]
238290:  VLDR            D16, [SP,#0x218+var_B8]
238294:  VSTR            D16, [R1,#0xB0]
238298:  VLDR            D16, [SP,#0x218+var_A8]
23829C:  VSTR            D16, [R1,#0xB8]
2382A0:  VLDR            D16, [SP,#0x218+var_98]
2382A4:  VSTR            D16, [R1,#0xC0]
2382A8:  VLDR            D16, [SP,#0x218+var_88]
2382AC:  VSTR            D16, [R1,#0xC8]
2382B0:  VLDR            D16, [SP,#0x218+var_78]
2382B4:  VSTR            D16, [R1,#0xD0]
2382B8:  VLDR            D16, [SP,#0x218+var_68]
2382BC:  VSTR            D16, [R1,#0xD8]
2382C0:  VLDR            D16, [SP,#0x218+var_58]
2382C4:  VSTR            D16, [R1,#0xE0]
2382C8:  VLDR            D16, [SP,#0x218+var_48]
2382CC:  VSTR            D16, [R1,#0xE8]
2382D0:  VLDR            D16, [SP,#0x218+var_38]
2382D4:  VSTR            D16, [R1,#0xF0]
2382D8:  VLDR            D16, [SP,#0x218+var_28]
2382DC:  VSTR            D16, [R1,#0xF8]
2382E0:  ADD.W           R1, R9, #0x100
2382E4:  STR.W           R1, [R4,R8]
2382E8:  ADD.W           SP, SP, #0x200
2382EC:  POP.W           {R8-R10}
2382F0:  POP             {R4-R7,PC}
