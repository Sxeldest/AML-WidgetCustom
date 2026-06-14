; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel17GetPlayingTrackIDEv
; Address            : 0x3A9832 - 0x3A9860
; =========================================================

3A9832:  MOV             R1, R0
3A9834:  MOV             R0, #0x24038
3A983C:  LDR             R0, [R1,R0]
3A983E:  CBZ             R0, loc_3A985A
3A9840:  MOV             R2, #0x24040
3A9848:  LDR             R1, [R1,R2]
3A984A:  ADDS            R1, #5
3A984C:  CMP             R1, #4
3A984E:  BHI             loc_3A985A
3A9850:  CMP             R1, #3
3A9852:  BEQ             loc_3A985A
3A9854:  LDR             R1, [R0]
3A9856:  LDR             R1, [R1,#0x20]
3A9858:  BX              R1
3A985A:  MOV.W           R0, #0xFFFFFFFF
3A985E:  BX              LR
