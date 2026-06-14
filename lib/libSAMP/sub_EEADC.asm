; =========================================================
; Game Engine Function: sub_EEADC
; Address            : 0xEEADC - 0xEEBD2
; =========================================================

EEADC:  PUSH            {R4-R7,LR}
EEADE:  ADD             R7, SP, #0xC
EEAE0:  PUSH.W          {R11}
EEAE4:  SUB             SP, SP, #0x10
EEAE6:  LDR             R1, [R0,#0xC]
EEAE8:  MOV             R6, R0
EEAEA:  MOVW            R2, #0x76C
EEAEE:  MOVW            R5, #0x270F
EEAF2:  LDR             R0, [R1,#0x14]
EEAF4:  ADDS            R2, R2, R0
EEAF6:  MOV.W           R3, R0,ASR#31
EEAFA:  MOV.W           R0, #0
EEAFE:  ADC.W           R3, R3, #0
EEB02:  SUBS            R5, R5, R2
EEB04:  SBCS            R0, R3
EEB06:  BCC             loc_EEB2E
EEB08:  UXTH            R0, R2
EEB0A:  MOVW            R3, #0x147B
EEB0E:  LSRS            R0, R0, #2
EEB10:  MOVS            R5, #0x64 ; 'd'
EEB12:  MULS            R0, R3
EEB14:  LDR             R3, =(a00010203040506 - 0xEEB1E); "000102030405060708091011121314151617181"... ...
EEB16:  MOV.W           R12, #0
EEB1A:  ADD             R3, PC; "000102030405060708091011121314151617181"...
EEB1C:  LSRS            R0, R0, #0x11
EEB1E:  MLS.W           R2, R0, R5, R2
EEB22:  LDRH.W          R0, [R3,R0,LSL#1]
EEB26:  STRH.W          R0, [R7,#var_1A]
EEB2A:  UXTH            R2, R2
EEB2C:  B               loc_EEB3C
EEB2E:  MOV             R0, R6
EEB30:  BL              sub_EF194
EEB34:  LDR             R1, [R6,#0xC]
EEB36:  MOVS            R2, #0
EEB38:  MOV.W           R12, #4
EEB3C:  LDRD.W          R3, R1, [R1,#0xC]
EEB40:  MOV.W           R5, #0xCD0000
EEB44:  ORR.W           R1, R2, R1,LSL#24
EEB48:  MOVS            R2, #0xCD
EEB4A:  ADD.W           R1, R1, #0x1000000
EEB4E:  MOVS            R4, #0xF
EEB50:  MULS            R5, R3
EEB52:  MOVT            R4, #0xF00
EEB56:  MOVW            LR, #0x3030
EEB5A:  UMULL.W         R2, R0, R1, R2
EEB5E:  MOVT            LR, #0x302D
EEB62:  ADD             R0, R5
EEB64:  LDR             R5, [R6,#8]
EEB66:  LSRS            R2, R2, #0xB
EEB68:  ORR.W           R2, R2, R0,LSL#21
EEB6C:  ANDS            R2, R4
EEB6E:  ADD.W           R2, R2, R2,LSL#1
EEB72:  ADDS.W          R1, R1, R2,LSL#1
EEB76:  AND.W           R2, R4, R1,LSR#4
EEB7A:  BFI.W           R2, R1, #8, #4
EEB7E:  ORR.W           R2, R2, LR
EEB82:  STR.W           R2, [R7,#var_18]
EEB86:  MOV.W           R2, #0xF0000
EEB8A:  AND.W           R0, R2, R0,LSR#11
EEB8E:  ADD.W           R0, R0, R0,LSL#1
EEB92:  MOV.W           R0, R0,LSL#1
EEB96:  ADC.W           R0, R0, R3,LSL#16
EEB9A:  AND.W           R2, R2, R0,LSR#4
EEB9E:  LSLS            R0, R0, #8
EEBA0:  ORR.W           R0, R0, R1,LSR#24
EEBA4:  MOVW            R1, #0x2D30
EEBA8:  ANDS            R0, R4
EEBAA:  MOVT            R1, #0x3030
EEBAE:  ADD             R0, R2
EEBB0:  ORRS            R0, R1
EEBB2:  STR.W           R0, [R7,#var_14]
EEBB6:  SUB.W           R0, R7, #-var_1A
EEBBA:  ADD.W           R1, R0, R12
EEBBE:  ADD.W           R2, R0, #0xA
EEBC2:  MOV             R0, R5
EEBC4:  BL              sub_DCF30
EEBC8:  STR             R5, [R6,#8]
EEBCA:  ADD             SP, SP, #0x10
EEBCC:  POP.W           {R11}
EEBD0:  POP             {R4-R7,PC}
