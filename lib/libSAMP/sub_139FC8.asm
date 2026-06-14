; =========================================================
; Game Engine Function: sub_139FC8
; Address            : 0x139FC8 - 0x13A00E
; =========================================================

139FC8:  PUSH            {R4,R5,R7,LR}
139FCA:  ADD             R7, SP, #8
139FCC:  MOV             R5, R1
139FCE:  LDR             R1, =(off_234BA8 - 0x139FD8)
139FD0:  LDR             R0, [R0,#0x54]; lpsrc
139FD2:  MOVS            R3, #0; s2d
139FD4:  ADD             R1, PC; off_234BA8
139FD6:  LDR             R2, =(_ZTI7ListBox - 0x139FDE); `typeinfo for'ListBox ...
139FD8:  LDR             R1, [R1]; lpstype
139FDA:  ADD             R2, PC; lpdtype
139FDC:  BLX             j___dynamic_cast
139FE0:  LDR             R2, [R0,#0x60]
139FE2:  ADDS            R4, R5, #1
139FE4:  LDRD.W          R1, R3, [R2,#0x44]
139FE8:  VMOV            S0, R4
139FEC:  STR             R5, [R2,#0x5C]
139FEE:  SUBS            R1, R3, R1
139FF0:  VCVT.F32.S32    S0, S0
139FF4:  ASRS            R1, R1, #2
139FF6:  VMOV            S2, R1
139FFA:  VCVT.F32.S32    S2, S2
139FFE:  VDIV.F32        S0, S0, S2
13A002:  VMOV            R1, S0
13A006:  POP.W           {R4,R5,R7,LR}
13A00A:  B.W             sub_13DD80
