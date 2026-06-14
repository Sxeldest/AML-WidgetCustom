; =========================================================
; Game Engine Function: sub_163AA4
; Address            : 0x163AA4 - 0x163B0A
; =========================================================

163AA4:  PUSH            {R4,R5,R7,LR}
163AA6:  ADD             R7, SP, #8
163AA8:  LDR             R4, =(aLibgtasaSo - 0x163AAE); "libGTASA.so" ...
163AAA:  ADD             R4, PC; "libGTASA.so"
163AAC:  MOV             R0, R4
163AAE:  BL              sub_163FF8
163AB2:  LDR             R1, =(dword_381A98 - 0x163AC2)
163AB4:  MOV             R5, #0x6BD178
163ABC:  ADD             R0, R5
163ABE:  ADD             R1, PC; dword_381A98
163AC0:  ADDS            R0, #4
163AC2:  STR             R0, [R1]
163AC4:  MOV             R0, R4
163AC6:  BL              sub_163FF8
163ACA:  LDR             R1, =(dword_381A9C - 0x163AD2)
163ACC:  ADD             R0, R5
163ACE:  ADD             R1, PC; dword_381A9C
163AD0:  STR             R0, [R1]
163AD2:  MOV             R0, R4
163AD4:  BL              sub_163FF8
163AD8:  LDR             R1, =(dword_381AA0 - 0x163AE8)
163ADA:  MOV             R2, #0x679164
163AE2:  ADD             R0, R2
163AE4:  ADD             R1, PC; dword_381AA0
163AE6:  STR             R0, [R1]
163AE8:  MOV             R0, R4
163AEA:  BL              sub_163FF8
163AEE:  LDR             R1, =(dword_381AA4 - 0x163AF8)
163AF0:  ADD             R0, R5
163AF2:  ADDS            R0, #0x10
163AF4:  ADD             R1, PC; dword_381AA4
163AF6:  STR             R0, [R1]
163AF8:  MOV             R0, R4
163AFA:  BL              sub_163FF8
163AFE:  LDR             R1, =(dword_381AA8 - 0x163B08)
163B00:  ADD             R0, R5
163B02:  ADDS            R0, #0xC
163B04:  ADD             R1, PC; dword_381AA8
163B06:  STR             R0, [R1]
163B08:  POP             {R4,R5,R7,PC}
