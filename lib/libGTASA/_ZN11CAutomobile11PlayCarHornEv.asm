; =========================================================
; Game Engine Function: _ZN11CAutomobile11PlayCarHornEv
; Address            : 0x55D8D4 - 0x55D97A
; =========================================================

55D8D4:  PUSH            {R4,R6,R7,LR}
55D8D6:  ADD             R7, SP, #8
55D8D8:  SUB             SP, SP, #0x10
55D8DA:  MOV             R4, R0
55D8DC:  LDRH.W          R0, [R4,#0x460]
55D8E0:  CMP             R0, #0
55D8E2:  ITT NE
55D8E4:  MOVWNE          R1, #0xFFFF
55D8E8:  CMPNE           R0, R1
55D8EA:  BEQ             loc_55D8F8
55D8EC:  LDRB.W          R0, [R4,#0x3A]
55D8F0:  AND.W           R0, R0, #0xF8
55D8F4:  CMP             R0, #0x28 ; '('
55D8F6:  BNE             loc_55D8FE
55D8F8:  LDR.W           R0, [R4,#0x524]
55D8FC:  CBZ             R0, loc_55D902
55D8FE:  ADD             SP, SP, #0x10
55D900:  POP             {R4,R6,R7,PC}
55D902:  LDRB.W          R0, [R4,#0x529]
55D906:  CMP             R0, #0
55D908:  ITTTT NE
55D90A:  SUBNE           R0, #1
55D90C:  STRBNE.W        R0, [R4,#0x529]
55D910:  ADDNE           SP, SP, #0x10
55D912:  POPNE           {R4,R6,R7,PC}
55D914:  BLX             rand
55D918:  AND.W           R0, R0, #0x7F
55D91C:  ADDS            R0, #0x96
55D91E:  STRB.W          R0, [R4,#0x529]
55D922:  AND.W           R1, R0, #7
55D926:  CMP             R1, #1
55D928:  BLS             loc_55D954
55D92A:  LDR.W           R0, [R4,#0x464]; this
55D92E:  CMP             R1, #3
55D930:  BHI             loc_55D95E
55D932:  CMP             R0, #0
55D934:  ITT NE
55D936:  LDRBNE.W        R1, [R4,#0x3DF]
55D93A:  MOVSNE.W        R1, R1,LSL#31
55D93E:  BEQ             loc_55D954
55D940:  MOVS            R1, #0
55D942:  MOVS            R2, #0; unsigned int
55D944:  STRD.W          R1, R1, [SP,#0x18+var_18]; unsigned __int8
55D948:  MOV.W           R3, #0x3F800000; float
55D94C:  STR             R1, [SP,#0x18+var_10]; unsigned __int8
55D94E:  MOVS            R1, #0x16; unsigned __int16
55D950:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
55D954:  MOVS            R0, #0x2D ; '-'
55D956:  STR.W           R0, [R4,#0x524]
55D95A:  ADD             SP, SP, #0x10
55D95C:  POP             {R4,R6,R7,PC}
55D95E:  CMP             R0, #0
55D960:  BEQ             loc_55D8FE
55D962:  MOVS            R1, #0
55D964:  MOVS            R2, #0; unsigned int
55D966:  STRD.W          R1, R1, [SP,#0x18+var_18]; unsigned __int8
55D96A:  MOV.W           R3, #0x3F800000; float
55D96E:  STR             R1, [SP,#0x18+var_10]; unsigned __int8
55D970:  MOVS            R1, #0x16; unsigned __int16
55D972:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
55D976:  ADD             SP, SP, #0x10
55D978:  POP             {R4,R6,R7,PC}
