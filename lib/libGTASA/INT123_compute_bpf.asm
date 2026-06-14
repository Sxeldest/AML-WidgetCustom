; =========================================================
; Game Engine Function: INT123_compute_bpf
; Address            : 0x232060 - 0x2320C6
; =========================================================

232060:  MOVW            R1, #0x92D8
232064:  LDR             R2, [R0,R1]
232066:  SUBS            R1, R2, #2
232068:  CMP             R1, #2
23206A:  BCS             loc_2320A0
23206C:  PUSH            {R7,LR}
23206E:  MOV             R7, SP
232070:  MOVW            R1, #0x92C8
232074:  LDR.W           R12, =(unk_5F1040 - 0x232086)
232078:  LDR             R1, [R0,R1]
23207A:  MOVW            R3, #0x92E4
23207E:  LDR.W           LR, [R0,R3]
232082:  ADD             R12, PC; unk_5F1040
232084:  ADD.W           R3, R1, R1,LSL#1
232088:  VLDR            D16, =144000.0
23208C:  ADD.W           R3, R12, R3,LSL#6
232090:  ADD.W           R2, R3, R2,LSL#6
232094:  ADD.W           R2, R2, LR,LSL#2
232098:  SUBS            R2, #0x40 ; '@'
23209A:  POP.W           {R7,LR}
23209E:  B               sub_2320C6
2320A0:  CMP             R2, #1
2320A2:  BNE             loc_2320F4
2320A4:  MOVW            R1, #0x92C8
2320A8:  LDR.W           R12, =(unk_5F1040 - 0x2320B8)
2320AC:  LDR             R1, [R0,R1]
2320AE:  MOVW            R3, #0x92E4
2320B2:  LDR             R3, [R0,R3]
2320B4:  ADD             R12, PC; unk_5F1040
2320B6:  ADD.W           R2, R1, R1,LSL#1
2320BA:  VLDR            D16, =48000.0
2320BE:  ADD.W           R2, R12, R2,LSL#6
2320C2:  ADD.W           R2, R2, R3,LSL#2
