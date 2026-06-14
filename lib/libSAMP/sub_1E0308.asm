; =========================================================
; Game Engine Function: sub_1E0308
; Address            : 0x1E0308 - 0x1E0398
; =========================================================

1E0308:  CMP             R1, #0
1E030C:  BXEQ            LR
1E0310:  ADD             R3, R3, #0x20 ; ' '
1E0314:  VLDR            S0, [R2]
1E0318:  SUBS            R1, R1, #1
1E031C:  VLDR            S2, [R0,#0x10]
1E0320:  ADD             R2, R2, #4
1E0324:  VMUL.F32        S2, S2, S0
1E0328:  VSTR            S2, [R3,#-0x20]
1E032C:  VLDR            S2, [R0,#0x14]
1E0330:  VMUL.F32        S2, S2, S0
1E0334:  VSTR            S2, [R3,#-0x1C]
1E0338:  VLDR            S2, [R0,#0x18]
1E033C:  VMUL.F32        S2, S2, S0
1E0340:  VSTR            S2, [R3,#-0x18]
1E0344:  VLDR            S2, [R0,#0x1C]
1E0348:  VMUL.F32        S2, S2, S0
1E034C:  VSTR            S2, [R3,#-0x14]
1E0350:  VLDR            S2, [R0,#0x20]
1E0354:  VMUL.F32        S2, S2, S0
1E0358:  VSTR            S2, [R3,#-0x10]
1E035C:  VLDR            S2, [R0,#0x24]
1E0360:  VMUL.F32        S2, S2, S0
1E0364:  VSTR            S2, [R3,#-0xC]
1E0368:  VLDR            S2, [R0,#0x28]
1E036C:  VMUL.F32        S2, S2, S0
1E0370:  VSTR            S2, [R3,#-8]
1E0374:  VLDR            S2, [R0,#0x2C]
1E0378:  VMUL.F32        S2, S2, S0
1E037C:  VSTR            S2, [R3,#-4]
1E0380:  VLDR            S2, [R0,#0x30]
1E0384:  VMUL.F32        S0, S2, S0
1E0388:  VSTR            S0, [R3]
1E038C:  ADD             R3, R3, #0x24 ; '$'
1E0390:  BNE             loc_1E0314
1E0394:  BX              LR
