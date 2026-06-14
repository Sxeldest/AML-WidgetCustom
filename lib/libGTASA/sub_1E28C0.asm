; =========================================================
; Game Engine Function: sub_1E28C0
; Address            : 0x1E28C0 - 0x1E28F2
; =========================================================

1E28C0:  PUSH            {R4,R5,R7,LR}
1E28C2:  ADD             R7, SP, #8
1E28C4:  SUB             SP, SP, #8
1E28C6:  MOV             R4, R0
1E28C8:  MOV             R0, R1; s
1E28CA:  MOVS            R1, #0x77 ; 'w'; c
1E28CC:  BLX             strchr
1E28D0:  MOV             R3, R0
1E28D2:  CMP             R3, #0
1E28D4:  ADD             R1, SP, #0x10+var_C
1E28D6:  IT NE
1E28D8:  MOVNE           R3, #1
1E28DA:  MOVS            R0, #0
1E28DC:  MOV             R2, R4
1E28DE:  MOVS            R5, #0
1E28E0:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
1E28E4:  LDR             R1, [SP,#0x10+var_C]
1E28E6:  CMP             R0, #0
1E28E8:  IT NE
1E28EA:  MOVNE           R1, R5
1E28EC:  MOV             R0, R1
1E28EE:  ADD             SP, SP, #8
1E28F0:  POP             {R4,R5,R7,PC}
