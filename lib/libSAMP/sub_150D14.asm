; =========================================================
; Game Engine Function: sub_150D14
; Address            : 0x150D14 - 0x150D60
; =========================================================

150D14:  PUSH            {R4,R5,R7,LR}
150D16:  ADD             R7, SP, #8
150D18:  SUB             SP, SP, #0x18
150D1A:  LDR             R5, =(_ZTVNSt6__ndk110__function6__funcIZN14AudioChannel3D15Set3DAttributesEffiifE3$_3NS_9allocatorIS3_EEFvP11AudioStreamEEE - 0x150D2E); `vtable for'std::__function::__func<AudioChannel3D::Set3DAttributes(float,float,int,int,float)::$_3,std::allocator<AudioChannel3D::Set3DAttributes(float,float,int,int,float)::$_3>,void ()(AudioStream *)> ...
150D1C:  ADD.W           LR, R0, #0x4C ; 'L'
150D20:  LDR.W           R12, [R7,#arg_0]
150D24:  STM.W           LR, {R1-R3,R12}
150D28:  MOVS            R1, #1
150D2A:  ADD             R5, PC; `vtable for'std::__function::__func<AudioChannel3D::Set3DAttributes(float,float,int,int,float)::$_3,std::allocator<AudioChannel3D::Set3DAttributes(float,float,int,int,float)::$_3>,void ()(AudioStream *)>
150D2C:  LDR             R4, [R7,#arg_4]
150D2E:  STRB.W          R1, [R0,#0x48]
150D32:  ADD.W           R1, R5, #8
150D36:  STR             R4, [R0,#0x5C]
150D38:  MOV             R4, SP
150D3A:  STR             R4, [SP,#0x20+var_10]
150D3C:  STR             R0, [SP,#0x20+var_1C]
150D3E:  STR             R1, [SP,#0x20+var_20]
150D40:  MOV             R1, R4
150D42:  BL              sub_150A8C
150D46:  LDR             R0, [SP,#0x20+var_10]
150D48:  CMP             R4, R0
150D4A:  BEQ             loc_150D52
150D4C:  CBZ             R0, loc_150D5C
150D4E:  MOVS            R1, #5
150D50:  B               loc_150D54
150D52:  MOVS            R1, #4
150D54:  LDR             R2, [R0]
150D56:  LDR.W           R1, [R2,R1,LSL#2]
150D5A:  BLX             R1
150D5C:  ADD             SP, SP, #0x18
150D5E:  POP             {R4,R5,R7,PC}
