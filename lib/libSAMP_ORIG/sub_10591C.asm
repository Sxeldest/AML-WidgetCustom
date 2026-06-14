; =========================================================
; Game Engine Function: sub_10591C
; Address            : 0x10591C - 0x105B18
; =========================================================

10591C:  PUSH            {R4-R7,LR}
10591E:  ADD             R7, SP, #0xC
105920:  PUSH.W          {R3-R11}
105924:  MOV             R5, R0
105926:  LDR             R0, =(__stack_chk_guard_ptr - 0x10592C)
105928:  ADD             R0, PC; __stack_chk_guard_ptr
10592A:  LDR             R0, [R0]; __stack_chk_guard
10592C:  LDR             R0, [R0]
10592E:  STR             R0, [SP,#0x30+var_20]
105930:  MOV             R0, R5
105932:  BL              sub_FFF94
105936:  LDR             R1, =(aDo - 0x105940); "Do" ...
105938:  MOV             R9, R0
10593A:  MOV             R0, R5
10593C:  ADD             R1, PC; "Do"
10593E:  ADDS            R2, R1, #2
105940:  BL              sub_FE18C
105944:  CMP             R0, #0
105946:  BEQ             loc_1059FE
105948:  LDR             R1, =(aNoexcept_0 - 0x105950); "noexcept" ...
10594A:  MOV             R0, R5
10594C:  ADD             R1, PC; "noexcept"
10594E:  BL              sub_105CBC
105952:  MOV             R11, R0
105954:  LDR             R1, =(aDx - 0x10595C); "Dx" ...
105956:  MOV             R0, R5
105958:  ADD             R1, PC; "Dx"
10595A:  ADDS            R2, R1, #2
10595C:  BL              sub_FE18C
105960:  LDRD.W          R0, R1, [R5]
105964:  CMP             R0, R1
105966:  BEQ.W           loc_105A82
10596A:  LDRB            R2, [R0]
10596C:  CMP             R2, #0x46 ; 'F'
10596E:  BNE.W           loc_105A82
105972:  ADDS            R2, R0, #1
105974:  STR             R2, [R5]
105976:  CMP             R2, R1
105978:  BEQ             loc_105984
10597A:  LDRB            R1, [R2]
10597C:  CMP             R1, #0x59 ; 'Y'
10597E:  ITT EQ
105980:  ADDEQ           R0, #2
105982:  STREQ           R0, [R5]
105984:  MOV             R0, R5
105986:  BL              sub_FE7F0
10598A:  CMP             R0, #0
10598C:  BEQ             loc_105A82
10598E:  STR.W           R9, [SP,#0x30+var_2C]
105992:  MOV             R9, R5
105994:  MOV             R10, R0
105996:  LDR.W           R0, [R9,#8]!
10599A:  ADD.W           R8, SP, #0x30+var_28
10599E:  LDR.W           R1, [R9,#4]
1059A2:  SUBS            R0, R1, R0
1059A4:  ASRS            R0, R0, #2
1059A6:  STR             R0, [SP,#0x30+var_30]
1059A8:  LDR             R6, =(aRe - 0x1059B0); "RE" ...
1059AA:  LDR             R4, =(aOe - 0x1059B2); "OE" ...
1059AC:  ADD             R6, PC; "RE"
1059AE:  ADD             R4, PC; "OE"
1059B0:  LDRD.W          R0, R1, [R5]
1059B4:  CMP             R0, R1
1059B6:  BEQ             loc_1059C4
1059B8:  LDRB            R1, [R0]
1059BA:  CMP             R1, #0x76 ; 'v'
1059BC:  BEQ             loc_1059F8
1059BE:  CMP             R1, #0x45 ; 'E'
1059C0:  BEQ.W           loc_105ADC
1059C4:  ADDS            R2, R6, #2
1059C6:  MOV             R0, R5
1059C8:  MOV             R1, R6
1059CA:  BL              sub_FE18C
1059CE:  CMP             R0, #0
1059D0:  BNE.W           loc_105AD4
1059D4:  ADDS            R2, R4, #2
1059D6:  MOV             R0, R5
1059D8:  MOV             R1, R4
1059DA:  BL              sub_FE18C
1059DE:  CMP             R0, #0
1059E0:  BNE             loc_105AD8
1059E2:  MOV             R0, R5
1059E4:  BL              sub_FE7F0
1059E8:  CMP             R0, #0
1059EA:  STR             R0, [SP,#0x30+var_28]
1059EC:  BEQ             loc_105A82
1059EE:  MOV             R0, R9
1059F0:  MOV             R1, R8
1059F2:  BL              sub_FF894
1059F6:  B               loc_1059B0
1059F8:  ADDS            R0, #1
1059FA:  STR             R0, [R5]
1059FC:  B               loc_1059B0
1059FE:  LDR             R1, =(aDo_0 - 0x105A06); "DO" ...
105A00:  MOV             R0, R5
105A02:  ADD             R1, PC; "DO"
105A04:  ADDS            R2, R1, #2
105A06:  BL              sub_FE18C
105A0A:  CBZ             R0, loc_105A42
105A0C:  MOV             R0, R5
105A0E:  BL              sub_1006E0
105A12:  CBZ             R0, loc_105A82
105A14:  MOV             R4, R0
105A16:  LDRD.W          R0, R1, [R5]
105A1A:  CMP             R0, R1
105A1C:  BEQ             loc_105A82
105A1E:  LDRB            R1, [R0]
105A20:  CMP             R1, #0x45 ; 'E'
105A22:  BNE             loc_105A82
105A24:  ADDS            R0, #1
105A26:  STR             R0, [R5]
105A28:  ADD.W           R0, R5, #0x198
105A2C:  MOVS            R1, #0xC
105A2E:  BL              sub_FFA98
105A32:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle12NoexceptSpecE - 0x105A3C); `vtable for'`anonymous namespace'::itanium_demangle::NoexceptSpec ...
105A34:  MOV             R11, R0
105A36:  LDR             R0, =0x1010110
105A38:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NoexceptSpec
105A3A:  STR.W           R4, [R11,#8]
105A3E:  ADDS            R1, #8
105A40:  B               loc_105ACE
105A42:  LDR             R1, =(aDw - 0x105A4A); "Dw" ...
105A44:  MOV             R0, R5
105A46:  ADD             R1, PC; "Dw"
105A48:  ADDS            R2, R1, #2
105A4A:  BL              sub_FE18C
105A4E:  CBZ             R0, loc_105A9E
105A50:  MOV             R6, R5
105A52:  LDR.W           R0, [R6,#8]!
105A56:  LDR             R1, [R6,#4]
105A58:  ADD             R4, SP, #0x30+var_28
105A5A:  SUBS            R0, R1, R0
105A5C:  MOV.W           R8, R0,ASR#2
105A60:  LDRD.W          R0, R1, [R5]
105A64:  CMP             R0, R1
105A66:  BEQ             loc_105A6E
105A68:  LDRB            R1, [R0]
105A6A:  CMP             R1, #0x45 ; 'E'
105A6C:  BEQ             loc_105AA4
105A6E:  MOV             R0, R5
105A70:  BL              sub_FE7F0
105A74:  STR             R0, [SP,#0x30+var_28]
105A76:  CBZ             R0, loc_105A82
105A78:  MOV             R0, R6
105A7A:  MOV             R1, R4
105A7C:  BL              sub_FF894
105A80:  B               loc_105A60
105A82:  MOVS            R0, #0
105A84:  LDR             R1, [SP,#0x30+var_20]
105A86:  LDR             R2, =(__stack_chk_guard_ptr - 0x105A8C)
105A88:  ADD             R2, PC; __stack_chk_guard_ptr
105A8A:  LDR             R2, [R2]; __stack_chk_guard
105A8C:  LDR             R2, [R2]
105A8E:  CMP             R2, R1
105A90:  ITTT EQ
105A92:  ADDEQ           SP, SP, #0x14
105A94:  POPEQ.W         {R8-R11}
105A98:  POPEQ           {R4-R7,PC}
105A9A:  BLX             __stack_chk_fail
105A9E:  MOV.W           R11, #0
105AA2:  B               loc_105954
105AA4:  ADDS            R0, #1
105AA6:  STR             R0, [R5]
105AA8:  ADD             R0, SP, #0x30+var_28
105AAA:  MOV             R1, R5
105AAC:  MOV             R2, R8
105AAE:  BL              sub_FF908
105AB2:  ADD.W           R0, R5, #0x198
105AB6:  MOVS            R1, #0x10
105AB8:  BL              sub_FFA98
105ABC:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle20DynamicExceptionSpecE - 0x105AC6); `vtable for'`anonymous namespace'::itanium_demangle::DynamicExceptionSpec ...
105ABE:  MOV             R11, R0
105AC0:  LDR             R0, =0x1010111
105AC2:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::DynamicExceptionSpec
105AC4:  LDRD.W          R2, R3, [SP,#0x30+var_28]
105AC8:  ADDS            R1, #8
105ACA:  STRD.W          R2, R3, [R11,#8]
105ACE:  STRD.W          R1, R0, [R11]
105AD2:  B               loc_105954
105AD4:  MOVS            R4, #1
105AD6:  B               loc_105AE2
105AD8:  MOVS            R4, #2
105ADA:  B               loc_105AE2
105ADC:  MOVS            R4, #0
105ADE:  ADDS            R0, #1
105AE0:  STR             R0, [R5]
105AE2:  ADD             R0, SP, #0x30+var_28
105AE4:  LDR             R2, [SP,#0x30+var_30]
105AE6:  MOV             R1, R5
105AE8:  BL              sub_FF908
105AEC:  ADD.W           R0, R5, #0x198
105AF0:  MOVS            R1, #0x20 ; ' '
105AF2:  BL              sub_FFA98
105AF6:  STR.W           R11, [R0,#0x1C]
105AFA:  STRB            R4, [R0,#0x18]
105AFC:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle12FunctionTypeE - 0x105B08); `vtable for'`anonymous namespace'::itanium_demangle::FunctionType ...
105AFE:  LDR             R1, =0x1000F
105B00:  LDRD.W          R3, R4, [SP,#0x30+var_28]
105B04:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::FunctionType
105B06:  ADDS            R2, #8
105B08:  STRD.W          R2, R1, [R0]
105B0C:  LDR             R1, [SP,#0x30+var_2C]
105B0E:  STRD.W          R10, R3, [R0,#8]
105B12:  STR             R4, [R0,#0x10]
105B14:  STR             R1, [R0,#0x14]
105B16:  B               loc_105A84
