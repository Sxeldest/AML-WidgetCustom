; =========================================================
; Game Engine Function: sub_12525C
; Address            : 0x12525C - 0x12528C
; =========================================================

12525C:  PUSH            {R4,R6,R7,LR}
12525E:  ADD             R7, SP, #8
125260:  MOVS            R1, #0x2E ; '.'; c
125262:  MOV             R4, R0
125264:  BLX             strchr
125268:  CBZ             R0, loc_125278
12526A:  MOV             R0, R4; nptr
12526C:  MOVS            R1, #0; endptr
12526E:  BLX             strtod
125272:  VMOV            D16, R0, R1
125276:  B               loc_125286
125278:  MOV             R0, R4; nptr
12527A:  BLX             atoi
12527E:  VMOV            S0, R0
125282:  VCVT.F64.S32    D16, S0
125286:  VMOV            R0, R1, D16
12528A:  POP             {R4,R6,R7,PC}
