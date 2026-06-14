; =========================================================
; Game Engine Function: sub_14BA48
; Address            : 0x14BA48 - 0x14BACE
; =========================================================

14BA48:  PUSH            {R7,LR}
14BA4A:  MOV             R7, SP
14BA4C:  SUB             SP, SP, #0x128
14BA4E:  LDRD.W          R1, R0, [R0]; src
14BA52:  MOVS            R3, #0
14BA54:  ASRS            R2, R0, #0x1F
14BA56:  ADD.W           R0, R0, R2,LSR#29
14BA5A:  MOVS            R2, #1
14BA5C:  ADD.W           R2, R2, R0,ASR#3; size
14BA60:  ADD             R0, SP, #0x130+var_12C; int
14BA62:  BL              sub_17D4F2
14BA66:  ADD             R1, SP, #0x130+var_C; int
14BA68:  MOVS            R2, #0x20 ; ' '
14BA6A:  MOVS            R3, #1
14BA6C:  BL              sub_17D786
14BA70:  ADD             R0, SP, #0x130+var_12C; int
14BA72:  ADD             R1, SP, #0x130+var_10; int
14BA74:  MOVS            R2, #0x20 ; ' '
14BA76:  MOVS            R3, #1
14BA78:  BL              sub_17D786
14BA7C:  ADD             R0, SP, #0x130+var_12C; int
14BA7E:  ADD             R1, SP, #0x130+var_14; int
14BA80:  MOVS            R2, #0x20 ; ' '
14BA82:  MOVS            R3, #1
14BA84:  BL              sub_17D786
14BA88:  ADD             R0, SP, #0x130+var_12C; int
14BA8A:  SUB.W           R1, R7, #0xD; int
14BA8E:  MOVS            R2, #8
14BA90:  MOVS            R3, #1
14BA92:  BL              sub_17D786
14BA96:  LDRB.W          R12, [R7,#-0xD]
14BA9A:  SUB.W           R0, R12, #3
14BA9E:  CMN.W           R0, #3
14BAA2:  ITT LS
14BAA4:  MOVLS.W         R12, #2
14BAA8:  STRBLS.W        R12, [R7,#-0xD]
14BAAC:  LDR             R0, =(off_234970 - 0x14BAB4)
14BAAE:  LDR             R1, [SP,#0x130+var_C]
14BAB0:  ADD             R0, PC; off_234970
14BAB2:  LDRD.W          R3, R2, [SP,#0x130+var_14]
14BAB6:  LDR             R0, [R0]; dword_23DEF0
14BAB8:  LDR             R0, [R0]
14BABA:  LDR             R0, [R0,#4]
14BABC:  STR.W           R12, [SP,#0x130+var_130]
14BAC0:  BL              sub_F86AC
14BAC4:  ADD             R0, SP, #0x130+var_12C
14BAC6:  BL              sub_17D542
14BACA:  ADD             SP, SP, #0x128
14BACC:  POP             {R7,PC}
