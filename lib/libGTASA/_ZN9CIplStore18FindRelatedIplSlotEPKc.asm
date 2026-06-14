; =========================================================
; Game Engine Function: _ZN9CIplStore18FindRelatedIplSlotEPKc
; Address            : 0x2811D8 - 0x2812CE
; =========================================================

2811D8:  PUSH            {R4-R7,LR}
2811DA:  ADD             R7, SP, #0xC
2811DC:  PUSH.W          {R8-R10}
2811E0:  SUB             SP, SP, #0x28
2811E2:  LDR             R1, =(__stack_chk_guard_ptr - 0x2811E8)
2811E4:  ADD             R1, PC; __stack_chk_guard_ptr
2811E6:  LDR             R1, [R1]; __stack_chk_guard
2811E8:  LDR             R1, [R1]
2811EA:  STR             R1, [SP,#0x40+var_1C]
2811EC:  MOVS            R1, #0x5C ; '\'; int
2811EE:  BLX             strrchr
2811F2:  MOV             R4, R0
2811F4:  CMP             R4, #0
2811F6:  BEQ             loc_2812AE
2811F8:  MOV             R0, R4; s
2811FA:  MOVS            R1, #0x2E ; '.'; c
2811FC:  BLX             strchr
281200:  CMP             R0, #0
281202:  BEQ             loc_2812AE
281204:  ADDS            R5, R4, #1
281206:  CMP             R5, R0
281208:  BEQ             loc_281254
28120A:  MVNS            R2, R4
28120C:  ADDS            R1, R0, R2
28120E:  CMP             R1, #0x10
281210:  BCC             loc_28123E
281212:  BIC.W           R4, R1, #0xF
281216:  CBZ             R4, loc_28123E
281218:  ADD             R3, SP, #0x40+var_3C
28121A:  CMP             R3, R0
28121C:  ITTT CC
28121E:  ADDCC           R2, R3
281220:  ADDCC           R2, R0
281222:  CMPCC           R5, R2
281224:  BCC             loc_28123E
281226:  ADDS            R3, R5, R4
281228:  ADD             R6, SP, #0x40+var_3C
28122A:  MOV             R2, R4
28122C:  VLD1.8          {D16-D17}, [R5]!
281230:  SUBS            R2, #0x10
281232:  VST1.8          {D16-D17}, [R6]!
281236:  BNE             loc_28122C
281238:  CMP             R4, R1
28123A:  BNE             loc_281242
28123C:  B               loc_281256
28123E:  MOVS            R4, #0
281240:  MOV             R3, R5
281242:  ADD             R2, SP, #0x40+var_3C
281244:  ADD             R2, R4
281246:  LDRB.W          R6, [R3],#1
28124A:  STRB.W          R6, [R2],#1
28124E:  CMP             R0, R3
281250:  BNE             loc_281246
281252:  B               loc_281256
281254:  MOVS            R1, #0
281256:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281266)
281258:  MOVW            R3, #0x735F
28125C:  ADD             R2, SP, #0x40+var_3C
28125E:  MOVT            R3, #0x7274
281262:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
281264:  STR             R3, [R2,R1]
281266:  ADD             R1, R2
281268:  MOVW            R2, #:lower16:unk_6D6165
28126C:  LDR             R0, [R0]; CIplStore::ms_pPool ...
28126E:  MOVT            R2, #:upper16:unk_6D6165
281272:  STR             R2, [R1,#4]
281274:  LDR.W           R9, [R0]; CIplStore::ms_pPool
281278:  LDR.W           R10, [R9,#8]
28127C:  CMP.W           R10, #1
281280:  BLT             loc_2812AE
281282:  LDR.W           R6, [R9,#4]
281286:  ADD.W           R8, SP, #0x40+var_3C
28128A:  MOVS            R4, #0
28128C:  MOVS            R5, #0x10
28128E:  LDRSB           R0, [R6,R4]
281290:  CMP             R0, #0
281292:  BLT             loc_2812A6
281294:  LDR.W           R0, [R9]
281298:  ADDS            R1, R0, R5; char *
28129A:  CMP             R1, #0x10
28129C:  BEQ             loc_2812A6
28129E:  MOV             R0, R8; char *
2812A0:  BLX             strcasecmp
2812A4:  CBZ             R0, loc_2812B2
2812A6:  ADDS            R4, #1
2812A8:  ADDS            R5, #0x34 ; '4'
2812AA:  CMP             R4, R10
2812AC:  BLT             loc_28128E
2812AE:  MOV.W           R4, #0xFFFFFFFF
2812B2:  LDR             R0, =(__stack_chk_guard_ptr - 0x2812BA)
2812B4:  LDR             R1, [SP,#0x40+var_1C]
2812B6:  ADD             R0, PC; __stack_chk_guard_ptr
2812B8:  LDR             R0, [R0]; __stack_chk_guard
2812BA:  LDR             R0, [R0]
2812BC:  SUBS            R0, R0, R1
2812BE:  ITTTT EQ
2812C0:  MOVEQ           R0, R4
2812C2:  ADDEQ           SP, SP, #0x28 ; '('
2812C4:  POPEQ.W         {R8-R10}
2812C8:  POPEQ           {R4-R7,PC}
2812CA:  BLX             __stack_chk_fail
