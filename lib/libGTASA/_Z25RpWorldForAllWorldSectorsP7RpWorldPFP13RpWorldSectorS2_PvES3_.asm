; =========================================================
; Game Engine Function: _Z25RpWorldForAllWorldSectorsP7RpWorldPFP13RpWorldSectorS2_PvES3_
; Address            : 0x21CCBC - 0x21CD0C
; =========================================================

21CCBC:  PUSH            {R4-R7,LR}
21CCBE:  ADD             R7, SP, #0xC
21CCC0:  PUSH.W          {R8,R9,R11}
21CCC4:  SUB             SP, SP, #0x100
21CCC6:  MOV             R8, R0
21CCC8:  MOV             R9, R2
21CCCA:  LDR.W           R0, [R8,#0x1C]
21CCCE:  MOV             R6, R1
21CCD0:  MOVS            R5, #0
21CCD2:  MOV             R4, SP
21CCD4:  LDR             R1, [R0]
21CCD6:  CMP.W           R1, #0xFFFFFFFF
21CCDA:  BLE             loc_21CCF0
21CCDC:  LDRD.W          R1, R0, [R0,#8]
21CCE0:  ADDS            R5, #1
21CCE2:  STR.W           R0, [R4,R5,LSL#2]
21CCE6:  MOV             R0, R1
21CCE8:  CMP.W           R5, #0xFFFFFFFF
21CCEC:  BGT             loc_21CCD4
21CCEE:  B               loc_21CD02
21CCF0:  MOV             R1, R9
21CCF2:  BLX             R6
21CCF4:  CBZ             R0, loc_21CD02
21CCF6:  LDR.W           R0, [R4,R5,LSL#2]
21CCFA:  SUBS            R5, #1
21CCFC:  CMP.W           R5, #0xFFFFFFFF
21CD00:  BGT             loc_21CCD4
21CD02:  MOV             R0, R8
21CD04:  ADD             SP, SP, #0x100
21CD06:  POP.W           {R8,R9,R11}
21CD0A:  POP             {R4-R7,PC}
