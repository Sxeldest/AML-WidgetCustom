; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_UI_sendScoreboardClick
; Address            : 0x6A160 - 0x6A310
; =========================================================

6A160:  PUSH            {R4-R7,LR}
6A162:  ADD             R7, SP, #0xC
6A164:  PUSH.W          {R8}
6A168:  SUB             SP, SP, #0x138
6A16A:  LDR             R0, =(byte_1A437C - 0x6A174)
6A16C:  MOV             R8, R2
6A16E:  LDR             R1, =(__stack_chk_guard_ptr - 0x6A176)
6A170:  ADD             R0, PC; byte_1A437C
6A172:  ADD             R1, PC; __stack_chk_guard_ptr
6A174:  LDR             R1, [R1]; __stack_chk_guard
6A176:  LDR             R1, [R1]
6A178:  STR             R1, [SP,#0x148+var_14]
6A17A:  LDRB            R0, [R0]
6A17C:  DMB.W           ISH
6A180:  LDR             R5, =(unk_1A4340 - 0x6A186)
6A182:  ADD             R5, PC; unk_1A4340
6A184:  LSLS            R0, R0, #0x1F
6A186:  BEQ.W           loc_6A2C2
6A18A:  LDRB.W          R0, [R5,#(byte_1A4378 - 0x1A4340)]
6A18E:  CMP             R0, #0
6A190:  BEQ             loc_6A224
6A192:  VMOV.I8         Q8, #0x5A ; 'Z'
6A196:  MOVS            R0, #0x33 ; '3'
6A198:  MOV             R1, R5
6A19A:  MOVS            R3, #0x22 ; '"'
6A19C:  VLD1.8          {D18-D19}, [R1@128],R0
6A1A0:  MOV             R0, R5
6A1A2:  VEOR            Q9, Q9, Q8
6A1A6:  MOVS            R4, #0x11
6A1A8:  LDRB.W          R6, [R5,#(byte_1A4375 - 0x1A4340)]
6A1AC:  LDRB.W          R12, [R5,#(byte_1A4376 - 0x1A4340)]
6A1B0:  VST1.8          {D18-D19}, [R0@128]!
6A1B4:  EOR.W           R6, R6, #0x5A ; 'Z'
6A1B8:  MOV             R2, R0
6A1BA:  STRB.W          R6, [R5,#(byte_1A4375 - 0x1A4340)]
6A1BE:  VLD1.8          {D18-D19}, [R2@128],R3
6A1C2:  VEOR            Q9, Q9, Q8
6A1C6:  VST1.8          {D18-D19}, [R0@128]!
6A1CA:  MOV             R3, R0
6A1CC:  VLD1.8          {D18-D19}, [R3@128],R4
6A1D0:  VEOR            Q8, Q9, Q8
6A1D4:  LDRB.W          R4, [R5,#(byte_1A4374 - 0x1A4340)]
6A1D8:  EOR.W           R4, R4, #0x5A ; 'Z'
6A1DC:  STRB.W          R4, [R5,#(byte_1A4374 - 0x1A4340)]
6A1E0:  LDRB            R4, [R1]
6A1E2:  VST1.8          {D16-D17}, [R0@128]!
6A1E6:  EOR.W           R6, R4, #0x5A ; 'Z'
6A1EA:  STRB            R6, [R1]
6A1EC:  LDRB            R1, [R2]
6A1EE:  LDRB            R6, [R3]
6A1F0:  EOR.W           R1, R1, #0x5A ; 'Z'
6A1F4:  STRB            R1, [R2]
6A1F6:  EOR.W           R1, R6, #0x5A ; 'Z'
6A1FA:  STRB            R1, [R3]
6A1FC:  LDRB.W          R1, [R5,#(byte_1A4377 - 0x1A4340)]
6A200:  EOR.W           R3, R12, #0x5A ; 'Z'
6A204:  LDRB.W          R2, [R5,#(byte_1A4378 - 0x1A4340)]
6A208:  STRB.W          R3, [R5,#(byte_1A4376 - 0x1A4340)]
6A20C:  EOR.W           R1, R1, #0x5A ; 'Z'
6A210:  LDRB            R3, [R0]
6A212:  STRB.W          R1, [R5,#(byte_1A4377 - 0x1A4340)]
6A216:  EOR.W           R1, R2, #0x5A ; 'Z'
6A21A:  STRB.W          R1, [R5,#(byte_1A4378 - 0x1A4340)]
6A21E:  EOR.W           R1, R3, #0x5A ; 'Z'
6A222:  STRB            R1, [R0]
6A224:  LDR             R1, =(aSampOrig - 0x6A230); "SAMP_ORIG" ...
6A226:  MOVS            R0, #4; prio
6A228:  LDR             R2, =(unk_1A4340 - 0x6A232)
6A22A:  MOV             R3, R8
6A22C:  ADD             R1, PC; "SAMP_ORIG"
6A22E:  ADD             R2, PC; unk_1A4340 ; fmt
6A230:  BLX             __android_log_print
6A234:  ADD             R0, SP, #0x148+var_128
6A236:  BL              sub_86B90
6A23A:  STR.W           R8, [SP,#0x148+var_12C]
6A23E:  ADD             R1, SP, #0x148+var_12C
6A240:  MOVS            R2, #0x20 ; ' '
6A242:  MOVS            R3, #1
6A244:  BL              sub_86D52
6A248:  MOVS            R4, #0
6A24A:  STR             R4, [SP,#0x148+var_12C]
6A24C:  ADD             R0, SP, #0x148+var_128
6A24E:  ADD             R1, SP, #0x148+var_12C
6A250:  MOVS            R2, #0x20 ; ' '
6A252:  MOVS            R3, #1
6A254:  BL              sub_86D52
6A258:  LDR             R0, =(off_114AD8 - 0x6A25E)
6A25A:  ADD             R0, PC; off_114AD8
6A25C:  LDR             R0, [R0]; dword_1A4434
6A25E:  LDR             R0, [R0]
6A260:  LDR.W           R0, [R0,#0x210]
6A264:  LDR             R1, =(off_114BB0 - 0x6A26A)
6A266:  ADD             R1, PC; off_114BB0
6A268:  LDR             R2, [R0]
6A26A:  LDR             R1, [R1]; unk_116E2C
6A26C:  LDR             R6, [R2,#0x6C]
6A26E:  MOVW            R3, #0xFFFF
6A272:  ADD             R2, SP, #0x148+var_128
6A274:  MOV.W           R12, #0xFFFFFFFF
6A278:  MOVS            R5, #9
6A27A:  STRD.W          R3, R3, [SP,#0x148+var_138]
6A27E:  MOVS            R3, #1
6A280:  STRD.W          R5, R4, [SP,#0x148+var_148]
6A284:  STRD.W          R4, R12, [SP,#0x148+var_140]
6A288:  STR             R4, [SP,#0x148+var_130]
6A28A:  BLX             R6
6A28C:  LDR             R0, =(dword_1A41D8 - 0x6A292)
6A28E:  ADD             R0, PC; dword_1A41D8
6A290:  LDR             R0, [R0]
6A292:  MOVS            R1, #0
6A294:  MOVS            R4, #0
6A296:  BL              sub_6937C
6A29A:  LDR             R0, =(off_114B4C - 0x6A2A0)
6A29C:  ADD             R0, PC; off_114B4C
6A29E:  LDR             R0, [R0]; dword_1A44CC
6A2A0:  STR             R4, [R0]
6A2A2:  ADD             R0, SP, #0x148+var_128
6A2A4:  BL              sub_86BF8
6A2A8:  LDR             R0, [SP,#0x148+var_14]
6A2AA:  LDR             R1, =(__stack_chk_guard_ptr - 0x6A2B0)
6A2AC:  ADD             R1, PC; __stack_chk_guard_ptr
6A2AE:  LDR             R1, [R1]; __stack_chk_guard
6A2B0:  LDR             R1, [R1]
6A2B2:  CMP             R1, R0
6A2B4:  ITTT EQ
6A2B6:  ADDEQ           SP, SP, #0x138
6A2B8:  POPEQ.W         {R8}
6A2BC:  POPEQ           {R4-R7,PC}
6A2BE:  BLX             __stack_chk_fail
6A2C2:  LDR             R0, =(byte_1A437C - 0x6A2C8)
6A2C4:  ADD             R0, PC; byte_1A437C ; __guard *
6A2C6:  BLX             j___cxa_guard_acquire
6A2CA:  CMP             R0, #0
6A2CC:  BEQ.W           loc_6A18A
6A2D0:  LDR             R0, =(unk_50E50 - 0x6A2DA)
6A2D2:  MOVS            R1, #9
6A2D4:  MOV             R3, R5
6A2D6:  ADD             R0, PC; unk_50E50
6A2D8:  VLD1.64         {D16-D17}, [R0]!
6A2DC:  VLD1.64         {D18-D19}, [R0]!
6A2E0:  VLD1.64         {D20-D21}, [R0],R1
6A2E4:  VLD1.8          {D22-D23}, [R0]
6A2E8:  LDR             R0, =(sub_6AE0E+1 - 0x6A2F4)
6A2EA:  LDR             R2, =(off_110560 - 0x6A2F6)
6A2EC:  VST1.64         {D16-D17}, [R3@128]!
6A2F0:  ADD             R0, PC; sub_6AE0E ; lpfunc
6A2F2:  ADD             R2, PC; off_110560 ; lpdso_handle
6A2F4:  VST1.64         {D18-D19}, [R3@128]!
6A2F8:  VST1.64         {D20-D21}, [R3@128],R1
6A2FC:  MOV             R1, R5; obj
6A2FE:  VST1.8          {D22-D23}, [R3]
6A302:  BLX             __cxa_atexit
6A306:  LDR             R0, =(byte_1A437C - 0x6A30C)
6A308:  ADD             R0, PC; byte_1A437C ; __guard *
6A30A:  BLX             j___cxa_guard_release
6A30E:  B               loc_6A18A
