; =========================================================
; Game Engine Function: sub_FBC70
; Address            : 0xFBC70 - 0xFBCD8
; =========================================================

FBC70:  PUSH            {R4-R7,LR}
FBC72:  ADD             R7, SP, #0xC
FBC74:  PUSH.W          {R11}
FBC78:  MOV             R4, R0
FBC7A:  MOVS            R0, #0x3C ; '<'; unsigned int
FBC7C:  BLX             j__Znaj; operator new[](uint)
FBC80:  MOV             R5, R0
FBC82:  LDR             R0, =(off_23494C - 0xFBC8E)
FBC84:  VMOV.I32        Q8, #0
FBC88:  MOV             R1, R5
FBC8A:  ADD             R0, PC; off_23494C
FBC8C:  LDR             R6, [R0]; dword_23DF24
FBC8E:  MOVS            R0, #0xC
FBC90:  VST1.8          {D16-D17}, [R1]!
FBC94:  VST1.8          {D16-D17}, [R1]!
FBC98:  VST1.8          {D16-D17}, [R1],R0
FBC9C:  LDR             R0, [R6]
FBC9E:  VST1.8          {D16-D17}, [R1]
FBCA2:  CBZ             R0, loc_FBCB6
FBCA4:  MOV             R1, #0x384F89
FBCAC:  ADDS            R1, R1, R0
FBCAE:  BEQ             loc_FBCB6
FBCB0:  MOV             R0, R5
FBCB2:  BLX             R1
FBCB4:  LDR             R0, [R6]
FBCB6:  MOV             R1, #0x667534
FBCBE:  ADD             R0, R1
FBCC0:  STR             R0, [R5]
FBCC2:  LDR             R1, [R0,#0x1C]
FBCC4:  MOV             R0, R5
FBCC6:  BLX             R1
FBCC8:  BL              sub_163768
FBCCC:  STR.W           R5, [R0,R4,LSL#2]
FBCD0:  MOV             R0, R5
FBCD2:  POP.W           {R11}
FBCD6:  POP             {R4-R7,PC}
