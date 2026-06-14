; =========================================================
; Game Engine Function: sub_6BA00
; Address            : 0x6BA00 - 0x6BAE8
; =========================================================

6BA00:  PUSH            {R4,R6,R7,LR}
6BA02:  ADD             R7, SP, #8
6BA04:  SUB.W           SP, SP, #0x240
6BA08:  LDR             R1, =(aSampOrig - 0x6BA14); "SAMP_ORIG" ...
6BA0A:  MOV             R4, R0
6BA0C:  LDR             R2, =(aRpcScrplayaudi - 0x6BA16); "RPC: ScrPlayAudioStream" ...
6BA0E:  LDR             R0, =(__stack_chk_guard_ptr - 0x6BA18)
6BA10:  ADD             R1, PC; "SAMP_ORIG"
6BA12:  ADD             R2, PC; "RPC: ScrPlayAudioStream"
6BA14:  ADD             R0, PC; __stack_chk_guard_ptr
6BA16:  LDR             R0, [R0]; __stack_chk_guard
6BA18:  LDR             R0, [R0]
6BA1A:  STR             R0, [SP,#0x248+var_C]
6BA1C:  MOVS            R0, #4; prio
6BA1E:  BLX             __android_log_print
6BA22:  LDRD.W          R1, R0, [R4]; src
6BA26:  MOVS            R2, #1
6BA28:  ADD             R4, SP, #0x248+var_120
6BA2A:  ADD.W           R2, R2, R0,LSR#3; size
6BA2E:  MOVS            R3, #0
6BA30:  MOV             R0, R4; int
6BA32:  BL              sub_86BA8
6BA36:  ADD             R0, SP, #0x248+dest; int
6BA38:  MOV.W           R1, #0x100; n
6BA3C:  BLX             sub_10967C
6BA40:  ADD.W           R1, SP, #0x248+var_221; int
6BA44:  MOV             R0, R4; int
6BA46:  MOVS            R2, #8
6BA48:  MOVS            R3, #1
6BA4A:  BL              sub_86E30
6BA4E:  LDRB.W          R2, [SP,#0x248+var_221]
6BA52:  ADD             R0, SP, #0x248+var_120; int
6BA54:  ADD             R1, SP, #0x248+dest; dest
6BA56:  BL              sub_86DEE
6BA5A:  ADD             R0, SP, #0x248+var_120; int
6BA5C:  ADD             R1, SP, #0x248+var_228; int
6BA5E:  MOVS            R2, #0x20 ; ' '
6BA60:  MOVS            R3, #1
6BA62:  BL              sub_86E30
6BA66:  ADD             R0, SP, #0x248+var_120; int
6BA68:  ADD             R1, SP, #0x248+var_22C; int
6BA6A:  MOVS            R2, #0x20 ; ' '
6BA6C:  MOVS            R3, #1
6BA6E:  BL              sub_86E30
6BA72:  ADD             R0, SP, #0x248+var_120; int
6BA74:  ADD             R1, SP, #0x248+var_230; int
6BA76:  MOVS            R2, #0x20 ; ' '
6BA78:  MOVS            R3, #1
6BA7A:  BL              sub_86E30
6BA7E:  ADD             R0, SP, #0x248+var_120; int
6BA80:  ADD             R1, SP, #0x248+var_234; int
6BA82:  MOVS            R2, #0x20 ; ' '
6BA84:  MOVS            R3, #1
6BA86:  BL              sub_86E30
6BA8A:  ADD             R0, SP, #0x248+var_120; int
6BA8C:  ADD.W           R1, SP, #0x248+var_235; int
6BA90:  MOVS            R2, #8
6BA92:  MOVS            R3, #1
6BA94:  BL              sub_86E30
6BA98:  LDR             R0, =(aAudioStreamS - 0x6BA9E); "[Audio Stream]: %s" ...
6BA9A:  ADD             R0, PC; "[Audio Stream]: %s"
6BA9C:  ADD             R1, SP, #0x248+dest
6BA9E:  BL              sub_6C95C
6BAA2:  LDR             R0, =(off_114BE4 - 0x6BAA8)
6BAA4:  ADD             R0, PC; off_114BE4
6BAA6:  LDR             R0, [R0]; dword_1A4430
6BAA8:  LDR             R0, [R0]; int
6BAAA:  CBZ             R0, loc_6BACA
6BAAC:  LDRB.W          R1, [SP,#0x248+var_235]
6BAB0:  LDRD.W          R3, R2, [SP,#0x248+var_22C]; int
6BAB4:  LDRD.W          R4, R12, [SP,#0x248+var_234]
6BAB8:  CMP             R1, #0
6BABA:  IT NE
6BABC:  MOVNE           R1, #1
6BABE:  STR             R1, [SP,#0x248+var_240]; int
6BAC0:  ADD             R1, SP, #0x248+dest; int
6BAC2:  STRD.W          R12, R4, [SP,#0x248+var_248]; float
6BAC6:  BL              sub_60194
6BACA:  ADD             R0, SP, #0x248+var_120
6BACC:  BL              sub_86BF8
6BAD0:  LDR             R0, [SP,#0x248+var_C]
6BAD2:  LDR             R1, =(__stack_chk_guard_ptr - 0x6BAD8)
6BAD4:  ADD             R1, PC; __stack_chk_guard_ptr
6BAD6:  LDR             R1, [R1]; __stack_chk_guard
6BAD8:  LDR             R1, [R1]
6BADA:  CMP             R1, R0
6BADC:  ITT EQ
6BADE:  ADDEQ.W         SP, SP, #0x240
6BAE2:  POPEQ           {R4,R6,R7,PC}
6BAE4:  BLX             __stack_chk_fail
