; =========================================================
; Game Engine Function: INT123_synth_1to1_real_m2s
; Address            : 0x2382F2 - 0x23841E
; =========================================================

2382F2:  PUSH            {R4-R7,LR}
2382F4:  ADD             R7, SP, #0xC
2382F6:  PUSH.W          {R11}
2382FA:  MOV             R4, R1
2382FC:  MOVW            R1, #0xB2A0
238300:  LDR             R6, [R4,R1]
238302:  MOVW            R1, #0x919C
238306:  LDR             R5, [R4,R1]
238308:  MOVS            R1, #0
23830A:  MOV             R2, R4
23830C:  MOVS            R3, #1
23830E:  BLX             R5
238310:  MOVW            R1, #0xB2A8
238314:  LDR             R1, [R4,R1]
238316:  ADD             R1, R6
238318:  VLDR            D16, [R1,#-0x200]
23831C:  VLDR            D17, [R1,#-0x1F0]
238320:  VLDR            D18, [R1,#-0x1E0]
238324:  VLDR            D19, [R1,#-0x1D0]
238328:  VLDR            D20, [R1,#-0x1C0]
23832C:  VLDR            D21, [R1,#-0x1B0]
238330:  VLDR            D22, [R1,#-0x1A0]
238334:  VLDR            D23, [R1,#-0x190]
238338:  VLDR            D24, [R1,#-0x180]
23833C:  VLDR            D25, [R1,#-0x170]
238340:  VLDR            D26, [R1,#-0x160]
238344:  VLDR            D27, [R1,#-0x150]
238348:  VLDR            D28, [R1,#-0x140]
23834C:  VLDR            D29, [R1,#-0x130]
238350:  VLDR            D30, [R1,#-0x120]
238354:  VLDR            D31, [R1,#-0x110]
238358:  VLDR            D0, [R1,#-0x100]
23835C:  VLDR            D1, [R1,#-0xF0]
238360:  VLDR            D2, [R1,#-0xE0]
238364:  VLDR            D3, [R1,#-0xD0]
238368:  VLDR            D4, [R1,#-0xC0]
23836C:  VSTR            D16, [R1,#-0x1F8]
238370:  VLDR            D16, [R1,#-0xB0]
238374:  VSTR            D17, [R1,#-0x1E8]
238378:  VLDR            D17, [R1,#-0xA0]
23837C:  VSTR            D18, [R1,#-0x1D8]
238380:  VLDR            D18, [R1,#-0x90]
238384:  VSTR            D19, [R1,#-0x1C8]
238388:  VLDR            D19, [R1,#-0x80]
23838C:  VSTR            D20, [R1,#-0x1B8]
238390:  VLDR            D20, [R1,#-0x70]
238394:  VSTR            D21, [R1,#-0x1A8]
238398:  VLDR            D21, [R1,#-0x60]
23839C:  VSTR            D22, [R1,#-0x198]
2383A0:  VLDR            D22, [R1,#-0x50]
2383A4:  VSTR            D23, [R1,#-0x188]
2383A8:  VSTR            D24, [R1,#-0x178]
2383AC:  VSTR            D25, [R1,#-0x168]
2383B0:  VSTR            D26, [R1,#-0x158]
2383B4:  VLDR            D23, [R1,#-0x10]
2383B8:  VLDR            D24, [R1,#-0x20]
2383BC:  VLDR            D25, [R1,#-0x30]
2383C0:  VLDR            D26, [R1,#-0x40]
2383C4:  VSTR            D27, [R1,#-0x148]
2383C8:  VSTR            D28, [R1,#-0x138]
2383CC:  VSTR            D29, [R1,#-0x128]
2383D0:  VSTR            D30, [R1,#-0x118]
2383D4:  VSTR            D31, [R1,#-0x108]
2383D8:  VSTR            D0, [R1,#-0xF8]
2383DC:  VSTR            D1, [R1,#-0xE8]
2383E0:  VSTR            D2, [R1,#-0xD8]
2383E4:  VSTR            D3, [R1,#-0xC8]
2383E8:  VSTR            D4, [R1,#-0xB8]
2383EC:  VSTR            D16, [R1,#-0xA8]
2383F0:  VSTR            D17, [R1,#-0x98]
2383F4:  VSTR            D18, [R1,#-0x88]
2383F8:  VSTR            D19, [R1,#-0x78]
2383FC:  VSTR            D20, [R1,#-0x68]
238400:  VSTR            D21, [R1,#-0x58]
238404:  VSTR            D22, [R1,#-0x48]
238408:  VSTR            D26, [R1,#-0x38]
23840C:  VSTR            D25, [R1,#-0x28]
238410:  VSTR            D24, [R1,#-0x18]
238414:  VSTR            D23, [R1,#-8]
238418:  POP.W           {R11}
23841C:  POP             {R4-R7,PC}
