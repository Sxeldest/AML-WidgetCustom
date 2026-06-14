; =========================================================
; Game Engine Function: _Z23RpMTEffectStreamGetSizePK10RpMTEffect
; Address            : 0x1C5804 - 0x1C5834
; =========================================================

1C5804:  PUSH            {R4-R7,LR}
1C5806:  ADD             R7, SP, #0xC
1C5808:  PUSH.W          {R11}
1C580C:  MOV             R4, R0
1C580E:  LDR.W           R1, [R0],#8; char *
1C5812:  LDR             R2, =(unk_6B7180 - 0x1C581C)
1C5814:  ADD.W           R1, R1, R1,LSL#2
1C5818:  ADD             R2, PC; unk_6B7180
1C581A:  ADD.W           R6, R2, R1,LSL#2
1C581E:  BLX             j__Z22_rwStringStreamGetSizePKc; _rwStringStreamGetSize(char const*)
1C5822:  LDR             R1, [R6,#0x10]
1C5824:  MOV             R5, R0
1C5826:  MOV             R0, R4
1C5828:  BLX             R1
1C582A:  ADD             R0, R5
1C582C:  ADDS            R0, #0x28 ; '('
1C582E:  POP.W           {R11}
1C5832:  POP             {R4-R7,PC}
