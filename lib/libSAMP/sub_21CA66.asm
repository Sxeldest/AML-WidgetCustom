; =========================================================
; Game Engine Function: sub_21CA66
; Address            : 0x21CA66 - 0x21CA8C
; =========================================================

21CA66:  LDR             R2, [R1,#0x10]
21CA68:  ADDS            R2, #1
21CA6A:  BEQ             loc_21CA72
21CA6C:  LDR             R3, [R0,#0xC]
21CA6E:  LDR             R2, [R1,#0xC]
21CA70:  B               loc_21CA7A
21CA72:  LDR             R3, [R0,#0xC]
21CA74:  MOVS            R2, #0
21CA76:  STR             R2, [R1,#0xC]
21CA78:  STR             R3, [R1,#0x10]
21CA7A:  CMP             R2, R3
21CA7C:  ITT CS
21CA7E:  MOVCS           R0, #0
21CA80:  BXCS            LR
21CA82:  LDR             R0, [R0,#8]
21CA84:  LDR.W           R0, [R0,R2,LSL#2]
21CA88:  B.W             sub_217AF6
