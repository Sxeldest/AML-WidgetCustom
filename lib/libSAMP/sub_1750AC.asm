; =========================================================
; Game Engine Function: sub_1750AC
; Address            : 0x1750AC - 0x175130
; =========================================================

1750AC:  PUSH            {R4,R6,R7,LR}
1750AE:  ADD             R7, SP, #8
1750B0:  SUB             SP, SP, #0x80
1750B2:  MOV             R4, R0
1750B4:  ADD             R0, SP, #0x88+dest; dest
1750B6:  CBZ             R1, loc_1750C0
1750B8:  MOVS            R2, #0x74 ; 't'; n
1750BA:  BLX             j_memcpy
1750BE:  B               loc_1750CE
1750C0:  BL              sub_174FC6
1750C4:  MOVS            R0, #1
1750C6:  STRB.W          R0, [SP,#0x88+var_64]
1750CA:  STRD.W          R0, R0, [SP,#0x88+var_6C]
1750CE:  VLDR            S0, [SP,#0x88+var_70]
1750D2:  VCMP.F32        S0, #0.0
1750D6:  VMRS            APSR_nzcv, FPSCR
1750DA:  ITTTT LS
1750DC:  VMOVLS.F32      S0, #13.0
1750E0:  MOVLS           R0, #0
1750E2:  MOVTLS          R0, #0x4150
1750E6:  STRLS           R0, [SP,#0x88+var_70]
1750E8:  LDRB.W          R0, [SP,#0x88+var_38]
1750EC:  CBNZ            R0, loc_175108
1750EE:  VCVT.S32.F32    S0, S0
1750F2:  LDR             R2, =(aProggycleanTtf - 0x1750FE); "ProggyClean.ttf, %dpx" ...
1750F4:  ADD             R0, SP, #0x88+dest
1750F6:  MOVS            R1, #0x28 ; '('
1750F8:  ADDS            R0, #0x48 ; 'H'
1750FA:  ADD             R2, PC; "ProggyClean.ttf, %dpx"
1750FC:  VMOV            R3, S0
175100:  BL              sub_1655A8
175104:  VLDR            S0, [SP,#0x88+var_70]
175108:  VMOV            R2, S0; int
17510C:  LDR             R0, [SP,#0x88+var_50]
17510E:  LDR             R3, =(unk_BBA30 - 0x175118)
175110:  LDR             R1, =(a7Hv0qsLQ65N42C - 0x175120); "7])#######hV0qs'/###[),##/l:$#Q6>##5[n4"... ...
175112:  CMP             R0, #0
175114:  ADD             R3, PC; unk_BBA30
175116:  IT NE
175118:  MOVNE           R3, R0
17511A:  STR             R3, [SP,#0x88+var_88]; int
17511C:  ADD             R1, PC; "7])#######hV0qs'/###[),##/l:$#Q6>##5[n4"...
17511E:  ADD             R3, SP, #0x88+dest; int
175120:  MOV             R0, R4; int
175122:  BL              sub_175354
175126:  MOV.W           R1, #0x3F800000
17512A:  STR             R1, [R0,#0x34]
17512C:  ADD             SP, SP, #0x80
17512E:  POP             {R4,R6,R7,PC}
