; =========================================================
; Game Engine Function: sub_73FD4
; Address            : 0x73FD4 - 0x7403E
; =========================================================

73FD4:  PUSH            {R4,R5,R7,LR}
73FD6:  ADD             R7, SP, #8
73FD8:  LDR             R1, =(aSampOrig - 0x73FE2); "SAMP_ORIG" ...
73FDA:  MOVS            R0, #4; prio
73FDC:  LDR             R2, =(aInitializingSc - 0x73FE4); "Initializing scorebord.." ...
73FDE:  ADD             R1, PC; "SAMP_ORIG"
73FE0:  ADD             R2, PC; "Initializing scorebord.."
73FE2:  BLX             __android_log_print
73FE6:  LDR             R0, =(off_114B10 - 0x73FF0)
73FE8:  VLDR            S0, =768.0
73FEC:  ADD             R0, PC; off_114B10
73FEE:  VLDR            S6, =1024.0
73FF2:  LDR             R0, [R0]; dword_1A442C
73FF4:  LDR             R0, [R0]
73FF6:  VLDR            S2, [R0,#0x58]
73FFA:  VLDR            S4, [R0,#0x5C]
73FFE:  MOVS            R0, #0
74000:  VMUL.F32        S2, S2, S6
74004:  VLDR            S6, =0.00052083
74008:  VMUL.F32        S0, S4, S0
7400C:  VLDR            S4, =0.00092593
74010:  LDR             R5, =(dword_1A44DC - 0x7401A)
74012:  LDR             R1, =(dword_1A44E0 - 0x7401E)
74014:  LDR             R2, =(byte_1A44E5 - 0x74022)
74016:  ADD             R5, PC; dword_1A44DC
74018:  LDR             R3, =(unk_1A44E8 - 0x74028)
7401A:  ADD             R1, PC; dword_1A44E0
7401C:  LDR             R4, =(byte_1A44E4 - 0x7402E)
7401E:  ADD             R2, PC; byte_1A44E5
74020:  VMUL.F32        S2, S2, S6
74024:  ADD             R3, PC; unk_1A44E8
74026:  VMUL.F32        S0, S0, S4
7402A:  ADD             R4, PC; byte_1A44E4
7402C:  STR             R0, [R5]
7402E:  STR             R0, [R1]
74030:  STRB            R0, [R2]
74032:  STRB            R0, [R4]
74034:  VSTR            S2, [R3]
74038:  VSTR            S0, [R3,#4]
7403C:  POP             {R4,R5,R7,PC}
