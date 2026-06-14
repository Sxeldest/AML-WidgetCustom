; =========================================================
; Game Engine Function: INT123_synth_1to1_8bit_mono
; Address            : 0x236858 - 0x236984
; =========================================================

236858:  PUSH            {R4-R7,LR}
23685A:  ADD             R7, SP, #0xC
23685C:  PUSH.W          {R8-R10}
236860:  SUB             SP, SP, #0x48
236862:  MOV             R4, R1
236864:  LDR             R1, =(__stack_chk_guard_ptr - 0x236872)
236866:  MOVW            R8, #0xB2A8
23686A:  MOVW            R10, #0xB2A0
23686E:  ADD             R1, PC; __stack_chk_guard_ptr
236870:  MOV             R2, R4
236872:  MOVS            R3, #0
236874:  LDR             R1, [R1]; __stack_chk_guard
236876:  LDR             R1, [R1]
236878:  STR             R1, [SP,#0x60+var_1C]
23687A:  MOVW            R1, #0x9198
23687E:  LDR             R5, [R4,R1]
236880:  ADD             R1, SP, #0x60+var_5C
236882:  LDR.W           R9, [R4,R8]
236886:  LDR.W           R6, [R4,R10]
23688A:  STR.W           R1, [R4,R10]
23688E:  MOVS            R1, #0
236890:  STR.W           R1, [R4,R8]
236894:  MOVS            R1, #0
236896:  BLX             R5
236898:  STR.W           R6, [R4,R10]
23689C:  LDRB.W          R1, [SP,#0x60+var_5C]
2368A0:  STRB.W          R1, [R6,R9]
2368A4:  ADD.W           R1, R6, R9
2368A8:  LDRB.W          R2, [SP,#0x60+var_5A]
2368AC:  STRB            R2, [R1,#1]
2368AE:  LDRB.W          R2, [SP,#0x60+var_58]
2368B2:  STRB            R2, [R1,#2]
2368B4:  LDRB.W          R2, [SP,#0x60+var_56]
2368B8:  STRB            R2, [R1,#3]
2368BA:  LDRB.W          R2, [SP,#0x60+var_54]
2368BE:  STRB            R2, [R1,#4]
2368C0:  LDRB.W          R2, [SP,#0x60+var_52]
2368C4:  STRB            R2, [R1,#5]
2368C6:  LDRB.W          R2, [SP,#0x60+var_50]
2368CA:  STRB            R2, [R1,#6]
2368CC:  LDRB.W          R2, [SP,#0x60+var_4E]
2368D0:  STRB            R2, [R1,#7]
2368D2:  LDRB.W          R2, [SP,#0x60+var_4C]
2368D6:  STRB            R2, [R1,#8]
2368D8:  LDRB.W          R2, [SP,#0x60+var_4A]
2368DC:  STRB            R2, [R1,#9]
2368DE:  LDRB.W          R2, [SP,#0x60+var_48]
2368E2:  STRB            R2, [R1,#0xA]
2368E4:  LDRB.W          R2, [SP,#0x60+var_46]
2368E8:  STRB            R2, [R1,#0xB]
2368EA:  LDRB.W          R2, [SP,#0x60+var_44]
2368EE:  STRB            R2, [R1,#0xC]
2368F0:  LDRB.W          R2, [SP,#0x60+var_42]
2368F4:  STRB            R2, [R1,#0xD]
2368F6:  LDRB.W          R2, [SP,#0x60+var_40]
2368FA:  STRB            R2, [R1,#0xE]
2368FC:  LDRB.W          R2, [SP,#0x60+var_3E]
236900:  STRB            R2, [R1,#0xF]
236902:  LDRB.W          R2, [SP,#0x60+var_3C]
236906:  STRB            R2, [R1,#0x10]
236908:  LDRB.W          R2, [SP,#0x60+var_3A]
23690C:  STRB            R2, [R1,#0x11]
23690E:  LDRB.W          R2, [SP,#0x60+var_38]
236912:  STRB            R2, [R1,#0x12]
236914:  LDRB.W          R2, [SP,#0x60+var_36]
236918:  STRB            R2, [R1,#0x13]
23691A:  LDRB.W          R2, [SP,#0x60+var_34]
23691E:  STRB            R2, [R1,#0x14]
236920:  LDRB.W          R2, [SP,#0x60+var_32]
236924:  STRB            R2, [R1,#0x15]
236926:  LDRB.W          R2, [SP,#0x60+var_30]
23692A:  STRB            R2, [R1,#0x16]
23692C:  LDRB.W          R2, [SP,#0x60+var_2E]
236930:  STRB            R2, [R1,#0x17]
236932:  LDRB.W          R2, [SP,#0x60+var_2C]
236936:  STRB            R2, [R1,#0x18]
236938:  LDRB.W          R2, [SP,#0x60+var_2A]
23693C:  STRB            R2, [R1,#0x19]
23693E:  LDRB.W          R2, [SP,#0x60+var_28]
236942:  STRB            R2, [R1,#0x1A]
236944:  LDRB.W          R2, [SP,#0x60+var_26]
236948:  STRB            R2, [R1,#0x1B]
23694A:  LDRB.W          R2, [SP,#0x60+var_24]
23694E:  STRB            R2, [R1,#0x1C]
236950:  LDRB.W          R2, [SP,#0x60+var_22]
236954:  STRB            R2, [R1,#0x1D]
236956:  LDRB.W          R2, [SP,#0x60+var_20]
23695A:  STRB            R2, [R1,#0x1E]
23695C:  LDRB.W          R2, [SP,#0x60+var_1E]
236960:  STRB            R2, [R1,#0x1F]
236962:  ADD.W           R1, R9, #0x20 ; ' '
236966:  STR.W           R1, [R4,R8]
23696A:  LDR             R1, =(__stack_chk_guard_ptr - 0x236972)
23696C:  LDR             R2, [SP,#0x60+var_1C]
23696E:  ADD             R1, PC; __stack_chk_guard_ptr
236970:  LDR             R1, [R1]; __stack_chk_guard
236972:  LDR             R1, [R1]
236974:  SUBS            R1, R1, R2
236976:  ITTT EQ
236978:  ADDEQ           SP, SP, #0x48 ; 'H'
23697A:  POPEQ.W         {R8-R10}
23697E:  POPEQ           {R4-R7,PC}
236980:  BLX             __stack_chk_fail
