; =========================================================
; Game Engine Function: sub_103978
; Address            : 0x103978 - 0x1039B8
; =========================================================

103978:  PUSH            {R4-R7,LR}
10397A:  ADD             R7, SP, #0xC
10397C:  PUSH.W          {R11}
103980:  LDR             R1, =(aAxl - 0x10398A); "AXL" ...
103982:  MOVS            R0, #4; prio
103984:  LDR             R2, =(aApplyingSampPa - 0x10398C); "Applying samp patches.. (ingame)" ...
103986:  ADD             R1, PC; "AXL"
103988:  ADD             R2, PC; "Applying samp patches.. (ingame)"
10398A:  BLX             __android_log_print
10398E:  LDR             R0, =(off_23494C - 0x10399E)
103990:  MOV             R5, #0x98D252
103998:  MOVS            R1, #0x64 ; 'd'; n
10399A:  ADD             R0, PC; off_23494C
10399C:  MOVS            R2, #1; c
10399E:  MOVS            R6, #0x64 ; 'd'
1039A0:  LDR             R4, [R0]; dword_23DF24
1039A2:  LDR             R0, [R4]
1039A4:  ADD             R0, R5; int
1039A6:  BLX             sub_22177C
1039AA:  LDR             R0, [R4]
1039AC:  ADD             R0, R5
1039AE:  STR.W           R6, [R0,#0x66]
1039B2:  POP.W           {R11}
1039B6:  POP             {R4-R7,PC}
