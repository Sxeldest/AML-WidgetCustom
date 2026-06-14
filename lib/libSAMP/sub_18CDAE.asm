; =========================================================
; Game Engine Function: sub_18CDAE
; Address            : 0x18CDAE - 0x18CE02
; =========================================================

18CDAE:  PUSH            {R4-R7,LR}
18CDB0:  ADD             R7, SP, #0xC
18CDB2:  PUSH.W          {R11}
18CDB6:  SUB             SP, SP, #0x50
18CDB8:  MOV             R4, R1
18CDBA:  MOV             R0, SP; name
18CDBC:  MOVS            R1, #0x50 ; 'P'; len
18CDBE:  BLX             gethostname
18CDC2:  ADDS            R0, #1
18CDC4:  BEQ             loc_18CDFA
18CDC6:  MOV             R0, SP; name
18CDC8:  BLX             gethostbyname
18CDCC:  CBZ             R0, loc_18CDFA
18CDCE:  MOV             R5, R0
18CDD0:  LDR             R0, [R0,#0x10]
18CDD2:  LDR             R0, [R0]
18CDD4:  CBZ             R0, loc_18CDFA
18CDD6:  MOVS            R6, #0
18CDD8:  LDR             R0, [R0]; in
18CDDA:  BLX             inet_ntoa
18CDDE:  MOV             R1, R0; src
18CDE0:  MOV             R0, R4; dest
18CDE2:  BLX             strcpy
18CDE6:  LDR             R0, [R5,#0x10]
18CDE8:  ADD.W           R0, R0, R6,LSL#2
18CDEC:  LDR             R0, [R0,#4]
18CDEE:  CBZ             R0, loc_18CDFA
18CDF0:  ADDS            R1, R6, #1
18CDF2:  ADDS            R4, #0x10
18CDF4:  CMP             R6, #9
18CDF6:  MOV             R6, R1
18CDF8:  BCC             loc_18CDD8
18CDFA:  ADD             SP, SP, #0x50 ; 'P'
18CDFC:  POP.W           {R11}
18CE00:  POP             {R4-R7,PC}
