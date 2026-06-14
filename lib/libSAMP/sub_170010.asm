; =========================================================
; Game Engine Function: sub_170010
; Address            : 0x170010 - 0x1700B8
; =========================================================

170010:  PUSH            {R4,R6,R7,LR}
170012:  ADD             R7, SP, #8
170014:  SUB             SP, SP, #0x10
170016:  LDR             R0, =(dword_381B58 - 0x170020)
170018:  MOVW            R1, #0x1D19
17001C:  ADD             R0, PC; dword_381B58
17001E:  LDR             R0, [R0]
170020:  LDRB            R1, [R0,R1]
170022:  CBZ             R1, loc_17008E
170024:  VMOV.F32        S0, #8.0
170028:  MOVW            R1, #0x15B8
17002C:  VMOV.F32        S2, #16.0
170030:  ADD             R1, R0
170032:  VLDR            S4, =0.6
170036:  MOVW            R2, #0x1A28
17003A:  VLDR            S8, [R1,#0x58]
17003E:  ADD             R2, R0
170040:  VLDR            S6, [R1]
170044:  ADD.W           R3, R0, #0x1A20
170048:  VLDR            S10, [R0,#0xE0]
17004C:  VMUL.F32        S4, S8, S4
170050:  VLDR            S12, [R0,#0xE4]
170054:  MOVS            R0, #0
170056:  VMLA.F32        S12, S6, S0
17005A:  STRD.W          R0, R0, [R2]
17005E:  VMLA.F32        S10, S6, S2
170062:  LDR.W           R0, [R1,#0x458]
170066:  MOVS            R4, #1
170068:  ORR.W           R0, R0, #0x41 ; 'A'
17006C:  STR.W           R0, [R1,#0x458]
170070:  STR.W           R4, [R1,#0x45C]
170074:  MOVS            R0, #0
170076:  VSTR            S4, [R2,#0x34]
17007A:  MOVS            R1, #1
17007C:  VSTR            S12, [R3,#4]
170080:  VSTR            S10, [R3]
170084:  ADD             SP, SP, #0x10
170086:  POP.W           {R4,R6,R7,LR}
17008A:  B.W             sub_1700C4
17008E:  MOVW            R1, #0x2CD0
170092:  ADD             R0, R1
170094:  MOV             R4, SP
170096:  MOVS            R1, #0x10
170098:  LDR             R3, [R0]
17009A:  MOV             R0, R4
17009C:  LDR             R2, =(aTooltip02d - 0x1700A2); "##Tooltip_%02d" ...
17009E:  ADD             R2, PC; "##Tooltip_%02d"
1700A0:  BL              sub_1655A8
1700A4:  MOVW            R2, #0x347
1700A8:  MOV             R0, R4
1700AA:  MOVT            R2, #0x20C
1700AE:  MOVS            R1, #0
1700B0:  BL              sub_16A980
1700B4:  ADD             SP, SP, #0x10
1700B6:  POP             {R4,R6,R7,PC}
