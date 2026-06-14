; =========================================================
; Game Engine Function: _ZN21CMouseControllerState13CheckForInputEv
; Address            : 0x3F8358 - 0x3F83A6
; =========================================================

3F8358:  LDRB            R1, [R0]
3F835A:  CBNZ            R1, loc_3F8368
3F835C:  LDRB            R1, [R0,#1]
3F835E:  CMP             R1, #0
3F8360:  ITT EQ
3F8362:  LDRBEQ          R1, [R0,#2]
3F8364:  CMPEQ           R1, #0
3F8366:  BEQ             loc_3F836C
3F8368:  MOVS            R0, #1
3F836A:  BX              LR
3F836C:  LDRB            R1, [R0,#3]
3F836E:  CMP             R1, #0
3F8370:  ITT EQ
3F8372:  LDRBEQ          R1, [R0,#4]
3F8374:  CMPEQ           R1, #0
3F8376:  BNE             loc_3F8368
3F8378:  LDRB            R1, [R0,#5]
3F837A:  CMP             R1, #0
3F837C:  ITT EQ
3F837E:  LDRBEQ          R1, [R0,#6]
3F8380:  CMPEQ           R1, #0
3F8382:  BNE             loc_3F8368
3F8384:  VLDR            S0, [R0,#0xC]
3F8388:  VCMP.F32        S0, #0.0
3F838C:  VMRS            APSR_nzcv, FPSCR
3F8390:  BNE             loc_3F8368
3F8392:  VLDR            S0, [R0,#0x10]
3F8396:  MOVS            R0, #0
3F8398:  VCMP.F32        S0, #0.0
3F839C:  VMRS            APSR_nzcv, FPSCR
3F83A0:  IT NE
3F83A2:  MOVNE           R0, #1
3F83A4:  BX              LR
