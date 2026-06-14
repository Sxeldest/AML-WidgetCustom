; =========================================================
; Game Engine Function: sub_11A5E8
; Address            : 0x11A5E8 - 0x11A684
; =========================================================

11A5E8:  PUSH            {R4,R5,R7,LR}
11A5EA:  ADD             R7, SP, #8
11A5EC:  SUB             SP, SP, #8
11A5EE:  MOV             R3, R1
11A5F0:  MOV             R1, #0x201FC
11A5F8:  MOV             R4, R2
11A5FA:  CMP             R3, R1
11A5FC:  BHI             loc_11A66E
11A5FE:  MOV             R1, #0x66666667
11A606:  SMMUL.W         R1, R3, R1
11A60A:  ASRS            R2, R1, #1
11A60C:  ADD.W           R1, R2, R1,LSR#31
11A610:  ADD.W           R1, R1, R1,LSL#2
11A614:  SUBS            R1, R3, R1
11A616:  BNE             loc_11A66E
11A618:  LDR             R1, =(off_23494C - 0x11A626)
11A61A:  MOV             R2, #0xCCCCCCCD
11A622:  ADD             R1, PC; off_23494C
11A624:  UMULL.W         R2, R3, R3, R2
11A628:  MOVW            R2, #0x7DD8
11A62C:  LDR             R1, [R1]; dword_23DF24
11A62E:  MOVT            R2, #0x67 ; 'g'
11A632:  LDR             R1, [R1]
11A634:  LSRS            R5, R3, #2
11A636:  LDR             R1, [R1,R2]
11A638:  ADD.W           R2, R5, R5,LSL#2
11A63C:  ADD.W           R1, R1, R2,LSL#2
11A640:  LDRB            R1, [R1,#7]
11A642:  CBNZ            R1, loc_11A67E
11A644:  LDR             R0, [R0,#0x40]
11A646:  ADD.W           R1, R5, R5,LSL#1
11A64A:  ADD.W           R0, R0, R1,LSL#1
11A64E:  MOV             R1, #0x4D194
11A656:  LDRB            R0, [R0,R1]
11A658:  BL              sub_1273FC
11A65C:  LDR             R1, =(aAxl - 0x11A668); "AXL" ...
11A65E:  MOV             R4, R0
11A660:  LDR             R2, =(aModloadeerLoad - 0x11A66C); "modloadeer: load texture for model id %"... ...
11A662:  MOV             R3, R5
11A664:  ADD             R1, PC; "AXL"
11A666:  STR             R0, [SP,#0x10+var_10]
11A668:  ADD             R2, PC; "modloadeer: load texture for model id %"...
11A66A:  MOVS            R0, #3
11A66C:  B               loc_11A67A
11A66E:  LDR             R1, =(aAxl - 0x11A678); "AXL" ...
11A670:  MOVS            R0, #6; prio
11A672:  LDR             R2, =(aModoaderInvali - 0x11A67C); "modoader: invalid model offset %d for s"... ...
11A674:  ADD             R1, PC; "AXL"
11A676:  STR             R4, [SP,#0x10+var_10]
11A678:  ADD             R2, PC; "modoader: invalid model offset %d for s"...
11A67A:  BLX             __android_log_print
11A67E:  MOV             R0, R4
11A680:  ADD             SP, SP, #8
11A682:  POP             {R4,R5,R7,PC}
