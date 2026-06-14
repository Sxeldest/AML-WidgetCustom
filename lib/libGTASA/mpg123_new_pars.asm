; =========================================================
; Game Engine Function: mpg123_new_pars
; Address            : 0x225944 - 0x2259A4
; =========================================================

225944:  PUSH            {R4-R7,LR}
225946:  ADD             R7, SP, #0xC
225948:  PUSH.W          {R11}
22594C:  MOV             R4, R0
22594E:  MOV.W           R0, #0x130; byte_count
225952:  BLX             malloc
225956:  MOV             R5, R0
225958:  CBZ             R5, loc_225994
22595A:  MOVS            R0, #0
22595C:  MOVS            R6, #0
22595E:  MOVT            R0, #0x3FF0
225962:  VMOV.I32        Q8, #0
225966:  STR.W           R6, [R5,#0x110]
22596A:  MOV.W           R1, #0x400
22596E:  STRD.W          R6, R0, [R5,#0x118]
225972:  MOVS            R0, #4
225974:  STR.W           R1, [R5,#0x120]
225978:  STR.W           R0, [R5,#0x128]
22597C:  MOV             R0, R5
22597E:  VST1.64         {D16-D17}, [R0]!
225982:  VST1.64         {D16-D17}, [R0]
225986:  MOV             R0, R5
225988:  BLX             j_mpg123_fmt_all
22598C:  CMP             R4, #0
22598E:  IT NE
225990:  STRNE           R6, [R4]
225992:  B               loc_22599C
225994:  CMP             R4, #0
225996:  ITT NE
225998:  MOVNE           R0, #7
22599A:  STRNE           R0, [R4]
22599C:  MOV             R0, R5
22599E:  POP.W           {R11}
2259A2:  POP             {R4-R7,PC}
